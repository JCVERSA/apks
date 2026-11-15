package defpackage;

import org.mozilla.javascript.ErrorReporter;
import org.mozilla.javascript.EvaluatorException;
import org.mozilla.javascript.ScriptRuntime;

public class f12 implements ErrorReporter {
    public static final f12 c = new f12();
    public boolean a;
    public ErrorReporter b;

    public static ErrorReporter a(ErrorReporter errorReporter) {
        f12 f12Var = new f12();
        f12Var.a = true;
        f12Var.b = errorReporter;
        return f12Var;
    }

    @Override
    public void error(String str, String str2, int i, String str3, int i2) {
        String str4;
        if (this.a) {
            if (str.startsWith("TypeError: ")) {
                str = str.substring(11);
                str4 = "TypeError";
            } else {
                str4 = "SyntaxError";
            }
            throw ScriptRuntime.constructError(str4, str, str2, i, str3, i2);
        }
        ErrorReporter errorReporter = this.b;
        if (errorReporter == null) {
            throw runtimeError(str, str2, i, str3, i2);
        }
        errorReporter.error(str, str2, i, str3, i2);
    }

    @Override
    public EvaluatorException runtimeError(String str, String str2, int i, String str3, int i2) {
        ErrorReporter errorReporter = this.b;
        return errorReporter != null ? errorReporter.runtimeError(str, str2, i, str3, i2) : new EvaluatorException(str, str2, i, str3, i2);
    }

    @Override
    public void warning(String str, String str2, int i, String str3, int i2) {
        ErrorReporter errorReporter = this.b;
        if (errorReporter != null) {
            errorReporter.warning(str, str2, i, str3, i2);
        }
    }
}
