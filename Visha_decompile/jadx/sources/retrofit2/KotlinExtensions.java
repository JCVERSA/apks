package retrofit2;

import androidx.core.app.NotificationCompat;
import defpackage.cr0;
import defpackage.e74;
import defpackage.gu8;
import defpackage.i55;
import defpackage.jq0;
import defpackage.mc2;
import defpackage.pt1;
import defpackage.tq0;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.KotlinNothingValueException;
import kotlin.KotlinNullPointerException;
import kotlin.Result;
import kotlin.c;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;

public abstract class KotlinExtensions {

    public static final class a implements tq0 {
        public final cr0 b;

        public a(cr0 cr0Var) {
            this.b = cr0Var;
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
            y45.j(jq0Var, NotificationCompat.CATEGORY_CALL);
            y45.j(th, "t");
            cr0 cr0Var = this.b;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(kotlin.c.a(th)));
        }

        @Override
        public void onResponse(jq0 jq0Var, gu8 gu8Var) {
            y45.j(jq0Var, NotificationCompat.CATEGORY_CALL);
            y45.j(gu8Var, "response");
            if (!gu8Var.e()) {
                cr0 cr0Var = this.b;
                Result.Companion companion = Result.INSTANCE;
                cr0Var.resumeWith(Result.m279constructorimpl(kotlin.c.a(new HttpException(gu8Var))));
                return;
            }
            Object objA = gu8Var.a();
            if (objA != null) {
                this.b.resumeWith(Result.m279constructorimpl(objA));
                return;
            }
            Object objTag = jq0Var.request().tag(i55.class);
            y45.g(objTag);
            i55 i55Var = (i55) objTag;
            KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException("Response from " + i55Var.b().getName() + '.' + i55Var.a().getName() + " was null but response body type was declared as non-null");
            cr0 cr0Var2 = this.b;
            Result.Companion companion2 = Result.INSTANCE;
            cr0Var2.resumeWith(Result.m279constructorimpl(kotlin.c.a(kotlinNullPointerException)));
        }
    }

    public static final class b implements tq0 {
        public final cr0 b;

        public b(cr0 cr0Var) {
            this.b = cr0Var;
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
            y45.j(jq0Var, NotificationCompat.CATEGORY_CALL);
            y45.j(th, "t");
            cr0 cr0Var = this.b;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(kotlin.c.a(th)));
        }

        @Override
        public void onResponse(jq0 jq0Var, gu8 gu8Var) {
            y45.j(jq0Var, NotificationCompat.CATEGORY_CALL);
            y45.j(gu8Var, "response");
            if (gu8Var.e()) {
                cr0 cr0Var = this.b;
                Result.Companion companion = Result.INSTANCE;
                cr0Var.resumeWith(Result.m279constructorimpl(gu8Var.a()));
            } else {
                cr0 cr0Var2 = this.b;
                Result.Companion companion2 = Result.INSTANCE;
                cr0Var2.resumeWith(Result.m279constructorimpl(kotlin.c.a(new HttpException(gu8Var))));
            }
        }
    }

    public static final class c implements tq0 {
        public final cr0 b;

        public c(cr0 cr0Var) {
            this.b = cr0Var;
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
            y45.j(jq0Var, NotificationCompat.CATEGORY_CALL);
            y45.j(th, "t");
            cr0 cr0Var = this.b;
            Result.Companion companion = Result.INSTANCE;
            cr0Var.resumeWith(Result.m279constructorimpl(kotlin.c.a(th)));
        }

        @Override
        public void onResponse(jq0 jq0Var, gu8 gu8Var) {
            y45.j(jq0Var, NotificationCompat.CATEGORY_CALL);
            y45.j(gu8Var, "response");
            this.b.resumeWith(Result.m279constructorimpl(gu8Var));
        }
    }

    public static final Object a(final jq0 jq0Var, wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return zfb.a;
            }

            public final void invoke(Throwable th) {
                jq0Var.cancel();
            }
        });
        jq0Var.enqueue(new a(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public static final Object b(final jq0 jq0Var, wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return zfb.a;
            }

            public final void invoke(Throwable th) {
                jq0Var.cancel();
            }
        });
        jq0Var.enqueue(new b(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public static final Object c(final jq0 jq0Var, wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((Throwable) obj);
                return zfb.a;
            }

            public final void invoke(Throwable th) {
                jq0Var.cancel();
            }
        });
        jq0Var.enqueue(new c(cancellableContinuationImpl));
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result;
    }

    public static final Object d(jq0 jq0Var, wh1 wh1Var) {
        y45.h(jq0Var, "null cannot be cast to non-null type retrofit2.Call<kotlin.Unit?>");
        return b(jq0Var, wh1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object e(final Throwable th, wh1 wh1Var) {
        final KotlinExtensions$suspendAndThrow$1 kotlinExtensions$suspendAndThrow$1;
        if (wh1Var instanceof KotlinExtensions$suspendAndThrow$1) {
            kotlinExtensions$suspendAndThrow$1 = (KotlinExtensions$suspendAndThrow$1) wh1Var;
            int i = kotlinExtensions$suspendAndThrow$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                kotlinExtensions$suspendAndThrow$1.label = i - Integer.MIN_VALUE;
            } else {
                kotlinExtensions$suspendAndThrow$1 = new KotlinExtensions$suspendAndThrow$1(wh1Var);
            }
        } else {
            kotlinExtensions$suspendAndThrow$1 = new KotlinExtensions$suspendAndThrow$1(wh1Var);
        }
        Object obj = kotlinExtensions$suspendAndThrow$1.result;
        Object objF = z45.f();
        int i2 = kotlinExtensions$suspendAndThrow$1.label;
        if (i2 == 0) {
            kotlin.c.b(obj);
            kotlinExtensions$suspendAndThrow$1.L$0 = th;
            kotlinExtensions$suspendAndThrow$1.label = 1;
            mc2.a().dispatch(kotlinExtensions$suspendAndThrow$1.getContext(), new Runnable() {
                @Override
                public final void run() {
                    wh1 wh1VarC = IntrinsicsKt__IntrinsicsJvmKt.c(kotlinExtensions$suspendAndThrow$1);
                    Result.Companion companion = Result.INSTANCE;
                    wh1VarC.resumeWith(Result.m279constructorimpl(c.a(th)));
                }
            });
            Object objF2 = z45.f();
            if (objF2 == z45.f()) {
                pt1.c(kotlinExtensions$suspendAndThrow$1);
            }
            if (objF2 == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
        }
        throw new KotlinNothingValueException();
    }
}
