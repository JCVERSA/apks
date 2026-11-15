package com.google.firebase.crashlytics.internal.model;

import java.nio.charset.Charset;
import java.util.List;

public abstract class CrashlyticsReport {

    private static final Charset f30485a = Charset.forName("UTF-8");

    public enum Type {
        INCOMPLETE,
        JAVA,
        NATIVE
    }

    public static abstract class a {

        public static abstract class AbstractC0395a {

            public static abstract class AbstractC0396a {
                public abstract AbstractC0395a a();

                public abstract AbstractC0396a b(String str);

                public abstract AbstractC0396a c(String str);

                public abstract AbstractC0396a d(String str);
            }

            public static AbstractC0396a a() {
                return new com.google.firebase.crashlytics.internal.model.d.b();
            }

            public abstract String b();

            public abstract String c();

            public abstract String d();
        }

        public static abstract class b {
            public abstract a a();

            public abstract b b(List list);

            public abstract b c(int i10);

            public abstract b d(int i10);

            public abstract b e(String str);

            public abstract b f(long j10);

            public abstract b g(int i10);

            public abstract b h(long j10);

            public abstract b i(long j10);

            public abstract b j(String str);
        }

        public static b a() {
            return new com.google.firebase.crashlytics.internal.model.c.b();
        }

        public abstract List b();

        public abstract int c();

        public abstract int d();

        public abstract String e();

        public abstract long f();

        public abstract int g();

        public abstract long h();

        public abstract long i();

        public abstract String j();
    }

    public static abstract class b {
        public abstract CrashlyticsReport a();

        public abstract b b(a aVar);

        public abstract b c(String str);

        public abstract b d(String str);

        public abstract b e(String str);

        public abstract b f(String str);

        public abstract b g(String str);

        public abstract b h(String str);

        public abstract b i(String str);

        public abstract b j(d dVar);

        public abstract b k(int i10);

        public abstract b l(String str);

        public abstract b m(e eVar);
    }

    public static abstract class c {

        public static abstract class a {
            public abstract c a();

            public abstract a b(String str);

            public abstract a c(String str);
        }

        public static a a() {
            return new com.google.firebase.crashlytics.internal.model.e.b();
        }

        public abstract String b();

        public abstract String c();
    }

    public static abstract class d {

        public static abstract class a {
            public abstract d a();

            public abstract a b(List list);

            public abstract a c(String str);
        }

        public static abstract class b {

            public static abstract class a {
                public abstract b a();

                public abstract a b(byte[] bArr);

                public abstract a c(String str);
            }

            public static a a() {
                return new g.b();
            }

            public abstract byte[] b();

            public abstract String c();
        }

        public static a a() {
            return new f.b();
        }

        public abstract List b();

        public abstract String c();
    }

    public static abstract class e {

        public static abstract class a {

            public static abstract class AbstractC0397a {
                public abstract a a();

                public abstract AbstractC0397a b(String str);

                public abstract AbstractC0397a c(String str);

                public abstract AbstractC0397a d(String str);

                public abstract AbstractC0397a e(String str);

                public abstract AbstractC0397a f(String str);

                public abstract AbstractC0397a g(String str);
            }

            public static abstract class b {
                public abstract String a();
            }

            public static AbstractC0397a a() {
                return new i.b();
            }

            public abstract String b();

            public abstract String c();

            public abstract String d();

            public abstract String e();

            public abstract String f();

            public abstract b g();

            public abstract String h();
        }

        public static abstract class b {
            public abstract e a();

            public abstract b b(a aVar);

            public abstract b c(String str);

            public abstract b d(boolean z10);

            public abstract b e(c cVar);

            public abstract b f(Long l10);

            public abstract b g(List list);

            public abstract b h(String str);

            public abstract b i(int i10);

            public abstract b j(String str);

            public b k(byte[] bArr) {
                return j(new String(bArr, CrashlyticsReport.f30485a));
            }

            public abstract b l(AbstractC0412e abstractC0412e);

            public abstract b m(long j10);

            public abstract b n(f fVar);
        }

        public static abstract class c {

            public static abstract class a {
                public abstract c a();

                public abstract a b(int i10);

                public abstract a c(int i10);

                public abstract a d(long j10);

                public abstract a e(String str);

                public abstract a f(String str);

                public abstract a g(String str);

                public abstract a h(long j10);

                public abstract a i(boolean z10);

                public abstract a j(int i10);
            }

            public static a a() {
                return new k.b();
            }

            public abstract int b();

            public abstract int c();

            public abstract long d();

            public abstract String e();

            public abstract String f();

            public abstract String g();

            public abstract long h();

            public abstract int i();

            public abstract boolean j();
        }

        public static abstract class d {

            public static abstract class a {

                public static abstract class AbstractC0398a {
                    public abstract a a();

