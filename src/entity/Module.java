package entity;

import java.io.Serializable;
import java.util.Set;

public class Module implements Serializable{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String moduleCode;
	private String semester;
	private Set<Assignment> assignments;
	
	private Set<Academic> academics;

	public Module() {
	}
	
	public Set<Academic> getAcademics() {
		return academics;
	}

	public void setAcademics(Set<Academic> academics) {
		this.academics = academics;
	}

	public String getModuleCode() {
		return moduleCode;
	}

	public void setModuleCode(String moduleCode) {
		this.moduleCode = moduleCode;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public Set<Assignment> getAssignments() {
		return assignments;
	}

	public void setAssignments(Set<Assignment> assignments) {
		this.assignments = assignments;
	}


	@Override  
    public int hashCode() {  
        final int PRIME = 31;  
        int result = 1;  
        result = PRIME * result + (moduleCode == null ? 0 : moduleCode.hashCode());  
        result = PRIME * result + (semester == null ? 0 : semester.hashCode());  
        return result;  
    }
	
	@Override  
    public boolean equals(Object obj) {  
		if (this == obj)
		{
			return true;
		}
		if (obj != null && obj.getClass() == Module.class)
		{
			Module target = (Module)obj;
			return target.getModuleCode().equals(getModuleCode())
				&& target.getSemester().equals(getSemester());
		}
		return false;
	}
	
	@Override
	public String toString() {
	return "moduleCode="+this.moduleCode+" semester="+this.semester;
	}
	
}
