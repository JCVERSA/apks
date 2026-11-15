package com.mbridge.msdk.thrid.okhttp.internal.cache;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.internal.http.d;
import com.mbridge.msdk.thrid.okhttp.internal.http.e;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public final class b {

    public final w f37090a;

    public final y f37091b;

    b(w wVar, y yVar) {
        this.f37090a = wVar;
        this.f37091b = yVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.h().b() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(y yVar, w wVar) {
        int iK = yVar.k();
        if (iK != 200 && iK != 410 && iK != 414 && iK != 501 && iK != 203 && iK != 204) {
            if (iK != 307) {
                if (iK != 308 && iK != 404 && iK != 405) {
                    switch (iK) {
                        case 300:
                        case MRAID_ERROR_VALUE:
                            break;
                        case INVALID_IFA_STATUS_VALUE:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (yVar.b(HttpHeaders.EXPIRES) == null) {
                if (yVar.h().d() == -1) {
                    if (!yVar.h().c()) {
                    }
                }
            }
        }
        return (yVar.h().i() || wVar.b().i()) ? false : true;
    }

    public static class a {

        final long f37092a;

        final w f37093b;

        final y f37094c;

        private Date f37095d;

        private String f37096e;

        private Date f37097f;

        private String f37098g;

        private Date f37099h;

        private long f37100i;

        private long f37101j;

        private String f37102k;

        private int f37103l;

        public a(long j10, w wVar, y yVar) {
            this.f37103l = -1;
            this.f37092a = j10;
            this.f37093b = wVar;
            this.f37094c = yVar;
            if (yVar != null) {
                this.f37100i = yVar.s();
                this.f37101j = yVar.q();
                p pVarM = yVar.m();
                int iB = pVarM.b();
                for (int i10 = 0; i10 < iB; i10++) {
                    String strA = pVarM.a(i10);
                    String strB = pVarM.b(i10);
                    if (HttpHeaders.DATE.equalsIgnoreCase(strA)) {
                        this.f37095d = d.a(strB);
                        this.f37096e = strB;
                    } else if (HttpHeaders.EXPIRES.equalsIgnoreCase(strA)) {
                        this.f37099h = d.a(strB);
                    } else if ("Last-Modified".equalsIgnoreCase(strA)) {
                        this.f37097f = d.a(strB);
                        this.f37098g = strB;
                    } else if ("ETag".equalsIgnoreCase(strA)) {
                        this.f37102k = strB;
                    } else if ("Age".equalsIgnoreCase(strA)) {
                        this.f37103l = e.a(strB, -1);
                    }
                }
            }
        }

        private long a() {
            Date date = this.f37095d;
            long jMax = date != null ? Math.max(0L, this.f37101j - date.getTime()) : 0L;
            int i10 = this.f37103l;
            if (i10 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i10));
            }
            long j10 = this.f37101j;
            return jMax + (j10 - this.f37100i) + (this.f37092a - j10);
        }

        private long b() {
            com.mbridge.msdk.thrid.okhttp.c cVarH = this.f37094c.h();
            if (cVarH.d() != -1) {
                return TimeUnit.SECONDS.toMillis(cVarH.d());
            }
            if (this.f37099h != null) {
                Date date = this.f37095d;
                long time = this.f37099h.getTime() - (date != null ? date.getTime() : this.f37101j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f37097f == null || this.f37094c.r().g().k() != null) {
                return 0L;
            }
            Date date2 = this.f37095d;
            long time2 = (date2 != null ? date2.getTime() : this.f37100i) - this.f37097f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private b d() {
            String str;
            if (this.f37094c == null) {
                return new b(this.f37093b, null);
            }
            if (this.f37093b.d() && this.f37094c.l() == null) {
                return new b(this.f37093b, null);
            }
            if (!b.a(this.f37094c, this.f37093b)) {
                return new b(this.f37093b, null);
            }
            com.mbridge.msdk.thrid.okhttp.c cVarB = this.f37093b.b();
            if (cVarB.h() || a(this.f37093b)) {
                return new b(this.f37093b, null);
            }
            com.mbridge.msdk.thrid.okhttp.c cVarH = this.f37094c.h();
            long jA = a();
            long jB = b();
            if (cVarB.d() != -1) {
                jB = Math.min(jB, TimeUnit.SECONDS.toMillis(cVarB.d()));
            }
            long millis = 0;
            long millis2 = cVarB.f() != -1 ? TimeUnit.SECONDS.toMillis(cVarB.f()) : 0L;
            if (!cVarH.g() && cVarB.e() != -1) {
                millis = TimeUnit.SECONDS.toMillis(cVarB.e());
            }
            if (!cVarH.h()) {
                long j10 = millis2 + jA;
                if (j10 < millis + jB) {
                    y.a aVarO = this.f37094c.o();
                    if (j10 >= jB) {
                        aVarO.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (jA > 86400000 && e()) {
                        aVarO.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new b(null, aVarO.a());
                }
            }
            String str2 = this.f37102k;
            if (str2 != null) {
                str = "If-None-Match";
            } else {
                if (this.f37097f != null) {
                    str2 = this.f37098g;
                } else {
                    if (this.f37095d == null) {
                        return new b(this.f37093b, null);
                    }
                    str2 = this.f37096e;
                }
                str = "If-Modified-Since";
            }
            p.a aVarA = this.f37093b.c().a();
            com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(aVarA, str, str2);
            return new b(this.f37093b.f().a(aVarA.a()).a(), this.f37094c);
        }

        private boolean e() {
            return this.f37094c.h().d() == -1 && this.f37099h == null;
        }

        public b c() {
            b bVarD = d();
            return (bVarD.f37090a == null || !this.f37093b.b().j()) ? bVarD : new b(null, null);
        }

        private static boolean a(w wVar) {
            return (wVar.a("If-Modified-Since") == null && wVar.a("If-None-Match") == null) ? false : true;
        }
    }
}
