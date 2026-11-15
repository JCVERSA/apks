package javassist.tools.reflect;

public class CannotCreateException extends Exception {
    private static final long serialVersionUID = 1;

    public CannotCreateException(String str) {
        super(str);
    }

    public CannotCreateException(Exception exc) {
        super("by " + exc.toString());
    }
}
