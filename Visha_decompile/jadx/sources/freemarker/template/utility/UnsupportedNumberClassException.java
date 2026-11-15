package freemarker.template.utility;

public class UnsupportedNumberClassException extends RuntimeException {
    private final Class fClass;

    public UnsupportedNumberClassException(Class cls) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unsupported number class: ");
        stringBuffer.append(cls.getName());
        super(stringBuffer.toString());
        this.fClass = cls;
    }

    public Class getUnsupportedClass() {
        return this.fClass;
    }
}
