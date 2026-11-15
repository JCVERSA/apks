package freemarker.core;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.d0d;
import defpackage.d1d;
import defpackage.hga;
import defpackage.ifa;
import defpackage.jw7;
import defpackage.mga;
import defpackage.n0a;
import defpackage.xe1;
import defpackage.zfa;
import freemarker.template.Template;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Arrays;
import org.apache.commons.lang3.BooleanUtils;

public final class n1 extends ifa {
    public static final String[] n = {"booleanFormat", "boolean_format", "classicCompatible", "classic_compatible", "dateFormat", "date_format", "datetimeFormat", "datetime_format", CommonUrlParts.LOCALE, "numberFormat", "number_format", "outputEncoding", "output_encoding", "sqlDateAndTimeTimeZone", "sql_date_and_time_time_zone", "timeFormat", "timeZone", "time_format", "time_zone", "urlEscapingCharset", "url_escaping_charset"};
    public final String l;
    public final t0 m;

    /* JADX WARN: Code duplicated, block: B:20:0x005d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x005f  */
    /* JADX WARN: Code duplicated, block: B:22:0x0061  */
    public n1(Token token, u0 u0Var, t0 t0Var, xe1 xe1Var) throws ParseException {
        String str = token.image;
        if (Arrays.binarySearch(n, str) >= 0) {
            this.l = str;
            this.m = t0Var;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = true;
        if (!d1d.b(xe1Var, true).contains(str) && !d1d.b(xe1Var, false).contains(str)) {
            stringBuffer.append("Unknown setting name: ");
            stringBuffer.append(n0a.D(str));
            stringBuffer.append(Consts.DOT);
            stringBuffer.append(" The allowed setting names are: ");
            int i = u0Var.o;
            i = i == 10 ? 11 : i;
            int i2 = 0;
            while (true) {
                String[] strArr = n;
                if (i2 >= strArr.length) {
                    break;
                }
                int iB = d0d.b(strArr[i2]);
                if (i == 12) {
                    if (iB != 11) {
                        if (z) {
                            z = false;
                        } else {
                            stringBuffer.append(", ");
                        }
                        stringBuffer.append(strArr[i2]);
                    }
                } else if (iB != 12) {
                    if (z) {
                        z = false;
                    } else {
                        stringBuffer.append(", ");
                    }
                    stringBuffer.append(strArr[i2]);
                }
                i2++;
            }
        } else {
            stringBuffer.append("The setting name is recognized, but changing this setting from inside a template isn't supported.");
        }
        throw new ParseException(stringBuffer.toString(), (Template) null, token);
    }

    @Override
    public void F(Environment environment) throws Throwable {
        String string;
        zfa zfaVarK = this.m.K(environment);
        if (zfaVarK instanceof mga) {
            string = ((mga) zfaVarK).getAsString();
        } else if (zfaVarK instanceof freemarker.template.a) {
            string = ((freemarker.template.a) zfaVarK).getAsBoolean() ? BooleanUtils.TRUE : BooleanUtils.FALSE;
        } else {
            string = zfaVarK instanceof hga ? ((hga) zfaVarK).getAsNumber().toString() : this.m.L(environment);
        }
        environment.d0(this.l, string);
    }

    @Override
    public String J(boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z) {
            stringBuffer.append('<');
        }
        stringBuffer.append(r());
        stringBuffer.append(' ');
        stringBuffer.append(d0d.f(this.l));
        stringBuffer.append('=');
        stringBuffer.append(this.m.o());
        if (z) {
            stringBuffer.append("/>");
        }
        return stringBuffer.toString();
    }

    @Override
    public String r() {
        return "#setting";
    }

    @Override
    public int s() {
        return 2;
    }

    @Override
    public jw7 t(int i) {
        if (i == 0) {
            return jw7.g;
        }
        if (i == 1) {
            return jw7.f;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override
    public Object u(int i) {
        if (i == 0) {
            return this.l;
        }
        if (i == 1) {
            return this.m;
        }
        throw new IndexOutOfBoundsException();
    }
}
