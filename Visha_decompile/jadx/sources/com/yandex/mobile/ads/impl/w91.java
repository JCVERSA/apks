package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.nativeads.creator.NativeResourcesLoader$load$1", f = "NativeResourcesLoader.kt", l = {53, 55}, m = "invokeSuspend")
final class w91 extends SuspendLambda implements s74 {
    defpackage.d72 b;
    int c;
    private Object d;
    final Context e;
    final g51 f;
    final v91.a g;
    final v91 h;
    final o3 i;
    final s41 j;
    final dw k;

    @defpackage.nt1(c = "com.monetization.ads.nativeads.creator.NativeResourcesLoader$load$1$1", f = "NativeResourcesLoader.kt", l = {53}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;
        final v91 c;
        final s41 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(v91 v91Var, s41 s41Var, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.c = v91Var;
            this.d = s41Var;
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
                pa1 pa1Var = this.c.c;
                s41 s41Var = this.d;
                this.b = 1;
                if (pa1Var.a(s41Var, this) == objF) {
                    return objF;
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

    @defpackage.nt1(c = "com.monetization.ads.nativeads.creator.NativeResourcesLoader$load$1$updatedNativeAdBlockTask$1", f = "NativeResourcesLoader.kt", l = {49}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        int b;
        final v91 c;
        final o3 d;
        final Context e;
        final s41 f;
        final yk1 g;
        final dw h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(v91 v91Var, o3 o3Var, Context context, s41 s41Var, yk1 yk1Var, dw dwVar, defpackage.wh1<? super b> wh1Var) {
            super(2, wh1Var);
            this.c = v91Var;
            this.d = o3Var;
            this.e = context;
            this.f = s41Var;
            this.g = yk1Var;
            this.h = dwVar;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new b(this.c, this.d, this.e, this.f, this.g, this.h, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((b) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                q91 q91Var = this.c.b;
                o3 o3Var = this.d;
                Context context = this.e;
                s41 s41Var = this.f;
                yk1 yk1Var = this.g;
                dw dwVar = this.h;
                this.b = 1;
                q91Var.getClass();
                obj = defpackage.cl0.g(qu.a(), new p91(o3Var, q91Var, context, s41Var, dwVar, yk1Var, null), this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w91(Context context, g51 g51Var, v91.a aVar, v91 v91Var, o3 o3Var, s41 s41Var, dw dwVar, defpackage.wh1<? super w91> wh1Var) {
        super(2, wh1Var);
        this.e = context;
        this.f = g51Var;
        this.g = aVar;
        this.h = v91Var;
        this.i = o3Var;
        this.j = s41Var;
        this.k = dwVar;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        w91 w91Var = new w91(this.e, this.f, this.g, this.h, this.i, this.j, this.k, wh1Var);
        w91Var.d = obj;
        return w91Var;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((w91) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0083  */
    /* JADX WARN: Code duplicated, block: B:20:0x008d  */
    @Override
    public final Object invokeSuspend(Object obj) {
        yk1 yk1Var;
        defpackage.d72 d72VarB;
        yk1 yk1Var2;
        s41 s41Var;
        Object objF = z45.f();
        int i = this.c;
        if (i != 0) {
            if (i == 1) {
                defpackage.d72 d72Var = this.b;
                yk1 yk1Var3 = (yk1) this.d;
                kotlin.c.b(obj);
                d72VarB = d72Var;
                yk1Var = yk1Var3;
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                yk1Var2 = (yk1) this.d;
                kotlin.c.b(obj);
            }
            s41Var = (s41) obj;
            if (s41Var == null) {
                this.f.a(w7.d());
            } else {
                this.g.a(yk1Var2, s41Var);
            }
            return zfb.a;
        }
        kotlin.c.b(obj);
        defpackage.nk1 nk1Var = (defpackage.nk1) this.d;
        yk1Var = new yk1(this.e);
        d72VarB = defpackage.el0.b(nk1Var, null, null, new b(this.h, this.i, this.e, this.j, yk1Var, this.k, null), 3, null);
        kotlinx.coroutines.j jVarD = defpackage.el0.d(nk1Var, null, null, new a(this.h, this.j, null), 3, null);
        this.d = yk1Var;
        this.b = d72VarB;
        this.c = 1;
        if (jVarD.join(this) == objF) {
            return objF;
        }
        this.d = yk1Var;
        this.b = null;
        this.c = 2;
        obj = d72VarB.o(this);
        if (obj == objF) {
            return objF;
        }
        yk1Var2 = yk1Var;
        s41Var = (s41) obj;
        if (s41Var == null) {
            this.f.a(w7.d());
        } else {
            this.g.a(yk1Var2, s41Var);
        }
        return zfb.a;
    }
}
