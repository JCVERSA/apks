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
import defpackage.ly3;
import defpackage.mpd;
import defpackage.w1d;
import defpackage.w3d;

public class FlipFramelayout extends ContainerLayout implements GestureDetector.OnGestureListener, View.OnTouchListener, CornerSchemeView {
    public boolean A;
    public VASTFloatAd B;
    public ViewGroup C;
    public ViewGroup.MarginLayoutParams D;
    public com.mgadplus.viewgroup.dynamicview.a.C0159a E;
    public GestureDetector F;
    public ly3 G;
    public boolean H;
    public boolean r;
    public int t;
    public int u;
    public boolean v;
    public FrameLayout w;
    public FrameLayout x;
    public TextView y;
    public ImageView z;

    public class a implements Animator.AnimatorListener {
        public a() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            FlipFramelayout.this.d();
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
            FlipFramelayout.this.b();
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
            com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a = FlipFramelayout.this.E;
            if (c0159a != null) {
                c0159a.a();
            }
        }
    }

    public class d implements ContainerLayout.b {
        public final ly3 a;

        public d(ly3 ly3Var) {
            this.a = ly3Var;
        }

        @Override
        public void onClick(View view, float f, float f2, float f3, float f4, float f5, float f6) {
            ly3 ly3Var = this.a;
            if (ly3Var != null) {
                ly3Var.onTp(f, f2, f3, f4, f5, f6);
            }
        }
    }

    public FlipFramelayout(@NonNull Context context) {
        super(context);
        this.r = false;
        this.A = false;
        this.F = new GestureDetector(this);
        setOnTouchListener(this);
    }

    private void g() {
        if (this.B.getCurrentStaticResource() != null) {
            if (this.B.getCurrentStaticResource().getAdStrict() == 1) {
                ViewGroup.LayoutParams layoutParams = ((FrameLayout) findViewById(R.id.image_container)).getLayoutParams();
                float adWratio = this.B.getCurrentStaticResource().getAdWratio();
                if (adWratio <= 0.0f) {
                    layoutParams.width = w3d.a(com.mgmi.ads.api.c.a(), this.B.getCurrentStaticResource().getWidth() / 2);
                    layoutParams.height = w3d.a(com.mgmi.ads.api.c.a(), this.B.getCurrentStaticResource().getHeight() / 2);
                } else if (this.r) {
                    int i = (int) (mpd.d(getContext()).y * adWratio);
                    layoutParams.width = i;
                    layoutParams.height = (int) (((((double) i) * 1.0d) * ((double) this.B.getCurrentStaticResource().getHeight())) / ((double) (this.B.getCurrentStaticResource().getWidth() > 0 ? this.B.getCurrentStaticResource().getWidth() : 1)));
                } else {
                    int i2 = (int) (mpd.d(getContext()).x * adWratio);
                    layoutParams.width = i2;
                    layoutParams.height = (int) (((((double) i2) * 1.0d) * ((double) this.B.getCurrentStaticResource().getHeight())) / ((double) (this.B.getCurrentStaticResource().getWidth() > 0 ? this.B.getCurrentStaticResource().getWidth() : 1)));
                }
            }
        }
    }

    public void a() {
        l4d.a(this.y, 0.0f);
        l4d.a(this.z, 0.0f);
        l4d.a(this.w, 0.0f);
    }

    public void appear(boolean z) {
        l4d.g(this.C, this);
        l4d.c(this.C, this, this.D);
        this.A = true;
        if (z) {
            a();
            c();
        }
    }

    public void b() {
        l4d.a(this.y, 1.0f);
        l4d.a(this.z, 1.0f);
        l4d.a(this.w, 1.0f);
    }

    public void c() {
        if (this.H) {
            new w1d().e(this.x).f(com.mgadplus.a.b.SCALEMIDDLE).c(500).d(new a()).a().h();
        } else {
            b();
        }
    }

    public void d() {
        if (this.B.getAdStyle() == 2 || this.B.getAdStyle() == 0 || this.B.getAdStyle() == 4 || this.B.getAdStyle() == 8) {
            b();
        } else {
            new w1d().e(this.y).f(com.mgadplus.a.b.SCALE).c(300).d(new b()).a().h();
        }
    }

    public void disappear(boolean z) {
        l4d.g(this.C, this);
        this.A = false;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.F.onTouchEvent(motionEvent);
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public void e() {
        if (this.t == 0) {
            g();
            return;
        }
        if (this.B.getCurrentStaticResource() == null || this.B.getCurrentStaticResource().getAdStrict() != 1) {
            this.H = true;
            return;
        }
        float adWratio = this.B.getCurrentStaticResource().getAdWratio();
        this.H = false;
        if (adWratio <= 0.0f) {
            ViewGroup.LayoutParams layoutParams = ((FrameLayout) findViewById(R.id.image_container)).getLayoutParams();
            layoutParams.width = w3d.a(com.mgmi.ads.api.c.a(), this.B.getCurrentStaticResource().getWidth() / 2);
            layoutParams.height = w3d.a(com.mgmi.ads.api.c.a(), this.B.getCurrentStaticResource().getHeight() / 2);
        } else {
            ViewGroup.LayoutParams layoutParams2 = ((FrameLayout) findViewById(R.id.image_container)).getLayoutParams();
            int i = (int) (this.t * adWratio);
            layoutParams2.width = i;
            layoutParams2.height = (int) (((((double) i) * 1.0d) * ((double) this.B.getCurrentStaticResource().getHeight())) / ((double) (this.B.getCurrentStaticResource().getWidth() > 0 ? this.B.getCurrentStaticResource().getWidth() : 1)));
        }
    }

    public FrameLayout getPlayerViewParent() {
        return this.x;
    }

    @Override
    public FlipFramelayout getSchemeView() {
        return this;
    }

    public boolean isVisiblity() {
        return this.A;
    }

    public boolean onDown(MotionEvent motionEvent) {
        if (this.v) {
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
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        ly3 ly3Var;
        if (motionEvent2.getX() - motionEvent.getX() <= 20.0f || Math.abs(f) <= 200.0f || (ly3Var = this.G) == null) {
            return false;
        }
        ly3Var.onTp(-999.0f, -999.0f, -999.0f, -999.0f, -999.0f, -999.0f);
        return false;
    }

    public void onLongPress(MotionEvent motionEvent) {
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    public void onShowPress(MotionEvent motionEvent) {
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.v ? this.F.onTouchEvent(motionEvent) : super.onTouchEvent(motionEvent);
    }

    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        this.C = viewGroup;
        this.D = marginLayoutParams;
        return this;
    }

    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
        this.E = c0159a;
    }

    public void setFullScreen(boolean z) {
        this.r = z;
    }

    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        return null;
    }

    public void setOnFlipTouchEvent(boolean z, ly3 ly3Var) {
        this.G = ly3Var;
        this.v = z;
        if (z) {
            return;
        }
        setTapclickListener(new d(ly3Var));
    }

    public void setScropContainerHeight(int i) {
        this.u = i;
    }

    public void setScropContainerWidth(int i) {
        this.t = i;
    }

    public void startTurning() {
    }

    public void stopTurning() {
    }

    @Override
    public void bindData(VASTFloatAd vASTFloatAd) {
        c(vASTFloatAd);
    }

    public void c(VASTFloatAd vASTFloatAd) {
        this.B = vASTFloatAd;
        e();
        l4d.g(this.C, this);
        l4d.c(this.C, this, this.D);
        this.A = true;
        ImageView imageView = (ImageView) findViewById(R.id.closeAdIcon);
        this.z = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new c());
        }
        if (vASTFloatAd.getClose() == 1) {
            l4d.f(this.z, 0);
        } else {
            l4d.f(this.z, 8);
        }
        if (vASTFloatAd.getAdStyle() == 1) {
            this.y = (TextView) findViewById(R.id.connerTitle);
            if (!TextUtils.isEmpty(vASTFloatAd.getTitle())) {
                this.y.setText(vASTFloatAd.getTitle());
            }
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

    public FlipFramelayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.r = false;
        this.A = false;
        this.F = new GestureDetector(this);
        setOnTouchListener(this);
    }

    public FlipFramelayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.r = false;
        this.A = false;
        this.F = new GestureDetector(this);
        setOnTouchListener(this);
    }
}
