package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import defpackage.e74;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.serialization.SerializationException;

public final class po1 implements oo1 {
    private final Context a;
    private final hq1<rx> b;
    private final jy c;
    private final ol0 d;

    @defpackage.nt1(c = "com.yandex.mobile.ads.features.debugpanel.data.remote.RemoteDataSourceImpl", f = "RemoteDataSourceImpl.kt", l = {47}, m = "getRemoteData-IoAF18A")
    public static final class a extends ContinuationImpl {
        Object b;
        int d;

        public a(defpackage.wh1<? super a> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.d |= Integer.MIN_VALUE;
            Object objA = po1.this.a(this);
            return objA == z45.f() ? objA : Result.m278boximpl(objA);
        }
    }

    public static final class b extends Lambda implements e74 {
        final defpackage.cr0 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(CancellableContinuationImpl cancellableContinuationImpl) {
            super(1);
            this.b = cancellableContinuationImpl;
        }

        @Override
        public final Object invoke(Object obj) {
            rx rxVar = (rx) obj;
            y45.j(rxVar, "response");
            this.b.resumeWith(Result.m279constructorimpl(Result.m278boximpl(Result.m279constructorimpl(rxVar))));
            return zfb.a;
        }
    }

    public static final class c extends Lambda implements e74 {
        final defpackage.cr0 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(CancellableContinuationImpl cancellableContinuationImpl) {
            super(1);
            this.b = cancellableContinuationImpl;
        }

        @Override
        public final Object invoke(Object obj) throws si2 {
            si2 si2Var = (si2) obj;
            y45.j(si2Var, "error");
            if (si2Var.getCause() instanceof SerializationException) {
                throw si2Var;
            }
            defpackage.cr0 cr0Var = this.b;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(Result.m278boximpl(Result.m279constructorimpl(kotlin.c.a(si2Var)))));
            return zfb.a;
        }
    }

    public po1(Context context, hq1<rx> hq1Var, jy jyVar, ol0 ol0Var) {
        y45.j(context, "context");
        y45.j(hq1Var, "requestPolicy");
        y45.j(jyVar, "urlConfigurator");
        y45.j(ol0Var, "responseListenerCreator");
        this.a = context;
        this.b = hq1Var;
        this.c = jyVar;
        this.d = ol0Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public final Object a(defpackage.wh1<? super Result<rx>> wh1Var) {
        a aVar;
        if (wh1Var instanceof a) {
            aVar = (a) wh1Var;
            int i = aVar.d;
            if ((i & Integer.MIN_VALUE) != 0) {
                aVar.d = i - Integer.MIN_VALUE;
            } else {
                aVar = new a(wh1Var);
            }
        } else {
            aVar = new a(wh1Var);
        }
        Object result = aVar.b;
        Object objF = z45.f();
        int i2 = aVar.d;
        if (i2 == 0) {
            kotlin.c.b(result);
            aVar.d = 1;
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(aVar), 1);
            cancellableContinuationImpl.initCancellability();
            ol0 ol0Var = this.d;
            b bVar = new b(cancellableContinuationImpl);
            c cVar = new c(cancellableContinuationImpl);
            ol0Var.getClass();
            y45.j(bVar, "onSuccess");
            y45.j(cVar, "onError");
            cp0 cp0Var = new cp0(this.a, this.c.a(), this.b, kotlin.collections.a.l(), new nl0(bVar, cVar));
            int i3 = gq1.c;
            gq1 gq1VarA = gq1.a.a();
            Context context = this.a;
            synchronized (gq1VarA) {
                y45.j(context, "context");
                y45.j(cp0Var, Progress.REQUEST);
                hd1.a(context).a(cp0Var);
            }
            result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                defpackage.pt1.c(aVar);
            }
            if (result == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(result);
        }
        return ((Result) result).getValue();
    }
}
