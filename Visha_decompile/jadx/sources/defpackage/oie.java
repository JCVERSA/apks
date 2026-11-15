package defpackage;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.text.StringSubstitutor;

public final class oie {
    public static final Pattern c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    public static final Pattern d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    public final u4h a = new u4h();
    public final StringBuilder b = new StringBuilder();

    public static String a(u4h u4hVar, StringBuilder sb) {
        c(u4hVar);
        if (u4hVar.u() == 0) {
            return null;
        }
        String strD = d(u4hVar, sb);
        if (!"".equals(strD)) {
            return strD;
        }
        char cG = (char) u4hVar.G();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cG);
        return sb2.toString();
    }

    public static void c(u4h u4hVar) {
        while (true) {
            for (boolean z = true; u4hVar.u() > 0 && z; z = false) {
                char c2 = (char) u4hVar.n()[u4hVar.w()];
                if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
                    u4hVar.m(1);
                } else {
                    int iW = u4hVar.w();
                    int iX = u4hVar.x();
                    byte[] bArrN = u4hVar.n();
                    if (iW + 2 <= iX) {
                        int i = iW + 1;
                        if (bArrN[iW] == 47) {
                            int i2 = iW + 2;
                            if (bArrN[i] == 42) {
                                while (true) {
                                    int i3 = i2 + 1;
                                    if (i3 >= iX) {
                                        break;
                                    }
                                    if (((char) bArrN[i2]) == '*' && ((char) bArrN[i3]) == '/') {
                                        iX = i2 + 2;
                                        i2 = iX;
                                    } else {
                                        i2 = i3;
                                    }
                                }
                                u4hVar.m(iX - u4hVar.w());
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            return;
        }
    }

    public static String d(u4h u4hVar, StringBuilder sb) {
        char c2;
        sb.setLength(0);
        int iW = u4hVar.w();
        int iX = u4hVar.x();
        loop0: while (true) {
            boolean z = false;
            while (true) {
                if (iW < iX && !z) {
                    c2 = (char) u4hVar.n()[iW];
                    if ((c2 >= 'A' && c2 <= 'Z') || ((c2 >= 'a' && c2 <= 'z') || ((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                        break;
                    }
                    z = true;
                } else {
                    break loop0;
                }
            }
            sb.append(c2);
            iW++;
        }
        u4hVar.m(iW - u4hVar.w());
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:103:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:104:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:106:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:107:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:109:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:113:0x020f  */
    /* JADX WARN: Code duplicated, block: B:116:0x0217  */
    /* JADX WARN: Code duplicated, block: B:118:0x021f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0227  */
    /* JADX WARN: Code duplicated, block: B:121:0x022c  */
    /* JADX WARN: Code duplicated, block: B:123:0x0234  */
    /* JADX WARN: Code duplicated, block: B:124:0x0239  */
    /* JADX WARN: Code duplicated, block: B:126:0x0241  */
    /* JADX WARN: Code duplicated, block: B:128:0x0249  */
    /* JADX WARN: Code duplicated, block: B:129:0x024e  */
    /* JADX WARN: Code duplicated, block: B:131:0x0256  */
    /* JADX WARN: Code duplicated, block: B:133:0x025e  */
    /* JADX WARN: Code duplicated, block: B:134:0x0263  */
    /* JADX WARN: Code duplicated, block: B:136:0x026b  */
    /* JADX WARN: Code duplicated, block: B:138:0x027b  */
    /* JADX WARN: Code duplicated, block: B:139:0x0297  */
    /* JADX WARN: Code duplicated, block: B:141:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:143:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:149:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:151:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:152:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:154:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:155:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:157:0x02d0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:158:0x02d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:159:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:162:0x02df  */
    /* JADX WARN: Code duplicated, block: B:163:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:175:0x02d9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:189:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:192:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:196:0x02f4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0040  */
    /* JADX WARN: Code duplicated, block: B:95:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:96:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:98:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:99:0x01d4  */
    /* JADX WARN: Instruction removed from duplicated block: B:138:0x027b, please report this as an issue */
    public final List b(u4h u4hVar) {
        String strTrim;
        String string;
        Matcher matcher;
        String strGroup;
        int iHashCode;
        byte b;
        boolean z;
        int i = -1;
        StringBuilder sb = this.b;
        int i2 = 0;
        sb.setLength(0);
        int iW = u4hVar.w();
        while (!TextUtils.isEmpty(u4hVar.T(StandardCharsets.UTF_8))) {
        }
        u4h u4hVar2 = this.a;
        u4hVar2.j(u4hVar.n(), u4hVar.w());
        u4hVar2.l(iW);
        ArrayList arrayList = new ArrayList();
        while (true) {
            c(u4hVar2);
            if (u4hVar2.u() >= 5 && "::cue".equals(u4hVar2.b(5, StandardCharsets.UTF_8))) {
                int iW2 = u4hVar2.w();
                String strA = a(u4hVar2, sb);
                if (strA == null) {
                    strTrim = null;
                } else if ("{".equals(strA)) {
                    u4hVar2.l(iW2);
                    strTrim = "";
                } else {
                    if ("(".equals(strA)) {
                        int iW3 = u4hVar2.w();
                        int iX = u4hVar2.x();
                        int i3 = i2;
                        while (iW3 < iX && i3 == 0) {
                            int i4 = iW3 + 1;
                            i3 = ((char) u4hVar2.n()[iW3]) == ')' ? 1 : i2;
                            iW3 = i4;
                        }
                        strTrim = u4hVar2.b((iW3 + i) - u4hVar2.w(), StandardCharsets.UTF_8).trim();
                    } else {
                        strTrim = null;
                    }
                    if (!")".equals(a(u4hVar2, sb))) {
                        strTrim = null;
                    }
                }
            } else {
                strTrim = null;
            }
            if (strTrim == null || !"{".equals(a(u4hVar2, sb))) {
                break;
            }
            pie pieVar = new pie();
            if (!"".equals(strTrim)) {
                int iIndexOf = strTrim.indexOf(91);
                if (iIndexOf != i) {
                    Matcher matcher2 = c.matcher(strTrim.substring(iIndexOf));
                    if (matcher2.matches()) {
                        String strGroup2 = matcher2.group(1);
                        strGroup2.getClass();
                        pieVar.w(strGroup2);
                    }
                    strTrim = strTrim.substring(i2, iIndexOf);
                }
                int i5 = kfh.a;
                String[] strArrSplit = strTrim.split("\\.", i);
                String str = strArrSplit[i2];
                int iIndexOf2 = str.indexOf(35);
                if (iIndexOf2 != i) {
                    pieVar.v(str.substring(i2, iIndexOf2));
                    pieVar.u(str.substring(iIndexOf2 + 1));
                } else {
                    pieVar.v(str);
                }
                int length = strArrSplit.length;
                if (length > 1) {
                    pieVar.t((String[]) Arrays.copyOfRange(strArrSplit, 1, length));
                }
            }
            int i6 = i2;
            String strA2 = null;
            while (i6 == 0) {
                int iW4 = u4hVar2.w();
                strA2 = a(u4hVar2, sb);
                int i7 = (strA2 == null || StringSubstitutor.DEFAULT_VAR_END.equals(strA2)) ? 1 : i2;
                if (i7 == 0) {
                    u4hVar2.l(iW4);
                    c(u4hVar2);
                    String strD = d(u4hVar2, sb);
                    if (!"".equals(strD) && StringUtils.PROCESS_POSTFIX_DELIMITER.equals(a(u4hVar2, sb))) {
                        c(u4hVar2);
                        StringBuilder sb2 = new StringBuilder();
                        int i8 = i2;
                        while (true) {
                            if (i8 != 0) {
                                string = sb2.toString();
                                break;
                            }
                            int iW5 = u4hVar2.w();
                            String strA3 = a(u4hVar2, sb);
                            if (strA3 == null) {
                                string = null;
                                break;
                            }
                            if (StringSubstitutor.DEFAULT_VAR_END.equals(strA3) || ProcessInfo.SPLIT_NEW_VERSION.equals(strA3)) {
                                u4hVar2.l(iW5);
                                i8 = 1;
                            } else {
                                sb2.append(strA3);
                            }
                        }
                        if (string != null && !"".equals(string)) {
                            int iW6 = u4hVar2.w();
                            String strA4 = a(u4hVar2, sb);
                            if (ProcessInfo.SPLIT_NEW_VERSION.equals(strA4)) {
                                if ("color".equals(strD)) {
                                    pieVar.l(qdg.a(string));
                                } else if ("background-color".equals(strD)) {
                                    pieVar.i(qdg.a(string));
                                } else if ("ruby-position".equals(strD)) {
                                    if ("over".equals(string)) {
                                        pieVar.q(1);
                                    } else if ("under".equals(string)) {
                                        pieVar.q(2);
                                    }
                                } else if ("text-combine-upright".equals(strD)) {
                                    if (TtmlNode.COMBINE_ALL.equals(string)) {
                                        z = true;
                                    } else {
                                        z = true;
                                    }
                                    pieVar.k(z);
                                } else if ("text-decoration".equals(strD)) {
                                    if (TtmlNode.UNDERLINE.equals(string)) {
                                        pieVar.r(true);
                                    }
                                } else if ("font-family".equals(strD)) {
                                    pieVar.m(string);
                                } else if ("font-weight".equals(strD)) {
                                    if (TtmlNode.BOLD.equals(string)) {
                                        pieVar.j(true);
                                    }
                                } else if ("font-style".equals(strD)) {
                                    if (TtmlNode.ITALIC.equals(string)) {
                                        pieVar.p(true);
                                    }
                                } else if ("font-size".equals(strD)) {
                                    matcher = d.matcher(d2i.a(string));
                                    if (matcher.matches()) {
                                        strGroup = matcher.group(2);
                                        strGroup.getClass();
                                        iHashCode = strGroup.hashCode();
                                        if (iHashCode != 37) {
                                            if (iHashCode != 3240) {
                                                if (iHashCode != 3592) {
                                                    b = -1;
                                                } else {
                                                    b = 0;
                                                }
                                            } else if (strGroup.equals("em")) {
                                                b = 1;
                                            } else {
                                                b = -1;
                                            }
                                        } else if (strGroup.equals("%")) {
                                            b = 2;
                                        } else {
                                            b = -1;
                                        }
                                        if (b != 0) {
                                            pieVar.o(1);
                                        } else if (b != 1) {
                                            pieVar.o(2);
                                        } else {
                                            if (b == 2) {
                                                throw new IllegalStateException();
                                            }
                                            pieVar.o(3);
                                        }
                                        String strGroup3 = matcher.group(1);
                                        strGroup3.getClass();
                                        pieVar.n(Float.parseFloat(strGroup3));
                                    } else {
                                        zrg.f("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                    }
                                } else {
                                    continue;
                                }
                            } else if (StringSubstitutor.DEFAULT_VAR_END.equals(strA4)) {
                                u4hVar2.l(iW6);
                                if ("color".equals(strD)) {
                                    pieVar.l(qdg.a(string));
                                } else if ("background-color".equals(strD)) {
                                    pieVar.i(qdg.a(string));
                                } else if ("ruby-position".equals(strD)) {
                                    if ("over".equals(string)) {
                                        pieVar.q(1);
                                    } else if ("under".equals(string)) {
                                        pieVar.q(2);
                                    }
                                } else if ("text-combine-upright".equals(strD)) {
                                    if (TtmlNode.COMBINE_ALL.equals(string) || string.startsWith("digits")) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    pieVar.k(z);
                                } else if ("text-decoration".equals(strD)) {
                                    if (TtmlNode.UNDERLINE.equals(string)) {
                                        pieVar.r(true);
                                    }
                                } else if ("font-family".equals(strD)) {
                                    pieVar.m(string);
                                } else if ("font-weight".equals(strD)) {
                                    if (TtmlNode.BOLD.equals(string)) {
                                        pieVar.j(true);
                                    }
                                } else if ("font-style".equals(strD)) {
                                    if (TtmlNode.ITALIC.equals(string)) {
                                        pieVar.p(true);
                                    }
                                } else if ("font-size".equals(strD)) {
                                    matcher = d.matcher(d2i.a(string));
                                    if (matcher.matches()) {
                                        zrg.f("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                    } else {
                                        strGroup = matcher.group(2);
                                        strGroup.getClass();
                                        iHashCode = strGroup.hashCode();
                                        if (iHashCode != 37) {
                                            if (iHashCode != 3240) {
                                                if (iHashCode != 3592 && strGroup.equals("px")) {
                                                    b = 0;
                                                } else {
                                                    b = -1;
                                                }
                                            } else if (strGroup.equals("em")) {
                                                b = 1;
                                            } else {
                                                b = -1;
                                            }
                                        } else if (strGroup.equals("%")) {
                                            b = 2;
                                        } else {
                                            b = -1;
                                        }
                                        if (b != 0) {
                                            pieVar.o(1);
                                        } else if (b != 1) {
                                            pieVar.o(2);
                                        } else {
                                            if (b == 2) {
                                                throw new IllegalStateException();
                                            }
                                            pieVar.o(3);
                                        }
                                        String strGroup4 = matcher.group(1);
                                        strGroup4.getClass();
                                        pieVar.n(Float.parseFloat(strGroup4));
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
                i6 = i7;
                i2 = 0;
            }
            if (StringSubstitutor.DEFAULT_VAR_END.equals(strA2)) {
                arrayList.add(pieVar);
            }
            i = -1;
            i2 = 0;
        }
        return arrayList;
    }
}
