package defpackage;

import freemarker.core.Environment;
import freemarker.template.SimpleScalar;

public class xm0 extends ll0 {
    @Override
    public zfa h0(String str, Environment environment) {
        int length = str.length();
        int i = 0;
        while (i < length && Character.isWhitespace(str.charAt(i))) {
            i++;
        }
        if (i < length) {
            StringBuffer stringBuffer = new StringBuffer(str);
            stringBuffer.setCharAt(i, Character.toLowerCase(str.charAt(i)));
            str = stringBuffer.toString();
        }
        return new SimpleScalar(str);
    }
}
