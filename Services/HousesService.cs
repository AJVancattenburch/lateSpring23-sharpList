namespace sharpList.Services;

public class HousesService
{
  public readonly HousesRepository _repo;

  public HousesService(HousesRepository repo)
  {
    _repo = repo;
  }

  internal House CreateHouse(House houseData)
  {
    House house = _repo.CreateHouse(houseData);
    return house;
  }

  internal List<House> GetAllHouses()
  {
    List<House> houses = _repo.GetAllHouses();
    return houses;
  }

  internal House GetById(int houseId)
  {
    House house = _repo.GetById(houseId);
    if (house == null) throw new Exception($"no house at Id:{houseId}");
    return house;
  }

  internal string RemoveHouse(int houseId)
  {
    House house = GetById(houseId);
    int rows = _repo.RemoveHouse(houseId);
    if (rows > 1) throw new Exception("Im not sure what happened. More than 1 house got deleted, go check the DB immediately!");

    return $"{house.Type} has been deleted.";
  }

  internal House UpdateHouse(House updateData)
  {
    House original = GetById(updateData.Id);
    // TODO check if you are authorized to do this

    original.Address = updateData.Address != null ? updateData.Address : original.Address;
    original.Type = updateData.Type != null ? updateData.Type : original.Type;
    original.Price = updateData.Price != null ? updateData.Price : original.Price;
    original.Year = updateData.Year != null ? updateData.Year : original.Year;
    original.Bedrooms = updateData.Bedrooms != null ? updateData.Bedrooms : original.Bedrooms;
    original.Bathrooms = updateData.Bathrooms != null ? updateData.Bathrooms : original.Bathrooms;
    original.Levels = updateData.Levels != null ? updateData.Levels : original.Levels;
    original.imgUrl = updateData.imgUrl != null ? updateData.imgUrl : original.imgUrl;
    original.Description = updateData.Description != null ? updateData.Description : original.Description;

    _repo.UpdateHouse(original);
    return original;
  }
}