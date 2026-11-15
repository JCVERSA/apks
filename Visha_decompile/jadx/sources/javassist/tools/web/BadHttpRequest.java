package javassist.tools.web;

public class BadHttpRequest extends Exception {
    private static final long serialVersionUID = 1;
    private Exception e;

    public BadHttpRequest() {
        this.e = null;
    }

    @Override
    public String toString() {
        Exception exc = this.e;
        return exc == null ? super.toString() : exc.toString();
    }

    public BadHttpRequest(Exception exc) {
        this.e = exc;
    }
}
