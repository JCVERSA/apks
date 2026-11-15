package q3;

import android.text.TextUtils;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.k;
import androidx.media3.common.util.u;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class b {

    private static final Pattern f69332c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    private static final Pattern f69333d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    private final j0 f69334a = new j0();

    private final StringBuilder f69335b = new StringBuilder();

    private void a(c cVar, String str) {
        if ("".equals(str)) {
            return;
        }
        int iIndexOf = str.indexOf(91);
        if (iIndexOf != -1) {
            Matcher matcher = f69332c.matcher(str.substring(iIndexOf));
            if (matcher.matches()) {
                cVar.z((String) androidx.media3.common.util.a.e(matcher.group(1)));
            }
            str = str.substring(0, iIndexOf);
        }
        String[] strArrO1 = a1.o1(str, "\\.");
        String str2 = strArrO1[0];
        int iIndexOf2 = str2.indexOf(35);
        if (iIndexOf2 != -1) {
            cVar.y(str2.substring(0, iIndexOf2));
            cVar.x(str2.substring(iIndexOf2 + 1));
        } else {
            cVar.y(str2);
        }
        if (strArrO1.length > 1) {
            cVar.w((String[]) a1.Y0(strArrO1, 1, strArrO1.length));
        }
    }

    private static boolean b(j0 j0Var) {
        int iF = j0Var.f();
        int iG = j0Var.g();
        byte[] bArrE = j0Var.e();
        if (iF + 2 > iG) {
            return false;
        }
        int i10 = iF + 1;
        if (bArrE[iF] != 47) {
            return false;
        }
        int i11 = iF + 2;
        if (bArrE[i10] != 42) {
            return false;
        }
        while (true) {
            int i12 = i11 + 1;
            if (i12 >= iG) {
                j0Var.X(iG - j0Var.f());
                return true;
            }
            if (((char) bArrE[i11]) == '*' && ((char) bArrE[i12]) == '/') {
                i11 += 2;
                iG = i11;
            } else {
                i11 = i12;
            }
        }
    }

    private static boolean c(j0 j0Var) {
        char cK = k(j0Var, j0Var.f());
        if (cK != '\t' && cK != '\n' && cK != '\f' && cK != '\r' && cK != ' ') {
            return false;
        }
        j0Var.X(1);
        return true;
    }

    private static void e(String str, c cVar) {
        Matcher matcher = f69333d.matcher(com.google.common.base.a.e(str));
        if (!matcher.matches()) {
            u.h("WebvttCssParser", "Invalid font-size: '" + str + "'.");
            return;
        }
        String str2 = (String) androidx.media3.common.util.a.e(matcher.group(2));
        str2.hashCode();
        switch (str2) {
            case "%":
                cVar.t(3);
                break;
            case "em":
                cVar.t(2);
                break;
            case "px":
                cVar.t(1);
                break;
            default:
                throw new IllegalStateException();
        }
        cVar.s(Float.parseFloat((String) androidx.media3.common.util.a.e(matcher.group(1))));
    }

    private static String f(j0 j0Var, StringBuilder sb2) {
        boolean z10 = false;
        sb2.setLength(0);
        int iF = j0Var.f();
        int iG = j0Var.g();
        while (iF < iG && !z10) {
            char c10 = (char) j0Var.e()[iF];
            if ((c10 < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && !((c10 >= '0' && c10 <= '9') || c10 == '#' || c10 == '-' || c10 == '.' || c10 == '_'))) {
                z10 = true;
            } else {
                iF++;
                sb2.append(c10);
            }
        }
        j0Var.X(iF - j0Var.f());
        return sb2.toString();
    }

    static String g(j0 j0Var, StringBuilder sb2) {
        n(j0Var);
        if (j0Var.a() == 0) {
            return null;
        }
        String strF = f(j0Var, sb2);
        if (!"".equals(strF)) {
            return strF;
        }
        return "" + ((char) j0Var.H());
    }

    private static String h(j0 j0Var, StringBuilder sb2) {
        StringBuilder sb3 = new StringBuilder();
        boolean z10 = false;
        while (!z10) {
            int iF = j0Var.f();
            String strG = g(j0Var, sb2);
            if (strG == null) {
                return null;
            }
            if ("}".equals(strG) || ";".equals(strG)) {
                j0Var.W(iF);
                z10 = true;
            } else {
                sb3.append(strG);
            }
        }
        return sb3.toString();
    }

    private static String i(j0 j0Var, StringBuilder sb2) {
        n(j0Var);
        if (j0Var.a() < 5 || !"::cue".equals(j0Var.E(5))) {
            return null;
        }
        int iF = j0Var.f();
        String strG = g(j0Var, sb2);
        if (strG == null) {
            return null;
        }
        if ("{".equals(strG)) {
            j0Var.W(iF);
            return "";
        }
        String strL = "(".equals(strG) ? l(j0Var) : null;
        if (")".equals(g(j0Var, sb2))) {
            return strL;
        }
        return null;
    }

    private static void j(j0 j0Var, c cVar, StringBuilder sb2) {
        n(j0Var);
        String strF = f(j0Var, sb2);
        if (!"".equals(strF) && ":".equals(g(j0Var, sb2))) {
            n(j0Var);
            String strH = h(j0Var, sb2);
            if (strH == null || "".equals(strH)) {
                return;
            }
            int iF = j0Var.f();
            String strG = g(j0Var, sb2);
            if (!";".equals(strG)) {
                if (!"}".equals(strG)) {
                    return;
                } else {
                    j0Var.W(iF);
                }
            }
            if (TtmlNode.ATTR_TTS_COLOR.equals(strF)) {
                cVar.q(k.b(strH));
                return;
            }
            if ("background-color".equals(strF)) {
                cVar.n(k.b(strH));
                return;
            }
            boolean z10 = true;
            if ("ruby-position".equals(strF)) {
                if ("over".equals(strH)) {
                    cVar.v(1);
                    return;
                } else {
                    if ("under".equals(strH)) {
                        cVar.v(2);
                        return;
                    }
                    return;
                }
            }
            if ("text-combine-upright".equals(strF)) {
                if (!IntegrationConstants.NAVIGATION_BAR_ALL_ACTION.equals(strH) && !strH.startsWith("digits")) {
                    z10 = false;
                }
                cVar.p(z10);
                return;
            }
            if ("text-decoration".equals(strF)) {
                if (TtmlNode.UNDERLINE.equals(strH)) {
                    cVar.A(true);
                    return;
                }
                return;
            }
            if ("font-family".equals(strF)) {
                cVar.r(strH);
                return;
            }
            if ("font-weight".equals(strF)) {
                if (TtmlNode.BOLD.equals(strH)) {
                    cVar.o(true);
                }
            } else if ("font-style".equals(strF)) {
                if (TtmlNode.ITALIC.equals(strH)) {
                    cVar.u(true);
                }
            } else if ("font-size".equals(strF)) {
                e(strH, cVar);
            }
        }
    }

    private static char k(j0 j0Var, int i10) {
        return (char) j0Var.e()[i10];
    }

    private static String l(j0 j0Var) {
        int iF = j0Var.f();
        int iG = j0Var.g();
        boolean z10 = false;
        while (iF < iG && !z10) {
            int i10 = iF + 1;
            z10 = ((char) j0Var.e()[iF]) == ')';
            iF = i10;
        }
        return j0Var.E((iF - 1) - j0Var.f()).trim();
    }

    static void m(j0 j0Var) {
        while (!TextUtils.isEmpty(j0Var.s())) {
        }
    }

    static void n(j0 j0Var) {
        while (true) {
            for (boolean z10 = true; j0Var.a() > 0 && z10; z10 = false) {
                if (!c(j0Var) && !b(j0Var)) {
                }
            }
            return;
        }
    }

    public List d(j0 j0Var) {
        this.f69335b.setLength(0);
        int iF = j0Var.f();
        m(j0Var);
        this.f69334a.U(j0Var.e(), j0Var.f());
        this.f69334a.W(iF);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strI = i(this.f69334a, this.f69335b);
            if (strI == null) {
                return arrayList;
            }
            if (!"{".equals(g(this.f69334a, this.f69335b))) {
                return arrayList;
            }
            c cVar = new c();
            a(cVar, strI);
            String str = null;
            boolean z10 = false;
            while (!z10) {
                int iF2 = this.f69334a.f();
                String strG = g(this.f69334a, this.f69335b);
                boolean z11 = strG == null || "}".equals(strG);
                if (!z11) {
                    this.f69334a.W(iF2);
                    j(this.f69334a, cVar, this.f69335b);
                }
                str = strG;
                z10 = z11;
            }
            if ("}".equals(str)) {
                arrayList.add(cVar);
            }
        }
    }
}
