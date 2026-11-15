package com.mbridge.msdk.thrid.okhttp;

import com.mbridge.msdk.thrid.okhttp.internal.publicsuffix.PublicSuffixDatabase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal.http.DatesKt;

public final class j {

    private static final Pattern f37427j = Pattern.compile("(\\d{2,4})[^\\d]*");

    private static final Pattern f37428k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    private static final Pattern f37429l = Pattern.compile("(\\d{1,2})[^\\d]*");

    private static final Pattern f37430m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    private final String f37431a;

    private final String f37432b;

    private final long f37433c;

    private final String f37434d;

    private final String f37435e;

    private final boolean f37436f;

    private final boolean f37437g;

    private final boolean f37438h;

    private final boolean f37439i;

    private j(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f37431a = str;
        this.f37432b = str2;
        this.f37433c = j10;
        this.f37434d = str3;
        this.f37435e = str4;
        this.f37436f = z10;
        this.f37437g = z11;
        this.f37439i = z12;
        this.f37438h = z13;
    }

    public String a() {
        return this.f37431a;
    }

    public String b() {
        return this.f37432b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return jVar.f37431a.equals(this.f37431a) && jVar.f37432b.equals(this.f37432b) && jVar.f37434d.equals(this.f37434d) && jVar.f37435e.equals(this.f37435e) && jVar.f37433c == this.f37433c && jVar.f37436f == this.f37436f && jVar.f37437g == this.f37437g && jVar.f37438h == this.f37438h && jVar.f37439i == this.f37439i;
    }

