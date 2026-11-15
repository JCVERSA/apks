package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.s74;
import defpackage.z45;
import defpackage.zfb;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@defpackage.nt1(c = "com.monetization.ads.nativeads.creator.NativeMediaLoader$loadMedia$2", f = "NativeMediaLoader.kt", l = {39, 40, 41, 43}, m = "invokeSuspend")
final class p91 extends SuspendLambda implements s74 {
    defpackage.d72 b;
    int c;
    private Object d;
    final o3 e;
    final q91 f;
    final Context g;
    final s41 h;
    final dw i;
    final sj0 j;

    @defpackage.nt1(c = "com.monetization.ads.nativeads.creator.NativeMediaLoader$loadMedia$2$imagesLoadJob$1", f = "NativeMediaLoader.kt", l = {34}, m = "invokeSuspend")
    public static final class a extends SuspendLambda implements s74 {
        int b;
        final q91 c;
        final s41 d;
        final sj0 e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(q91 q91Var, s41 s41Var, sj0 sj0Var, defpackage.wh1<? super a> wh1Var) {
            super(2, wh1Var);
            this.c = q91Var;
            this.d = s41Var;
            this.e = sj0Var;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new a(this.c, this.d, this.e, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((a) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                i91 i91Var = this.c.a;
                s41 s41Var = this.d;
                sj0 sj0Var = this.e;
                this.b = 1;
                if (i91Var.a(s41Var, sj0Var, this) == objF) {
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

    @defpackage.nt1(c = "com.monetization.ads.nativeads.creator.NativeMediaLoader$loadMedia$2$loadVideoTask$1", f = "NativeMediaLoader.kt", l = {37}, m = "invokeSuspend")
    public static final class b extends SuspendLambda implements s74 {
        int b;
        final q91 c;
        final Context d;
        final s41 e;
        final dw f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(q91 q91Var, Context context, s41 s41Var, dw dwVar, defpackage.wh1<? super b> wh1Var) {
            super(2, wh1Var);
            this.c = q91Var;
            this.d = context;
            this.e = s41Var;
            this.f = dwVar;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new b(this.c, this.d, this.e, this.f, wh1Var);
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
                eb1 eb1Var = this.c.c;
                Context context = this.d;
                s41 s41Var = this.e;
                dw dwVar = this.f;
                this.b = 1;
                obj = eb1Var.a(true, context, s41Var, dwVar, this);
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

    @defpackage.nt1(c = "com.monetization.ads.nativeads.creator.NativeMediaLoader$loadMedia$2$webViewLoadJob$1", f = "NativeMediaLoader.kt", l = {35}, m = "invokeSuspend")
    public static final class c extends SuspendLambda implements s74 {
        int b;
        final q91 c;
        final Context d;
        final s41 e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(q91 q91Var, Context context, s41 s41Var, defpackage.wh1<? super c> wh1Var) {
            super(2, wh1Var);
            this.c = q91Var;
            this.d = context;
            this.e = s41Var;
        }

        @Override
        public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
            return new c(this.c, this.d, this.e, wh1Var);
        }

        @Override
        public final Object invoke(Object obj, Object obj2) {
            return ((c) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.b;
            if (i == 0) {
                kotlin.c.b(obj);
                kc1 kc1Var = this.c.b;
                Context context = this.d;
                s41 s41Var = this.e;
                this.b = 1;
                if (kc1Var.a(context, s41Var, this) == objF) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p91(o3 o3Var, q91 q91Var, Context context, s41 s41Var, dw dwVar, sj0 sj0Var, defpackage.wh1<? super p91> wh1Var) {
        super(2, wh1Var);
        this.e = o3Var;
        this.f = q91Var;
        this.g = context;
        this.h = s41Var;
        this.i = dwVar;
        this.j = sj0Var;
    }

    @Override
    public final defpackage.wh1<zfb> create(Object obj, defpackage.wh1<?> wh1Var) {
        p91 p91Var = new p91(this.e, this.f, this.g, this.h, this.i, this.j, wh1Var);
        p91Var.d = obj;
        return p91Var;
    }

    @Override
    public final Object invoke(Object obj, Object obj2) {
        return ((p91) create((defpackage.nk1) obj, (defpackage.wh1) obj2)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x009f A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        kotlinx.coroutines.j jVarD;
        defpackage.d72 d72Var;
        Object objF = z45.f();
        int i = this.c;
        if (i != 0) {
            if (i == 1) {
                d72Var = this.b;
                jVarD = (kotlinx.coroutines.j) this.d;
                kotlin.c.b(obj);
                this.d = d72Var;
                this.b = null;
                this.c = 2;
                if (jVarD.join(this) == objF) {
                    return objF;
                }
            } else if (i == 2) {
                d72Var = (defpackage.d72) this.d;
                kotlin.c.b(obj);
            } else {
                if (i != 3) {
                    if (i == 4) {
                        kotlin.c.b(obj);
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
        }
        kotlin.c.b(obj);
        defpackage.nk1 nk1Var = (defpackage.nk1) this.d;
        if (!this.e.u()) {
            eb1 eb1Var = this.f.c;
            Context context = this.g;
            s41 s41Var = this.h;
            dw dwVar = this.i;
            this.c = 4;
            obj = eb1Var.a(false, context, s41Var, dwVar, this);
            return obj == objF ? objF : obj;
        }
        kotlinx.coroutines.j jVarD2 = defpackage.el0.d(nk1Var, null, null, new a(this.f, this.h, this.j, null), 3, null);
        jVarD = defpackage.el0.d(nk1Var, null, null, new c(this.f, this.g, this.h, null), 3, null);
        defpackage.d72 d72VarB = defpackage.el0.b(nk1Var, null, null, new b(this.f, this.g, this.h, this.i, null), 3, null);
        this.d = jVarD;
        this.b = d72VarB;
        this.c = 1;
        if (jVarD2.join(this) == objF) {
            return objF;
        }
        d72Var = d72VarB;
        this.d = d72Var;
        this.b = null;
        this.c = 2;
        if (jVarD.join(this) == objF) {
            return objF;
        }
        this.d = null;
        this.c = 3;
        obj = d72Var.o(this);
        return obj == objF ? objF : obj;
    }
}
