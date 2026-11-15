package org.apache.tools.ant;

public class ExitStatusException extends BuildException {
    private static final long serialVersionUID = 7760846806886585968L;
    private int status;

    public ExitStatusException(int i10) {
        this.status = i10;
    }

    public int getStatus() {
        return this.status;
    }

    public ExitStatusException(String str, int i10) {
        super(str);
        this.status = i10;
    }

    public ExitStatusException(String str, int i10, Location location) {
        super(str, location);
        this.status = i10;
    }
}
