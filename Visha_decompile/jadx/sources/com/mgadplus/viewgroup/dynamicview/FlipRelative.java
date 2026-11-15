package com.mgadplus.viewgroup.dynamicview;

import android.animation.Animator;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgmi.R;
import com.mgmi.model.VASTFloatAd;
import defpackage.l4d;
import defpackage.w1d;

public class FlipRelative extends FlipFramelayout {
    public boolean I;
    public TextView J;
    public View K;
    public ImageView L;
    public boolean M;
    public VASTFloatAd N;
    public ViewGroup O;
    public ViewGroup.MarginLayoutParams P;
    public com.mgadplus.viewgroup.dynamicview.a.C0159a Q;
    public boolean R;
    public GestureDetector S;

    public class a implements Animator.AnimatorListener {
        public a() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            System.out.println("flipCorner playCornnerPicIn onAnimationEnd " + FlipRelative.this.x.isAttachedToWindow());
            FlipRelative.this.d();
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public class b implements Animator.AnimatorListener {
        public b() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            System.out.println("flipCorner playCornnerTextIn onAnimationEnd " + FlipRelative.this.x.isAttachedToWindow());
            FlipRelative.this.b();
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View view) {
            if (FlipRelative.this.Q != null) {
                FlipRelative.this.Q.a();
            }
        }
    }

    public FlipRelative(@NonNull Context context) {
        super(context);
        this.M = false;
        this.R = false;
        this.S = new GestureDetector(this);
        setOnTouchListener(this);
    }

    @Override
    public void a() {
        System.out.println(" flipCorner preAnimation  ");
        l4d.a(this.K, 0.0f);
        l4d.a(this.L, 0.0f);
        l4d.a(this.w, 0.0f);
    }

    @Override
    public void appear(boolean z) {
        l4d.g(this.O, this);
        l4d.c(this.O, this, this.P);
        this.M = true;
        if (f() || !z) {
            return;
        }
        a();
        c();
    }

    @Override
    public void b() {
        System.out.println("flipCorner afterAnimation");
        l4d.a(this.L, 1.0f);
        l4d.a(this.w, 1.0f);
    }

    @Override
    public void c() {
        System.out.println("flipCorner playCornnerPicIn " + this.x.isAttachedToWindow());
        new w1d().e(this.x).f(com.mgadplus.a.b.SCALEMIDDLE).c(500).d(new a()).a().h();
    }

    @Override
    public void d() {
        System.out.println("flipCorner playCornnerTextIn");
        if (this.K == null || this.N.getAdStyle() == 2 || this.N.getAdStyle() == 0) {
            b();
        } else {
            new w1d().e(this.K).f(com.mgadplus.a.b.SCALE).c(300).d(new b()).a().h();
        }
    }

    @Override
    public void disappear(boolean z) {
        l4d.g(this.O, this);
        this.M = false;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.S.onTouchEvent(motionEvent);
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public boolean f() {
        return this.R;
    }

    @Override
    public FlipRelative getSchemeView() {
        return this;
    }

    @Override
    public boolean isVisiblity() {
        return this.M;
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        if (this.I) {
            setClickable(false);
        } else {
            setClickable(true);
        }
        return true;
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.I ? this.S.onTouchEvent(motionEvent) : super.onTouchEvent(motionEvent);
    }

    @Override
    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        this.O = viewGroup;
        this.P = marginLayoutParams;
        return this;
    }

    public void setCloseAnimation(boolean z) {
        this.R = z;
    }

    @Override
    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
        this.Q = c0159a;
    }

    @Override
    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        return null;
    }

    @Override
    public void setScropContainerHeight(int i) {
        this.u = i;
    }

    @Override
    public void setScropContainerWidth(int i) {
        this.t = i;
    }

    @Override
    public void startTurning() {
    }

    @Override
    public void stopTurning() {
    }

    @Override
    public void bindData(VASTFloatAd vASTFloatAd) {
        this.M = true;
        this.N = vASTFloatAd;
        ImageView imageView = (ImageView) findViewById(R.id.closeAdIcon);
        this.L = imageView;
        imageView.setOnClickListener(new c());
        if (vASTFloatAd.getClose() == 1) {
            this.L.setVisibility(0);
        } else {
            this.L.setVisibility(8);
        }
        this.K = findViewById(R.id.connerTitleLayout);
        if (vASTFloatAd.getAdStyle() == 1) {
            l4d.f(this.K, 0);
            this.J = (TextView) findViewById(R.id.connerTitle);
            if (!TextUtils.isEmpty(vASTFloatAd.getTitle())) {
                this.J.setText(vASTFloatAd.getTitle());
            }
        } else {
            l4d.f(this.K, 8);
        }
        TextView textView = (TextView) findViewById(R.id.mgmi_ad_dec);
        if (textView != null) {
            if (vASTFloatAd.isShowAdLog()) {
                l4d.f(textView, 0);
                if (!TextUtils.isEmpty(vASTFloatAd.getAdOrigin())) {
                    try {
                        textView.setText(getContext().getResources().getString(R.string.mgmi_adform_dsc, vASTFloatAd.getAdOrigin()));
                    } catch (Throwable unused) {
                    }
                } else {
                    textView.setText("广告");
                }
            } else {
                l4d.f(textView, 8);
            }
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.image_container);
        this.w = frameLayout;
        this.x = frameLayout;
    }

    public FlipRelative(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.M = false;
        this.R = false;
        this.S = new GestureDetector(this);
        setOnTouchListener(this);
    }

    public FlipRelative(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.M = false;
        this.R = false;
        this.S = new GestureDetector(this);
        setOnTouchListener(this);
    }
}
