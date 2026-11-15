package defpackage;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.text.StringSubstitutor;

public final class vic {
    public static final Pattern c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    public static final Pattern d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    public final qw7 a = new qw7();
    public final StringBuilder b = new StringBuilder();

    public static boolean b(qw7 qw7Var) {
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        byte[] bArrD = qw7Var.d();
        if (iE + 2 > iF) {
            return false;
        }
        int i = iE + 1;
        if (bArrD[iE] != 47) {
            return false;
        }
        int i2 = iE + 2;
        if (bArrD[i] != 42) {
            return false;
        }
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= iF) {
                qw7Var.P(iF - qw7Var.e());
                return true;
            }
            if (((char) bArrD[i2]) == '*' && ((char) bArrD[i3]) == '/') {
                i2 += 2;
                iF = i2;
            } else {
                i2 = i3;
            }
        }
    }

    public static boolean c(qw7 qw7Var) {
        char cK = k(qw7Var, qw7Var.e());
        if (cK != '\t' && cK != '\n' && cK != '\f' && cK != '\r' && cK != ' ') {
            return false;
        }
        qw7Var.P(1);
        return true;
    }

    public static void e(String str, wic wicVar) {
        Matcher matcher = d.matcher(ui.e(str));
        if (!matcher.matches()) {
            op5.i("WebvttCssParser", "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) zi.e(matcher.group(2));
        str2.hashCode();
        switch (str2) {
            case "%":
                wicVar.t(3);
                break;
            case "em":
                wicVar.t(2);
                break;
            case "px":
                wicVar.t(1);
                break;
            default:
                throw new IllegalStateException();
        }
        wicVar.s(Float.parseFloat((String) zi.e(matcher.group(1))));
    }

    public static String f(qw7 qw7Var, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        while (iE < iF && !z) {
            char c2 = (char) qw7Var.d()[iE];
            if ((c2 < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                z = true;
            } else {
                iE++;
                sb.append(c2);
            }
        }
        qw7Var.P(iE - qw7Var.e());
        return sb.toString();
    }

    public static String g(qw7 qw7Var, StringBuilder sb) {
        n(qw7Var);
        if (qw7Var.a() == 0) {
            return null;
        }
        String strF = f(qw7Var, sb);
        if (!"".equals(strF)) {
            return strF;
        }
        return "" + ((char) qw7Var.C());
    }

    public static String h(qw7 qw7Var, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int iE = qw7Var.e();
            String strG = g(qw7Var, sb);
            if (strG == null) {
                return null;
            }
            if (StringSubstitutor.DEFAULT_VAR_END.equals(strG) || ProcessInfo.SPLIT_NEW_VERSION.equals(strG)) {
                qw7Var.O(iE);
                z = true;
            } else {
                sb2.append(strG);
            }
        }
        return sb2.toString();
    }

    public static String i(qw7 qw7Var, StringBuilder sb) {
        n(qw7Var);
        if (qw7Var.a() < 5 || !"::cue".equals(qw7Var.z(5))) {
            return null;
        }
        int iE = qw7Var.e();
        String strG = g(qw7Var, sb);
        if (strG == null) {
            return null;
        }
        if ("{".equals(strG)) {
            qw7Var.O(iE);
            return "";
        }
        String strL = "(".equals(strG) ? l(qw7Var) : null;
        if (")".equals(g(qw7Var, sb))) {
            return strL;
        }
        return null;
    }

    public static void j(qw7 qw7Var, wic wicVar, StringBuilder sb) {
        n(qw7Var);
        String strF = f(qw7Var, sb);
        if (!"".equals(strF) && StringUtils.PROCESS_POSTFIX_DELIMITER.equals(g(qw7Var, sb))) {
            n(qw7Var);
            String strH = h(qw7Var, sb);
            if (strH == null || "".equals(strH)) {
                return;
            }
            int iE = qw7Var.e();
            String strG = g(qw7Var, sb);
            if (!ProcessInfo.SPLIT_NEW_VERSION.equals(strG)) {
                if (!StringSubstitutor.DEFAULT_VAR_END.equals(strG)) {
                    return;
                } else {
                    qw7Var.O(iE);
                }
            }
            if ("color".equals(strF)) {
                wicVar.q(y81.b(strH));
                return;
            }
            if ("background-color".equals(strF)) {
                wicVar.n(y81.b(strH));
                return;
            }
            boolean z = true;
            if ("ruby-position".equals(strF)) {
                if ("over".equals(strH)) {
                    wicVar.v(1);
                    return;
                } else {
                    if ("under".equals(strH)) {
                        wicVar.v(2);
                        return;
                    }
                    return;
                }
            }
            if ("text-combine-upright".equals(strF)) {
                if (!TtmlNode.COMBINE_ALL.equals(strH) && !strH.startsWith("digits")) {
                    z = false;
                }
                wicVar.p(z);
                return;
            }
            if ("text-decoration".equals(strF)) {
                if (TtmlNode.UNDERLINE.equals(strH)) {
                    wicVar.A(true);
                    return;
                }
                return;
            }
            if ("font-family".equals(strF)) {
                wicVar.r(strH);
                return;
            }
            if ("font-weight".equals(strF)) {
                if (TtmlNode.BOLD.equals(strH)) {
                    wicVar.o(true);
                }
            } else if ("font-style".equals(strF)) {
                if (TtmlNode.ITALIC.equals(strH)) {
                    wicVar.u(true);
                }
            } else if ("font-size".equals(strF)) {
                e(strH, wicVar);
            }
        }
    }

    public static char k(qw7 qw7Var, int i) {
        return (char) qw7Var.d()[i];
    }

    public static String l(qw7 qw7Var) {
        int iE = qw7Var.e();
        int iF = qw7Var.f();
        boolean z = false;
        while (iE < iF && !z) {
            int i = iE + 1;
            z = ((char) qw7Var.d()[iE]) == ')';
            iE = i;
        }
        return qw7Var.z((iE - 1) - qw7Var.e()).trim();
    }

    public static void m(qw7 qw7Var) {
        while (!TextUtils.isEmpty(qw7Var.readLine())) {
        }
    }

    public static void n(qw7 qw7Var) {
        while (true) {
            for (boolean z = true; qw7Var.a() > 0 && z; z = false) {
                if (!c(qw7Var) && !b(qw7Var)) {
                }
            }
            return;
        }
    }

    public final void a(wic wicVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        if (iIndexOf != -1) {
            Matcher matcher = c.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                wicVar.z((String) zi.e(matcher.group(1)));
            }
            str = str.substring(0, iIndexOf);
        }
        String[] strArrF0 = blb.F0(str, "\\.");
        String str2 = strArrF0[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            wicVar.y(str2.substring(0, iIndexOf2));
            wicVar.x(str2.substring(iIndexOf2 + 1));
        } else {
            wicVar.y(str2);
        }
        if (strArrF0.length > 1) {
            wicVar.w((String[]) blb.y0(strArrF0, 1, strArrF0.length));
        }
    }

    public List d(qw7 qw7Var) {
        this.b.setLength(0);
        int iE = qw7Var.e();
        m(qw7Var);
        this.a.M(qw7Var.d(), qw7Var.e());
        this.a.O(iE);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strI = i(this.a, this.b);
            if (strI == null || !"{".equals(g(this.a, this.b))) {
                return arrayList;
            }
            wic wicVar = new wic();
            a(wicVar, strI);
            String str = null;
            boolean z = false;
            while (!z) {
                int iE2 = this.a.e();
                String strG = g(this.a, this.b);
                boolean z2 = strG == null || StringSubstitutor.DEFAULT_VAR_END.equals(strG);
                if (!z2) {
                    this.a.O(iE2);
                    j(this.a, wicVar, this.b);
                }
                str = strG;
                z = z2;
            }
            if (StringSubstitutor.DEFAULT_VAR_END.equals(str)) {
                arrayList.add(wicVar);
            }
        }
    }
}
