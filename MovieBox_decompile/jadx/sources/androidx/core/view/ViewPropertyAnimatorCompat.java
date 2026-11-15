package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

public final class ViewPropertyAnimatorCompat {
    private final WeakReference<View> mView;

    class a extends AnimatorListenerAdapter {

        final ViewPropertyAnimatorListener f8001a;

        final View f8002b;

        a(ViewPropertyAnimatorListener viewPropertyAnimatorListener, View view) {
            this.f8001a = viewPropertyAnimatorListener;
            this.f8002b = view;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f8001a.onAnimationCancel(this.f8002b);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.f8001a.onAnimationEnd(this.f8002b);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.f8001a.onAnimationStart(this.f8002b);
        }
    }

    static class b {
        static ViewPropertyAnimator a(ViewPropertyAnimator viewPropertyAnimator, float f10) {
            return viewPropertyAnimator.translationZ(f10);
        }

        static ViewPropertyAnimator b(ViewPropertyAnimator viewPropertyAnimator, float f10) {
            return viewPropertyAnimator.translationZBy(f10);
        }

        static ViewPropertyAnimator c(ViewPropertyAnimator viewPropertyAnimator, float f10) {
            return viewPropertyAnimator.z(f10);
        }

        static ViewPropertyAnimator d(ViewPropertyAnimator viewPropertyAnimator, float f10) {
            return viewPropertyAnimator.zBy(f10);
        }
    }

    ViewPropertyAnimatorCompat(View view) {
        this.mView = new WeakReference<>(view);
    }

    private void setListenerInternal(View view, ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (viewPropertyAnimatorListener != null) {
            view.animate().setListener(new a(viewPropertyAnimatorListener, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public ViewPropertyAnimatorCompat alpha(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().alpha(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat alphaBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().alphaBy(f10);
        }
        return this;
    }

    public void cancel() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long getDuration() {
        View view = this.mView.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public Interpolator getInterpolator() {
        View view = this.mView.get();
        if (view != null) {
            return (Interpolator) view.animate().getInterpolator();
        }
        return null;
    }

    public long getStartDelay() {
        View view = this.mView.get();
        if (view != null) {
            return view.animate().getStartDelay();
        }
        return 0L;
    }

    public ViewPropertyAnimatorCompat rotation(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotation(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationBy(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationX(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationX(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationXBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationXBy(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationY(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationY(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat rotationYBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().rotationYBy(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleX(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleX(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleXBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleXBy(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleY(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleY(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat scaleYBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().scaleYBy(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setDuration(long j10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setDuration(j10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setInterpolator(Interpolator interpolator) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setListener(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        View view = this.mView.get();
        if (view != null) {
            setListenerInternal(view, viewPropertyAnimatorListener);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setStartDelay(long j10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().setStartDelay(j10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat setUpdateListener(final ViewPropertyAnimatorUpdateListener viewPropertyAnimatorUpdateListener) {
        final View view = this.mView.get();
        if (view != null) {
            view.animate().setUpdateListener(viewPropertyAnimatorUpdateListener != null ? new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    viewPropertyAnimatorUpdateListener.onAnimationUpdate(view);
                }
            } : null);
        }
        return this;
    }

    public void start() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public ViewPropertyAnimatorCompat translationX(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationX(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationXBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationXBy(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationY(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationY(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationYBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().translationYBy(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationZ(float f10) {
        View view = this.mView.get();
        if (view != null) {
            b.a(view.animate(), f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat translationZBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            b.b(view.animate(), f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withEndAction(Runnable runnable) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().withEndAction(runnable);
        }
        return this;
    }

    @SuppressLint({"WrongConstant"})
    public ViewPropertyAnimatorCompat withLayer() {
        View view = this.mView.get();
        if (view != null) {
            view.animate().withLayer();
        }
        return this;
    }

    public ViewPropertyAnimatorCompat withStartAction(Runnable runnable) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().withStartAction(runnable);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat x(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().x(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat xBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().xBy(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat y(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().y(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat yBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            view.animate().yBy(f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat z(float f10) {
        View view = this.mView.get();
        if (view != null) {
            b.c(view.animate(), f10);
        }
        return this;
    }

    public ViewPropertyAnimatorCompat zBy(float f10) {
        View view = this.mView.get();
        if (view != null) {
            b.d(view.animate(), f10);
        }
        return this;
    }
}
