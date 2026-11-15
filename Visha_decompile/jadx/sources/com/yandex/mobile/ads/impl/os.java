package com.yandex.mobile.ads.impl;

import com.alibaba.android.arouter.utils.Consts;
import com.lzy.okgo.cookie.SerializableCookie;
import com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Regex;
import okhttp3.internal.http.DatesKt;
import org.apache.commons.io.IOUtils;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class os {
    private static final Pattern j = Pattern.compile("(\\d{2,4})[^\\d]*");
    private static final Pattern k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    private static final Pattern l = Pattern.compile("(\\d{1,2})[^\\d]*");
    private static final Pattern m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    public static final int n = 0;
    private final String a;
    private final String b;
    private final long c;
    private final String d;
    private final String e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final boolean i;

    public static final class a {
        private static int a(int i, int i2, String str, boolean z) {
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || ('0' <= cCharAt && cCharAt < ':') || (('a' <= cCharAt && cCharAt < '{') || (('A' <= cCharAt && cCharAt < '[') || cCharAt == ':'))) == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        /* JADX WARN: Code duplicated, block: B:135:0x02c1 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:136:0x02c3  */
        public static List a(gi0 gi0Var, qf0 qf0Var) {
            String str;
            int i;
            int i2;
            List list;
            int i3;
            long j;
            int i4;
            String str2;
            os osVar;
            String strSubstring;
            String str3;
            int i5;
            os osVar2;
            gi0 gi0Var2 = gi0Var;
            String str4 = "url";
            y45.j(gi0Var2, "url");
            y45.j(qf0Var, "headers");
            List listD = qf0Var.d();
            int size = listD.size();
            int i6 = 0;
            int i7 = 0;
            ArrayList arrayList = null;
            while (i7 < size) {
                String str5 = (String) listD.get(i7);
                y45.j(gi0Var2, str4);
                y45.j(str5, "setCookie");
                long jCurrentTimeMillis = System.currentTimeMillis();
                y45.j(gi0Var2, str4);
                y45.j(str5, "setCookie");
                byte[] bArr = g92.a;
                int iA = g92.a(str5, ';', i6, str5.length());
                int iA2 = g92.a(str5, '=', i6, iA);
                if (iA2 == iA) {
                    str = str4;
                    list = listD;
                    i3 = size;
                    i4 = i6;
                    osVar2 = null;
                } else {
                    String str6 = "<this>";
                    y45.j(str5, "<this>");
                    int iA3 = g92.a(i6, iA2, str5);
                    String strSubstring2 = str5.substring(iA3, g92.b(iA3, iA2, str5));
                    y45.i(strSubstring2, "substring(...)");
                    if (strSubstring2.length() == 0) {
                        str = str4;
                    } else {
                        y45.j(strSubstring2, "<this>");
                        int length = strSubstring2.length();
                        str = str4;
                        int i8 = 0;
                        while (true) {
                            if (i8 < length) {
                                int i9 = length;
                                char cCharAt = strSubstring2.charAt(i8);
                                if (y45.l(cCharAt, 31) <= 0 || y45.l(cCharAt, 127) >= 0) {
                                    i = 1;
                                    if (i8 != -1) {
                                    }
                                    if (osVar != null) {
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        arrayList.add(osVar);
                                    }
                                    i7++;
                                    gi0Var2 = gi0Var;
                                    i6 = i4;
                                    size = i3;
                                    str4 = str;
                                    listD = list;
                                } else {
                                    i8++;
                                    length = i9;
                                }
                            } else {
                                i = 1;
                            }
                            y45.j(str5, "<this>");
                            int iA4 = g92.a(iA2 + i, iA, str5);
                            String strSubstring3 = str5.substring(iA4, g92.b(iA4, iA, str5));
                            y45.i(strSubstring3, "substring(...)");
                            y45.j(strSubstring3, "<this>");
                            int length2 = strSubstring3.length();
                            int i10 = 0;
                            while (true) {
                                if (i10 < length2) {
                                    char cCharAt2 = strSubstring3.charAt(i10);
                                    int i11 = length2;
                                    if (y45.l(cCharAt2, 31) <= 0) {
                                        i2 = 1;
                                        i5 = -1;
                                    } else if (y45.l(cCharAt2, 127) >= 0) {
                                        i5 = -1;
                                        i2 = 1;
                                    } else {
                                        i10++;
                                        length2 = i11;
                                    }
                                    if (i10 != i5) {
                                    }
                                    osVar2 = null;
                                    i4 = 0;
                                } else {
                                    i2 = 1;
                                }
                                int i12 = iA + i2;
                                int length3 = str5.length();
                                long j2 = -1;
                                long jA = 253402300799999L;
                                String str7 = null;
                                String str8 = null;
                                boolean z = false;
                                boolean z2 = false;
                                boolean z3 = false;
                                boolean z4 = true;
                                while (true) {
                                    list = listD;
                                    if (i12 < length3) {
                                        int i13 = size;
                                        int iA5 = g92.a(str5, ';', i12, length3);
                                        int i14 = length3;
                                        int iA6 = g92.a(str5, '=', i12, iA5);
                                        y45.j(str5, str6);
                                        int iA7 = g92.a(i12, iA6, str5);
                                        String strSubstring4 = str5.substring(iA7, g92.b(iA7, iA6, str5));
                                        y45.i(strSubstring4, "substring(...)");
                                        if (iA6 < iA5) {
                                            y45.j(str5, str6);
                                            int iA8 = g92.a(iA6 + 1, iA5, str5);
                                            strSubstring = str5.substring(iA8, g92.b(iA8, iA5, str5));
                                            y45.i(strSubstring, "substring(...)");
                                        } else {
                                            strSubstring = "";
                                        }
                                        String str9 = str5;
                                        if (g1a.E(strSubstring4, "expires", true)) {
                                            try {
                                                jA = a(strSubstring.length(), strSubstring);
                                                str3 = str6;
                                                z3 = true;
                                            } catch (NumberFormatException | IllegalArgumentException unused) {
                                                str3 = str6;
                                            }
                                        } else if (g1a.E(strSubstring4, "max-age", true)) {
                                            try {
                                                j2 = Long.parseLong(strSubstring);
                                                if (j2 <= 0) {
                                                    str3 = str6;
                                                    j2 = Long.MIN_VALUE;
                                                } else {
                                                    str3 = str6;
                                                }
                                            } catch (NumberFormatException e) {
                                                if (!new Regex("-?\\d+").matches(strSubstring)) {
                                                    str3 = str6;
                                                    throw e;
                                                }
                                                str3 = str6;
                                                try {
                                                    if (!g1a.R(strSubstring, "-", false, 2, null)) {
                                                        j2 = Long.MAX_VALUE;
                                                    }
                                                } catch (NumberFormatException | IllegalArgumentException unused2) {
                                                }
                                                i12 = iA5 + 1;
                                                length3 = i14;
                                                size = i13;
                                                listD = list;
                                                str5 = str9;
                                                str6 = str3;
                                            }
                                            z3 = true;
                                        } else {
                                            str3 = str6;
                                            if (g1a.E(strSubstring4, SerializableCookie.DOMAIN, true)) {
                                                if (g1a.D(strSubstring, Consts.DOT, false, 2, null)) {
                                                    throw new IllegalArgumentException("Failed requirement.");
                                                }
                                                String strA = jg0.a(j1a.F0(strSubstring, Consts.DOT));
                                                if (strA == null) {
                                                    throw new IllegalArgumentException();
                                                }
                                                str7 = strA;
                                                z4 = false;
                                            } else if (g1a.E(strSubstring4, "path", true)) {
                                                str8 = strSubstring;
                                            } else if (g1a.E(strSubstring4, "secure", true)) {
                                                z = true;
                                            } else if (g1a.E(strSubstring4, "httponly", true)) {
                                                z2 = true;
                                            }
                                        }
                                        i12 = iA5 + 1;
                                        length3 = i14;
                                        size = i13;
                                        listD = list;
                                        str5 = str9;
                                        str6 = str3;
                                    } else {
                                        i3 = size;
                                        if (j2 == Long.MIN_VALUE) {
                                            j = Long.MIN_VALUE;
                                        } else if (j2 != -1) {
                                            long j3 = jCurrentTimeMillis + (j2 <= 9223372036854775L ? j2 * ((long) 1000) : Long.MAX_VALUE);
                                            j = (j3 < jCurrentTimeMillis || j3 > DatesKt.MAX_DATE) ? 253402300799999L : j3;
                                        } else {
                                            j = jA;
                                        }
                                        String strG = gi0Var.g();
                                        if (str7 == null) {
                                            str7 = strG;
                                        } else {
                                            if (y45.e(strG, str7) || (g1a.D(strG, str7, false, 2, null) && strG.charAt((strG.length() - str7.length()) - 1) == '.' && !g92.a(strG))) {
                                            }
                                            osVar2 = null;
                                            i4 = 0;
                                        }
                                        if (strG.length() == str7.length() || PublicSuffixDatabase.g.a(str7) != null) {
                                            String strSubstring5 = "/";
                                            if (str8 == null || !g1a.R(str8, "/", false, 2, null)) {
                                                String strC = gi0Var.c();
                                                int iR0 = j1a.r0(strC, IOUtils.DIR_SEPARATOR_UNIX, 0, false, 6, null);
                                                if (iR0 != 0) {
                                                    i4 = 0;
                                                    strSubstring5 = strC.substring(0, iR0);
                                                    y45.i(strSubstring5, "substring(...)");
                                                } else {
                                                    i4 = 0;
                                                }
                                                str2 = strSubstring5;
                                            } else {
                                                str2 = str8;
                                                i4 = 0;
                                            }
                                            osVar = new os(strSubstring2, strSubstring3, j, str7, str2, z, z2, z3, z4, 0);
                                        } else {
                                            osVar2 = null;
                                            i4 = 0;
                                        }
                                        if (osVar != null) {
                                            if (arrayList == null) {
                                                arrayList = new ArrayList();
                                            }
                                            arrayList.add(osVar);
                                        }
                                        i7++;
                                        gi0Var2 = gi0Var;
                                        i6 = i4;
                                        size = i3;
                                        str4 = str;
                                        listD = list;
                                    }
                                }
                            }
                        }
                    }
                    list = listD;
                    i3 = size;
                    osVar2 = null;
                    i4 = 0;
                }
                osVar = osVar2;
                if (osVar != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(osVar);
                }
                i7++;
                gi0Var2 = gi0Var;
                i6 = i4;
                size = i3;
                str4 = str;
                listD = list;
            }
            if (arrayList == null) {
                return defpackage.y71.k();
            }
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            y45.g(listUnmodifiableList);
            return listUnmodifiableList;
        }

        private static long a(int i, String str) {
            int iA = a(0, i, str, false);
            Matcher matcher = os.m.matcher(str);
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int iM0 = -1;
            int i5 = -1;
            int i6 = -1;
            while (iA < i) {
                int iA2 = a(iA + 1, i, str, true);
                matcher.region(iA, iA2);
                if (i3 == -1 && matcher.usePattern(os.m).matches()) {
                    String strGroup = matcher.group(1);
                    y45.i(strGroup, "group(...)");
                    i3 = Integer.parseInt(strGroup);
                    String strGroup2 = matcher.group(2);
                    y45.i(strGroup2, "group(...)");
                    i5 = Integer.parseInt(strGroup2);
                    String strGroup3 = matcher.group(3);
                    y45.i(strGroup3, "group(...)");
                    i6 = Integer.parseInt(strGroup3);
                } else if (i4 == -1 && matcher.usePattern(os.l).matches()) {
                    String strGroup4 = matcher.group(1);
                    y45.i(strGroup4, "group(...)");
                    i4 = Integer.parseInt(strGroup4);
                } else if (iM0 == -1 && matcher.usePattern(os.k).matches()) {
                    String strGroup5 = matcher.group(1);
                    y45.i(strGroup5, "group(...)");
                    Locale locale = Locale.US;
                    y45.i(locale, "US");
                    String lowerCase = strGroup5.toLowerCase(locale);
                    y45.i(lowerCase, "toLowerCase(...)");
                    String strPattern = os.k.pattern();
                    y45.i(strPattern, "pattern(...)");
                    iM0 = j1a.m0(strPattern, lowerCase, 0, false, 6, null) / 4;
                } else if (i2 == -1 && matcher.usePattern(os.j).matches()) {
                    String strGroup6 = matcher.group(1);
                    y45.i(strGroup6, "group(...)");
                    i2 = Integer.parseInt(strGroup6);
                }
                iA = a(iA2 + 1, i, str, false);
            }
            if (70 <= i2 && i2 < 100) {
                i2 += OSDateTimePicker.START_YEAR;
            }
            if (i2 >= 0 && i2 < 70) {
                i2 += 2000;
            }
            if (i2 < 1601) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (iM0 == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (1 > i4 || i4 >= 32) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i3 < 0 || i3 >= 24) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i5 < 0 || i5 >= 60) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (i6 >= 0 && i6 < 60) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(g92.d);
                gregorianCalendar.setLenient(false);
                gregorianCalendar.set(1, i2);
                gregorianCalendar.set(2, iM0 - 1);
                gregorianCalendar.set(5, i4);
                gregorianCalendar.set(11, i3);
                gregorianCalendar.set(12, i5);
                gregorianCalendar.set(13, i6);
                gregorianCalendar.set(14, 0);
                return gregorianCalendar.getTimeInMillis();
            }
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    private os(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = str;
        this.b = str2;
        this.c = j2;
        this.d = str3;
        this.e = str4;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
    }

    public final String e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof os) {
            os osVar = (os) obj;
            if (y45.e(osVar.a, this.a) && y45.e(osVar.b, this.b) && osVar.c == this.c && y45.e(osVar.d, this.d) && y45.e(osVar.e, this.e) && osVar.f == this.f && osVar.g == this.g && osVar.h == this.h && osVar.i == this.i) {
                return true;
            }
        }
        return false;
    }

    public final String f() {
        return this.b;
    }

    @IgnoreJRERequirement
    public final int hashCode() {
        return Boolean.hashCode(this.i) + a7.a(this.h, a7.a(this.g, a7.a(this.f, v3.a(this.e, v3.a(this.d, (Long.hashCode(this.c) + v3.a(this.b, v3.a(this.a, 527, 31), 31)) * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append('=');
        sb.append(this.b);
        if (this.h) {
            if (this.c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(aw.a(new Date(this.c)));
            }
        }
        if (!this.i) {
            sb.append("; domain=");
            sb.append(this.d);
        }
        sb.append("; path=");
        sb.append(this.e);
        if (this.f) {
            sb.append("; secure");
        }
        if (this.g) {
            sb.append("; httponly");
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public os(String str, String str2, long j2, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, int i) {
        this(str, str2, j2, str3, str4, z, z2, z3, z4);
    }
}
