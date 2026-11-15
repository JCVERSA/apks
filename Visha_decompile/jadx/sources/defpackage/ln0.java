package defpackage;

import freemarker.core.Environment;
import freemarker.core.FMParser;
import freemarker.core.ParseException;
import freemarker.core.TokenMgrError;
import freemarker.core._MiscTemplateException;
import freemarker.core.u0;
import freemarker.template.TemplateException;
import java.io.StringReader;

public class ln0 extends ll0 {
    @Override
    public zfa h0(String str, Environment environment) throws _MiscTemplateException {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("(");
        stringBuffer.append(str);
        stringBuffer.append(")");
        u0 u0Var = new u0(new xl9(new StringReader(stringBuffer.toString()), -1000000000, 1, str.length() + 2));
        xe1 xe1VarX0 = environment.x0();
        u0Var.q = xe1VarX0.F0().intValue();
        u0Var.c(2);
        int iG0 = xe1VarX0.G0();
        u0Var.n = iG0;
        u0Var.o = iG0;
        FMParser fMParser = new FMParser(u0Var);
        fMParser.N4(y());
        try {
            try {
                try {
                    return fMParser.u().K(environment);
                } catch (TemplateException e) {
                    throw new _MiscTemplateException(this, environment, new Object[]{"Failed to \"?", this.i, "\" string with this error:\n\n", "---begin-message---\n", new j0d(e), "\n---end-message---", "\n\nThe failing expression:"});
                }
            } catch (TokenMgrError e2) {
                throw e2.toParseException(y());
            }
        } catch (ParseException e3) {
            throw new _MiscTemplateException(this, environment, new Object[]{"Failed to \"?", this.i, "\" string with this error:\n\n", "---begin-message---\n", new i0d(e3), "\n---end-message---", "\n\nThe failing expression:"});
        }
    }
}