    public int hashCode() {
        int iHashCode = (((((((this.f37431a.hashCode() + 527) * 31) + this.f37432b.hashCode()) * 31) + this.f37434d.hashCode()) * 31) + this.f37435e.hashCode()) * 31;
        long j10 = this.f37433c;
        return ((((((((iHashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (!this.f37436f ? 1 : 0)) * 31) + (!this.f37437g ? 1 : 0)) * 31) + (!this.f37438h ? 1 : 0)) * 31) + (!this.f37439i ? 1 : 0);
    }

    public String toString() {
        return a(false);
    }

    private static boolean a(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !com.mbridge.msdk.thrid.okhttp.internal.c.d(str);
    }

    private static long b(String str) {
        try {
            long j10 = Long.parseLong(str);
            if (j10 <= 0) {
                return Long.MIN_VALUE;
            }
            return j10;
        } catch (NumberFormatException e10) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e10;
        }
    }

    public static j a(q qVar, String str) {
        return a(System.currentTimeMillis(), qVar, str);
    }

    static j a(long j10, q qVar, String str) {
        long j11;
        j jVar;
        String str2;
        String strSubstring;
        int length = str.length();
        char c10 = ';';
        int iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, 0, length, ';');
        char c11 = '=';
        int iA2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, 0, iA, '=');
        if (iA2 == iA) {
            return null;
        }
        String strD = com.mbridge.msdk.thrid.okhttp.internal.c.d(str, 0, iA2);
        if (strD.isEmpty() || com.mbridge.msdk.thrid.okhttp.internal.c.c(strD) != -1) {
            return null;
        }
        String strD2 = com.mbridge.msdk.thrid.okhttp.internal.c.d(str, iA2 + 1, iA);
        if (com.mbridge.msdk.thrid.okhttp.internal.c.c(strD2) != -1) {
            return null;
        }
        int i10 = iA + 1;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        String strA = null;
        boolean z13 = true;
        long jB = -1;
        long jA = 253402300799999L;
        String str3 = null;
        while (i10 < length) {
            int iA3 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i10, length, c10);
            int iA4 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i10, iA3, c11);
            String strD3 = com.mbridge.msdk.thrid.okhttp.internal.c.d(str, i10, iA4);
            String strD4 = iA4 < iA3 ? com.mbridge.msdk.thrid.okhttp.internal.c.d(str, iA4 + 1, iA3) : "";
            if (strD3.equalsIgnoreCase("expires")) {
                try {
                    jA = a(strD4, 0, strD4.length());
                    z12 = true;
                } catch (NumberFormatException | IllegalArgumentException unused) {
                }
            } else if (strD3.equalsIgnoreCase("max-age")) {
                jB = b(strD4);
                z12 = true;
            } else if (strD3.equalsIgnoreCase("domain")) {
                strA = a(strD4);
                z13 = false;
            } else if (strD3.equalsIgnoreCase("path")) {
                str3 = strD4;
            } else if (strD3.equalsIgnoreCase("secure")) {
                z10 = true;
            } else if (strD3.equalsIgnoreCase("httponly")) {
                z11 = true;
            }
            i10 = iA3 + 1;
            c10 = ';';
            c11 = '=';
        }
        if (jB == Long.MIN_VALUE) {
            j11 = Long.MIN_VALUE;
        } else if (jB != -1) {
            long j12 = j10 + (jB <= 9223372036854775L ? jB * 1000 : Long.MAX_VALUE);
            j11 = (j12 < j10 || j12 > DatesKt.MAX_DATE) ? 253402300799999L : j12;
        } else {
            j11 = jA;
        }
        String strG = qVar.g();
        if (strA == null) {
            str2 = strG;
            jVar = null;
        } else {
            if (!a(strG, strA)) {
                return null;
            }
            jVar = null;
            str2 = strA;
        }
        if (strG.length() != str2.length() && PublicSuffixDatabase.a().a(str2) == null) {
            return jVar;
        }
        if (str3 == null || !str3.startsWith("/")) {
            String strC = qVar.c();
            int iLastIndexOf = strC.lastIndexOf(47);
            strSubstring = iLastIndexOf != 0 ? strC.substring(0, iLastIndexOf) : "/";
        } else {
            strSubstring = str3;
        }
        return new j(strD, strD2, j11, str2, strSubstring, z10, z11, z13, z12);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0081  */
    private static long a(String str, int i10, int i11) {
        int iA = a(str, i10, i11, false);
        Matcher matcher = f37430m.matcher(str);
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int iIndexOf = -1;
        int i15 = -1;
        int i16 = -1;
        while (iA < i11) {
            int iA2 = a(str, iA + 1, i11, true);
            matcher.region(iA, iA2);
            if (i13 == -1 && matcher.usePattern(f37430m).matches()) {
                i13 = Integer.parseInt(matcher.group(1));
                i15 = Integer.parseInt(matcher.group(2));
                i16 = Integer.parseInt(matcher.group(3));
            } else if (i14 == -1 && matcher.usePattern(f37429l).matches()) {
                i14 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1) {
                Pattern pattern = f37428k;
                if (matcher.usePattern(pattern).matches()) {
                    iIndexOf = pattern.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                } else if (i12 != -1 && matcher.usePattern(f37427j).matches()) {
                    i12 = Integer.parseInt(matcher.group(1));
                }
            } else if (i12 != -1) {
            }
            iA = a(str, iA2 + 1, i11, false);
        }
        if (i12 >= 70 && i12 <= 99) {
            i12 += 1900;
        }
        if (i12 >= 0 && i12 <= 69) {
            i12 += 2000;
        }
        if (i12 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i14 < 1 || i14 > 31) {
            throw new IllegalArgumentException();
        }
        if (i13 < 0 || i13 > 23) {
            throw new IllegalArgumentException();
        }
        if (i15 < 0 || i15 > 59) {
            throw new IllegalArgumentException();
        }
        if (i16 >= 0 && i16 <= 59) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(com.mbridge.msdk.thrid.okhttp.internal.c.f37084p);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i12);
            gregorianCalendar.set(2, iIndexOf - 1);
            gregorianCalendar.set(5, i14);
            gregorianCalendar.set(11, i13);
            gregorianCalendar.set(12, i15);
            gregorianCalendar.set(13, i16);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
        throw new IllegalArgumentException();
    }

    private static int a(String str, int i10, int i11, boolean z10) {
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z10)) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    private static String a(String str) {
        if (!str.endsWith(".")) {
            if (str.startsWith(".")) {
                str = str.substring(1);
            }
            String strA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str);
            if (strA != null) {
                return strA;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    public static List<j> a(q qVar, p pVar) {
        List<String> listC = pVar.c("Set-Cookie");
        int size = listC.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            j jVarA = a(qVar, listC.get(i10));
            if (jVarA != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(jVarA);
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    String a(boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f37431a);
        sb2.append('=');
        sb2.append(this.f37432b);
        if (this.f37438h) {
            if (this.f37433c == Long.MIN_VALUE) {
                sb2.append("; max-age=0");
            } else {
                sb2.append("; expires=");
                sb2.append(com.mbridge.msdk.thrid.okhttp.internal.http.d.a(new Date(this.f37433c)));
            }
        }
        if (!this.f37439i) {
            sb2.append("; domain=");
            if (z10) {
                sb2.append(".");
            }
            sb2.append(this.f37434d);
        }
        sb2.append("; path=");
        sb2.append(this.f37435e);
        if (this.f37436f) {
            sb2.append("; secure");
        }
        if (this.f37437g) {
            sb2.append("; httponly");
        }
        return sb2.toString();
    }
}
