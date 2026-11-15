package com.yandex.mobile.ads.impl;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import io.appmetrica.analytics.BuildConfig;
import java.util.concurrent.TimeUnit;

public final class um {
    public static final int n = 0;
    private final boolean a;
    private final boolean b;
    private final int c;
    private final int d;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final int h;
    private final int i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private String m;

    public static final class a {
        public final a a() {
            return this;
        }

        public final a b() {
            return this;
        }

        public final a a(TimeUnit timeUnit) {
            y45.j(timeUnit, "timeUnit");
            timeUnit.toSeconds(Integer.MAX_VALUE);
            return this;
        }
    }

    public static final class b {
        /* JADX WARN: Code duplicated, block: B:108:0x0071 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:109:0x007b A[EDGE_INSN: B:109:0x007b->B:23:0x007b BREAK  A[LOOP:2: B:16:0x004c->B:21:0x0066], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:15:0x0047  */
        /* JADX WARN: Code duplicated, block: B:18:0x004f  */
        /* JADX WARN: Code duplicated, block: B:21:0x0066 A[LOOP:2: B:16:0x004c->B:21:0x0066, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:29:0x00a2  */
        /* JADX WARN: Code duplicated, block: B:55:0x014e  */
        /* JADX WARN: Code duplicated, block: B:59:0x015e  */
        /* JADX WARN: Code duplicated, block: B:61:0x0166  */
        /* JADX WARN: Code duplicated, block: B:62:0x016b  */
        /* JADX WARN: Code duplicated, block: B:64:0x0173  */
        /* JADX WARN: Code duplicated, block: B:66:0x017c  */
        /* JADX WARN: Code duplicated, block: B:68:0x0185  */
        /* JADX WARN: Code duplicated, block: B:69:0x018a  */
        /* JADX WARN: Code duplicated, block: B:71:0x0192  */
        /* JADX WARN: Code duplicated, block: B:72:0x0197  */
        /* JADX WARN: Code duplicated, block: B:74:0x019f  */
        /* JADX WARN: Code duplicated, block: B:75:0x01a6  */
        /* JADX WARN: Code duplicated, block: B:77:0x01ae  */
        /* JADX WARN: Code duplicated, block: B:78:0x01b3  */
        /* JADX WARN: Code duplicated, block: B:80:0x01bb  */
        /* JADX WARN: Code duplicated, block: B:81:0x01c3  */
        /* JADX WARN: Code duplicated, block: B:83:0x01cb  */
        /* JADX WARN: Code duplicated, block: B:84:0x01d1  */
        /* JADX WARN: Code duplicated, block: B:86:0x01da  */
        /* JADX WARN: Code duplicated, block: B:87:0x01e1  */
        /* JADX WARN: Code duplicated, block: B:89:0x01e9  */
        /* JADX WARN: Code duplicated, block: B:90:0x01f0  */
        /* JADX WARN: Code duplicated, block: B:92:0x01fb  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v0 */
        /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v43 */
        /* JADX WARN: Type inference failed for: r4v44 */
        /* JADX WARN: Type inference failed for: r5v3 */
        /* JADX WARN: Type inference failed for: r5v4, types: [int] */
        /* JADX WARN: Type inference failed for: r5v6 */
        public static um a(qf0 qf0Var) {
            int i;
            ?? r5;
            boolean z;
            boolean z2;
            int i2;
            ?? r4;
            int length;
            int length2;
            int i3;
            boolean z3;
            String str;
            String string;
            boolean z4;
            boolean z5;
            boolean z6;
            String string2;
            boolean z7;
            boolean z8;
            boolean z9;
            int i4;
            int i5;
            qf0 qf0Var2 = qf0Var;
            y45.j(qf0Var2, "headers");
            int size = qf0Var.size();
            ?? r6 = 1;
            boolean z10 = true;
            int i6 = 0;
            String str2 = null;
            boolean z11 = false;
            boolean z12 = false;
            int iA = -1;
            int iA2 = -1;
            boolean z13 = false;
            boolean z14 = false;
            boolean z15 = false;
            int iA3 = -1;
            int iA4 = -1;
            boolean z16 = false;
            boolean z17 = false;
            boolean z18 = false;
            while (i6 < size) {
                String strA = qf0Var2.a(i6);
                String strB = qf0Var2.b(i6);
                if (g1a.E(strA, "Cache-Control", r6)) {
                    if (str2 == null) {
                        str2 = strB;
                    }
                    i2 = 0;
                    r4 = r6;
                    while (i2 < strB.length()) {
                        length = strB.length();
                        length2 = i2;
                        while (true) {
                            if (length2 < length) {
                                i3 = size;
                                z3 = z10;
                                str = str2;
                                length2 = strB.length();
                                break;
                            }
                            i3 = size;
                            i5 = length;
                            z3 = z10;
                            str = str2;
                            if (j1a.W("=,;", strB.charAt(length2), false, 2, null)) {
                                break;
                            }
                            length2++;
                            length = i5;
                            size = i3;
                            z10 = z3;
                            str2 = str;
                        }
                        String strSubstring = strB.substring(i2, length2);
                        y45.i(strSubstring, "substring(...)");
                        string = j1a.i1(strSubstring).toString();
                        if (length2 != strB.length() || strB.charAt(length2) == ',' || strB.charAt(length2) == ';') {
                            z4 = z14 ? 1 : 0;
                            z5 = z15 ? 1 : 0;
                            z6 = true;
                            i2 = length2 + 1;
                            string2 = null;
                        } else {
                            int length3 = length2 + 1;
                            byte[] bArr = g92.a;
                            y45.j(strB, "<this>");
                            int length4 = strB.length();
                            while (true) {
                                if (length3 < length4) {
                                    char cCharAt = strB.charAt(length3);
                                    if (cCharAt != ' ' && cCharAt != '\t') {
                                        i4 = 1;
                                        break;
                                    }
                                    length3++;
                                } else {
                                    i4 = 1;
                                    length3 = strB.length();
                                    break;
                                }
                            }
                            if (length3 >= strB.length() || strB.charAt(length3) != '\"') {
                                int length5 = strB.length();
                                int length6 = length3;
                                while (true) {
                                    if (length6 >= length5) {
                                        z4 = z14;
                                        z5 = z15;
                                        z6 = true;
                                        length6 = strB.length();
                                        break;
                                    }
                                    int i7 = length5;
                                    z4 = z14;
                                    z5 = z15;
                                    if (j1a.W(",;", strB.charAt(length6), false, 2, null)) {
                                        z6 = true;
                                        break;
                                    }
                                    length6++;
                                    length5 = i7;
                                    z15 = z5 ? 1 : 0;
                                    z14 = z4 ? 1 : 0;
                                }
                                String strSubstring2 = strB.substring(length3, length6);
                                y45.i(strSubstring2, "substring(...)");
                                string2 = j1a.i1(strSubstring2).toString();
                                i2 = length6;
                            } else {
                                int i8 = length3 + i4;
                                int iL0 = j1a.l0(strB, '\"', i8, false, 4, null);
                                string2 = strB.substring(i8, iL0);
                                y45.i(string2, "substring(...)");
                                z6 = true;
                                z4 = z14 ? 1 : 0;
                                z5 = z15 ? 1 : 0;
                                i2 = iL0 + 1;
                            }
                        }
                        if (g1a.E("no-cache", string, z6)) {
                            boolean z19 = z6;
                            z11 = z19 ? 1 : 0;
                            z9 = z19;
                        } else if (g1a.E("no-store", string, z6)) {
                            boolean z20 = z6;
                            z12 = z20 ? 1 : 0;
                            z9 = z20;
                        } else {
                            if (g1a.E("max-age", string, z6)) {
                                iA = g92.a(-1, string2);
                            } else if (g1a.E("s-maxage", string, z6)) {
                                iA2 = g92.a(-1, string2);
                            } else if (g1a.E("private", string, z6)) {
                                boolean z21 = z6;
                                z13 = z21 ? 1 : 0;
                                z9 = z21;
                            } else {
                                if (g1a.E(BuildConfig.SDK_BUILD_FLAVOR, string, z6)) {
                                    z8 = z6;
                                    z14 = z8 ? 1 : 0;
                                    z15 = z5;
                                } else {
                                    if (g1a.E("must-revalidate", string, z6)) {
                                        boolean z22 = z6;
                                        z15 = z22 ? 1 : 0;
                                        z8 = z22;
                                    } else if (g1a.E("max-stale", string, z6)) {
                                        iA3 = g92.a(Integer.MAX_VALUE, string2);
                                    } else if (g1a.E("min-fresh", string, z6)) {
                                        iA4 = g92.a(-1, string2);
                                    } else if (g1a.E("only-if-cached", string, z6)) {
                                        boolean z23 = z6;
                                        z16 = z23 ? 1 : 0;
                                        z9 = z23;
                                    } else if (g1a.E("no-transform", string, z6)) {
                                        boolean z24 = z6;
                                        z17 = z24 ? 1 : 0;
                                        z9 = z24;
                                    } else {
                                        z7 = z6;
                                        if (g1a.E("immutable", string, z6)) {
                                            z9 = z7;
                                            z18 = z7 ? 1 : 0;
                                            z9 = z7;
                                        }
                                    }
                                    z14 = z4;
                                }
                                size = i3;
                                z10 = z3;
                                str2 = str;
                                r4 = z8;
                            }
                            z9 = z6;
                        }
                        z9 = z7;
                        z15 = z5;
                        z8 = z9;
                        z14 = z4;
                        size = i3;
                        z10 = z3;
                        str2 = str;
                        r4 = z8;
                    }
                    i = size;
                    r5 = r4;
                    boolean z25 = z14 ? 1 : 0;
                    z2 = z15 ? 1 : 0 ? 1 : 0;
                    z = z25 ? 1 : 0;
                    i6 += r5;
                    qf0Var2 = qf0Var;
                    z15 = z2;
                    z14 = z;
                    r6 = r5;
                    size = i;
                } else {
                    if (!g1a.E(strA, HttpHeaders.HEAD_KEY_PRAGMA, r6)) {
                        i = size;
                        r5 = r6;
                        z = z14;
                        z2 = z15;
                    }
                    i6 += r5;
                    qf0Var2 = qf0Var;
                    z15 = z2;
                    z14 = z;
                    r6 = r5;
                    size = i;
                }
                z10 = false;
                i2 = 0;
                r4 = r6;
                while (i2 < strB.length()) {
                    length = strB.length();
                    length2 = i2;
                    while (true) {
                        if (length2 < length) {
                            i3 = size;
                            z3 = z10;
                            str = str2;
                            length2 = strB.length();
                            break;
                        }
                        i3 = size;
                        i5 = length;
                        z3 = z10;
                        str = str2;
                        if (j1a.W("=,;", strB.charAt(length2), false, 2, null)) {
                            break;
                            break;
                        }
                        length2++;
                        length = i5;
                        size = i3;
                        z10 = z3;
                        str2 = str;
                    }
                    String strSubstring3 = strB.substring(i2, length2);
                    y45.i(strSubstring3, "substring(...)");
                    string = j1a.i1(strSubstring3).toString();
                    if (length2 != strB.length()) {
                        z4 = z14 ? 1 : 0;
                        z5 = z15 ? 1 : 0;
                        z6 = true;
                        i2 = length2 + 1;
                        string2 = null;
                    } else {
                        z4 = z14 ? 1 : 0;
                        z5 = z15 ? 1 : 0;
                        z6 = true;
                        i2 = length2 + 1;
                        string2 = null;
                    }
                    if (g1a.E("no-cache", string, z6)) {
                        boolean z110 = z6;
                        z11 = z110 ? 1 : 0;
                        z9 = z110;
                    } else if (g1a.E("no-store", string, z6)) {
                        boolean z26 = z6;
                        z12 = z26 ? 1 : 0;
                        z9 = z26;
                    } else {
                        if (g1a.E("max-age", string, z6)) {
                            iA = g92.a(-1, string2);
                        } else if (g1a.E("s-maxage", string, z6)) {
                            iA2 = g92.a(-1, string2);
                        } else if (g1a.E("private", string, z6)) {
                            boolean z27 = z6;
                            z13 = z27 ? 1 : 0;
                            z9 = z27;
                        } else {
                            if (g1a.E(BuildConfig.SDK_BUILD_FLAVOR, string, z6)) {
                                z8 = z6;
                                z14 = z8 ? 1 : 0;
                                z15 = z5;
                            } else {
                                if (g1a.E("must-revalidate", string, z6)) {
                                    boolean z28 = z6;
                                    z15 = z28 ? 1 : 0;
                                    z8 = z28;
                                } else if (g1a.E("max-stale", string, z6)) {
                                    iA3 = g92.a(Integer.MAX_VALUE, string2);
                                } else if (g1a.E("min-fresh", string, z6)) {
                                    iA4 = g92.a(-1, string2);
                                } else if (g1a.E("only-if-cached", string, z6)) {
                                    boolean z29 = z6;
                                    z16 = z29 ? 1 : 0;
                                    z9 = z29;
                                } else if (g1a.E("no-transform", string, z6)) {
                                    boolean z210 = z6;
                                    z17 = z210 ? 1 : 0;
                                    z9 = z210;
                                } else {
                                    z7 = z6;
                                    if (g1a.E("immutable", string, z6)) {
                                        z9 = z7;
                                        z18 = z7 ? 1 : 0;
                                        z9 = z7;
                                    }
                                }
                                z14 = z4;
                            }
                            size = i3;
                            z10 = z3;
                            str2 = str;
                            r4 = z8;
                        }
                        z9 = z6;
                    }
                    z9 = z7;
                    z15 = z5;
                    z8 = z9;
                    z14 = z4;
                    size = i3;
                    z10 = z3;
                    str2 = str;
                    r4 = z8;
                }
                i = size;
                r5 = r4;
                boolean z211 = z14 ? 1 : 0;
                z2 = z15 ? 1 : 0 ? 1 : 0;
                z = z211 ? 1 : 0;
                i6 += r5;
                qf0Var2 = qf0Var;
                z15 = z2;
                z14 = z;
                r6 = r5;
                size = i;
            }
            return new um(z11, z12, iA, iA2, z13, z14, z15, iA3, iA4, z16, z17, z18, !z10 ? null : str2, 0);
        }
    }

