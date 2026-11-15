package androidx.core.transition;

import android.transition.Transition;
import defpackage.e74;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\n\u0010\u0006¨\u0006\u000b"}, d2 = {"androidx/core/transition/TransitionKt$addListener$listener$1", "Landroid/transition/Transition$TransitionListener;", "Landroid/transition/Transition;", "transition", "Lzfb;", "onTransitionEnd", "(Landroid/transition/Transition;)V", "onTransitionResume", "onTransitionPause", "onTransitionCancel", "onTransitionStart", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 176)
public final class TransitionKt$addListener$listener$1 implements Transition.TransitionListener {
    final e74 $onCancel;
    final e74 $onEnd;
    final e74 $onPause;
    final e74 $onResume;
    final e74 $onStart;

    public TransitionKt$addListener$listener$1(e74 e74Var, e74 e74Var2, e74 e74Var3, e74 e74Var4, e74 e74Var5) {
        this.$onEnd = e74Var;
        this.$onResume = e74Var2;
        this.$onPause = e74Var3;
        this.$onCancel = e74Var4;
        this.$onStart = e74Var5;
    }

    @Override
    public void onTransitionCancel(Transition transition) {
        this.$onCancel.invoke(transition);
    }

    @Override
    public void onTransitionEnd(Transition transition) {
        this.$onEnd.invoke(transition);
    }

    @Override
    public void onTransitionPause(Transition transition) {
        this.$onPause.invoke(transition);
    }

    @Override
    public void onTransitionResume(Transition transition) {
        this.$onResume.invoke(transition);
    }

    @Override
    public void onTransitionStart(Transition transition) {
        this.$onStart.invoke(transition);
    }
}
