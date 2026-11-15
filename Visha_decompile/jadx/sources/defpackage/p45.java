package defpackage;

import freemarker.core.Environment;
import freemarker.core.UnexpectedTypeException;
import freemarker.core._MiscTemplateException;
import freemarker.core._TemplateModelException;
import freemarker.core.j;
import freemarker.core.k1;
import freemarker.core.n0;
import freemarker.core.t0;
import freemarker.template.Template;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

public class p45 extends j {
    public static Class k;
    public static Class l;

    public class a implements pga {
        public final Template b;

        public a(Template template) {
            this.b = template;
        }

        @Override
        public Writer h(Writer writer, Map map) throws _TemplateModelException {
            try {
                Environment environmentY0 = Environment.y0();
                boolean zN1 = environmentY0.N1(false);
                try {
                    environmentY0.r1(this.b);
                    return new o45(this, writer, writer);
                } finally {
                    environmentY0.N1(zN1);
                }
            } catch (Exception e) {
                throw new _TemplateModelException(e, new Object[]{"Template created with \"?", p45.this.i, "\" has stopped with this error:\n\n", "---begin-message---\n", new i0d(e), "\n---end-message---"});
            }
        }
    }

    public static Class h0(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    @Override
    public zfa F(Environment environment) throws Throwable {
        t0 t0Var;
        zfa zfaVarK = this.h.K(environment);
        String strL = "anonymous_interpreted";
        if (zfaVarK instanceof nga) {
            t0Var = (t0) new n0(this.h, new k1(new Integer(0))).l(this.h);
            if (((nga) zfaVarK).size() > 1) {
                strL = ((t0) new n0(this.h, new k1(new Integer(1))).l(this.h)).L(environment);
            }
        } else {
            if (!(zfaVarK instanceof mga)) {
                t0 t0Var2 = this.h;
                Class clsH0 = k;
                if (clsH0 == null) {
                    clsH0 = h0("freemarker.template.TemplateSequenceModel");
                    k = clsH0;
                }
                Class clsH1 = l;
                if (clsH1 == null) {
                    clsH1 = h0("freemarker.template.TemplateScalarModel");
                    l = clsH1;
                }
                throw new UnexpectedTypeException(t0Var2, zfaVarK, "sequence or string", new Class[]{clsH0, clsH1}, environment);
            }
            t0Var = this.h;
        }
        String strL2 = t0Var.L(environment);
        Template templateC1 = environment.c1();
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(templateC1.y0() != null ? templateC1.y0() : "nameless_template");
            stringBuffer.append("->");
            stringBuffer.append(strL);
            Template template = new Template(stringBuffer.toString(), strL2, templateC1.t0());
            template.V(environment.p());
            return new a(template);
        } catch (IOException e) {
            throw new _MiscTemplateException(this, e, environment, new Object[]{"Template parsing with \"?", this.i, "\" has failed with this error:\n\n", "---begin-message---\n", new i0d(e), "\n---end-message---", "\n\nThe failed expression:"});
        }
    }
}
