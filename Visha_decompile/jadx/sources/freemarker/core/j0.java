package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.am9;
import defpackage.d0d;
import defpackage.d1d;
import defpackage.jw7;
import defpackage.n0a;
import defpackage.ofa;
import defpackage.xe1;
import defpackage.zfa;
import freemarker.template.SimpleScalar;
import freemarker.template.Template;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Arrays;
import java.util.Date;

public final class j0 extends t0 {
    public static final String[] i = {"currentNode", "currentTemplateName", "current_node", "current_template_name", "dataModel", "data_model", "error", "globals", "lang", CommonUrlParts.LOCALE, "localeObject", "locale_object", "locals", "main", "mainTemplateName", "main_template_name", "namespace", "node", "now", "outputEncoding", "output_encoding", "pass", "templateName", "template_name", "urlEscapingCharset", "url_escaping_charset", "vars", "version"};
    public final String h;

    public static class a implements ofa {
        public Environment b;

        public a(Environment environment) {
            this.b = environment;
        }

        @Override
        public zfa get(String str) {
            return this.b.m1(str);
        }

        @Override
        public boolean isEmpty() {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0049 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x004b  */
    /* JADX WARN: Code duplicated, block: B:18:0x004d  */
    public j0(Token token, u0 u0Var) throws ParseException {
        String str = token.image;
        if (Arrays.binarySearch(i, str) >= 0) {
            this.h = str.intern();
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unknown special variable name: ");
        stringBuffer.append(n0a.D(str));
        stringBuffer.append(Consts.DOT);
        int i2 = u0Var.o;
        i2 = i2 == 10 ? 11 : i2;
        stringBuffer.append(" The allowed special variable names are: ");
        boolean z = true;
        int i3 = 0;
        while (true) {
            String[] strArr = i;
            if (i3 >= strArr.length) {
                throw new ParseException(stringBuffer.toString(), (Template) null, token);
            }
            String str2 = strArr[i3];
            int iB = d0d.b(str2);
            if (i2 == 12) {
                if (iB != 11) {
                    if (z) {
                        z = false;
                    } else {
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append(str2);
                }
            } else if (iB != 12) {
                if (z) {
                    z = false;
                } else {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(str2);
            }
            i3++;
        }
    }

    @Override
    public zfa F(Environment environment) throws _MiscTemplateException {
        String str = this.h;
        if (str == "namespace") {
            return environment.A0();
        }
        if (str == "main") {
            return environment.T0();
        }
        if (str == "globals") {
            return environment.L0();
        }
        if (str == "locals") {
            e1.a aVarZ0 = environment.z0();
            if (aVarZ0 == null) {
                return null;
            }
            return aVarZ0.c();
        }
        if (str == "data_model" || str == "dataModel") {
            return environment.E0();
        }
        if (str == "vars") {
            return new a(environment);
        }
        if (str == CommonUrlParts.LOCALE) {
            return new SimpleScalar(environment.p().toString());
        }
        if (str == "locale_object" || str == "localeObject") {
            return environment.u().c(environment.p());
        }
        if (str == "lang") {
            return new SimpleScalar(environment.p().getLanguage());
        }
        if (str == "current_node" || str == "node" || str == "currentNode") {
            return environment.D0();
        }
        if (str == "template_name" || str == "templateName") {
            return environment.x0().F0().intValue() >= d1d.f ? new SimpleScalar(environment.d1().y0()) : new SimpleScalar(environment.c1().y0());
        }
        if (str == "main_template_name" || str == "mainTemplateName") {
            return SimpleScalar.newInstanceOrNull(environment.U0().y0());
        }
        if (str == "current_template_name" || str == "currentTemplateName") {
            return SimpleScalar.newInstanceOrNull(environment.C0().y0());
        }
        if (str == "pass") {
            return e1.q;
        }
        if (str == "version") {
            return new SimpleScalar(xe1.T0());
        }
        if (str == "output_encoding" || str == "outputEncoding") {
            return SimpleScalar.newInstanceOrNull(environment.v());
        }
        if (str == "url_escaping_charset" || str == "urlEscapingCharset") {
            return SimpleScalar.newInstanceOrNull(environment.G());
        }
        if (str == "error") {
            return new SimpleScalar(environment.B0());
        }
        if (str == "now") {
            return new am9(new Date(), 3);
        }
        throw new _MiscTemplateException(this, new Object[]{"Invalid built-in variable: ", this.h});
    }

    @Override
    public t0 J(String str, t0 t0Var, t0.a aVar) {
        return this;
    }

    @Override
    public boolean T() {
        return false;
    }

    @Override
    public String o() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Consts.DOT);
        stringBuffer.append(this.h);
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return o();
    }

    @Override
    public int s() {
        return 0;
    }

    @Override
    public jw7 t(int i2) {
        throw new IndexOutOfBoundsException();
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(Consts.DOT);
        stringBuffer.append(this.h);
        return stringBuffer.toString();
    }

    @Override
    public Object u(int i2) {
        throw new IndexOutOfBoundsException();
    }
}
