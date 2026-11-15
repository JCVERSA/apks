package defpackage;

import freemarker.core.f1;

public class e0d extends f0d {
    public e0d(Object obj) {
        super(obj);
    }

    @Override
    public String a(Object obj) {
        String string = obj.toString();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(f1.i(string));
        stringBuffer.append(" ");
        stringBuffer.append(string);
        return stringBuffer.toString();
    }
}
