package org.apache.tools.ant;

public class ExitException extends SecurityException {
    private static final long serialVersionUID = 2772487854280543363L;
    private int status;

    public ExitException(int i10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ExitException: status ");
        stringBuffer.append(i10);
        super(stringBuffer.toString());
        this.status = i10;
    }

    public int getStatus() {
        return this.status;
    }

    public ExitException(String str, int i10) {
        super(str);
        this.status = i10;
    }
}
