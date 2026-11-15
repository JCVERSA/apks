package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1", f = "WindowRecomposer.android.kt", l = {396}, m = "invokeSuspend")
final class WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final Recomposer $recomposer;
    final WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 $self;
    final androidx.p009lifecycle.u $source;
    final Ref.ObjectRef<e1> $systemDurationScaleSettingConsumer;
    final View $this_createLifecycleAwareWindowRecomposer;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(Ref.ObjectRef<e1> objectRef, Recomposer recomposer, androidx.p009lifecycle.u uVar, WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2, View view, Continuation<? super WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1> continuation) {
        super(2, continuation);
        this.$systemDurationScaleSettingConsumer = objectRef;
        this.$recomposer = recomposer;
        this.$source = uVar;
        this.$self = windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;
        this.$this_createLifecycleAwareWindowRecomposer = view;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 = new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(this.$systemDurationScaleSettingConsumer, this.$recomposer, this.$source, this.$self, this.$this_createLifecycleAwareWindowRecomposer, continuation);
        windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1.L$0 = obj;
        return windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0083  */
    @Override
    public final Object invokeSuspend(Object obj) throws Throwable {
        kotlinx.coroutines.t1 t1Var;
        kotlinx.coroutines.t1 t1VarD;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            t1Var = (kotlinx.coroutines.t1) this.L$0;
            try {
                ResultKt.b(obj);
                if (t1Var != null) {
                    kotlinx.coroutines.t1.a.b(t1Var, null, 1, null);
                }
                this.$source.getLifecycle().d(this.$self);
                return Unit.f64096a;
            } catch (Throwable th2) {
                th = th2;
                if (t1Var != null) {
                    kotlinx.coroutines.t1.a.b(t1Var, null, 1, null);
                }
                this.$source.getLifecycle().d(this.$self);
                throw th;
            }
        }
        ResultKt.b(obj);
        kotlinx.coroutines.n0 n0Var = (kotlinx.coroutines.n0) this.L$0;
        try {
            e1 e1Var = this.$systemDurationScaleSettingConsumer.element;
            if (e1Var != null) {
                kotlinx.coroutines.flow.h1 h1VarE = WindowRecomposer_androidKt.e(this.$this_createLifecycleAwareWindowRecomposer.getContext().getApplicationContext());
                e1Var.a(((Number) h1VarE.getValue()).floatValue());
                t1VarD = kotlinx.coroutines.k.d(n0Var, null, null, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1(h1VarE, e1Var, null), 3, null);
            } else {
                t1VarD = null;
            }
            try {
                Recomposer recomposer = this.$recomposer;
                this.L$0 = t1VarD;
                this.label = 1;
                if (recomposer.z0(this) == objF) {
                    return objF;
                }
                t1Var = t1VarD;
                if (t1Var != null) {
                    kotlinx.coroutines.t1.a.b(t1Var, null, 1, null);
                }
                this.$source.getLifecycle().d(this.$self);
                return Unit.f64096a;
            } catch (Throwable th3) {
                t1Var = t1VarD;
                th = th3;
                if (t1Var != null) {
                    kotlinx.coroutines.t1.a.b(t1Var, null, 1, null);
                }
                this.$source.getLifecycle().d(this.$self);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            t1Var = null;
        }
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
