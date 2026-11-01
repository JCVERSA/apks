package com.wandoujia.download.rpc;

import android.text.TextUtils;
import java.util.Map;
import o.fn3;
import o.nj2;

public class InnerDownloadRequest {
    public final String a;
    public final String b;
    public final String c;
    public final DownloadConstants.ResourceType d;
    public final String e;
    public final boolean f;
    public final long g;
    public final String h;
    public final String i;
    public final Map j;
    public final String k;
    public final String[] l;
    public final String m;
    public final String n;

    public final long f493o;
    public final long p;
    public final String q;
    public final boolean r;
    public final long s;
    public final DownloadConstants.VerifyType t;
    public final String u;

    public enum VerifyType {
        MD5,
        PF5
    }

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[VerifyType.values().length];
            a = iArr;
            try {
                iArr[VerifyType.MD5.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[VerifyType.PF5.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class b {
        public final String a;
        public String b;
        public String c;
        public DownloadConstants.ResourceType d;
        public String e;
        public boolean f;
        public String g;
        public long h;
        public String i;
        public long j;
        public long k;
        public String l;
        public Map m;
        public String n;

        public boolean f494o;
        public String[] p;
        public String q;
        public String r;
        public long s;
        public VerifyType t;
        public String u;

        public b(String str, DownloadConstants.ResourceType resourceType) {
            DownloadConstants.ResourceType resourceType2 = DownloadConstants.ResourceType.APP;
            this.g = "downloadmanager";
            this.h = -1L;
            this.f494o = true;
            this.s = -1L;
            this.a = str;
            this.d = resourceType;
        }

        public static boolean a(b bVar) {
            return bVar.f;
        }

        public static String[] b(b bVar) {
            return bVar.p;
        }

        public static String c(b bVar) {
            return bVar.i;
        }

        public static String d(b bVar) {
            return bVar.e;
        }

        public static String e(b bVar) {
            return bVar.q;
        }

        public static String f(b bVar) {
            return bVar.r;
        }

        public static Map g(b bVar) {
            return bVar.m;
        }

        public static String h(b bVar) {
            return bVar.n;
        }

        public static String i(b bVar) {
            return bVar.c;
        }

        public static long j(b bVar) {
            return bVar.j;
        }

        public static String k(b bVar) {
            return bVar.l;
        }

        public static long l(b bVar) {
            return bVar.s;
        }

        public static long m(b bVar) {
            return bVar.k;
        }

        public static String n(b bVar) {
            return bVar.b;
        }

        public static long o(b bVar) {
            return bVar.h;
        }

        public static DownloadConstants.ResourceType p(b bVar) {
            return bVar.d;
        }

        public static String q(b bVar) {
            return bVar.a;
        }

        public static String r(b bVar) {
            return bVar.g;
        }

        public static VerifyType s(b bVar) {
            return bVar.t;
        }

        public static String t(b bVar) {
            return bVar.u;
        }

        public static boolean u(b bVar) {
            return bVar.f494o;
        }

        public b A(String str) {
            this.q = str;
            return this;
        }

        public b B(String str) {
            if (!TextUtils.isEmpty(str) && !str.endsWith("/")) {
                str = str + "/";
            }
            this.r = str;
            return this;
        }

        public b C(Map map) {
            this.m = map;
            return this;
        }

        public b D(String str) {
            this.n = str;
            return this;
        }

        public b E(String str) {
            this.c = str;
            return this;
        }

        public b F(String str) {
            this.e = str;
            return this;
        }

        public b G(String str) {
            this.l = str;
            return this;
        }

        public b H(long j) {
            this.s = j;
            return this;
        }

        public b I(long j) {
            this.k = j;
            return this;
        }

        public b J(String str) {
            this.b = str;
            return this;
        }

        public b K(long j) {
            this.h = j;
            return this;
        }

        public b L(VerifyType verifyType, String str) {
            this.t = verifyType;
            this.u = str;
            return this;
        }

        public b M(boolean z) {
            this.f494o = z;
            return this;
        }

        public InnerDownloadRequest v() {
            if (TextUtils.isEmpty(this.c)) {
                this.c = this.a;
            }
            if (TextUtils.isEmpty(this.b)) {
                this.b = nj2.b(this.a);
            }
            return new InnerDownloadRequest(this, null);
        }

        public b w(boolean z) {
            this.f = z;
            return this;
        }

        public b x(long j) {
            this.j = j;
            return this;
        }

        public b y(String... strArr) {
            this.p = strArr;
            return this;
        }

        public b z(String str) {
            this.i = str;
            return this;
        }
    }

    public InnerDownloadRequest(b bVar) {
        this.f = b.a(bVar);
        this.e = b.d(bVar);
        this.b = b.n(bVar);
        this.c = b.i(bVar);
        this.g = b.o(bVar);
        this.d = b.p(bVar);
        this.a = b.q(bVar);
        this.q = b.r(bVar);
        this.h = b.c(bVar);
        this.f493o = b.m(bVar);
        this.p = b.j(bVar);
        this.i = b.k(bVar);
        this.j = b.g(bVar);
        this.k = b.h(bVar);
        this.r = b.u(bVar);
        this.l = b.b(bVar);
        this.n = b.e(bVar);
        this.m = b.f(bVar);
        this.s = b.l(bVar);
        if (b.s(bVar) != null) {
            int i = a.a[b.s(bVar).ordinal()];
            if (i == 1) {
                this.t = DownloadConstants.VerifyType.MD5;
            } else if (i != 2) {
                this.t = null;
            } else {
                this.t = DownloadConstants.VerifyType.PF5;
            }
        } else {
            this.t = null;
        }
        this.u = b.t(bVar);
    }

    public InnerDownloadRequest(b bVar, fn3 fn3Var) {
        this(bVar);
    }
}