                    public abstract AbstractC0398a b(List list);

                    public abstract AbstractC0398a c(Boolean bool);

                    public abstract AbstractC0398a d(c cVar);

                    public abstract AbstractC0398a e(List list);

                    public abstract AbstractC0398a f(b bVar);

                    public abstract AbstractC0398a g(List list);

                    public abstract AbstractC0398a h(int i10);
                }

                public static abstract class b {

                    public static abstract class AbstractC0399a {

                        public static abstract class AbstractC0400a {
                            public abstract AbstractC0399a a();

                            public abstract AbstractC0400a b(long j10);

                            public abstract AbstractC0400a c(String str);

                            public abstract AbstractC0400a d(long j10);

                            public abstract AbstractC0400a e(String str);

                            public AbstractC0400a f(byte[] bArr) {
                                return e(new String(bArr, CrashlyticsReport.f30485a));
                            }
                        }

                        public static AbstractC0400a a() {
                            return new o.b();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract long d();

                        public abstract String e();

                        public byte[] f() {
                            String strE = e();
                            if (strE != null) {
                                return strE.getBytes(CrashlyticsReport.f30485a);
                            }
                            return null;
                        }
                    }

                    public static abstract class AbstractC0401b {
                        public abstract b a();

                        public abstract AbstractC0401b b(a aVar);

                        public abstract AbstractC0401b c(List list);

                        public abstract AbstractC0401b d(c cVar);

                        public abstract AbstractC0401b e(AbstractC0403d abstractC0403d);

                        public abstract AbstractC0401b f(List list);
                    }

                    public static abstract class c {

                        public static abstract class AbstractC0402a {
                            public abstract c a();

                            public abstract AbstractC0402a b(c cVar);

                            public abstract AbstractC0402a c(List list);

                            public abstract AbstractC0402a d(int i10);

                            public abstract AbstractC0402a e(String str);

                            public abstract AbstractC0402a f(String str);
                        }

                        public static AbstractC0402a a() {
                            return new p.b();
                        }

                        public abstract c b();

                        public abstract List c();

                        public abstract int d();

                        public abstract String e();

                        public abstract String f();
                    }

                    public static abstract class AbstractC0403d {

                        public static abstract class AbstractC0404a {
                            public abstract AbstractC0403d a();

                            public abstract AbstractC0404a b(long j10);

                            public abstract AbstractC0404a c(String str);

                            public abstract AbstractC0404a d(String str);
                        }

                        public static AbstractC0404a a() {
                            return new q.b();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract String d();
                    }

                    public static abstract class AbstractC0405e {

                        public static abstract class AbstractC0406a {
                            public abstract AbstractC0405e a();

                            public abstract AbstractC0406a b(List list);

                            public abstract AbstractC0406a c(int i10);

                            public abstract AbstractC0406a d(String str);
                        }

                        public static abstract class AbstractC0407b {

                            public static abstract class AbstractC0408a {
                                public abstract AbstractC0407b a();

                                public abstract AbstractC0408a b(String str);

                                public abstract AbstractC0408a c(int i10);

                                public abstract AbstractC0408a d(long j10);

                                public abstract AbstractC0408a e(long j10);

                                public abstract AbstractC0408a f(String str);
                            }

                            public static AbstractC0408a a() {
                                return new s.b();
                            }

                            public abstract String b();

                            public abstract int c();

                            public abstract long d();

                            public abstract long e();

                            public abstract String f();
                        }

                        public static AbstractC0406a a() {
                            return new r.b();
                        }

                        public abstract List b();

                        public abstract int c();

                        public abstract String d();
                    }

                    public static AbstractC0401b a() {
                        return new n.b();
                    }

                    public abstract a b();

                    public abstract List c();

                    public abstract c d();

                    public abstract AbstractC0403d e();

                    public abstract List f();
                }

                public static abstract class c {

                    public static abstract class AbstractC0409a {
                        public abstract c a();

                        public abstract AbstractC0409a b(boolean z10);

                        public abstract AbstractC0409a c(int i10);

                        public abstract AbstractC0409a d(int i10);

                        public abstract AbstractC0409a e(String str);
                    }

                    public static AbstractC0409a a() {
                        return new t.b();
                    }

                    public abstract int b();

                    public abstract int c();

                    public abstract String d();

                    public abstract boolean e();
                }

                public static AbstractC0398a a() {
                    return new m.b();
                }

                public abstract List b();

                public abstract Boolean c();

                public abstract c d();

                public abstract List e();

                public abstract b f();

                public abstract List g();

                public abstract int h();

                public abstract AbstractC0398a i();
            }

            public static abstract class b {
                public abstract d a();

                public abstract b b(a aVar);

                public abstract b c(c cVar);

                public abstract b d(AbstractC0410d abstractC0410d);

