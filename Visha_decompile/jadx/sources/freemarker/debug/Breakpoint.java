package freemarker.debug;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.Serializable;

public class Breakpoint implements Serializable, Comparable {
    private static final long serialVersionUID = 1;
    private final int line;
    private final String templateName;

    public Breakpoint(String str, int i) {
        this.templateName = str;
        this.line = i;
    }

    @Override
    public int compareTo(Object obj) {
        Breakpoint breakpoint = (Breakpoint) obj;
        int iCompareTo = this.templateName.compareTo(breakpoint.templateName);
        return iCompareTo == 0 ? this.line - breakpoint.line : iCompareTo;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Breakpoint)) {
            return false;
        }
        Breakpoint breakpoint = (Breakpoint) obj;
        return breakpoint.templateName.equals(this.templateName) && breakpoint.line == this.line;
    }

    public int getLine() {
        return this.line;
    }

    public String getLocationString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.templateName);
        stringBuffer.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        stringBuffer.append(this.line);
        return stringBuffer.toString();
    }

    public String getTemplateName() {
        return this.templateName;
    }

    public int hashCode() {
        return this.templateName.hashCode() + (this.line * 31);
    }
}
