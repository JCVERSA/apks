package defpackage;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.apache.commons.lang3.BooleanUtils;

public abstract class j1a extends g1a {

    public static final class a implements pc9 {
        public final CharSequence a;

        public a(CharSequence charSequence) {
            this.a = charSequence;
        }

        @Override
        public Iterator iterator() {
            return new hl5(this.a);
        }
    }

    public static pc9 A0(CharSequence charSequence, char[] cArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return y0(charSequence, cArr, i, z, i2);
    }

    public static pc9 B0(CharSequence charSequence, String[] strArr, int i, boolean z, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        return z0(charSequence, strArr, i, z, i2);
    }

    public static final Pair C0(char[] cArr, boolean z, CharSequence charSequence, int i) {
        y45.j(charSequence, "$this$DelimitedRangesSequence");
        int iN0 = n0(charSequence, cArr, i, z);
        if (iN0 < 0) {
            return null;
        }
        return abb.a(Integer.valueOf(iN0), 1);
    }

    public static final Pair D0(List list, boolean z, CharSequence charSequence, int i) {
        y45.j(charSequence, "$this$DelimitedRangesSequence");
        Pair pairE0 = e0(charSequence, list, i, z, false);
        if (pairE0 != null) {
            return abb.a(pairE0.getFirst(), Integer.valueOf(((String) pairE0.getSecond()).length()));
        }
        return null;
    }

