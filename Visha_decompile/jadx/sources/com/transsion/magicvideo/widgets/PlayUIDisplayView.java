package com.transsion.magicvideo.widgets;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.widgets.PlayUIDisplayView;
import com.transsion.widgets.ScaleTouchView.OnScaleSurfaceListener;
import defpackage.h27;
import defpackage.k6a;

public class PlayUIDisplayView extends TouchWindowLayout {
    public View c0;

    public static class PlayUIDisplayImpl implements Runnable {
        View playUIView;

        public PlayUIDisplayImpl(View view) {
            this.playUIView = view;
        }

        @Override
        public void run() {
            boolean z = PlayUIDisplayView.I(this.playUIView) == 2;
            if (z) {
                this.playUIView.setAlpha(1.0f);
            } else {
                this.playUIView.setVisibility(8);
            }
            this.playUIView.setTag(R.id.play_ui_panel_runnable, null);
            this.playUIView.invalidate();
            KeyEvent.Callback callback = this.playUIView;
            if (callback instanceof d) {
                ((d) callback).onPlayUIStatusChange(z);
            }
        }
    }

    public class a implements Animator.AnimatorListener {
        public final View b;

        public a(View view) {
            this.b = view;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.b.setAlpha(1.0f);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.b.setAlpha(1.0f);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public class b implements Animator.AnimatorListener {
        public final View b;

        public b(View view) {
            this.b = view;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.b.setAlpha(0.0f);
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.b.setAlpha(0.0f);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public interface c {
        void onPlayUIDisplay();
    }

    public interface d {
        void onPlayUIStatusChange(boolean z);
    }

    public PlayUIDisplayView(Context context) {
        super(context);
    }

    public static void H(View view) {
        Runnable runnable = (Runnable) view.getTag(R.id.play_ui_panel_runnable);
        if (runnable != null) {
            ThreadUtils.o().removeCallbacks(runnable);
        }
        ThreadUtils.o().postDelayed(new PlayUIDisplayImpl(view), 250L);
    }

    public static int I(View view) {
        Integer num;
        if (view == null || (num = (Integer) view.getTag(R.id.play_ui_panel_status)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public static void K(View view, ValueAnimator valueAnimator) {
        view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public static void L(View view, ValueAnimator valueAnimator) {
        view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private View getPlayUIView() {
        if (this.c0 == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewGroup) {
                this.c0 = ((ViewGroup) parent).findViewById(R.id.play_ui_panel);
            }
        }
        return this.c0;
    }

    public static void hideDisplayUI(final View view) {
        if (view == null) {
            return;
        }
        ValueAnimator valueAnimator = (ValueAnimator) view.getTag(R.id.play_ui_panel_animator);
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        view.setTag(R.id.play_ui_panel_status, 1);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(view.getAlpha(), 0.0f);
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                PlayUIDisplayView.K(view, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.addListener(new b(view));
        valueAnimatorOfFloat.start();
        H(view);
        k6a.b = false;
        h27.c().e(1166, new Object[0]);
        h27.c().e(1168, new Object[0]);
    }

    public static boolean isPlayUIShowing(View view) {
        return view != null && I(view) == 2;
    }

    public static void showDisplayUI(final View view) {
        ValueAnimator valueAnimatorOfFloat;
        OnScaleSurfaceListener onScaleSurfaceListener;
        if (view == null) {
            return;
        }
        ValueAnimator valueAnimator = (ValueAnimator) view.getTag(R.id.play_ui_panel_animator);
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (view.getVisibility() == 0) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(view.getAlpha(), 1.0f);
        } else {
            view.setVisibility(0);
            view.setAlpha(0.0f);
            valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        }
        valueAnimatorOfFloat.setDuration(250L);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                PlayUIDisplayView.L(view, valueAnimator2);
            }
        });
        valueAnimatorOfFloat.addListener(new a(view));
        valueAnimatorOfFloat.start();
        if ((view instanceof TouchWindowLayout) && (onScaleSurfaceListener = ((TouchWindowLayout) view).p) != null) {
            onScaleSurfaceListener.hideScaleStateView();
        }
        view.setTag(R.id.play_ui_panel_status, 2);
        H(view);
        k6a.b = true;
        h27.c().e(1165, new Object[0]);
        h27.c().e(1168, new Object[0]);
    }

    public void J() {
        if (this.b == null) {
            if (this.T) {
                Log.w("TouchWindowLayout", "can't showDisplayUI inForceHideUIState");
                return;
            }
            showDisplayUI(getPlayUIView());
        }
        KeyEvent.Callback callback = this.c0;
        if (callback instanceof c) {
            ((c) callback).onPlayUIDisplay();
        }
    }

    @Override
    public void init(Context context) {
        super.init(context);
    }

    @Override
    public void onScreenClick(MotionEvent motionEvent) {
        super.onScreenClick(motionEvent);
        TouchWindowLayout.f fVar = this.b;
        if (fVar != null) {
            fVar.a();
        } else {
            ThreadUtils.o().post(new Runnable() {
                @Override
                public final void run() {
                    this.b.J();
                }
            });
        }
    }

    @Override
    public void r(int i) {
        super.r(i);
    }

    public PlayUIDisplayView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PlayUIDisplayView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
