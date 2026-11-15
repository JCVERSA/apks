package javassist.tools.rmi;

public class ObjectNotFoundException extends Exception {
    private static final long serialVersionUID = 1;

    public ObjectNotFoundException(String str) {
        super(str + " is not exported");
    }

    public ObjectNotFoundException(String str, Exception exc) {
        super(str + " because of " + exc.toString());
    }
}
