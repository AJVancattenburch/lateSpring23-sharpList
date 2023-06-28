namespace sharpList.Services;

public class JobsService
{
  public readonly JobsRepository _repo;

  public JobsService(JobsRepository repo)
  {
    _repo = repo;
  }

  internal Job CreateJob(Job jobData)
  {
    Job job = _repo.CreateJob(jobData);
    return job;
  }

  internal List<Job> GetAllJobs()
  {
    List<Job> jobs = _repo.GetAllJobs();
    return jobs;
  }

  internal Job GetById(int jobId)
  {
    Job job = _repo.GetById(jobId);
    if (job == null) throw new Exception($"no job at Id:{jobId}");
    return job;
  }

  internal string RemoveJob(int jobId)
  {
    Job job = GetById(jobId);
    int rows = _repo.RemoveJob(jobId);
    if (rows > 1) throw new Exception("Im not sure what happened. More than 1 job got deleted, go check the DB immediately!");

    return $"{job.JobTitle} has been deleted.";
  }

  internal Job UpdateJob(Job updateData)
  {
    Job original = GetById(updateData.Id);
    // TODO check if you are authorized to do this

    original.Company = updateData.Company != null ? updateData.Company : original.Company;
    original.JobTitle = updateData.JobTitle != null ? updateData.JobTitle : original.JobTitle;
    original.JobType = updateData.JobType != null ? updateData.JobType : original.JobType;
    original.imgUrl = updateData.imgUrl != null ? updateData.imgUrl : original.imgUrl;
    original.Location = updateData.Location != null ? updateData.Location : original.Location;
    original.Description = updateData.Description != null ? updateData.Description : original.Description;
    original.Rate = updateData.Rate != null ? updateData.Rate : original.Rate;
    original.Benefits = updateData.Benefits != null ? updateData.Benefits : original.Benefits;
    original.Hours = updateData.Hours != null ? updateData.Hours : original.Hours;
    original.Requirements = updateData.Requirements != null ? updateData.Requirements : original.Requirements;
    original.Contact = updateData.Contact != null ? updateData.Contact : original.Contact;

    _repo.UpdateJob(original);
    return original;
  }
}