                public abstract b e(f fVar);

                public abstract b f(long j10);

                public abstract b g(String str);
            }

            public static abstract class c {

                public static abstract class a {
                    public abstract c a();

                    public abstract a b(Double d10);

                    public abstract a c(int i10);

                    public abstract a d(long j10);

                    public abstract a e(int i10);

                    public abstract a f(boolean z10);

                    public abstract a g(long j10);
                }

                public static a a() {
                    return new u.b();
                }

                public abstract Double b();

                public abstract int c();

                public abstract long d();

                public abstract int e();

                public abstract long f();

                public abstract boolean g();
            }

            public static abstract class AbstractC0410d {

                public static abstract class a {
                    public abstract AbstractC0410d a();

                    public abstract a b(String str);
                }

                public static a a() {
                    return new v.b();
                }

                public abstract String b();
            }

            public static abstract class AbstractC0411e {

                public static abstract class a {
                    public abstract AbstractC0411e a();

                    public abstract a b(String str);

                    public abstract a c(String str);

                    public abstract a d(b bVar);

                    public abstract a e(long j10);
                }

                public static abstract class b {

                    public static abstract class a {
                        public abstract b a();

                        public abstract a b(String str);

                        public abstract a c(String str);
                    }

                    public static a a() {
                        return new x.b();
                    }

                    public abstract String b();

                    public abstract String c();
                }

                public static a a() {
                    return new w.b();
                }

                public abstract String b();

                public abstract String c();

                public abstract b d();

                public abstract long e();
            }

            public static abstract class f {

                public static abstract class a {
                    public abstract f a();

                    public abstract a b(List list);
                }

                public static a a() {
                    return new y.b();
                }

                public abstract List b();
            }

            public static b a() {
                return new l.b();
            }

            public abstract a b();

            public abstract c c();

            public abstract AbstractC0410d d();

            public abstract f e();

            public abstract long f();

            public abstract String g();

            public abstract b h();
        }

        public static abstract class AbstractC0412e {

            public static abstract class a {
                public abstract AbstractC0412e a();

                public abstract a b(String str);

                public abstract a c(boolean z10);

                public abstract a d(int i10);

                public abstract a e(String str);
            }

            public static a a() {
                return new z.b();
            }

            public abstract String b();

            public abstract int c();

            public abstract String d();

            public abstract boolean e();
        }

        public static abstract class f {

            public static abstract class a {
                public abstract f a();

                public abstract a b(String str);
            }

            public static a a() {
                return new a0.b();
            }

            public abstract String b();
        }

        public static b a() {
            return new h.b().d(false);
        }

        public abstract a b();

        public abstract String c();

        public abstract c d();

        public abstract Long e();

        public abstract List f();

        public abstract String g();

        public abstract int h();

        public abstract String i();

        public byte[] j() {
            return i().getBytes(CrashlyticsReport.f30485a);
        }

        public abstract AbstractC0412e k();

        public abstract long l();

        public abstract f m();

        public abstract boolean n();

        public abstract b o();

        e p(String str) {
            return o().c(str).a();
        }

        e q(List list) {
            return o().g(list).a();
        }

        e r(long j10, boolean z10, String str) {
            b bVarO = o();
            bVarO.f(Long.valueOf(j10));
            bVarO.d(z10);
            if (str != null) {
                bVarO.n(f.a().b(str).a());
            }
            return bVarO.a();
        }
    }

    public static b b() {
        return new com.google.firebase.crashlytics.internal.model.b.C0414b();
    }

    public abstract a c();

    public abstract String d();

    public abstract String e();

    public abstract String f();

    public abstract String g();

    public abstract String h();

    public abstract String i();

    public abstract String j();

    public abstract d k();

    public abstract int l();

    public abstract String m();

    public abstract e n();

    protected abstract b o();

    public CrashlyticsReport p(String str) {
        b bVarC = o().c(str);
        if (n() != null) {
            bVarC.m(n().p(str));
        }
        return bVarC.a();
    }

    public CrashlyticsReport q(a aVar) {
        return aVar == null ? this : o().b(aVar).a();
    }

    public CrashlyticsReport r(List list) {
        if (n() != null) {
            return o().m(n().q(list)).a();
        }
        throw new IllegalStateException("Reports without sessions cannot have events added to them.");
    }

    public CrashlyticsReport s(String str) {
        return o().f(str).a();
    }

    public CrashlyticsReport t(String str) {
        return o().g(str).a();
    }

    public CrashlyticsReport u(d dVar) {
        return o().m(null).j(dVar).a();
    }

    public CrashlyticsReport v(long j10, boolean z10, String str) {
        b bVarO = o();
        if (n() != null) {
            bVarO.m(n().r(j10, z10, str));
        }
        return bVarO.a();
    }
}
