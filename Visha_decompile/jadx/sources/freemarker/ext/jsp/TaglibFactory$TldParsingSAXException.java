package freemarker.ext.jsp;

import org.xml.sax.Locator;
import org.xml.sax.SAXParseException;

class TaglibFactory$TldParsingSAXException extends SAXParseException {
    private final Throwable cause;

    public TaglibFactory$TldParsingSAXException(String str, Locator locator) {
        this(str, locator, null);
    }

    @Override
    public Throwable getCause() {
        Throwable cause = super.getCause();
        return cause == null ? this.cause : cause;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(getClass().getName());
        stringBuffer.append(": ");
        int length = stringBuffer.length();
        String systemId = getSystemId();
        String publicId = getPublicId();
        if (systemId != null || publicId != null) {
            stringBuffer.append("In ");
            if (systemId != null) {
                stringBuffer.append(systemId);
            }
            if (publicId != null) {
                if (systemId != null) {
                    stringBuffer.append(" (public ID: ");
                }
                stringBuffer.append(publicId);
                if (systemId != null) {
                    stringBuffer.append(')');
                }
            }
        }
        int lineNumber = getLineNumber();
        if (lineNumber != -1) {
            stringBuffer.append(stringBuffer.length() != length ? ", at " : "At ");
            stringBuffer.append("line ");
            stringBuffer.append(lineNumber);
            int columnNumber = getColumnNumber();
            if (columnNumber != -1) {
                stringBuffer.append(", column ");
                stringBuffer.append(columnNumber);
            }
        }
        String localizedMessage = getLocalizedMessage();
        if (localizedMessage != null) {
            if (stringBuffer.length() != length) {
                stringBuffer.append(":\n");
            }
            stringBuffer.append(localizedMessage);
        }
        return stringBuffer.toString();
    }

    public TaglibFactory$TldParsingSAXException(String str, Locator locator, Throwable th) {
        super(str, locator, th instanceof Exception ? (Exception) th : new Exception("Unchecked exception; see cause", th));
        this.cause = th;
    }
}
