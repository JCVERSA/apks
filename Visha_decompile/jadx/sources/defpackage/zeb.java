package defpackage;

import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import org.apache.commons.io.IOUtils;

public abstract class zeb implements qfa {
    public Boolean a;

    public static String e(String str) {
        String strReplace = str.replace(IOUtils.DIR_SEPARATOR_WINDOWS, IOUtils.DIR_SEPARATOR_UNIX);
        if (strReplace.length() <= 0 || strReplace.endsWith("/")) {
            return strReplace;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(strReplace);
        stringBuffer.append("/");
        return stringBuffer.toString();
    }

    @Override
    public Object a(String str) {
        URL urlF = f(str);
        if (urlF == null) {
            return null;
        }
        return new afb(urlF, g());
    }

    @Override
    public Reader b(Object obj, String str) {
        return new InputStreamReader(((afb) obj).b(), str);
    }

    @Override
    public long c(Object obj) {
        return ((afb) obj).d();
    }

    @Override
    public void d(Object obj) {
        ((afb) obj).a();
    }

    public abstract URL f(String str);

    public Boolean g() {
        return this.a;
    }
}