    static {
        new a().a();
        new a().b().a(TimeUnit.SECONDS);
    }

    private um(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.a = z;
        this.b = z2;
        this.c = i;
        this.d = i2;
        this.e = z3;
        this.f = z4;
        this.g = z5;
        this.h = i3;
        this.i = i4;
        this.j = z6;
        this.k = z7;
        this.l = z8;
        this.m = str;
    }

    public final boolean a() {
        return this.j;
    }

    public final String toString() {
        String str = this.m;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.a) {
            sb.append("no-cache, ");
        }
        if (this.b) {
            sb.append("no-store, ");
        }
        if (this.c != -1) {
            sb.append("max-age=");
            sb.append(this.c);
            sb.append(", ");
        }
        if (this.d != -1) {
            sb.append("s-maxage=");
            sb.append(this.d);
            sb.append(", ");
        }
        if (this.e) {
            sb.append("private, ");
        }
        if (this.f) {
            sb.append("public, ");
        }
        if (this.g) {
            sb.append("must-revalidate, ");
        }
        if (this.h != -1) {
            sb.append("max-stale=");
            sb.append(this.h);
            sb.append(", ");
        }
        if (this.i != -1) {
            sb.append("min-fresh=");
            sb.append(this.i);
            sb.append(", ");
        }
        if (this.j) {
            sb.append("only-if-cached, ");
        }
        if (this.k) {
            sb.append("no-transform, ");
        }
        if (this.l) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String string = sb.toString();
        y45.i(string, "toString(...)");
        this.m = string;
        return string;
    }

    public um(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str, int i5) {
        this(z, z2, i, i2, z3, z4, z5, i3, i4, z6, z7, z8, str);
    }
}
