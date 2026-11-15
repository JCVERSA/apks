package com.transsion.playercommon.fragments;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.playercommon.R;
import defpackage.s53;
import org.mozilla.javascript.ES6Iterator;

public class SimpleBottomSheetDialog extends BaseBottomSheetDialog {
    public View n;
    public FrameLayout o;
    public FrameLayout p;
    public c q;
    public int r;

    public class a extends AnimatorListenerAdapter {
        public final View b;

        public a(View view) {
            this.b = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            this.b.setVisibility(0);
            super.onAnimationStart(animator);
        }
    }

    public class b extends AnimatorListenerAdapter {
        public final View b;

        public b(View view) {
            this.b = view;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            this.b.setVisibility(4);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
        }
    }

    public interface c {
        void a(View view);
    }

    private void F() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.r = arguments.getInt("height_mode");
            this.m = arguments.getInt("height");
            this.l = arguments.getInt("type");
        }
    }

    public static SimpleBottomSheetDialog H(int i, int i2, int i3, int i4) {
        return I(0, i, i2, i3, i4);
    }

    public static SimpleBottomSheetDialog I(int i, int i2, int i3, int i4, int i5) {
        Bundle bundle = new Bundle();
        bundle.putInt("previous", i2);
        bundle.putInt(ES6Iterator.NEXT_METHOD, i3);
        bundle.putInt("height", i4);
        bundle.putInt("type", i);
        bundle.putInt("height_mode", i5);
        SimpleBottomSheetDialog simpleBottomSheetDialog = new SimpleBottomSheetDialog();
        simpleBottomSheetDialog.setArguments(bundle);
        return simpleBottomSheetDialog;
    }

    public final void E(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(new s53(0.33f, 0.0f, 0.66f, 1.0f));
        objectAnimatorOfFloat.setDuration(200L);
        objectAnimatorOfFloat.addListener(new b(view));
        objectAnimatorOfFloat.start();
    }

    public final void G() {
        int height = this.o.getHeight();
        this.o.setMinimumHeight(height);
        View childAt = this.o.getChildAt(0);
        if (childAt != null) {
            childAt.setMinimumHeight(height);
        }
    }

    public void J(c cVar) {
        E(this.o);
        M(this.p);
        if (cVar != null) {
            cVar.a(this.p.getChildAt(0));
        }
    }

    public void K() {
        M(this.o);
        E(this.p);
    }

    public void L(c cVar) {
        this.q = cVar;
    }

    public final void M(View view) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setInterpolator(new s53(0.33f, 0.0f, 0.66f, 1.0f));
        objectAnimatorOfFloat.setDuration(200L);
        objectAnimatorOfFloat.addListener(new a(view));
        objectAnimatorOfFloat.start();
    }

    @Override
    public Dialog onCreateDialog(Bundle bundle) {
        F();
        if (bundle != null) {
            dismissAllowingStateLoss();
        }
        return super.onCreateDialog(bundle);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.n = layoutInflater.inflate(R.layout.layout_base_bottom_sheet_fragment, viewGroup);
        if (getArguments() == null) {
            return this.n;
        }
        if (this.l == 1) {
            this.n.findViewById(R.id.handler).setVisibility(8);
        } else {
            this.n.findViewById(R.id.handler).setVisibility(0);
        }
        this.o = (FrameLayout) this.n.findViewById(R.id.previous);
        int i = getArguments().getInt("previous");
        if (i > 0) {
            View viewInflate = View.inflate(getContext(), i, null);
            this.o.addView(viewInflate);
            c cVar = this.q;
            if (cVar != null) {
                cVar.a(viewInflate);
            }
        }
        if (this.r == 1) {
            this.o.post(new Runnable() {
                @Override
                public final void run() {
                    this.b.G();
                }
            });
        }
        this.p = (FrameLayout) this.n.findViewById(R.id.next);
        int i2 = getArguments().getInt(ES6Iterator.NEXT_METHOD);
        if (i2 > 0) {
            this.p.addView(View.inflate(getContext(), i2, null));
        }
        K();
        return this.n;
    }
}
