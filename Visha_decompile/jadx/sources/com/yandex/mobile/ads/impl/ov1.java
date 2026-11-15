package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.JobKt__JobKt;

public final class ov1 {
    private final bv1 a;
    private final defpackage.nk1 b;
    private final g5 c;
    private final p50 d;
    private final jc e;
    private final pw1 f;
    private final Context g;
    private final a2 h;
    private final zi0 i;
    private final pc j;
    private final ou1 k;
    private final dg l;
    private final s3 m;
    private final yw1 n;
    private final tv1 o;
    private final ud p;
    private final su1 q;
    private final r30 r;
    private final gd s;
    private final yi0 t;

    public interface a {
        void a(jc jcVar, o50 o50Var);

        void a(w3 w3Var);
    }

    @defpackage.nt1(c = "com.monetization.ads.core.initializer.SdkInitializer$initialize$1", f = "SdkInitializer.kt", l = {104, 106, 108, 109}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        f5 b;
        ov1 c;
        gl0 d;
        kotlinx.coroutines.j e;
        int f;
        private Object g;
        final gl0 i;
        final a j;

        @defpackage.nt1(c = "com.monetization.ads.core.initializer.SdkInitializer$initialize$1$sdkConfigurationResult$1$prefetchDnsJob$1", f = "SdkInitializer.kt", l = {101}, m = "invokeSuspend")
        public static final class a extends SuspendLambda implements s74 {
            int b;
            final boolean c;
            final ov1 d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(boolean z, ov1 ov1Var, defpackage.wh1<? super a> wh1Var) {
                super(2, wh1Var);
                this.c = z;
                this.d = ov1Var;
            }

            @Override
            public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
                return new a(this.c, this.d, wh1Var);
            }

            @Override
            public final Object invoke(Object obj, Object obj2) {
                return new a(this.c, this.d, (defpackage.wh1) obj2).invokeSuspend(zfb.a);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = z45.f();
                int i = this.b;
                if (i == 0) {
                    kotlin.c.b(obj);
                    if (this.c) {
                        r30 r30Var = this.d.r;
                        this.b = 1;
                        if (r30Var.a(this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.c.b(obj);
                }
                return zfb.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(gl0 gl0Var, a aVar, defpackage.wh1<? super b> wh1Var) {
            super(2, wh1Var);
            this.i = gl0Var;
            this.j = aVar;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            b bVar = ov1.this.new b(this.i, this.j, wh1Var);
            bVar.g = obj;
            return bVar;
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((b) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x00f2 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:29:0x00f3  */
        /* JADX WARN: Code duplicated, block: B:32:0x0108 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:33:0x0109  */
        /* JADX WARN: Code duplicated, block: B:36:0x0113  */
        /* JADX WARN: Code duplicated, block: B:37:0x014a  */
        /* JADX WARN: Code duplicated, block: B:39:0x014e  */
        /* JADX WARN: Code duplicated, block: B:41:0x0166  */
        /* JADX WARN: Code duplicated, block: B:42:0x0171  */
        @Override
        public final Object invokeSuspend(Object obj) {
            f5 f5Var;
            gl0 gl0Var;
            g5 g5Var;
            ov1 ov1Var;
            kotlinx.coroutines.j jVar;
            gl0 gl0Var2;
            ov1 ov1Var2;
            f5 f5Var2;
            gl0 gl0Var3;
            ov1 ov1Var3;
            f5 f5Var3;
            g5 g5Var2;
            Object objA;
            f5 f5Var4;
            yu1 yu1Var;
            si2 si2VarB;
            w3 w3VarM;
            Object objF = z45.f();
            int i = this.f;
            if (i != 0) {
                if (i == 1) {
                    jVar = this.e;
                    gl0Var = this.d;
                    ov1Var = this.c;
                    f5 f5Var5 = this.b;
                    g5 g5Var3 = (g5) this.g;
                    kotlin.c.b(obj);
                    f5Var = f5Var5;
                    g5Var = g5Var3;
                } else if (i == 2) {
                    jVar = this.e;
                    gl0Var2 = this.d;
                    ov1Var2 = this.c;
                    f5Var2 = this.b;
                    g5Var = (g5) this.g;
                    kotlin.c.b(obj);
                    this.g = g5Var;
                    this.b = f5Var2;
                    this.c = ov1Var2;
                    this.d = gl0Var2;
                    this.e = null;
                    this.f = 3;
                    if (jVar.join(this) == objF) {
                        return objF;
                    }
                    gl0Var3 = gl0Var2;
                    ov1Var3 = ov1Var2;
                    f5Var3 = f5Var2;
                    g5Var2 = g5Var;
                    this.g = g5Var2;
                    this.b = f5Var3;
                    this.c = null;
                    this.d = null;
                    this.f = 4;
                    objA = ov1.a(ov1Var3, gl0Var3, this);
                    if (objA == objF) {
                        return objF;
                    }
                    f5Var4 = f5Var3;
                } else if (i == 3) {
                    gl0 gl0Var4 = this.d;
                    ov1Var3 = this.c;
                    f5Var3 = this.b;
                    g5 g5Var4 = (g5) this.g;
                    kotlin.c.b(obj);
                    gl0Var3 = gl0Var4;
                    g5Var2 = g5Var4;
                    this.g = g5Var2;
                    this.b = f5Var3;
                    this.c = null;
                    this.d = null;
                    this.f = 4;
                    objA = ov1.a(ov1Var3, gl0Var3, this);
                    if (objA == objF) {
                        return objF;
                    }
                    f5Var4 = f5Var3;
                } else {
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    f5Var4 = this.b;
                    g5Var2 = (g5) this.g;
                    kotlin.c.b(obj);
                    objA = obj;
                }
                yu1Var = (yu1) objA;
                g5Var2.a(f5Var4);
                if (yu1Var instanceof yu1.b) {
                    yu1.b bVar = (yu1.b) yu1Var;
                    ov1.this.o.a(bVar.b(), this.i, bVar.a());
                    ov1.this.n.a();
                    t11.a();
                    this.j.a(ov1.this.e, ov1.this.d.c());
                } else if (yu1Var instanceof yu1.a) {
                    s3 s3Var = ov1.this.m;
                    yu1.a aVar = (yu1.a) yu1Var;
                    si2VarB = aVar.b();
                    s3Var.getClass();
                    y45.j(si2VarB, "error");
                    if (si2VarB instanceof r3) {
                        w3VarM = y3.a.a(null, ((r3) si2VarB).a());
                    } else {
                        w3VarM = w7.m();
                    }
                    ov1.this.o.a(w3VarM, this.i, aVar.a());
                    this.j.a(w3VarM);
                }
                ov1.this.l.a();
                return zfb.a;
            }
            kotlin.c.b(obj);
            defpackage.nk1 nk1Var = (defpackage.nk1) this.g;
            ju1 ju1VarA = ov1.this.f.a(ov1.this.g);
            boolean zK = ju1VarA != null ? ju1VarA.K() : false;
            g5 g5Var5 = ov1.this.c;
            f5Var = f5.j;
            ov1 ov1Var4 = ov1.this;
            gl0 gl0Var5 = this.i;
            bk.a(g5Var5, f5Var, "adLoadingPhaseType", f5Var, null);
            ov1.l(ov1Var4);
            ov1.m(ov1Var4);
            ov1.k(ov1Var4);
            kotlinx.coroutines.j jVarD = defpackage.el0.d(nk1Var, null, null, new a(zK, ov1Var4, null), 3, null);
            this.g = g5Var5;
            this.b = f5Var;
            this.c = ov1Var4;
            this.d = gl0Var5;
            this.e = jVarD;
            this.f = 1;
            if (ov1.a(ov1Var4, this) == objF) {
                return objF;
            }
            gl0Var = gl0Var5;
            g5Var = g5Var5;
            ov1Var = ov1Var4;
            jVar = jVarD;
            ov1.n(ov1Var);
            this.g = g5Var;
            this.b = f5Var;
            this.c = ov1Var;
            this.d = gl0Var;
            this.e = jVar;
            this.f = 2;
            if (ov1.b(ov1Var, this) == objF) {
                return objF;
            }
            gl0Var2 = gl0Var;
            ov1Var2 = ov1Var;
            f5Var2 = f5Var;
            this.g = g5Var;
            this.b = f5Var2;
            this.c = ov1Var2;
            this.d = gl0Var2;
            this.e = null;
            this.f = 3;
            if (jVar.join(this) == objF) {
                return objF;
            }
            gl0Var3 = gl0Var2;
            ov1Var3 = ov1Var2;
            f5Var3 = f5Var2;
            g5Var2 = g5Var;
            this.g = g5Var2;
            this.b = f5Var3;
            this.c = null;
            this.d = null;
            this.f = 4;
            objA = ov1.a(ov1Var3, gl0Var3, this);
            if (objA == objF) {
                return objF;
            }
            f5Var4 = f5Var3;
            yu1Var = (yu1) objA;
            g5Var2.a(f5Var4);
            if (yu1Var instanceof yu1.b) {
                yu1.b bVar2 = (yu1.b) yu1Var;
                ov1.this.o.a(bVar2.b(), this.i, bVar2.a());
                ov1.this.n.a();
                t11.a();
                this.j.a(ov1.this.e, ov1.this.d.c());
            } else if (yu1Var instanceof yu1.a) {
                s3 s3Var2 = ov1.this.m;
                yu1.a aVar2 = (yu1.a) yu1Var;
                si2VarB = aVar2.b();
                s3Var2.getClass();
                y45.j(si2VarB, "error");
                if (si2VarB instanceof r3) {
                    w3VarM = y3.a.a(null, ((r3) si2VarB).a());
                } else {
                    w3VarM = w7.m();
                }
                ov1.this.o.a(w3VarM, this.i, aVar2.a());
                this.j.a(w3VarM);
            }
            ov1.this.l.a();
            return zfb.a;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ov1(Context context, bv1 bv1Var, defpackage.nk1 nk1Var, g5 g5Var, p50 p50Var, jc jcVar, int i) {
        p50 p50VarA;
        if ((i & 16) != 0) {
            int i2 = p50.e;
            p50VarA = p50.a.a(context);
        } else {
            p50VarA = p50Var;
        }
        jc jcVar2 = (i & 32) != 0 ? new jc() : jcVar;
        int i3 = pw1.l;
        pw1 pw1VarA = pw1.a.a();
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, bv1Var, nk1Var, g5Var, p50VarA, jcVar2, pw1VarA, applicationContext, d.a(applicationContext), new zi0(p50VarA), new pc(), new ou1(applicationContext, bv1Var, p50VarA, jcVar2, g5Var), new dg(applicationContext, bv1Var), new s3(), new yw1(applicationContext), new mt0(), new tv1(bv1Var.c(), mt0.g(context), g5Var), new ud(), new su1(), new r30(context, g5Var), new gd());
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005d, code lost:
    
        if (r2 != false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ov1 ov1Var, defpackage.wh1 wh1Var) {
        pv1 pv1Var;
        g5 g5Var;
        f5 f5Var;
        ov1Var.getClass();
        if (wh1Var instanceof pv1) {
            pv1Var = (pv1) wh1Var;
            int i = pv1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                pv1Var.f = i - Integer.MIN_VALUE;
            } else {
                pv1Var = new pv1(ov1Var, wh1Var);
            }
        } else {
            pv1Var = new pv1(ov1Var, wh1Var);
        }
        Object obj = pv1Var.d;
        Object objF = z45.f();
        int i2 = pv1Var.f;
        if (i2 == 0) {
            kotlin.c.b(obj);
            ju1 ju1VarA = ov1Var.f.a(ov1Var.g);
            if (ju1VarA != null) {
                boolean z = ju1VarA.d() != null;
                boolean zA = ov1Var.q.a(ju1VarA);
                if (ju1VarA.V()) {
                    if (zA) {
                    }
                }
                return zfb.a;
            }
            g5 g5Var2 = ov1Var.c;
            f5 f5Var2 = f5.k;
            bk.a(g5Var2, f5Var2, "adLoadingPhaseType", f5Var2, null);
            a2 a2Var = ov1Var.h;
            pv1Var.b = g5Var2;
            pv1Var.c = f5Var2;
            pv1Var.f = 1;
            if (a2Var.a(pv1Var) == objF) {
                return objF;
            }
            g5Var = g5Var2;
            f5Var = f5Var2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f5Var = pv1Var.c;
            g5Var = pv1Var.b;
            kotlin.c.b(obj);
        }
        zfb zfbVar = zfb.a;
        g5Var.a(f5Var);
        return zfb.a;
    }

    public static final void k(ov1 ov1Var) {
        de.a(ov1Var.g, ov1Var.a.c());
    }

    public static final void l(ov1 ov1Var) {
        ov1Var.s.a(ov1Var.g);
    }

    public static final void m(ov1 ov1Var) {
        int i = g82.c;
        g82.a(ov1Var.g, ov1Var.a.c());
    }

    public static final void n(ov1 ov1Var) {
        g5 g5Var = ov1Var.c;
        f5 f5Var = f5.i;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
        ov1Var.t.a(ov1Var.g, ov1Var.i.a());
        zfb zfbVar = zfb.a;
        g5Var.a(f5Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object b(ov1 ov1Var, defpackage.wh1 wh1Var) {
        rv1 rv1Var;
        f5 f5Var;
        g5 g5Var;
        ov1Var.getClass();
        if (wh1Var instanceof rv1) {
            rv1Var = (rv1) wh1Var;
            int i = rv1Var.g;
            if ((i & Integer.MIN_VALUE) != 0) {
                rv1Var.g = i - Integer.MIN_VALUE;
            } else {
                rv1Var = new rv1(ov1Var, wh1Var);
            }
        } else {
            rv1Var = new rv1(ov1Var, wh1Var);
        }
        Object obj = rv1Var.e;
        Object objF = z45.f();
        int i2 = rv1Var.g;
        if (i2 == 0) {
            kotlin.c.b(obj);
            g5 g5Var2 = ov1Var.c;
            f5Var = f5.d;
            bk.a(g5Var2, f5Var, "adLoadingPhaseType", f5Var, null);
            pc pcVar = ov1Var.j;
            Context context = ov1Var.g;
            rv1Var.b = ov1Var;
            rv1Var.c = g5Var2;
            rv1Var.d = f5Var;
            rv1Var.g = 1;
            Object objA = pcVar.a(context, rv1Var);
            if (objA == objF) {
                return objF;
            }
            g5Var = g5Var2;
            obj = objA;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f5 f5Var2 = rv1Var.d;
            g5Var = rv1Var.c;
            ov1 ov1Var2 = rv1Var.b;
            kotlin.c.b(obj);
            f5Var = f5Var2;
            ov1Var = ov1Var2;
        }
        nc ncVar = (nc) obj;
        if (ncVar != null) {
            ov1Var.e.a(ncVar.a());
            ov1Var.e.b(ncVar.c());
            ov1Var.e.a(ncVar.b());
            if (ncVar.a() != null) {
                ov1Var.d.c().h();
            }
        }
        zfb zfbVar = zfb.a;
        g5Var.a(f5Var);
        return zfbVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object a(ov1 ov1Var, gl0 gl0Var, defpackage.wh1 wh1Var) {
        qv1 qv1Var;
        g5 g5Var;
        f5 f5Var;
        ov1Var.getClass();
        if (wh1Var instanceof qv1) {
            qv1Var = (qv1) wh1Var;
            int i = qv1Var.f;
            if ((i & Integer.MIN_VALUE) != 0) {
                qv1Var.f = i - Integer.MIN_VALUE;
            } else {
                qv1Var = new qv1(ov1Var, wh1Var);
            }
        } else {
            qv1Var = new qv1(ov1Var, wh1Var);
        }
        Object obj = qv1Var.d;
        Object objF = z45.f();
        int i2 = qv1Var.f;
        if (i2 == 0) {
            kotlin.c.b(obj);
            g5 g5Var2 = ov1Var.c;
            f5 f5Var2 = f5.m;
            bk.a(g5Var2, f5Var2, "adLoadingPhaseType", f5Var2, null);
            ou1 ou1Var = ov1Var.k;
            qv1Var.b = g5Var2;
            qv1Var.c = f5Var2;
            qv1Var.f = 1;
            Object objA = ou1Var.a(gl0Var, qv1Var);
            if (objA == objF) {
                return objF;
            }
            g5Var = g5Var2;
            obj = objA;
            f5Var = f5Var2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f5Var = qv1Var.c;
            g5Var = qv1Var.b;
            kotlin.c.b(obj);
        }
        yu1 yu1Var = (yu1) obj;
        g5Var.a(f5Var);
        return yu1Var;
    }

    public ov1(Context context, bv1 bv1Var, defpackage.nk1 nk1Var, g5 g5Var, p50 p50Var, jc jcVar, pw1 pw1Var, Context context2, a2 a2Var, zi0 zi0Var, pc pcVar, ou1 ou1Var, dg dgVar, s3 s3Var, yw1 yw1Var, mt0 mt0Var, tv1 tv1Var, ud udVar, su1 su1Var, r30 r30Var, gd gdVar) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(nk1Var, "coroutineScope");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(p50Var, "environmentController");
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(pw1Var, "sdkSettings");
        y45.j(context2, "applicationContext");
        y45.j(a2Var, "adBlockerController");
        y45.j(zi0Var, "identifiersLoader");
        y45.j(pcVar, "advertisingInfoLoader");
        y45.j(ou1Var, "sdkConfigurationLoaderHolder");
        y45.j(dgVar, "appStartFalseClickTracker");
        y45.j(s3Var, "adFetchErrorProvider");
        y45.j(yw1Var, "sdkVersionValidator");
        y45.j(mt0Var, "manifestAnalyzer");
        y45.j(tv1Var, "sdkInitializerReporter");
        y45.j(udVar, "androidSdkApiChecker");
        y45.j(su1Var, "sdkConfigurationRefreshChecker");
        y45.j(r30Var, "dnsPrefetcher");
        y45.j(gdVar, "analyticsEasyIntegrationInitializer");
        this.a = bv1Var;
        this.b = nk1Var;
        this.c = g5Var;
        this.d = p50Var;
        this.e = jcVar;
        this.f = pw1Var;
        this.g = context2;
        this.h = a2Var;
        this.i = zi0Var;
        this.j = pcVar;
        this.k = ou1Var;
        this.l = dgVar;
        this.m = s3Var;
        this.n = yw1Var;
        this.o = tv1Var;
        this.p = udVar;
        this.q = su1Var;
        this.r = r30Var;
        this.s = gdVar;
        this.t = new yi0(p50Var.c(), new n4());
    }

    public final void a() {
        JobKt__JobKt.f(this.b.getCoroutineContext(), null, 1, null);
    }

    public final void a(gl0 gl0Var, a aVar) {
        y45.j(gl0Var, "initializationCallSource");
        y45.j(aVar, "initializationListener");
        if (!this.p.a()) {
            r3 r3Var = new r3(x3.i, null);
            this.m.getClass();
            y45.j(r3Var, "error");
            aVar.a(y3.a.a(null, r3Var.a()));
            return;
        }
        defpackage.el0.d(this.b, null, null, new b(gl0Var, aVar, null), 3, null);
    }
}
