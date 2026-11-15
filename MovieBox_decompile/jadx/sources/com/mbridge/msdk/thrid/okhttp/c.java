package com.mbridge.msdk.thrid.okhttp;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.util.concurrent.TimeUnit;

public final class c {

    public static final c f36943n = new a().b().a();

    public static final c f36944o = new a().c().a(Integer.MAX_VALUE, TimeUnit.SECONDS).a();

    private final boolean f36945a;

    private final boolean f36946b;

    private final int f36947c;

    private final int f36948d;

    private final boolean f36949e;

    private final boolean f36950f;

    private final boolean f36951g;

    private final int f36952h;

    private final int f36953i;

    private final boolean f36954j;

    private final boolean f36955k;

    private final boolean f36956l;

    String f36957m;

    private c(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str) {
        this.f36945a = z10;
        this.f36946b = z11;
        this.f36947c = i10;
        this.f36948d = i11;
        this.f36949e = z12;
        this.f36950f = z13;
        this.f36951g = z14;
        this.f36952h = i12;
        this.f36953i = i13;
        this.f36954j = z15;
        this.f36955k = z16;
        this.f36956l = z17;
        this.f36957m = str;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0041  */
    /* JADX WARN: Code duplicated, block: B:21:0x0065  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:44:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:53:0x0109  */
    /* JADX WARN: Code duplicated, block: B:55:0x0111  */
    /* JADX WARN: Code duplicated, block: B:56:0x0119  */
    /* JADX WARN: Code duplicated, block: B:58:0x0122  */
    /* JADX WARN: Code duplicated, block: B:59:0x0125  */
    /* JADX WARN: Code duplicated, block: B:61:0x012d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0130  */
    /* JADX WARN: Code duplicated, block: B:64:0x0138  */
    /* JADX WARN: Code duplicated, block: B:87:0x013a A[SYNTHETIC] */
    public static c a(p pVar) {
        int i10;
        int iA;
        String strTrim;
        int iA2;
        String strTrim2;
        int iB = pVar.b();
        boolean z10 = true;
        String str = null;
        boolean z11 = false;
        boolean z12 = false;
        int iA3 = -1;
        int iA4 = -1;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        int iA5 = -1;
        int iA6 = -1;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        for (int i11 = 0; i11 < iB; i11++) {
            String strA = pVar.a(i11);
            String strB = pVar.b(i11);
            if (strA.equalsIgnoreCase(HttpHeaders.CACHE_CONTROL)) {
                if (str == null) {
                    str = strB;
                }
                for (i10 = 0; i10 < strB.length(); i10 = iA2) {
                    iA = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strB, i10, "=,;");
                    strTrim = strB.substring(i10, iA).trim();
                    if (iA != strB.length() || strB.charAt(iA) == ',' || strB.charAt(iA) == ';') {
                        iA2 = iA + 1;
                        strTrim2 = null;
                    } else {
                        int iB2 = com.mbridge.msdk.thrid.okhttp.internal.http.e.b(strB, iA + 1);
                        if (iB2 >= strB.length() || strB.charAt(iB2) != '\"') {
                            iA2 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strB, iB2, ",;");
                            strTrim2 = strB.substring(iB2, iA2).trim();
                        } else {
                            int i12 = iB2 + 1;
                            int iA7 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strB, i12, "\"");
                            strTrim2 = strB.substring(i12, iA7);
                            iA2 = iA7 + 1;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(strTrim)) {
                        z11 = true;
                    } else if ("no-store".equalsIgnoreCase(strTrim)) {
                        z12 = true;
                    } else if ("max-age".equalsIgnoreCase(strTrim)) {
                        iA3 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                    } else if ("s-maxage".equalsIgnoreCase(strTrim)) {
                        iA4 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                    } else if ("private".equalsIgnoreCase(strTrim)) {
                        z13 = true;
                    } else if ("public".equalsIgnoreCase(strTrim)) {
                        z14 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                        z15 = true;
                    } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                        iA5 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, Integer.MAX_VALUE);
                    } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                        iA6 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                    } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                        z16 = true;
                    } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                        z17 = true;
                    } else if ("immutable".equalsIgnoreCase(strTrim)) {
                        z18 = true;
                    }
                }
            } else {
                if (strA.equalsIgnoreCase("Pragma")) {
                }
            }
            z10 = false;
            while (i10 < strB.length()) {
                iA = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strB, i10, "=,;");
                strTrim = strB.substring(i10, iA).trim();
                if (iA != strB.length()) {
                    iA2 = iA + 1;
                    strTrim2 = null;
                } else {
                    iA2 = iA + 1;
                    strTrim2 = null;
                }
                if ("no-cache".equalsIgnoreCase(strTrim)) {
                    z11 = true;
                } else if ("no-store".equalsIgnoreCase(strTrim)) {
                    z12 = true;
                } else if ("max-age".equalsIgnoreCase(strTrim)) {
                    iA3 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                } else if ("s-maxage".equalsIgnoreCase(strTrim)) {
                    iA4 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                } else if ("private".equalsIgnoreCase(strTrim)) {
                    z13 = true;
                } else if ("public".equalsIgnoreCase(strTrim)) {
                    z14 = true;
                } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                    z15 = true;
                } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                    iA5 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, Integer.MAX_VALUE);
                } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                    iA6 = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(strTrim2, -1);
                } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                    z16 = true;
                } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                    z17 = true;
                } else if ("immutable".equalsIgnoreCase(strTrim)) {
                    z18 = true;
                }
            }
        }
        return new c(z11, z12, iA3, iA4, z13, z14, z15, iA5, iA6, z16, z17, z18, !z10 ? null : str);
    }

    public boolean b() {
        return this.f36949e;
    }

    public boolean c() {
        return this.f36950f;
    }

    public int d() {
        return this.f36947c;
    }

    public int e() {
        return this.f36952h;
    }

    public int f() {
        return this.f36953i;
    }

    public boolean g() {
        return this.f36951g;
    }

    public boolean h() {
        return this.f36945a;
    }

    public boolean i() {
        return this.f36946b;
    }

    public boolean j() {
        return this.f36954j;
    }

    public String toString() {
        String str = this.f36957m;
        if (str != null) {
            return str;
        }
        String strA = a();
        this.f36957m = strA;
        return strA;
    }

    public static final class a {

        boolean f36958a;

        boolean f36959b;

        int f36960c = -1;

        int f36961d = -1;

        int f36962e = -1;

        boolean f36963f;

        boolean f36964g;

        boolean f36965h;

        public a a(int i10, TimeUnit timeUnit) {
            if (i10 >= 0) {
                long seconds = timeUnit.toSeconds(i10);
                this.f36961d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i10);
        }

        public a b() {
            this.f36958a = true;
            return this;
        }

        public a c() {
            this.f36963f = true;
            return this;
        }

        public c a() {
            return new c(this);
        }
    }

    c(a aVar) {
        this.f36945a = aVar.f36958a;
        this.f36946b = aVar.f36959b;
        this.f36947c = aVar.f36960c;
        this.f36948d = -1;
        this.f36949e = false;
        this.f36950f = false;
        this.f36951g = false;
        this.f36952h = aVar.f36961d;
        this.f36953i = aVar.f36962e;
        this.f36954j = aVar.f36963f;
        this.f36955k = aVar.f36964g;
        this.f36956l = aVar.f36965h;
    }

    private String a() {
        StringBuilder sb2 = new StringBuilder();
        if (this.f36945a) {
            sb2.append("no-cache, ");
        }
        if (this.f36946b) {
            sb2.append("no-store, ");
        }
        if (this.f36947c != -1) {
            sb2.append("max-age=");
            sb2.append(this.f36947c);
            sb2.append(", ");
        }
        if (this.f36948d != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.f36948d);
            sb2.append(", ");
        }
        if (this.f36949e) {
            sb2.append("private, ");
        }
        if (this.f36950f) {
            sb2.append("public, ");
        }
        if (this.f36951g) {
            sb2.append("must-revalidate, ");
        }
        if (this.f36952h != -1) {
            sb2.append("max-stale=");
            sb2.append(this.f36952h);
            sb2.append(", ");
        }
        if (this.f36953i != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.f36953i);
            sb2.append(", ");
        }
        if (this.f36954j) {
            sb2.append("only-if-cached, ");
        }
        if (this.f36955k) {
            sb2.append("no-transform, ");
        }
        if (this.f36956l) {
            sb2.append("immutable, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        return sb2.toString();
    }
}
