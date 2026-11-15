package freemarker.core;

import defpackage.hfa;
import defpackage.n0a;
import freemarker.template.TemplateException;

class NestedContentNotSupportedException extends TemplateException {
    private NestedContentNotSupportedException(Environment environment) {
        this(null, null, environment);
    }

    public static void check(hfa hfaVar) throws NestedContentNotSupportedException {
        if (hfaVar == null) {
            return;
        }
        if (!(hfaVar instanceof Environment.a) || ((Environment.a) hfaVar).a() != null) {
            throw new NestedContentNotSupportedException(Environment.y0());
        }
    }

    private NestedContentNotSupportedException(Exception exc, Environment environment) {
        this(null, exc, environment);
    }

    private NestedContentNotSupportedException(String str, Environment environment) {
        this(str, null, environment);
    }

    private NestedContentNotSupportedException(String str, Exception exc, Environment environment) {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Nested content (body) not supported.");
        if (str != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(" ");
            stringBuffer2.append(n0a.D(str));
            string = stringBuffer2.toString();
        } else {
            string = "";
        }
        stringBuffer.append(string);
        super(stringBuffer.toString(), exc, environment);
    }
}
