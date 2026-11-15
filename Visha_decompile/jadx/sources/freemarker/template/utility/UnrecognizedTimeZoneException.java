package freemarker.template.utility;

import defpackage.n0a;

public class UnrecognizedTimeZoneException extends Exception {
    private final String timeZoneName;

    public UnrecognizedTimeZoneException(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unrecognized time zone: ");
        stringBuffer.append(n0a.D(str));
        super(stringBuffer.toString());
        this.timeZoneName = str;
    }

    public String getTimeZoneName() {
        return this.timeZoneName;
    }
}