    public static final boolean E0(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        y45.j(charSequence, "<this>");
        y45.j(charSequence2, "other");
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!ov0.f(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static String F0(String str, CharSequence charSequence) {
        y45.j(str, "<this>");
        y45.j(charSequence, "prefix");
        if (!S0(str, charSequence, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(charSequence.length());
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String G0(String str, CharSequence charSequence) {
        y45.j(str, "<this>");
        y45.j(charSequence, "suffix");
        if (!d0(str, charSequence, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(0, str.length() - charSequence.length());
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String H0(String str, CharSequence charSequence) {
        y45.j(str, "<this>");
        y45.j(charSequence, TtmlNode.RUBY_DELIMITER);
        return I0(str, charSequence, charSequence);
    }

    public static final String I0(String str, CharSequence charSequence, CharSequence charSequence2) {
        y45.j(str, "<this>");
        y45.j(charSequence, "prefix");
        y45.j(charSequence2, "suffix");
        if (str.length() < charSequence.length() + charSequence2.length() || !S0(str, charSequence, false, 2, null) || !d0(str, charSequence2, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(charSequence.length(), str.length() - charSequence2.length());
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final void J0(int i) {
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i).toString());
    }

    public static final List K0(CharSequence charSequence, char[] cArr, boolean z, int i) {
        y45.j(charSequence, "<this>");
        y45.j(cArr, "delimiters");
        if (cArr.length == 1) {
            return M0(charSequence, String.valueOf(cArr[0]), z, i);
        }
        Iterable iterableY = SequencesKt___SequencesKt.y(A0(charSequence, cArr, 0, z, i, 2, null));
        ArrayList arrayList = new ArrayList(z71.v(iterableY, 10));
        Iterator it = iterableY.iterator();
        while (it.hasNext()) {
            arrayList.add(T0(charSequence, (u15) it.next()));
        }
        return arrayList;
    }

    public static final List L0(CharSequence charSequence, String[] strArr, boolean z, int i) {
        y45.j(charSequence, "<this>");
        y45.j(strArr, "delimiters");
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                return M0(charSequence, str, z, i);
            }
        }
        Iterable iterableY = SequencesKt___SequencesKt.y(B0(charSequence, strArr, 0, z, i, 2, null));
        ArrayList arrayList = new ArrayList(z71.v(iterableY, 10));
        Iterator it = iterableY.iterator();
        while (it.hasNext()) {
            arrayList.add(T0(charSequence, (u15) it.next()));
        }
        return arrayList;
    }

    public static final List M0(CharSequence charSequence, String str, boolean z, int i) {
        J0(i);
        int length = 0;
        int iI0 = i0(charSequence, str, 0, z);
        if (iI0 == -1 || i == 1) {
            return x71.e(charSequence.toString());
        }
        boolean z2 = i > 0;
        ArrayList arrayList = new ArrayList(z2 ? wn8.g(i, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iI0).toString());
            length = str.length() + iI0;
            if (z2 && arrayList.size() == i - 1) {
                break;
            }
            iI0 = i0(charSequence, str, length, z);
        } while (iI0 != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static List N0(CharSequence charSequence, char[] cArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return K0(charSequence, cArr, z, i);
    }

    public static List O0(CharSequence charSequence, String[] strArr, boolean z, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return L0(charSequence, strArr, z, i);
    }

    public static final boolean P0(CharSequence charSequence, char c, boolean z) {
        y45.j(charSequence, "<this>");
        return charSequence.length() > 0 && ov0.f(charSequence.charAt(0), c, z);
    }

    public static final boolean Q0(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        y45.j(charSequence, "<this>");
        y45.j(charSequence2, "prefix");
        return (!z && (charSequence instanceof String) && (charSequence2 instanceof String)) ? g1a.R((String) charSequence, (String) charSequence2, false, 2, null) : E0(charSequence, 0, charSequence2, 0, charSequence2.length(), z);
    }

    public static boolean R0(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return P0(charSequence, c, z);
    }

    public static boolean S0(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return Q0(charSequence, charSequence2, z);
    }

    public static final String T0(CharSequence charSequence, u15 u15Var) {
        y45.j(charSequence, "<this>");
        y45.j(u15Var, SessionDescription.ATTR_RANGE);
        return charSequence.subSequence(u15Var.getStart().intValue(), u15Var.getEndInclusive().intValue() + 1).toString();
    }

    public static final boolean U(CharSequence charSequence, char c, boolean z) {
        y45.j(charSequence, "<this>");
        return l0(charSequence, c, 0, z, 2, null) >= 0;
    }

    public static String U0(String str, char c, String str2) {
        y45.j(str, "<this>");
        y45.j(str2, "missingDelimiterValue");
        int iL0 = l0(str, c, 0, false, 6, null);
        if (iL0 == -1) {
            return str2;
        }
        String strSubstring = str.substring(iL0 + 1, str.length());
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static boolean V(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        y45.j(charSequence, "<this>");
        y45.j(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (m0(charSequence, (String) charSequence2, 0, z, 2, null) < 0) {
                return false;
            }
        } else if (k0(charSequence, charSequence2, 0, charSequence.length(), z, false, 16, null) < 0) {
            return false;
        }
        return true;
    }

    public static String V0(String str, String str2, String str3) {
        y45.j(str, "<this>");
        y45.j(str2, TtmlNode.RUBY_DELIMITER);
        y45.j(str3, "missingDelimiterValue");
        int iM0 = m0(str, str2, 0, false, 6, null);
        if (iM0 == -1) {
            return str3;
        }
        String strSubstring = str.substring(iM0 + str2.length(), str.length());
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static boolean W(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return U(charSequence, c, z);
    }

    public static String W0(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return U0(str, c, str2);
    }

    public static boolean X(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return V(charSequence, charSequence2, z);
    }

    public static String X0(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return V0(str, str2, str3);
    }

    public static final boolean Y(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return g1a.E((String) charSequence, (String) charSequence2, true);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!ov0.f(charSequence.charAt(i), charSequence2.charAt(i), true)) {
                return false;
            }
        }
        return true;
    }

    public static String Y0(String str, char c, String str2) {
        y45.j(str, "<this>");
        y45.j(str2, "missingDelimiterValue");
        int iR0 = r0(str, c, 0, false, 6, null);
        if (iR0 == -1) {
            return str2;
        }
        String strSubstring = str.substring(iR0 + 1, str.length());
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean Z(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return y45.e(charSequence, charSequence2);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence == null || charSequence2 == null || charSequence.length() != charSequence2.length()) {
            return false;
        }
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (charSequence.charAt(i) != charSequence2.charAt(i)) {
                return false;
            }
        }
        return true;
    }

    public static String Z0(String str, String str2, String str3) {
        y45.j(str, "<this>");
        y45.j(str2, TtmlNode.RUBY_DELIMITER);
        y45.j(str3, "missingDelimiterValue");
        int iS0 = s0(str, str2, 0, false, 6, null);
        if (iS0 == -1) {
            return str3;
        }
        String strSubstring = str.substring(iS0 + str2.length(), str.length());
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean a0(CharSequence charSequence, char c, boolean z) {
        y45.j(charSequence, "<this>");
        return charSequence.length() > 0 && ov0.f(charSequence.charAt(g0(charSequence)), c, z);
    }

    public static String a1(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return Y0(str, c, str2);
    }

    public static final boolean b0(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        y45.j(charSequence, "<this>");
        y45.j(charSequence2, "suffix");
        return (!z && (charSequence instanceof String) && (charSequence2 instanceof String)) ? g1a.D((String) charSequence, (String) charSequence2, false, 2, null) : E0(charSequence, charSequence.length() - charSequence2.length(), charSequence2, 0, charSequence2.length(), z);
    }

    public static final String b1(String str, char c, String str2) {
        y45.j(str, "<this>");
        y45.j(str2, "missingDelimiterValue");
        int iL0 = l0(str, c, 0, false, 6, null);
        if (iL0 == -1) {
            return str2;
        }
        String strSubstring = str.substring(0, iL0);
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static boolean c0(CharSequence charSequence, char c, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return a0(charSequence, c, z);
    }

    public static final String c1(String str, String str2, String str3) {
        y45.j(str, "<this>");
        y45.j(str2, TtmlNode.RUBY_DELIMITER);
        y45.j(str3, "missingDelimiterValue");
        int iM0 = m0(str, str2, 0, false, 6, null);
        if (iM0 == -1) {
            return str3;
        }
        String strSubstring = str.substring(0, iM0);
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static boolean d0(CharSequence charSequence, CharSequence charSequence2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return b0(charSequence, charSequence2, z);
    }

    public static String d1(String str, char c, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = str;
        }
        return b1(str, c, str2);
    }

    public static final Pair e0(CharSequence charSequence, Collection collection, int i, boolean z, boolean z2) {
        Object next;
        String str;
        Object next2;
        String str2;
        if (!z && collection.size() == 1) {
            String str3 = (String) i81.N0(collection);
            int iM0 = !z2 ? m0(charSequence, str3, i, false, 4, null) : s0(charSequence, str3, i, false, 4, null);
            if (iM0 < 0) {
                return null;
            }
            return abb.a(Integer.valueOf(iM0), str3);
        }
        s15 u15Var = !z2 ? new u15(wn8.d(i, 0), charSequence.length()) : wn8.m(wn8.g(i, g0(charSequence)), 0);
        if (charSequence instanceof String) {
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iF = u15Var.f();
            if ((iF > 0 && iB <= iC) || (iF < 0 && iC <= iB)) {
                while (true) {
                    Iterator it = collection.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        str2 = (String) next2;
                    } while (!g1a.H(str2, 0, (String) charSequence, iB, str2.length(), z));
                    String str4 = (String) next2;
                    if (str4 != null) {
                        return abb.a(Integer.valueOf(iB), str4);
                    }
                    if (iB != iC) {
                        iB += iF;
                    }
                }
            }
        } else {
            int iB2 = u15Var.b();
            int iC2 = u15Var.c();
            int iF2 = u15Var.f();
            if ((iF2 > 0 && iB2 <= iC2) || (iF2 < 0 && iC2 <= iB2)) {
                while (true) {
                    Iterator it2 = collection.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        str = (String) next;
                    } while (!E0(str, 0, charSequence, iB2, str.length(), z));
                    String str5 = (String) next;
                    if (str5 != null) {
                        return abb.a(Integer.valueOf(iB2), str5);
                    }
                    if (iB2 != iC2) {
                        iB2 += iF2;
                    }
                }
            }
        }
        return null;
    }

    public static String e1(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return c1(str, str2, str3);
    }

    public static u15 f0(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        return new u15(0, charSequence.length() - 1);
    }

    public static String f1(String str, String str2, String str3) {
        y45.j(str, "<this>");
        y45.j(str2, TtmlNode.RUBY_DELIMITER);
        y45.j(str3, "missingDelimiterValue");
        int iS0 = s0(str, str2, 0, false, 6, null);
        if (iS0 == -1) {
            return str3;
        }
        String strSubstring = str.substring(0, iS0);
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static int g0(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static String g1(String str, String str2, String str3, int i, Object obj) {
        if ((i & 2) != 0) {
            str3 = str;
        }
        return f1(str, str2, str3);
    }

    public static final int h0(CharSequence charSequence, char c, int i, boolean z) {
        y45.j(charSequence, "<this>");
        return (z || !(charSequence instanceof String)) ? n0(charSequence, new char[]{c}, i, z) : ((String) charSequence).indexOf(c, i);
    }

    public static Boolean h1(String str) {
        y45.j(str, "<this>");
        if (y45.e(str, BooleanUtils.TRUE)) {
            return Boolean.TRUE;
        }
        if (y45.e(str, BooleanUtils.FALSE)) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static final int i0(CharSequence charSequence, String str, int i, boolean z) {
        y45.j(charSequence, "<this>");
        y45.j(str, "string");
        return (z || !(charSequence instanceof String)) ? k0(charSequence, str, i, charSequence.length(), z, false, 16, null) : ((String) charSequence).indexOf(str, i);
    }

    public static CharSequence i1(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zC = kotlin.text.a.c(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final int j0(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        s15 u15Var = !z2 ? new u15(wn8.d(i, 0), wn8.g(i2, charSequence.length())) : wn8.m(wn8.g(i, g0(charSequence)), wn8.d(i2, 0));
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iF = u15Var.f();
            if ((iF <= 0 || iB > iC) && (iF >= 0 || iC > iB)) {
                return -1;
            }
            while (!E0(charSequence2, 0, charSequence, iB, charSequence2.length(), z)) {
                if (iB == iC) {
                    return -1;
                }
                iB += iF;
            }
            return iB;
        }
        int iB2 = u15Var.b();
        int iC2 = u15Var.c();
        int iF2 = u15Var.f();
        if ((iF2 <= 0 || iB2 > iC2) && (iF2 >= 0 || iC2 > iB2)) {
            return -1;
        }
        while (true) {
            String str = (String) charSequence2;
            if (g1a.H(str, 0, (String) charSequence, iB2, str.length(), z)) {
                return iB2;
            }
            if (iB2 == iC2) {
                return -1;
            }
            iB2 += iF2;
        }
    }

    public static String j1(String str, char... cArr) {
        y45.j(str, "<this>");
        y45.j(cArr, "chars");
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zM = hi.M(cArr, str.charAt(!z ? i : length));
            if (z) {
                if (!zM) {
                    break;
                }
                length--;
            } else if (zM) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1).toString();
    }

    public static int k0(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2, int i3, Object obj) {
        if ((i3 & 16) != 0) {
            z2 = false;
        }
        return j0(charSequence, charSequence2, i, i2, z, z2);
    }

    public static CharSequence k1(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i = length - 1;
                if (!kotlin.text.a.c(charSequence.charAt(length))) {
                    return charSequence.subSequence(0, length + 1);
                }
                if (i >= 0) {
                    length = i;
                }
            }
        }
        return "";
    }

    public static int l0(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return h0(charSequence, c, i, z);
    }

    public static String l1(String str, char... cArr) {
        CharSequence charSequenceSubSequence;
        y45.j(str, "<this>");
        y45.j(cArr, "chars");
        int length = str.length() - 1;
        if (length < 0) {
            charSequenceSubSequence = "";
            break;
        }
        while (true) {
            int i = length - 1;
            if (!hi.M(cArr, str.charAt(length))) {
                charSequenceSubSequence = str.subSequence(0, length + 1);
                break;
            }
            if (i < 0) {
                charSequenceSubSequence = "";
                break;
            }
            length = i;
        }
        return charSequenceSubSequence.toString();
    }

    public static int m0(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return i0(charSequence, str, i, z);
    }

    public static CharSequence m1(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!kotlin.text.a.c(charSequence.charAt(i))) {
                return charSequence.subSequence(i, charSequence.length());
            }
        }
        return "";
    }

    public static final int n0(CharSequence charSequence, char[] cArr, int i, boolean z) {
        y45.j(charSequence, "<this>");
        y45.j(cArr, "chars");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(hi.E0(cArr), i);
        }
        int iD = wn8.d(i, 0);
        int iG0 = g0(charSequence);
        if (iD > iG0) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(iD);
            for (char c : cArr) {
                if (ov0.f(c, cCharAt, z)) {
                    return iD;
                }
            }
            if (iD == iG0) {
                return -1;
            }
            iD++;
        }
    }

    public static boolean o0(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        for (int i = 0; i < charSequence.length(); i++) {
            if (!kotlin.text.a.c(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static final int p0(CharSequence charSequence, char c, int i, boolean z) {
        y45.j(charSequence, "<this>");
        return (z || !(charSequence instanceof String)) ? t0(charSequence, new char[]{c}, i, z) : ((String) charSequence).lastIndexOf(c, i);
    }

    public static final int q0(CharSequence charSequence, String str, int i, boolean z) {
        y45.j(charSequence, "<this>");
        y45.j(str, "string");
        return (z || !(charSequence instanceof String)) ? j0(charSequence, str, i, 0, z, true) : ((String) charSequence).lastIndexOf(str, i);
    }

    public static int r0(CharSequence charSequence, char c, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = g0(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return p0(charSequence, c, i, z);
    }

    public static int s0(CharSequence charSequence, String str, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = g0(charSequence);
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return q0(charSequence, str, i, z);
    }

    public static final int t0(CharSequence charSequence, char[] cArr, int i, boolean z) {
        y45.j(charSequence, "<this>");
        y45.j(cArr, "chars");
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(hi.E0(cArr), i);
        }
        for (int iG = wn8.g(i, g0(charSequence)); -1 < iG; iG--) {
            char cCharAt = charSequence.charAt(iG);
            for (char c : cArr) {
                if (ov0.f(c, cCharAt, z)) {
                    return iG;
                }
            }
        }
        return -1;
    }

    public static final pc9 u0(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        return new a(charSequence);
    }

    public static final List v0(CharSequence charSequence) {
        y45.j(charSequence, "<this>");
        return SequencesKt___SequencesKt.c0(u0(charSequence));
    }

    public static final CharSequence w0(CharSequence charSequence, int i, char c) {
        y45.j(charSequence, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException("Desired length " + i + " is less than zero.");
        }
        if (i <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i);
        int length = i - charSequence.length();
        int i2 = 1;
        if (1 <= length) {
            while (true) {
                sb.append(c);
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        sb.append(charSequence);
        return sb;
    }

    public static String x0(String str, int i, char c) {
        y45.j(str, "<this>");
        return w0(str, i, c).toString();
    }

    public static final pc9 y0(CharSequence charSequence, final char[] cArr, int i, final boolean z, int i2) {
        J0(i2);
        return new i82(charSequence, i, i2, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return j1a.C0(cArr, z, (CharSequence) obj, ((Integer) obj2).intValue());
            }
        });
    }

    public static final pc9 z0(CharSequence charSequence, String[] strArr, int i, final boolean z, int i2) {
        J0(i2);
        final List listF = fi.f(strArr);
        return new i82(charSequence, i, i2, new s74() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return j1a.D0(listF, z, (CharSequence) obj, ((Integer) obj2).intValue());
            }
        });
    }
}
