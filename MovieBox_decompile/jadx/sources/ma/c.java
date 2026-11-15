package ma;

import android.text.TextUtils;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class c {

    private static final Pattern f66296c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    private static final Pattern f66297d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    private final d0 f66298a = new d0();

    private final StringBuilder f66299b = new StringBuilder();

    private void a(d dVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        if (iIndexOf != -1) {
            Matcher matcher = f66296c.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                dVar.z((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
            }
            str = str.substring(0, iIndexOf);
        }
        String[] strArrS0 = p0.S0(str, "\\.");
        String str2 = strArrS0[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            dVar.y(str2.substring(0, iIndexOf2));
            dVar.x(str2.substring(iIndexOf2 + 1));
        } else {
            dVar.y(str2);
        }
        if (strArrS0.length > 1) {
            dVar.w((String[]) p0.H0(strArrS0, 1, strArrS0.length));
        }
    }

    private static boolean b(d0 d0Var) {
        int iE = d0Var.e();
        int iF = d0Var.f();
        byte[] bArrD = d0Var.d();
        if (iE + 2 > iF) {
            return false;
        }
        int i10 = iE + 1;
        if (bArrD[iE] != 47) {
            return false;
        }
        int i11 = iE + 2;
        if (bArrD[i10] != 42) {
            return false;
        }
        while (true) {
            int i12 = i11 + 1;
            if (i12 >= iF) {
                d0Var.Q(iF - d0Var.e());
                return true;
            }
            if (((char) bArrD[i11]) == '*' && ((char) bArrD[i12]) == '/') {
                i11 += 2;
                iF = i11;
            } else {
                i11 = i12;
            }
        }
    }

    private static boolean c(d0 d0Var) {
        char cK = k(d0Var, d0Var.e());
        if (cK != '\t' && cK != '\n' && cK != '\f' && cK != '\r' && cK != ' ') {
            return false;
        }
        d0Var.Q(1);
        return true;
    }

    private static void e(String str, d dVar) {
        Matcher matcher = f66297d.matcher(com.google.common.base.a.e(str));
        if (!matcher.matches()) {
            s.i("WebvttCssParser", "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) com.google.android.exoplayer2.util.a.e(matcher.group(2));
        str2.hashCode();
        switch (str2) {
            case "%":
                dVar.t(3);
                break;
            case "em":
                dVar.t(2);
                break;
            case "px":
                dVar.t(1);
                break;
            default:
                throw new IllegalStateException();
        }
        dVar.s(Float.parseFloat((String) com.google.android.exoplayer2.util.a.e(matcher.group(1))));
    }

    private static String f(d0 d0Var, StringBuilder sb2) {
        boolean z10 = false;
        sb2.setLength(0);
        int iE = d0Var.e();
        int iF = d0Var.f();
        while (iE < iF && !z10) {
            char c10 = (char) d0Var.d()[iE];
            if ((c10 < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && !((c10 >= '0' && c10 <= '9') || c10 == '#' || c10 == '-' || c10 == '.' || c10 == '_'))) {
                z10 = true;
            } else {
                iE++;
                sb2.append(c10);
            }
        }
        d0Var.Q(iE - d0Var.e());
        return sb2.toString();
    }

    static String g(d0 d0Var, StringBuilder sb2) {
        n(d0Var);
        if (d0Var.a() == 0) {
            return null;
        }
        String strF = f(d0Var, sb2);
        if (!"".equals(strF)) {
            return strF;
        }
        return "" + ((char) d0Var.D());
    }

    private static String h(d0 d0Var, StringBuilder sb2) {
        StringBuilder sb3 = new StringBuilder();
        boolean z10 = false;
        while (!z10) {
            int iE = d0Var.e();
            String strG = g(d0Var, sb2);
            if (strG == null) {
                return null;
            }
            if ("}".equals(strG) || ";".equals(strG)) {
                d0Var.P(iE);
                z10 = true;
            } else {
                sb3.append(strG);
            }
        }
        return sb3.toString();
    }

    private static String i(d0 d0Var, StringBuilder sb2) {
        n(d0Var);
        if (d0Var.a() < 5 || !"::cue".equals(d0Var.A(5))) {
            return null;
        }
        int iE = d0Var.e();
        String strG = g(d0Var, sb2);
        if (strG == null) {
            return null;
        }
        if ("{".equals(strG)) {
            d0Var.P(iE);
            return "";
        }
        String strL = "(".equals(strG) ? l(d0Var) : null;
        if (")".equals(g(d0Var, sb2))) {
            return strL;
        }
        return null;
    }

    private static void j(d0 d0Var, d dVar, StringBuilder sb2) {
        n(d0Var);
        String strF = f(d0Var, sb2);
        if (!"".equals(strF) && ":".equals(g(d0Var, sb2))) {
            n(d0Var);
            String strH = h(d0Var, sb2);
            if (strH == null || "".equals(strH)) {
                return;
            }
            int iE = d0Var.e();
            String strG = g(d0Var, sb2);
            if (!";".equals(strG)) {
                if (!"}".equals(strG)) {
                    return;
                } else {
                    d0Var.P(iE);
                }
            }
            if (TtmlNode.ATTR_TTS_COLOR.equals(strF)) {
                dVar.q(com.google.android.exoplayer2.util.g.b(strH));
                return;
            }
            if ("background-color".equals(strF)) {
                dVar.n(com.google.android.exoplayer2.util.g.b(strH));
                return;
            }
            boolean z10 = true;
            if ("ruby-position".equals(strF)) {
                if ("over".equals(strH)) {
                    dVar.v(1);
                    return;
                } else {
                    if ("under".equals(strH)) {
                        dVar.v(2);
                        return;
                    }
                    return;
                }
            }
            if ("text-combine-upright".equals(strF)) {
                if (!IntegrationConstants.NAVIGATION_BAR_ALL_ACTION.equals(strH) && !strH.startsWith("digits")) {
                    z10 = false;
                }
                dVar.p(z10);
                return;
            }
            if ("text-decoration".equals(strF)) {
                if (TtmlNode.UNDERLINE.equals(strH)) {
                    dVar.A(true);
                    return;
                }
                return;
            }
            if ("font-family".equals(strF)) {
                dVar.r(strH);
                return;
            }
            if ("font-weight".equals(strF)) {
                if (TtmlNode.BOLD.equals(strH)) {
                    dVar.o(true);
                }
            } else if ("font-style".equals(strF)) {
                if (TtmlNode.ITALIC.equals(strH)) {
                    dVar.u(true);
                }
            } else if ("font-size".equals(strF)) {
                e(strH, dVar);
            }
        }
    }

    private static char k(d0 d0Var, int i10) {
        return (char) d0Var.d()[i10];
    }

    private static String l(d0 d0Var) {
        int iE = d0Var.e();
        int iF = d0Var.f();
        boolean z10 = false;
        while (iE < iF && !z10) {
            int i10 = iE + 1;
            z10 = ((char) d0Var.d()[iE]) == ')';
            iE = i10;
        }
        return d0Var.A((iE - 1) - d0Var.e()).trim();
    }

    static void m(d0 d0Var) {
        while (!TextUtils.isEmpty(d0Var.p())) {
        }
    }

    static void n(d0 d0Var) {
        while (true) {
            for (boolean z10 = true; d0Var.a() > 0 && z10; z10 = false) {
                if (!c(d0Var) && !b(d0Var)) {
                }
            }
            return;
        }
    }

    public List d(d0 d0Var) {
        this.f66299b.setLength(0);
        int iE = d0Var.e();
        m(d0Var);
        this.f66298a.N(d0Var.d(), d0Var.e());
        this.f66298a.P(iE);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strI = i(this.f66298a, this.f66299b);
            if (strI == null) {
                return arrayList;
            }
            if (!"{".equals(g(this.f66298a, this.f66299b))) {
                return arrayList;
            }
            d dVar = new d();
            a(dVar, strI);
            String str = null;
            boolean z10 = false;
            while (!z10) {
                int iE2 = this.f66298a.e();
                String strG = g(this.f66298a, this.f66299b);
                boolean z11 = strG == null || "}".equals(strG);
                if (!z11) {
                    this.f66298a.P(iE2);
                    j(this.f66298a, dVar, this.f66299b);
                }
                str = strG;
                z10 = z11;
            }
            if ("}".equals(str)) {
                arrayList.add(dVar);
            }
        }
    }
}
