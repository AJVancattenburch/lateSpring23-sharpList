namespace sharpList.Models;

public class Job
{
  public int Id { get; set; }
  public string Company { get; set; }
  public string JobTitle { get; set; }
  public string JobType { get; set; }
  public string imgUrl { get; set; }
  public string Location { get; set; }
  public string Description { get; set; }
  public double? Rate { get; set; }
  public string Benefits { get; set; }
  public string Hours { get; set; }
  public string Requirements { get; set; }
  public string Contact { get; set; }
  public DateTime CreatedAt { get; set; }
  public DateTime UpdatedAt { get; set; }


  // NOTE IS THIS HOW YOU DO ONE TO MANY FOR A CONNECTION BETWEEN THE JOB CREATOR AND THE JOB APPLICANT? ASK ABOUT THIS.
  // private string _creatorId { get; set; }
  // private string applicantId { get; set; }
  // public Profile Creator { get; set; }
  // public Profile Applicant { get; set; }

}