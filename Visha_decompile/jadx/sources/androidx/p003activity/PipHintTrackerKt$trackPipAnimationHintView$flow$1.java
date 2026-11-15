package androidx.p003activity;

import android.view.View;
import android.view.ViewTreeObserver;
import defpackage.c74;
import defpackage.gh8;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.ProduceKt;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lgh8;", "Landroid/graphics/Rect;", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1", f = "PipHintTracker.kt", l = {85}, m = "invokeSuspend")
public final class PipHintTrackerKt$trackPipAnimationHintView$flow$1 extends SuspendLambda implements s74 {
    final View $view;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PipHintTrackerKt$trackPipAnimationHintView$flow$1(View view, wh1<? super PipHintTrackerKt$trackPipAnimationHintView$flow$1> wh1Var) {
        super(2, wh1Var);
        this.$view = view;
    }

    public static final void invokeSuspend$lambda$0(gh8 gh8Var, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (i == i5 && i3 == i7 && i2 == i6 && i4 == i8) {
            return;
        }
        y45.i(view, "v");
        gh8Var.f(Activity.trackPipAnimationHintView$positionInWindow(view));
    }

    public static final void invokeSuspend$lambda$1(gh8 gh8Var, View view) {
        gh8Var.f(Activity.trackPipAnimationHintView$positionInWindow(view));
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        PipHintTrackerKt$trackPipAnimationHintView$flow$1 pipHintTrackerKt$trackPipAnimationHintView$flow$1 = new PipHintTrackerKt$trackPipAnimationHintView$flow$1(this.$view, wh1Var);
        pipHintTrackerKt$trackPipAnimationHintView$flow$1.L$0 = obj;
        return pipHintTrackerKt$trackPipAnimationHintView$flow$1;
    }

    @Override
    public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
        return ((PipHintTrackerKt$trackPipAnimationHintView$flow$1) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.view.View$OnAttachStateChangeListener, androidx.activity.PipHintTrackerKt$trackPipAnimationHintView$flow$1$attachStateChangeListener$1] */
    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            final gh8 gh8Var = (gh8) this.L$0;
            final View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() {
                @Override
                public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    PipHintTrackerKt$trackPipAnimationHintView$flow$1.invokeSuspend$lambda$0(gh8Var, view, i2, i3, i4, i5, i6, i7, i8, i9);
                }
            };
            final View view = this.$view;
            final ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() {
                @Override
                public final void onScrollChanged() {
                    PipHintTrackerKt$trackPipAnimationHintView$flow$1.invokeSuspend$lambda$1(gh8Var, view);
                }
            };
            final View view2 = this.$view;
            final ?? r3 = new View.OnAttachStateChangeListener() {
                @Override
                public void onViewAttachedToWindow(View v) {
                    y45.j(v, "v");
                    gh8Var.f(Activity.trackPipAnimationHintView$positionInWindow(view2));
                    view2.getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
                    view2.addOnLayoutChangeListener(onLayoutChangeListener);
                }

                @Override
                public void onViewDetachedFromWindow(View v) {
                    y45.j(v, "v");
                    v.getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
                    v.removeOnLayoutChangeListener(onLayoutChangeListener);
                }
            };
            if (this.$view.isAttachedToWindow()) {
                gh8Var.f(Activity.trackPipAnimationHintView$positionInWindow(this.$view));
                this.$view.getViewTreeObserver().addOnScrollChangedListener(onScrollChangedListener);
                this.$view.addOnLayoutChangeListener(onLayoutChangeListener);
            }
            this.$view.addOnAttachStateChangeListener(r3);
            final View view3 = this.$view;
            c74 c74Var = new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m6invoke();
                    return zfb.a;
                }

                public final void m6invoke() {
                    view3.getViewTreeObserver().removeOnScrollChangedListener(onScrollChangedListener);
                    view3.removeOnLayoutChangeListener(onLayoutChangeListener);
                    view3.removeOnAttachStateChangeListener(r3);
                }
            };
            this.label = 1;
            if (ProduceKt.a(gh8Var, c74Var, this) == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        return zfb.a;
    }
}
