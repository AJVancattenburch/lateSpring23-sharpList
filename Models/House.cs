namespace sharpList.Models;

public class House
{
  public int Id { get; set; }
  public string Address { get; set; }
  public string Price { get; set; }
  public string Type { get; set; }
  public int? Year { get; set; }
  public int? Bedrooms { get; set; }
  public int? Bathrooms { get; set; }
  public int? Levels { get; set; }
  public string imgUrl { get; set; }
  public string Description { get; set; }

  public DateTime CreatedAt { get; set; }
  public DateTime UpdatedAt { get; set; }
}