package defpackage;

import android.util.LruCache;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Regex;

public final class tt8 {
    public static final a c = new a(null);
    public static final Regex d = new Regex("(\\d+)[x*×X](\\d+)");
    public static final Regex e = new Regex("\\d+");
    public final LruCache a = new LruCache(256);
    public final int[] b = new int[0];

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final String j(c26 c26Var) {
        y45.j(c26Var, "it");
        return c26Var.getValue();
    }

    public static final boolean k(String str) {
        y45.j(str, "it");
        return str.length() <= 5;
    }

    public static final Integer l(String str) {
        y45.j(str, "it");
        return f1a.r(str);
    }

    public static final boolean m(int i) {
        return 1 <= i && i < 100000;
    }

    public final boolean e(int i, int i2) {
        return 1 <= i && i < 100000 && 1 <= i2 && i2 < 100000;
    }

    public final int[] f(String str) {
        if (str == null || j1a.o0(str)) {
            vmb.a("ResolutionParser", "Empty or null resolution input");
            return null;
        }
        String string = j1a.i1(str).toString();
        if (string.length() == 0) {
            vmb.a("ResolutionParser", "Empty resolution after trim");
            return null;
        }
        int[] iArr = (int[]) this.a.get(string);
        if (iArr == null) {
            int[] iArrH = h(string);
            this.a.put(string, iArrH == null ? this.b : iArrH);
            return iArrH;
        }
        vmb.a("ResolutionParser", "Cache hit for resolution: " + string);
        if (iArr == this.b) {
            return null;
        }
        return iArr;
    }

    public final int[] g(String str) {
        Integer numR;
        if (str.length() < 3) {
            return null;
        }
        try {
            int length = str.length();
            int i = 0;
            while (i < length && str.charAt(i) == ' ') {
                i++;
            }
            if (i >= length || !Character.isDigit(str.charAt(i))) {
                return null;
            }
            int i2 = i;
            while (i2 < length && Character.isDigit(str.charAt(i2))) {
                i2++;
            }
            if (i == i2) {
                return null;
            }
            int i3 = i2;
            while (i3 < length && str.charAt(i3) == ' ') {
                i3++;
            }
            if (i3 >= length || !j1a.W("x*×X", str.charAt(i3), false, 2, null)) {
                return null;
            }
            int i4 = i3 + 1;
            while (i4 < length && str.charAt(i4) == ' ') {
                i4++;
            }
            if (i4 >= length || !Character.isDigit(str.charAt(i4))) {
                return null;
            }
            int i5 = i4;
            while (i5 < length && Character.isDigit(str.charAt(i5))) {
                i5++;
            }
            if (i4 == i5) {
                return null;
            }
            int i6 = i5;
            while (i6 < length && str.charAt(i6) == ' ') {
                i6++;
            }
            if (i6 < length) {
                return null;
            }
            String strSubstring = str.substring(i, i2);
            y45.i(strSubstring, "substring(...)");
            String strSubstring2 = str.substring(i4, i5);
            y45.i(strSubstring2, "substring(...)");
            if (strSubstring.length() > 5 || strSubstring2.length() > 5 || (numR = f1a.r(strSubstring)) == null) {
                return null;
            }
            int iIntValue = numR.intValue();
            Integer numR2 = f1a.r(strSubstring2);
            if (numR2 == null) {
                return null;
            }
            int iIntValue2 = numR2.intValue();
            if (1 > iIntValue || iIntValue >= 100000 || 1 > iIntValue2 || iIntValue2 >= 100000) {
                return null;
            }
            return new int[]{iIntValue, iIntValue2};
        } catch (NumberFormatException unused) {
            vmb.c("ResolutionParser", "parseFastPath: Number format error for resolution: " + str);
            return null;
        } catch (StringIndexOutOfBoundsException unused2) {
            vmb.c("ResolutionParser", "parseFastPath: String index error for resolution: " + str);
            return null;
        } catch (Exception e2) {
            vmb.d("ResolutionParser", "parseFastPath: Unexpected error for resolution: " + str, e2);
            return null;
        }
    }

    public final int[] h(String str) {
        int[] iArrG = g(str);
        if (iArrG != null) {
            String string = Arrays.toString(iArrG);
            y45.i(string, "toString(...)");
            vmb.a("ResolutionParser", "Fast path success: " + string);
            return iArrG;
        }
        int[] iArrI = i(str);
        if (iArrI != null) {
            String string2 = Arrays.toString(iArrI);
            y45.i(string2, "toString(...)");
            vmb.a("ResolutionParser", "Regex path success: " + string2);
        } else {
            vmb.i("ResolutionParser", "Both paths failed for resolution: " + str);
        }
        return iArrI;
    }

    public final int[] i(String str) {
        try {
            int[] iArrN = n(str);
            if (iArrN != null) {
                return iArrN;
            }
            List listC0 = SequencesKt___SequencesKt.c0(SequencesKt___SequencesKt.F(SequencesKt___SequencesKt.S(SequencesKt___SequencesKt.F(SequencesKt___SequencesKt.R(Regex.findAll$default(e, str, 0, 2, null), new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return tt8.j((c26) obj);
                }
            }), new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(tt8.k((String) obj));
                }
            }), new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return tt8.l((String) obj);
                }
            }), new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(tt8.m(((Integer) obj).intValue()));
                }
            }));
            if (listC0.size() >= 2) {
                return new int[]{((Number) listC0.get(0)).intValue(), ((Number) listC0.get(1)).intValue()};
            }
            return null;
        } catch (Exception e2) {
            vmb.d("ResolutionParser", "parseRegexPath error", e2);
            return null;
        }
    }

    public final int[] n(String str) {
        try {
            c26 c26VarFind$default = Regex.find$default(d, str, 0, 2, null);
            if (c26VarFind$default == null) {
                return null;
            }
            String str2 = (String) c26VarFind$default.b().get(1);
            String str3 = (String) c26VarFind$default.b().get(2);
            if (str2.length() <= 5 && str3.length() <= 5) {
                Integer numR = f1a.r(str2);
                Integer numR2 = f1a.r(str3);
                if (numR == null || numR2 == null || !e(numR.intValue(), numR2.intValue())) {
                    return null;
                }
                return new int[]{numR.intValue(), numR2.intValue()};
            }
            vmb.i("ResolutionParser", "Number too long in specific pattern: " + str2 + " x " + str3);
            return null;
        } catch (Exception e2) {
            vmb.j("ResolutionParser", "Error parsing specific pattern for resolution: " + str, e2);
            return null;
        }
    }
}
