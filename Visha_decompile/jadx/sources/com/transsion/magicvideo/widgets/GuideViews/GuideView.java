package com.transsion.magicvideo.widgets.GuideViews;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import com.airbnb.lottie.LottieAnimationView;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.WindowInfoViewModel;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.magicvideo.widgets.GuideViews.GuideView;
import com.transsion.widgets.LottieUtils;
import defpackage.olb;
import defpackage.p06;
import defpackage.woc;
import java.lang.reflect.InvocationTargetException;

public class GuideView extends FrameLayout {
    public static Class[] guideAll = {Guide1View.class, Guide2View.class, Guide3View.class, Guide4View.class, Guide5View.class};
    public static Class[] guideScale = {Guide4View.class, Guide5View.class};
    public TextView b;
    public Button c;
    public View d;
    public LottieAnimationView e;
    public View.OnClickListener f;
    public View.OnClickListener g;
    public MotionLayout h;
    public WindowInfoViewModel i;
    public boolean j;
    public int k;
    public final Observer l;

    public interface a {
        void a();
    }

    public GuideView(@NonNull Context context) {
        super(context);
        this.k = 0;
        this.l = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.q((woc) obj);
            }
        };
        h();
    }

    public static void n(Context context, ViewGroup viewGroup, Class[] clsArr, int i, a aVar, View view) {
        showFragment(context, viewGroup, clsArr, i, aVar);
        p06.q0(null, null, "vd_cp_guide_next", 9324L);
    }

    public static void o(ViewGroup viewGroup, a aVar, View view) {
        viewGroup.removeAllViews();
        viewGroup.setVisibility(8);
        if (aVar != null) {
            aVar.a();
        }
        p06.q0(null, null, "vd_cp_guide_skip", 9324L);
    }

    public static void showFragment(final Context context, final ViewGroup viewGroup, final Class[] clsArr, int i, final a aVar) {
        if (i >= clsArr.length) {
            viewGroup.removeAllViews();
            viewGroup.setVisibility(8);
            if (aVar != null) {
                aVar.a();
                return;
            }
            return;
        }
        try {
            GuideView guideView = (GuideView) clsArr[i].getConstructor(Context.class).newInstance(context);
            guideView.c.setText(i == clsArr.length + (-1) ? R.string.got_it : R.string.video_preview_continue);
            final int i2 = i + 1;
            viewGroup.removeAllViews();
            viewGroup.addView(guideView);
            viewGroup.setVisibility(0);
            guideView.setOnNextClick(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    GuideView.n(context, viewGroup, clsArr, i2, aVar, view);
                }
            });
            guideView.setOnSkipClick(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    GuideView.o(viewGroup, aVar, view);
                }
            });
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            LogUtils.i(e.getMessage());
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    public final void e() {
        Button button = this.c;
        if (button == null) {
            return;
        }
        button.setBackgroundResource(R.drawable.os_btn_big_white);
        this.c.setTextColor(getResources().getColor(R.color.os_btn_color_white, getContext().getTheme()));
    }

    public final void f() {
        if (this.h == null) {
            return;
        }
        int iH = olb.H(getContext());
        int iD = ((float) iH) * 0.3f < ((float) com.transsion.utils.a.d(getContext(), 320.0f)) ? (int) ((iH + 27) * 0.3f) : com.transsion.utils.a.d(getContext(), 330.0f);
        Log.i("GuideView", "targetPx = " + iD + ", screenW = " + com.transsion.utils.a.d(getContext(), 320.0f));
        MotionLayout motionLayout = this.h;
        int i = R.id.tablet;
        ConstraintSet constraintSet = motionLayout.getConstraintSet(i);
        if (constraintSet == null) {
            return;
        }
        int i2 = R.id.bt_next;
        constraintSet.constrainWidth(i2, iD);
        constraintSet.constrainHeight(i2, -2);
        this.h.updateState(i, constraintSet);
    }

    public View g(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return null;
    }

    public final void h() {
        View viewG = g(LayoutInflater.from(getContext()), this);
        this.d = viewG;
        viewG.setClickable(true);
        this.d.setLongClickable(true);
        this.h = (MotionLayout) this.d.findViewById(R.id.guide_motion);
        this.b = (TextView) this.d.findViewById(R.id.tv_skip);
        this.c = (Button) this.d.findViewById(R.id.bt_next);
        this.e = (LottieAnimationView) this.d.findViewById(R.id.lottie_layer_view);
        this.j = com.transsion.utils.a.D(getContext());
        TextView textView = this.b;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.l(view);
                }
            });
        }
        Button button = this.c;
        if (button != null) {
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.m(view);
                }
            });
        }
        p(this.d);
        i();
    }

    public final void i() {
        if (getContext() instanceof VideoPlayerActivity) {
            VideoPlayerActivity videoPlayerActivity = (VideoPlayerActivity) getContext();
            WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) new ViewModelProvider(videoPlayerActivity).get(WindowInfoViewModel.class);
            this.i = windowInfoViewModel;
            windowInfoViewModel.a.observe(videoPlayerActivity, this.l);
        }
    }

    public boolean j() {
        return true;
    }

    public final boolean k(woc wocVar) {
        int i = wocVar.a;
        boolean z = i >= 2 && wocVar.c;
        boolean z2 = i <= 1;
        return z || (z2 && !wocVar.g) || (z2 && wocVar.c);
    }

    public final void l(View view) {
        View.OnClickListener onClickListener = this.g;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public final void m(View view) {
        View.OnClickListener onClickListener = this.f;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        WindowInfoViewModel windowInfoViewModel = this.i;
        if (windowInfoViewModel == null) {
            this.k = 0;
            s();
            return;
        }
        woc wocVar = (woc) windowInfoViewModel.a.getValue();
        if (wocVar != null) {
            q(wocVar);
        } else {
            this.k = 0;
            s();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LottieAnimationView lottieAnimationView = this.e;
        if (lottieAnimationView != null) {
            lottieAnimationView.clearAnimation();
        }
        WindowInfoViewModel windowInfoViewModel = this.i;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.removeObserver(this.l);
        }
    }

    public void p(View view) {
    }

    public void q(woc wocVar) {
        if (wocVar == null) {
            this.k = 0;
            s();
            return;
        }
        this.k = !k(wocVar) ? 1 : 0;
        s();
        MotionLayout motionLayout = this.h;
        if (motionLayout == null) {
            return;
        }
        int i = wocVar.a;
        if (i <= 1) {
            if (i == 1) {
                motionLayout.setTransition(R.id.eTs);
            } else {
                motionLayout.setTransition(R.id.sTe);
            }
        } else if (i == 3) {
            motionLayout.setTransition(R.id.fhoTof);
        } else {
            motionLayout.setTransition(R.id.fTofho);
        }
        boolean z = wocVar.g;
        boolean z2 = wocVar.c;
        if (wocVar.f) {
            this.h.jumpToState(R.id.fold_split_3In4);
            return;
        }
        int i2 = wocVar.a;
        if (i2 == 0) {
            if (z2) {
                if (wocVar.a()) {
                    this.h.jumpToState(R.id.fold_split_3In4);
                    return;
                } else {
                    this.h.jumpToState(R.id.fold_split);
                    return;
                }
            }
            if (z) {
                this.h.jumpToState(R.id.land);
                return;
            } else if (wocVar.b == 1) {
                this.h.transitionToState(R.id.start);
                return;
            } else {
                this.h.jumpToState(R.id.start);
                return;
            }
        }
        if (i2 == 1) {
            if (z2) {
                if (wocVar.a()) {
                    this.h.jumpToState(R.id.fold_split_3In4);
                    return;
                } else {
                    this.h.jumpToState(R.id.fold_split);
                    return;
                }
            }
            if (z) {
                this.h.jumpToState(R.id.land);
                return;
            } else if (wocVar.b == 0) {
                this.h.transitionToState(R.id.end);
                return;
            } else {
                this.h.jumpToState(R.id.end);
                return;
            }
        }
        if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            if (!z) {
                if (z2) {
                    this.h.jumpToState(R.id.start);
                    return;
                } else {
                    this.h.jumpToState(R.id.flat);
                    return;
                }
            }
            if (z2) {
                this.h.transitionToState(R.id.start);
                return;
            } else if (wocVar.b == 2) {
                this.h.transitionToState(R.id.flat_half_open);
                return;
            } else {
                this.h.jumpToState(R.id.flat_half_open);
                return;
            }
        }
        if (z2) {
            this.h.jumpToState(R.id.flat_full);
            return;
        }
        if (wocVar.b == 3) {
            if (z) {
                this.h.transitionToState(R.id.flat);
                return;
            } else {
                this.h.jumpToState(R.id.flat);
                return;
            }
        }
        if (!this.j) {
            this.h.jumpToState(R.id.flat);
            return;
        }
        f();
        e();
        this.h.jumpToState(R.id.tablet);
    }

    public void r() {
    }

    public final void s() {
        if (!j()) {
            t();
            return;
        }
        if (this.j) {
            u();
        } else if (this.k == 1) {
            r();
        } else {
            t();
        }
    }

    public void setAndPlayGuideLottie(String str) {
        LottieAnimationView lottieAnimationView = this.e;
        if (lottieAnimationView == null) {
            return;
        }
        if (lottieAnimationView.isAnimating()) {
            this.e.cancelAnimation();
        }
        LottieUtils.setAnimationWithPreDecodedImages(this.e, str, true);
    }

    public void setOnNextClick(View.OnClickListener onClickListener) {
        this.f = onClickListener;
    }

    public void setOnSkipClick(View.OnClickListener onClickListener) {
        this.g = onClickListener;
    }

    public void t() {
    }

    public void u() {
    }

    public GuideView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = 0;
        this.l = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.q((woc) obj);
            }
        };
        h();
    }

    public GuideView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = 0;
        this.l = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.q((woc) obj);
            }
        };
        h();
    }
}
