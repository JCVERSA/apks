package freemarker.ext.servlet;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.n0a;
import javax.servlet.http.HttpServlet;

public abstract class FreemarkerServlet extends HttpServlet {

    public static class ConflictingInitParamsException extends Exception {
        public ConflictingInitParamsException(String str, String str2) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Conflicting servlet init-params: ");
            stringBuffer.append(n0a.D(str));
            stringBuffer.append(" and ");
            stringBuffer.append(n0a.D(str2));
            stringBuffer.append(". Only use ");
            stringBuffer.append(n0a.D(str));
            stringBuffer.append(Consts.DOT);
            super(stringBuffer.toString());
        }
    }

    public static class MalformedWebXmlException extends Exception {
        public MalformedWebXmlException(String str) {
            super(str);
        }
    }

    public static class InitParamValueException extends Exception {
        public InitParamValueException(String str, String str2, Throwable th) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Failed to set the ");
            stringBuffer.append(n0a.D(str));
            stringBuffer.append(" servlet init-param to ");
            stringBuffer.append(n0a.D(str2));
            stringBuffer.append("; see cause exception.");
            super(stringBuffer.toString(), th);
        }

        public InitParamValueException(String str, String str2, String str3) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Failed to set the ");
            stringBuffer.append(n0a.D(str));
            stringBuffer.append(" servlet init-param to ");
            stringBuffer.append(n0a.D(str2));
            stringBuffer.append(": ");
            stringBuffer.append(str3);
            super(stringBuffer.toString());
        }
    }
}
