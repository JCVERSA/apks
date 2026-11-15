package com.squareup.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public final class b {

    public final Request f39610a;

    public final Response f39611b;

    public static class C0555b {

        final long f39612a;

        final Request f39613b;

        final Response f39614c;

        private Date f39615d;

        private String f39616e;

        private Date f39617f;

        private String f39618g;

        private Date f39619h;

        private long f39620i;

        private long f39621j;

        private String f39622k;

        private int f39623l;

        public C0555b(long j10, Request request, Response response) {
            this.f39623l = -1;
            this.f39612a = j10;
            this.f39613b = request;
            this.f39614c = response;
            if (response != null) {
                Headers headers = response.headers();
                int size = headers.size();
                for (int i10 = 0; i10 < size; i10++) {
                    String strName = headers.name(i10);
                    String strValue = headers.value(i10);
                    if (HttpHeaders.DATE.equalsIgnoreCase(strName)) {
                        this.f39615d = f.b(strValue);
                        this.f39616e = strValue;
                    } else if (HttpHeaders.EXPIRES.equalsIgnoreCase(strName)) {
                        this.f39619h = f.b(strValue);
                    } else if ("Last-Modified".equalsIgnoreCase(strName)) {
                        this.f39617f = f.b(strValue);
                        this.f39618g = strValue;
                    } else if ("ETag".equalsIgnoreCase(strName)) {
                        this.f39622k = strValue;
                    } else if ("Age".equalsIgnoreCase(strName)) {
                        this.f39623l = c.a(strValue, -1);
                    } else if (OkHeaders.f39605c.equalsIgnoreCase(strName)) {
                        this.f39620i = Long.parseLong(strValue);
                    } else if (OkHeaders.f39606d.equalsIgnoreCase(strName)) {
                        this.f39621j = Long.parseLong(strValue);
                    }
                }
            }
        }

        private long a() {
            Date date = this.f39615d;
            long jMax = date != null ? Math.max(0L, this.f39621j - date.getTime()) : 0L;
            int i10 = this.f39623l;
            if (i10 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i10));
            }
            long j10 = this.f39621j;
            return jMax + (j10 - this.f39620i) + (this.f39612a - j10);
        }

        private long b() {
            CacheControl cacheControl = this.f39614c.cacheControl();
            if (cacheControl.maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds());
            }
            if (this.f39619h != null) {
                Date date = this.f39615d;
                long time = this.f39619h.getTime() - (date != null ? date.getTime() : this.f39621j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f39617f == null || this.f39614c.request().httpUrl().query() != null) {
                return 0L;
            }
            Date date2 = this.f39615d;
            long time2 = (date2 != null ? date2.getTime() : this.f39620i) - this.f39617f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private b d() {
            Response response = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            Object[] objArr5 = 0;
            Object[] objArr6 = 0;
            Object[] objArr7 = 0;
            Object[] objArr8 = 0;
            Object[] objArr9 = 0;
            Object[] objArr10 = 0;
            Object[] objArr11 = 0;
            Object[] objArr12 = 0;
            if (this.f39614c == null) {
                return new b(this.f39613b, response);
            }
            if (this.f39613b.isHttps() && this.f39614c.handshake() == null) {
                return new b(this.f39613b, objArr11 == true ? 1 : 0);
            }
            if (!b.a(this.f39614c, this.f39613b)) {
                return new b(this.f39613b, objArr9 == true ? 1 : 0);
            }
            CacheControl cacheControl = this.f39613b.cacheControl();
            if (cacheControl.noCache() || e(this.f39613b)) {
                return new b(this.f39613b, objArr2 == true ? 1 : 0);
            }
            long jA = a();
            long jB = b();
            if (cacheControl.maxAgeSeconds() != -1) {
                jB = Math.min(jB, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
            }
            long millis = 0;
            long millis2 = cacheControl.minFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds()) : 0L;
            CacheControl cacheControl2 = this.f39614c.cacheControl();
            if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                millis = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
            }
            if (!cacheControl2.noCache()) {
                long j10 = millis2 + jA;
                if (j10 < millis + jB) {
                    Response.Builder builderNewBuilder = this.f39614c.newBuilder();
                    if (j10 >= jB) {
                        builderNewBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (jA > 86400000 && f()) {
                        builderNewBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new b(objArr7 == true ? 1 : 0, builderNewBuilder.build());
                }
            }
            Request.Builder builderNewBuilder2 = this.f39613b.newBuilder();
            String str = this.f39622k;
            if (str != null) {
                builderNewBuilder2.header("If-None-Match", str);
            } else if (this.f39617f != null) {
                builderNewBuilder2.header("If-Modified-Since", this.f39618g);
            } else if (this.f39615d != null) {
                builderNewBuilder2.header("If-Modified-Since", this.f39616e);
            }
            Request requestBuild = builderNewBuilder2.build();
            return e(requestBuild) ? new b(requestBuild, this.f39614c) : new b(requestBuild, objArr4 == true ? 1 : 0);
        }

        private static boolean e(Request request) {
            return (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) ? false : true;
        }

        private boolean f() {
            return this.f39614c.cacheControl().maxAgeSeconds() == -1 && this.f39619h == null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b c() {
            b bVarD = d();
            return (bVarD.f39610a == null || !this.f39613b.cacheControl().onlyIfCached()) ? bVarD : new b(null, 0 == true ? 1 : 0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.cacheControl().isPrivate() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(Response response, Request request) {
        int iCode = response.code();
        if (iCode != 200 && iCode != 410 && iCode != 414 && iCode != 501 && iCode != 203 && iCode != 204) {
            if (iCode != 307) {
                if (iCode != 308 && iCode != 404 && iCode != 405) {
                    switch (iCode) {
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
            if (response.header(HttpHeaders.EXPIRES) == null) {
                if (response.cacheControl().maxAgeSeconds() == -1) {
                    if (!response.cacheControl().isPublic()) {
                    }
                }
            }
        }
        return (response.cacheControl().noStore() || request.cacheControl().noStore()) ? false : true;
    }

    private b(Request request, Response response) {
        this.f39610a = request;
        this.f39611b = response;
    }
}
