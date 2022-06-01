package project_survey;

public class SurveyVo {
	private int number;
	private String list;
	private int vote;
	
	
	public SurveyVo(String list) {
		super();
		this.list = list;
	}

	public SurveyVo(int number, String list, int vote) {
		super();
		this.number = number;
		this.list = list;
		this.vote = vote;
	}

	public int getNumber() {
		return number;
	}


	public void setNumber(int number) {
		this.number = number;
	}


	public String getList() {
		return list;
	}


	public void setList(String list) {
		this.list = list;
	}


	public int getVote() {
		return vote;
	}


	public void setVote(int vote) {
		this.vote = vote;
	}


	@Override
	public String toString() {
		return list + " ====> " + vote + "표";
	}
	
	
	
}
