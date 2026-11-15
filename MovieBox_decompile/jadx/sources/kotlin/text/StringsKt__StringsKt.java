package kotlin.text;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

public class StringsKt__StringsKt extends s {
    public static String A0(String str, int i10, char c10) {
        Intrinsics.h(str, "<this>");
        return z0(str, i10, c10).toString();
    }

    private static final Sequence B0(CharSequence charSequence, final char[] cArr, int i10, final boolean z10, int i11) {
        N0(i11);
        return new DelimitedRangesSequence(charSequence, i10, i11, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return StringsKt__StringsKt.F0(cArr, z10, (CharSequence) obj, ((Integer) obj2).intValue());
            }
        });
    }

    private static final Sequence C0(CharSequence charSequence, String[] strArr, int i10, final boolean z10, int i11) {
        N0(i11);
        final List listG = ArraysKt.g(strArr);
        return new DelimitedRangesSequence(charSequence, i10, i11, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return StringsKt__StringsKt.G0(listG, z10, (CharSequence) obj, ((Integer) obj2).intValue());
            }
        });
    }

    static Sequence D0(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return B0(charSequence, cArr, i10, z10, i11);
    }

    static Sequence E0(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return C0(charSequence, strArr, i10, z10, i11);
    }

    public static final Pair F0(char[] cArr, boolean z10, CharSequence DelimitedRangesSequence, int i10) {
        Intrinsics.h(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
        int iP0 = p0(DelimitedRangesSequence, cArr, i10, z10);
        if (iP0 < 0) {
            return null;
        }
        return TuplesKt.a(Integer.valueOf(iP0), 1);
    }

    public static final Pair G0(List list, boolean z10, CharSequence DelimitedRangesSequence, int i10) {
        Intrinsics.h(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
        Pair pairH0 = h0(DelimitedRangesSequence, list, i10, z10, false);
        if (pairH0 != null) {
            return TuplesKt.a(pairH0.getFirst(), Integer.valueOf(((String) pairH0.getSecond()).length()));
        }
        return null;
    }

    public static final boolean H0(CharSequence charSequence, int i10, CharSequence other, int i11, int i12, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(other, "other");
        if (i11 < 0 || i10 < 0 || i10 > charSequence.length() - i12 || i11 > other.length() - i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (!c.g(charSequence.charAt(i10 + i13), other.charAt(i11 + i13), z10)) {
                return false;
            }
        }
        return true;
    }

    public static String I0(String str, CharSequence prefix) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(prefix, "prefix");
        if (!W0(str, prefix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(prefix.length());
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String J0(String str, CharSequence suffix) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(suffix, "suffix");
        if (!StringsKt.g0(str, suffix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(0, str.length() - suffix.length());
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String K0(String str, CharSequence delimiter) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(delimiter, "delimiter");
        return L0(str, delimiter, delimiter);
    }

    public static final String L0(String str, CharSequence prefix, CharSequence suffix) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(suffix, "suffix");
        if (str.length() < prefix.length() + suffix.length() || !W0(str, prefix, false, 2, null) || !StringsKt.g0(str, suffix, false, 2, null)) {
            return str;
        }
        String strSubstring = str.substring(prefix.length(), str.length() - suffix.length());
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static CharSequence M0(CharSequence charSequence, int i10, int i11, CharSequence replacement) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(replacement, "replacement");
        if (i11 >= i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(charSequence, 0, i10);
            Intrinsics.g(sb2, "append(...)");
            sb2.append(replacement);
            sb2.append(charSequence, i11, charSequence.length());
            Intrinsics.g(sb2, "append(...)");
            return sb2;
        }
        throw new IndexOutOfBoundsException("End index (" + i11 + ") is less than start index (" + i10 + ").");
    }

    public static final void N0(int i10) {
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i10).toString());
    }

    public static final List O0(CharSequence charSequence, char[] delimiters, boolean z10, int i10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(delimiters, "delimiters");
        if (delimiters.length == 1) {
            return Q0(charSequence, String.valueOf(delimiters[0]), z10, i10);
        }
        Iterable iterableN = SequencesKt.n(D0(charSequence, delimiters, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iterableN, 10));
        Iterator it = iterableN.iterator();
        while (it.hasNext()) {
            arrayList.add(X0(charSequence, (IntRange) it.next()));
        }
        return arrayList;
    }

    public static final List P0(CharSequence charSequence, String[] delimiters, boolean z10, int i10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(delimiters, "delimiters");
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (str.length() != 0) {
                return Q0(charSequence, str, z10, i10);
            }
        }
        Iterable iterableN = SequencesKt.n(E0(charSequence, delimiters, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(CollectionsKt.v(iterableN, 10));
        Iterator it = iterableN.iterator();
        while (it.hasNext()) {
            arrayList.add(X0(charSequence, (IntRange) it.next()));
        }
        return arrayList;
    }

    private static final List Q0(CharSequence charSequence, String str, boolean z10, int i10) {
        N0(i10);
        int length = 0;
        int iK0 = StringsKt.k0(charSequence, str, 0, z10);
        if (iK0 == -1 || i10 == 1) {
            return CollectionsKt.e(charSequence.toString());
        }
        boolean z11 = i10 > 0;
        ArrayList arrayList = new ArrayList(z11 ? RangesKt.h(i10, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iK0).toString());
            length = str.length() + iK0;
            if (z11 && arrayList.size() == i10 - 1) {
                break;
            }
            iK0 = StringsKt.k0(charSequence, str, length, z10);
        } while (iK0 != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static List R0(CharSequence charSequence, char[] cArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return O0(charSequence, cArr, z10, i10);
    }

    public static List S0(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return P0(charSequence, strArr, z10, i10);
    }

    public static final boolean T0(CharSequence charSequence, char c10, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        return charSequence.length() > 0 && c.g(charSequence.charAt(0), c10, z10);
    }

    public static final boolean U0(CharSequence charSequence, CharSequence prefix, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(prefix, "prefix");
        return (!z10 && (charSequence instanceof String) && (prefix instanceof String)) ? StringsKt.W((String) charSequence, (String) prefix, false, 2, null) : H0(charSequence, 0, prefix, 0, prefix.length(), z10);
    }

    public static boolean V0(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return T0(charSequence, c10, z10);
    }

    public static boolean W0(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return U0(charSequence, charSequence2, z10);
    }

    public static final String X0(CharSequence charSequence, IntRange range) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(range, "range");
        return charSequence.subSequence(range.q().intValue(), range.p().intValue() + 1).toString();
    }

    public static final String Y0(String str, char c10, String missingDelimiterValue) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(missingDelimiterValue, "missingDelimiterValue");
        int iN0 = StringsKt.n0(str, c10, 0, false, 6, null);
        if (iN0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iN0 + 1, str.length());
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean Z(CharSequence charSequence, char c10, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        return StringsKt.n0(charSequence, c10, 0, z10, 2, null) >= 0;
    }

    public static final String Z0(String str, String delimiter, String missingDelimiterValue) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(delimiter, "delimiter");
        Intrinsics.h(missingDelimiterValue, "missingDelimiterValue");
        int iO0 = StringsKt.o0(str, delimiter, 0, false, 6, null);
        if (iO0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iO0 + delimiter.length(), str.length());
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static boolean a0(CharSequence charSequence, CharSequence other, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(other, "other");
        if (other instanceof String) {
            if (StringsKt.o0(charSequence, (String) other, 0, z10, 2, null) < 0) {
                return false;
            }
        } else if (m0(charSequence, other, 0, charSequence.length(), z10, false, 16, null) < 0) {
            return false;
        }
        return true;
    }

    public static String a1(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return Y0(str, c10, str2);
    }

    public static boolean b0(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return Z(charSequence, c10, z10);
    }

    public static String b1(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return Z0(str, str2, str3);
    }

    public static boolean c0(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return StringsKt.a0(charSequence, charSequence2, z10);
    }

    public static String c1(String str, char c10, String missingDelimiterValue) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(missingDelimiterValue, "missingDelimiterValue");
        int iU0 = StringsKt.u0(str, c10, 0, false, 6, null);
        if (iU0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iU0 + 1, str.length());
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean d0(CharSequence charSequence, char c10, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        return charSequence.length() > 0 && c.g(charSequence.charAt(StringsKt.i0(charSequence)), c10, z10);
    }

    public static String d1(String str, String delimiter, String missingDelimiterValue) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(delimiter, "delimiter");
        Intrinsics.h(missingDelimiterValue, "missingDelimiterValue");
        int iV0 = StringsKt.v0(str, delimiter, 0, false, 6, null);
        if (iV0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(iV0 + delimiter.length(), str.length());
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final boolean e0(CharSequence charSequence, CharSequence suffix, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(suffix, "suffix");
        return (!z10 && (charSequence instanceof String) && (suffix instanceof String)) ? StringsKt.G((String) charSequence, (String) suffix, false, 2, null) : H0(charSequence, charSequence.length() - suffix.length(), suffix, 0, suffix.length(), z10);
    }

    public static String e1(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return StringsKt.c1(str, c10, str2);
    }

    public static boolean f0(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return d0(charSequence, c10, z10);
    }

    public static String f1(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return StringsKt.d1(str, str2, str3);
    }

    public static boolean g0(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return e0(charSequence, charSequence2, z10);
    }

    public static final String g1(String str, String delimiter, String missingDelimiterValue) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(delimiter, "delimiter");
        Intrinsics.h(missingDelimiterValue, "missingDelimiterValue");
        int iO0 = StringsKt.o0(str, delimiter, 0, false, 6, null);
        if (iO0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iO0);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    private static final Pair h0(CharSequence charSequence, Collection collection, int i10, boolean z10, boolean z11) {
        Object next;
        String str;
        Object next2;
        String str2;
        if (!z10 && collection.size() == 1) {
            String str3 = (String) CollectionsKt.E0(collection);
            int iO0 = !z11 ? StringsKt.o0(charSequence, str3, i10, false, 4, null) : StringsKt.v0(charSequence, str3, i10, false, 4, null);
            if (iO0 < 0) {
                return null;
            }
            return TuplesKt.a(Integer.valueOf(iO0), str3);
        }
        IntProgression intRange = !z11 ? new IntRange(RangesKt.e(i10, 0), charSequence.length()) : RangesKt.o(RangesKt.h(i10, StringsKt.i0(charSequence)), 0);
        if (charSequence instanceof String) {
            int iF = intRange.getFirst();
            int i11 = intRange.getLast();
            int iL = intRange.getStep();
            if ((iL > 0 && iF <= i11) || (iL < 0 && i11 <= iF)) {
                while (true) {
                    Iterator it = collection.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        str2 = (String) next2;
                    } while (!StringsKt.K(str2, 0, (String) charSequence, iF, str2.length(), z10));
                    String str4 = (String) next2;
                    if (str4 != null) {
                        return TuplesKt.a(Integer.valueOf(iF), str4);
                    }
                    if (iF != i11) {
                        iF += iL;
                    }
                }
            }
        } else {
            int iF2 = intRange.getFirst();
            int i12 = intRange.getLast();
            int iL2 = intRange.getStep();
            if ((iL2 > 0 && iF2 <= i12) || (iL2 < 0 && i12 <= iF2)) {
                while (true) {
                    Iterator it2 = collection.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        str = (String) next;
                    } while (!H0(str, 0, charSequence, iF2, str.length(), z10));
                    String str5 = (String) next;
                    if (str5 != null) {
                        return TuplesKt.a(Integer.valueOf(iF2), str5);
                    }
                    if (iF2 != i12) {
                        iF2 += iL2;
                    }
                }
            }
        }
        return null;
    }

    public static String h1(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return g1(str, str2, str3);
    }

    public static int i0(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final String i1(String str, char c10, String missingDelimiterValue) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(missingDelimiterValue, "missingDelimiterValue");
        int iU0 = StringsKt.u0(str, c10, 0, false, 6, null);
        if (iU0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iU0);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static final int j0(CharSequence charSequence, char c10, int i10, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? p0(charSequence, new char[]{c10}, i10, z10) : ((String) charSequence).indexOf(c10, i10);
    }

    public static String j1(String str, String delimiter, String missingDelimiterValue) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(delimiter, "delimiter");
        Intrinsics.h(missingDelimiterValue, "missingDelimiterValue");
        int iV0 = StringsKt.v0(str, delimiter, 0, false, 6, null);
        if (iV0 == -1) {
            return missingDelimiterValue;
        }
        String strSubstring = str.substring(0, iV0);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static int k0(CharSequence charSequence, String string, int i10, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(string, "string");
        return (z10 || !(charSequence instanceof String)) ? m0(charSequence, string, i10, charSequence.length(), z10, false, 16, null) : ((String) charSequence).indexOf(string, i10);
    }

    public static String k1(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return i1(str, c10, str2);
    }

    private static final int l0(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11) {
        IntProgression intRange = !z11 ? new IntRange(RangesKt.e(i10, 0), RangesKt.h(i11, charSequence.length())) : RangesKt.o(RangesKt.h(i10, StringsKt.i0(charSequence)), RangesKt.e(i11, 0));
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            int iF = intRange.getFirst();
            int i12 = intRange.getLast();
            int iL = intRange.getStep();
            if ((iL <= 0 || iF > i12) && (iL >= 0 || i12 > iF)) {
                return -1;
            }
            while (!H0(charSequence2, 0, charSequence, iF, charSequence2.length(), z10)) {
                if (iF == i12) {
                    return -1;
                }
                iF += iL;
            }
            return iF;
        }
        int iF2 = intRange.getFirst();
        int i13 = intRange.getLast();
        int iL2 = intRange.getStep();
        if ((iL2 <= 0 || iF2 > i13) && (iL2 >= 0 || i13 > iF2)) {
            return -1;
        }
        while (true) {
            String str = (String) charSequence2;
            if (StringsKt.K(str, 0, (String) charSequence, iF2, str.length(), z10)) {
                return iF2;
            }
            if (iF2 == i13) {
                return -1;
            }
            iF2 += iL2;
        }
    }

    public static String l1(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return StringsKt.j1(str, str2, str3);
    }

    static int m0(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            z11 = false;
        }
        return l0(charSequence, charSequence2, i10, i11, z10, z11);
    }

    public static Boolean m1(String str) {
        Intrinsics.h(str, "<this>");
        if (Intrinsics.c(str, "true")) {
            return Boolean.TRUE;
        }
        if (Intrinsics.c(str, "false")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static int n0(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return j0(charSequence, c10, i10, z10);
    }

    public static CharSequence n1(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean zC = CharsKt.c(charSequence.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }

    public static int o0(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return StringsKt.k0(charSequence, str, i10, z10);
    }

    public static CharSequence o1(CharSequence charSequence, char... chars) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(chars, "chars");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean zI = ArraysKt.I(chars, charSequence.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!zI) {
                    break;
                }
                length--;
            } else if (zI) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }

    public static final int p0(CharSequence charSequence, char[] chars, int i10, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(chars, "chars");
        if (!z10 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(ArraysKt.w0(chars), i10);
        }
        int iE = RangesKt.e(i10, 0);
        int iI0 = StringsKt.i0(charSequence);
        if (iE > iI0) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(iE);
            for (char c10 : chars) {
                if (c.g(c10, cCharAt, z10)) {
                    return iE;
                }
            }
            if (iE == iI0) {
                return -1;
            }
            iE++;
        }
    }

    public static String p1(String str, char... chars) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(chars, "chars");
        int length = str.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean zI = ArraysKt.I(chars, str.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!zI) {
                    break;
                }
                length--;
            } else if (zI) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return str.subSequence(i10, length + 1).toString();
    }

    public static boolean q0(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            if (!CharsKt.c(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static CharSequence q1(CharSequence charSequence, char... chars) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(chars, "chars");
        int length = charSequence.length() - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (!ArraysKt.I(chars, charSequence.charAt(length))) {
                    return charSequence.subSequence(0, length + 1);
                }
                if (i10 >= 0) {
                    length = i10;
                }
            }
        }
        return "";
    }

    public static final CharIterator r0(final CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        return new CharIterator() {

            private int index;

            @Override
            public char a() {
                CharSequence charSequence2 = charSequence;
                int i10 = this.index;
                this.index = i10 + 1;
                return charSequence2.charAt(i10);
            }

            @Override
            public boolean hasNext() {
                return this.index < charSequence.length();
            }
        };
    }

    public static String r1(String str, char... chars) {
        CharSequence charSequenceSubSequence;
        Intrinsics.h(str, "<this>");
        Intrinsics.h(chars, "chars");
        int length = str.length() - 1;
        if (length < 0) {
            charSequenceSubSequence = "";
            break;
        }
        while (true) {
            int i10 = length - 1;
            if (!ArraysKt.I(chars, str.charAt(length))) {
                charSequenceSubSequence = str.subSequence(0, length + 1);
                break;
            }
            if (i10 < 0) {
                charSequenceSubSequence = "";
                break;
            }
            length = i10;
        }
        return charSequenceSubSequence.toString();
    }

    public static final int s0(CharSequence charSequence, char c10, int i10, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? w0(charSequence, new char[]{c10}, i10, z10) : ((String) charSequence).lastIndexOf(c10, i10);
    }

    public static CharSequence s1(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        int length = charSequence.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!CharsKt.c(charSequence.charAt(i10))) {
                return charSequence.subSequence(i10, charSequence.length());
            }
        }
        return "";
    }

    public static final int t0(CharSequence charSequence, String string, int i10, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(string, "string");
        return (z10 || !(charSequence instanceof String)) ? l0(charSequence, string, i10, 0, z10, true) : ((String) charSequence).lastIndexOf(string, i10);
    }

    public static String t1(String str, char... chars) {
        CharSequence charSequenceSubSequence;
        Intrinsics.h(str, "<this>");
        Intrinsics.h(chars, "chars");
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            if (!ArraysKt.I(chars, str.charAt(i10))) {
                charSequenceSubSequence = str.subSequence(i10, str.length());
                return charSequenceSubSequence.toString();
            }
        }
        charSequenceSubSequence = "";
        return charSequenceSubSequence.toString();
    }

    public static int u0(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = StringsKt.i0(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return s0(charSequence, c10, i10, z10);
    }

    public static int v0(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = StringsKt.i0(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return t0(charSequence, str, i10, z10);
    }

    public static final int w0(CharSequence charSequence, char[] chars, int i10, boolean z10) {
        Intrinsics.h(charSequence, "<this>");
        Intrinsics.h(chars, "chars");
        if (!z10 && chars.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(ArraysKt.w0(chars), i10);
        }
        for (int iH = RangesKt.h(i10, StringsKt.i0(charSequence)); -1 < iH; iH--) {
            char cCharAt = charSequence.charAt(iH);
            for (char c10 : chars) {
                if (c.g(c10, cCharAt, z10)) {
                    return iH;
                }
            }
        }
        return -1;
    }

    public static final Sequence x0(final CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        return new Sequence<String>() {
            @Override
            public Iterator getF64466a() {
                return new e(charSequence);
            }
        };
    }

    public static List y0(CharSequence charSequence) {
        Intrinsics.h(charSequence, "<this>");
        return SequencesKt.C(x0(charSequence));
    }

    public static final CharSequence z0(CharSequence charSequence, int i10, char c10) {
        Intrinsics.h(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException("Desired length " + i10 + " is less than zero.");
        }
        if (i10 <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb2 = new StringBuilder(i10);
        int length = i10 - charSequence.length();
        int i11 = 1;
        if (1 <= length) {
            while (true) {
                sb2.append(c10);
                if (i11 == length) {
                    break;
                }
                i11++;
            }
        }
        sb2.append(charSequence);
        return sb2;
    }
}
