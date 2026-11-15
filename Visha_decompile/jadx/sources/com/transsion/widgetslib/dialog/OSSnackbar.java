package com.transsion.widgetslib.dialog;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.dialog.OSSnackbar;
import defpackage.c74;
import defpackage.olb;
import defpackage.wn8;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import java.lang.ref.WeakReference;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class OSSnackbar {
    public static final a b = new a(null);
    public static OSSnackbar c;
    public OSSnackbarDialog a;

    public static final class OSSnackbarDialog extends Dialog {
        public final int b;
        public final yi5 c;
        public final yi5 d;
        public final yi5 e;
        public final yi5 f;
        public final yi5 g;
        public final yi5 h;
        public final yi5 i;
        public boolean j;
        public AnimatorSet k;
        public AnimatorSet l;
        public final yi5 m;
        public final yi5 n;

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog$DelayDismissRunnable;", "Ljava/lang/Runnable;", "Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;", "osSnackBarDialog", MethodDecl.initName, "(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V", "Lzfb;", "run", "()V", "Ljava/lang/ref/WeakReference;", "mWRDialog", "Ljava/lang/ref/WeakReference;", "widgetsLib_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class DelayDismissRunnable implements Runnable {
            private final WeakReference<OSSnackbarDialog> mWRDialog;

            public DelayDismissRunnable(OSSnackbarDialog oSSnackbarDialog) {
                y45.j(oSSnackbarDialog, "osSnackBarDialog");
                this.mWRDialog = new WeakReference<>(oSSnackbarDialog);
            }

            @Override
            public void run() {
                View decorView;
                OSSnackbarDialog oSSnackbarDialog = this.mWRDialog.get();
                if (oSSnackbarDialog == null || !oSSnackbarDialog.isShowing()) {
                    return;
                }
                Window window = oSSnackbarDialog.getWindow();
                if (((window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getWindowToken()) != null) {
                    oSSnackbarDialog.dismiss();
                }
            }
        }

        public static final class a implements Animator.AnimatorListener {
            public final c74 b;

            public a(c74 c74Var) {
                this.b = c74Var;
            }

            @Override
            public void onAnimationCancel(Animator animator) {
                y45.j(animator, "animation");
                this.b.invoke();
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                y45.j(animator, "animation");
                this.b.invoke();
            }

            @Override
            public void onAnimationRepeat(Animator animator) {
                y45.j(animator, "animation");
            }

            @Override
            public void onAnimationStart(Animator animator) {
                y45.j(animator, "animation");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OSSnackbarDialog(final Context context, int i, int i2) {
            super(context, i);
            y45.j(context, "context");
            this.b = i2;
            this.c = kotlin.b.a(new c74() {
                {
                    super(0);
                }

                @Override
                public final View invoke() {
                    return this.this$0.findViewById(R.id.snackbar_layout);
                }
            });
            this.d = kotlin.b.a(new c74() {
                {
                    super(0);
                }

                @Override
                public final TextView invoke() {
                    return (TextView) this.this$0.findViewById(R.id.mbMessage);
                }
            });
            this.e = kotlin.b.a(new c74() {
                {
                    super(0);
                }

                @Override
                public final Button invoke() {
                    return (Button) this.this$0.findViewById(R.id.btn);
                }
            });
            this.f = kotlin.b.a(new c74() {
                {
                    super(0);
                }

                @Override
                public final View invoke() {
                    return this.this$0.findViewById(R.id.content_container);
                }
            });
            this.g = kotlin.b.a(new c74() {
                {
                    super(0);
                }

                @Override
                public final View invoke() {
                    return this.this$0.findViewById(R.id.os_snackbar_close_icon);
                }
            });
            this.h = kotlin.b.a(new c74() {
                @Override
                public final Handler invoke() {
                    return new Handler(Looper.getMainLooper());
                }
            });
            this.i = kotlin.b.a(new c74() {
                {
                    super(0);
                }

                @Override
                public final OSSnackbar.OSSnackbarDialog.DelayDismissRunnable invoke() {
                    return new OSSnackbar.OSSnackbarDialog.DelayDismissRunnable(this.this$0);
                }
            });
            this.m = kotlin.b.a(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Interpolator invoke() {
                    return AnimationUtils.loadInterpolator(context, com.transsion.widgetsmotionlibrary.R.interpolator.os_motion_l1_easing_easeout);
                }
            });
            this.n = kotlin.b.a(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Interpolator invoke() {
                    return AnimationUtils.loadInterpolator(context, com.transsion.widgetsmotionlibrary.R.interpolator.os_motion_l1_easing_easein);
                }
            });
            Window window = getWindow();
            if (window != null) {
                window.setFlags(32, 32);
                window.setFlags(8, 8);
                window.setGravity(80);
                Resources resources = context.getResources();
                WindowManager.LayoutParams attributes = window.getAttributes();
                y45.g(attributes);
                attributes.y = (int) ((resources.getConfiguration().orientation == 1 || olb.b0(context)) ? olb.X(context) ? olb.Z(context) ? resources.getDimension(R.dimen.os_ultra_small_snack_bar_portrait_bottom_margin) : resources.getDimension(R.dimen.os_snack_bar_portrait_bottom_margin) : olb.Z(context) ? resources.getDimension(R.dimen.os_ultra_small_snack_bar_portrait_button_navigation_bottom_margin) : resources.getDimension(R.dimen.os_snack_bar_portrait_button_navigation_bottom_margin) : olb.X(context) ? olb.Z(context) ? resources.getDimension(R.dimen.os_ultra_small_snack_bar_landscape_bottom_margin) : resources.getDimension(R.dimen.os_snack_bar_landscape_bottom_margin) : olb.Z(context) ? resources.getDimension(R.dimen.os_ultra_small_snack_bar_landscape_button_navigation_bottom_margin) : resources.getDimension(R.dimen.os_snack_bar_landscape_button_navigation_bottom_margin));
            }
            setContentView(R.layout.ossnackbar_layout);
            getMTextView().setTextSize(0, wn8.f(getMTextView().getTextSize(), 49.0f));
            g().setTextSize(0, wn8.f(g().getTextSize(), 54.0f));
            if (olb.a0()) {
                getMTextView().setMaxLines(10);
            }
        }

        public static final void r(View.OnClickListener onClickListener, OSSnackbarDialog oSSnackbarDialog, View view) {
            y45.j(oSSnackbarDialog, "this$0");
            onClickListener.onClick(view);
            oSSnackbarDialog.dismiss();
        }

        public static final void s(OSSnackbarDialog oSSnackbarDialog, View view) {
            y45.j(oSSnackbarDialog, "this$0");
            oSSnackbarDialog.dismiss();
        }

        @Override
        public void dismiss() {
            View decorView;
            p();
            AnimatorSet animatorSet = this.k;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.k = null;
            if (isShowing()) {
                Window window = getWindow();
                if (((window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getWindowToken()) != null) {
                    AnimatorSet animatorSet2 = this.l;
                    if (animatorSet2 == null || !animatorSet2.isRunning()) {
                        getMView().setAlpha(1.0f);
                        getMView().setScaleX(1.0f);
                        getMView().setScaleY(1.0f);
                        o(new c74() {
                            {
                                super(0);
                            }

                            @Override
                            public Object invoke() {
                                m127invoke();
                                return zfb.a;
                            }

                            public final void m127invoke() {
                                View decorView2;
                                IBinder windowToken = null;
                                OSSnackbar.b.setMOSSnackbar(null);
                                this.this$0.l = null;
                                if (this.this$0.isShowing()) {
                                    Window window2 = this.this$0.getWindow();
                                    if (window2 != null && (decorView2 = window2.getDecorView()) != null) {
                                        windowToken = decorView2.getWindowToken();
                                    }
                                    if (windowToken != null) {
                                        super/*android.app.Dialog*/.dismiss();
                                    }
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
            }
            OSSnackbar.b.setMOSSnackbar(null);
            AnimatorSet animatorSet3 = this.l;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            this.l = null;
        }

        public final void e() {
            int dimensionPixelSize;
            int dimensionPixelSize2;
            if (i() == null) {
                return;
            }
            View viewI = i();
            y45.h(viewI, "null cannot be cast to non-null type android.widget.LinearLayout");
            LinearLayout linearLayout = (LinearLayout) viewI;
            ViewGroup.LayoutParams layoutParams = getMView().getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            if (olb.n0(getContext())) {
                if (marginLayoutParams != null) {
                    Resources resources = getContext().getResources();
                    int i = R.dimen.os_snack_bar_landscape_horizontal_margin;
                    marginLayoutParams.setMarginStart(resources.getDimensionPixelSize(i));
                    marginLayoutParams.setMarginEnd(getContext().getResources().getDimensionPixelSize(i));
                    getMView().setLayoutParams(marginLayoutParams);
                }
            } else if (marginLayoutParams != null) {
                Resources resources2 = getContext().getResources();
                int i2 = R.dimen.os_space200;
                marginLayoutParams.setMarginStart(resources2.getDimensionPixelSize(i2));
                marginLayoutParams.setMarginEnd(getContext().getResources().getDimensionPixelSize(i2));
                getMView().setLayoutParams(marginLayoutParams);
            }
            if (g().getVisibility() != 0) {
                Resources resources3 = getContext().getResources();
                int i3 = R.dimen.os_space200;
                int dimensionPixelSize3 = resources3.getDimensionPixelSize(i3);
                View viewH = h();
                y45.g(viewH);
                linearLayout.setPaddingRelative(dimensionPixelSize3, 0, viewH.getVisibility() == 0 ? getContext().getResources().getDimensionPixelSize(i3) : 0, 0);
                return;
            }
            TextPaint paint = getMTextView().getPaint();
            TextPaint paint2 = g().getPaint();
            int iCeil = (int) Math.ceil(paint.measureText(getMTextView().getText().toString()));
            int iCeil2 = (int) Math.ceil(paint2.measureText(g().getText().toString()));
            Resources resources4 = getContext().getResources();
            int i4 = R.dimen.os_space200;
            int dimensionPixelSize4 = resources4.getDimensionPixelSize(i4);
            View viewH2 = h();
            int i5 = (viewH2 == null || viewH2.getVisibility() != 0) ? 0 : dimensionPixelSize4;
            if (linearLayout.getWidth() > 0) {
                dimensionPixelSize2 = linearLayout.getWidth();
            } else {
                int iE = olb.E(getContext());
                ViewGroup.LayoutParams layoutParams2 = getMView().getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
                if (marginLayoutParams2 != null) {
                    dimensionPixelSize = marginLayoutParams2.getMarginStart() + marginLayoutParams2.getMarginEnd();
                } else {
                    dimensionPixelSize = (olb.n0(getContext()) ? getContext().getResources().getDimensionPixelSize(R.dimen.os_snack_bar_landscape_horizontal_margin) : getContext().getResources().getDimensionPixelSize(i4)) * 2;
                }
                View viewH3 = h();
                dimensionPixelSize2 = (iE - dimensionPixelSize) - ((viewH3 == null || viewH3.getVisibility() != 0) ? 0 : getContext().getResources().getDimensionPixelSize(R.dimen.os_space600));
            }
            if (getMTextView().getLineCount() <= 1 && iCeil + iCeil2 + (dimensionPixelSize4 * 2) + i5 <= dimensionPixelSize2) {
                if (linearLayout.getOrientation() != 0) {
                    linearLayout.setOrientation(0);
                }
                f(false);
                getMTextView().setPaddingRelative(0, 0, getContext().getResources().getDimensionPixelSize(i4), 0);
                int dimensionPixelSize5 = getContext().getResources().getDimensionPixelSize(i4);
                View viewH4 = h();
                linearLayout.setPaddingRelative(dimensionPixelSize5, 0, (viewH4 == null || viewH4.getVisibility() != 0) ? 0 : getContext().getResources().getDimensionPixelSize(i4), 0);
                return;
            }
            if (linearLayout.getOrientation() != 1) {
                linearLayout.setOrientation(1);
            }
            f(true);
            int dimensionPixelSize6 = getContext().getResources().getDimensionPixelSize(i4);
            View viewH5 = h();
            y45.g(viewH5);
            linearLayout.setPaddingRelative(dimensionPixelSize6, 0, viewH5.getVisibility() == 0 ? getContext().getResources().getDimensionPixelSize(i4) : 0, 0);
            getMTextView().setPaddingRelative(0, 0, 0, 0);
        }

        public final void f(boolean z) {
            ViewGroup.LayoutParams layoutParams = getMTextView().getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : null;
            if (layoutParams2 != null) {
                if (z) {
                    layoutParams2.width = -2;
                    layoutParams2.weight = 0.0f;
                } else {
                    layoutParams2.width = 0;
                    layoutParams2.weight = 1.0f;
                }
                getMTextView().setLayoutParams(layoutParams2);
            }
            ViewGroup.LayoutParams layoutParams3 = g().getLayoutParams();
            LinearLayout.LayoutParams layoutParams4 = layoutParams3 instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams3 : null;
            if (layoutParams4 != null) {
                layoutParams4.width = z ? -1 : -2;
                layoutParams4.weight = 0.0f;
                layoutParams4.topMargin = z ? getContext().getResources().getDimensionPixelSize(R.dimen.os_space025) : 0;
                g().setLayoutParams(layoutParams4);
            }
        }

        public final Button g() {
            Object value = this.e.getValue();
            y45.i(value, "<get-mButton>(...)");
            return (Button) value;
        }

        public final TextView getMTextView() {
            Object value = this.d.getValue();
            y45.i(value, "<get-mTextView>(...)");
            return (TextView) value;
        }

        public final View getMView() {
            Object value = this.c.getValue();
            y45.i(value, "<get-mView>(...)");
            return (View) value;
        }

        public final int getShowDuration() {
            return this.b;
        }

        public final View h() {
            return (View) this.g.getValue();
        }

        public final View i() {
            return (View) this.f.getValue();
        }

        public final DelayDismissRunnable j() {
            return (DelayDismissRunnable) this.i.getValue();
        }

        public final Interpolator k() {
            return (Interpolator) this.n.getValue();
        }

        public final Interpolator l() {
            return (Interpolator) this.m.getValue();
        }

        public final Handler m() {
            return (Handler) this.h.getValue();
        }

        public final void n() {
            getMView().setAlpha(0.0f);
            getMView().setScaleX(0.9f);
            getMView().setScaleY(0.9f);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(getMView(), (Property<View, Float>) View.SCALE_X, 0.9f, 1.0f);
            objectAnimatorOfFloat.setDuration(200L);
            objectAnimatorOfFloat.setInterpolator(l());
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(getMView(), (Property<View, Float>) View.SCALE_Y, 0.9f, 1.0f);
            objectAnimatorOfFloat2.setDuration(200L);
            objectAnimatorOfFloat2.setInterpolator(l());
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(getMView(), (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
            objectAnimatorOfFloat3.setDuration(200L);
            objectAnimatorOfFloat3.setInterpolator(l());
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
            animatorSet.start();
            this.k = animatorSet;
        }

        public final void o(c74 c74Var) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(getMView(), (Property<View, Float>) View.SCALE_X, 1.0f, 0.9f);
            objectAnimatorOfFloat.setDuration(150L);
            objectAnimatorOfFloat.setInterpolator(k());
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(getMView(), (Property<View, Float>) View.SCALE_Y, 1.0f, 0.9f);
            objectAnimatorOfFloat2.setDuration(150L);
            objectAnimatorOfFloat2.setInterpolator(k());
            ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(getMView(), (Property<View, Float>) View.ALPHA, 1.0f, 0.0f);
            objectAnimatorOfFloat3.setDuration(150L);
            objectAnimatorOfFloat3.setInterpolator(k());
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3);
            animatorSet.addListener(new a(c74Var));
            animatorSet.start();
            this.l = animatorSet;
        }

        @Override
        public void onStop() {
            super.onStop();
            AnimatorSet animatorSet = this.k;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.k = null;
            AnimatorSet animatorSet2 = this.l;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            this.l = null;
        }

        public final void p() {
            m().removeCallbacks(j());
        }

        public final void q(CharSequence charSequence, final View.OnClickListener onClickListener) {
            if (TextUtils.isEmpty(charSequence) || onClickListener == null) {
                g().setVisibility(8);
                g().setOnClickListener(null);
            } else {
                g().setVisibility(0);
                g().setText(charSequence);
                g().setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        OSSnackbar.OSSnackbarDialog.r(onClickListener, this, view);
                    }
                });
            }
        }

        public final void setCloseButtonVisible(boolean z) {
            View decorView;
            this.j = z;
            View viewH = h();
            if (viewH != null) {
                viewH.setVisibility(z ? 0 : 8);
            }
            View viewH2 = h();
            if (viewH2 != null) {
                viewH2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        OSSnackbar.OSSnackbarDialog.s(this.b, view);
                    }
                });
            }
            p();
            if (z || !isShowing()) {
                return;
            }
            Window window = getWindow();
            if (((window == null || (decorView = window.getDecorView()) == null) ? null : decorView.getWindowToken()) != null) {
                m().postDelayed(j(), this.b);
            }
        }

        public final void setMessage(CharSequence charSequence) {
            y45.j(charSequence, "message");
            getMTextView().setText(olb.G0(charSequence));
        }

        @Override
        public void show() {
            e();
            super.show();
            n();
            if (this.j) {
                return;
            }
            m().postDelayed(j(), this.b);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public OSSnackbar a(Context context, CharSequence charSequence) {
            y45.j(context, "context");
            y45.j(charSequence, "message");
            return b(context, charSequence, 2000);
        }

        public synchronized OSSnackbar b(Context context, CharSequence charSequence, int i) {
            OSSnackbar mOSSnackbar;
            try {
                y45.j(context, "context");
                y45.j(charSequence, "message");
                OSSnackbar mOSSnackbar2 = getMOSSnackbar();
                if (mOSSnackbar2 != null) {
                    mOSSnackbar2.c();
                }
                OSSnackbar oSSnackbar = new OSSnackbar();
                OSSnackbarDialog oSSnackbarDialog = new OSSnackbarDialog(context, R.style.OSSnackBarStyle, i);
                oSSnackbarDialog.setMessage(charSequence);
                oSSnackbar.setMDialog(oSSnackbarDialog);
                setMOSSnackbar(oSSnackbar);
                mOSSnackbar = getMOSSnackbar();
                y45.g(mOSSnackbar);
            } catch (Throwable th) {
                throw th;
            }
            return mOSSnackbar;
        }

        public final OSSnackbar getMOSSnackbar() {
            return OSSnackbar.c;
        }

        public final void setMOSSnackbar(OSSnackbar oSSnackbar) {
            OSSnackbar.c = oSSnackbar;
        }

        public a() {
        }
    }

    public static synchronized OSSnackbar d(Context context, CharSequence charSequence, int i) {
        return b.b(context, charSequence, i);
    }

    public void c() {
        OSSnackbarDialog oSSnackbarDialog = this.a;
        if (oSSnackbarDialog != null) {
            oSSnackbarDialog.dismiss();
        }
    }

    public OSSnackbar e(CharSequence charSequence, View.OnClickListener onClickListener) {
        y45.j(charSequence, "text");
        OSSnackbarDialog oSSnackbarDialog = this.a;
        if (oSSnackbarDialog != null) {
            oSSnackbarDialog.q(charSequence, onClickListener);
        }
        return this;
    }

    public void f() {
        OSSnackbarDialog oSSnackbarDialog = this.a;
        if (oSSnackbarDialog != null) {
            oSSnackbarDialog.show();
        }
    }

    public final OSSnackbarDialog getMDialog() {
        return this.a;
    }

    public final void setMDialog(OSSnackbarDialog oSSnackbarDialog) {
        this.a = oSSnackbarDialog;
    }
}
