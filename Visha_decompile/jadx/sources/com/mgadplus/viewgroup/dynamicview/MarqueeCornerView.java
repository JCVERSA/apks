package com.mgadplus.viewgroup.dynamicview;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mgmi.R;
import com.mgmi.model.VASTFloatAd;
import defpackage.acc;
import defpackage.ckd;
import defpackage.ey4;
import defpackage.g4d;
import defpackage.j4d;
import defpackage.l4d;
import defpackage.lbd;
import defpackage.lvd;
import defpackage.ly3;
import java.lang.ref.WeakReference;

public class MarqueeCornerView extends ContainerLayout implements GestureDetector.OnGestureListener, View.OnTouchListener, CornerSchemeView {
    public ViewGroup A;
    public RelativeLayout B;
    public ParentClickHorizontalScrollView C;
    public TextView D;
    public TextView E;
    public TextView F;
    public int G;
    public int H;
    public ImageView I;
    public int J;
    public int K;
    public i L;
    public int M;
    public int N;
    public GestureDetector r;
    public boolean t;
    public ly3 u;
    public ViewGroup v;
    public boolean w;
    public ViewGroup.MarginLayoutParams x;
    public com.mgadplus.viewgroup.dynamicview.a.C0159a y;
    public VASTFloatAd z;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public final ViewGroup.LayoutParams b;

        public a(ViewGroup.LayoutParams layoutParams) {
            this.b = layoutParams;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.b.width = (int) (MarqueeCornerView.this.K * ((Float) valueAnimator.getAnimatedValue()).floatValue());
            MarqueeCornerView.this.B.setLayoutParams(this.b);
        }
    }

    public class b implements Animator.AnimatorListener {
        public final ViewGroup.LayoutParams b;

        public class a implements Animation.AnimationListener {
            public a() {
            }

            @Override
            public void onAnimationEnd(Animation animation) {
                MarqueeCornerView.this.disappear(false);
            }

            @Override
            public void onAnimationRepeat(Animation animation) {
            }

            @Override
            public void onAnimationStart(Animation animation) {
            }
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            this.b = layoutParams;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            MarqueeCornerView.this.B.setVisibility(8);
            this.b.width = MarqueeCornerView.this.K;
            MarqueeCornerView.this.B.setLayoutParams(this.b);
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(MarqueeCornerView.this.getContext(), R.anim.middle_marquee_scale_out);
            animationLoadAnimation.setAnimationListener(new a());
            MarqueeCornerView.this.I.startAnimation(animationLoadAnimation);
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
            com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a = MarqueeCornerView.this.y;
            if (c0159a != null) {
                c0159a.a();
            }
        }
    }

    public class d implements ckd {
        public d() {
        }
    }

    public class e implements ContainerLayout.b {
        public final ly3 a;

        public e(ly3 ly3Var) {
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

    public class f implements ValueAnimator.AnimatorUpdateListener {
        public final ViewGroup.LayoutParams b;

        public f(ViewGroup.LayoutParams layoutParams) {
            this.b = layoutParams;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.b.width = (int) (MarqueeCornerView.this.K * ((Float) valueAnimator.getAnimatedValue()).floatValue());
            MarqueeCornerView.this.B.setLayoutParams(this.b);
        }
    }

    public class g implements Animator.AnimatorListener {
        public g() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            MarqueeCornerView.this.c();
            MarqueeCornerView.this.p();
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public class h implements Animation.AnimationListener {
        public h() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            MarqueeCornerView.this.g();
            MarqueeCornerView.this.n();
        }

        @Override
        public void onAnimationRepeat(Animation animation) {
        }

        @Override
        public void onAnimationStart(Animation animation) {
        }
    }

    public static class i extends Handler {
        public WeakReference a;

        public i(MarqueeCornerView marqueeCornerView) {
            this.a = new WeakReference(marqueeCornerView);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference weakReference = this.a;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            MarqueeCornerView marqueeCornerView = (MarqueeCornerView) this.a.get();
            if (message.what != 17) {
                return;
            }
            marqueeCornerView.a();
        }
    }

    public MarqueeCornerView(Context context) {
        super(context);
        this.r = new GestureDetector(this);
        this.w = false;
        this.G = 2;
        this.H = 1200;
        this.M = 0;
        setOnTouchListener(this);
    }

    public void c() {
        l4d.f(this.I, 0);
        l4d.f(this.C, 0);
        l4d.f(this.B, 0);
        l4d.f(this.E, 0);
    }

    public void g() {
        l4d.f(this.I, 0);
        l4d.f(this.C, 0);
        l4d.f(this.B, 0);
        l4d.f(this.E, 4);
    }

    private void i() {
        int i2;
        VASTFloatAd vASTFloatAd = this.z;
        if (vASTFloatAd != null) {
            try {
                i2 = vASTFloatAd.getCaption() != null ? Integer.parseInt(this.z.getCaption().e) : 5;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            this.G = i2;
            int skipTimeout = this.z.getSkipTimeout();
            this.J = skipTimeout;
            if (skipTimeout < 0) {
                this.J = 5;
            }
            TextView textView = this.D;
            if (textView != null) {
                textView.setText(this.z.getTitle() + "");
                this.D.setTextColor(g4d.w(this.z.getCaption().a));
                GradientDrawable gradientDrawable = (GradientDrawable) this.D.getBackground();
                if (gradientDrawable != null) {
                    gradientDrawable.setColor(g4d.w(this.z.getCaption().b));
                    this.D.setBackground(gradientDrawable);
                }
            }
            TextView textView2 = this.E;
            if (textView2 != null) {
                textView2.setText(this.z.getDiscription() + "");
                this.E.setTextColor(g4d.w(this.z.getCaption().c));
            }
            RelativeLayout relativeLayout = this.B;
            if (relativeLayout != null) {
                relativeLayout.setBackgroundColor(g4d.w(this.z.getCaption().d));
            }
        }
    }

    private void l() {
        VASTFloatAd vASTFloatAd = this.z;
        if (vASTFloatAd == null || vASTFloatAd.getClose() != 1) {
            l4d.f(this.A, 8);
        } else {
            l4d.f(this.A, 0);
        }
    }

    private void m() {
        l4d.f(this.A, 8);
    }

    public void n() {
        RelativeLayout relativeLayout = this.B;
        if (relativeLayout == null) {
            c();
            return;
        }
        this.K = relativeLayout.getWidth();
        ViewGroup.LayoutParams layoutParams = this.B.getLayoutParams();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(this.H);
        valueAnimatorOfFloat.addUpdateListener(new f(layoutParams));
        valueAnimatorOfFloat.addListener(new g());
        valueAnimatorOfFloat.start();
    }

    public void a(boolean z, acc accVar) {
        if (z) {
            c(accVar);
            return;
        }
        i iVar = this.L;
        if (iVar != null) {
            iVar.removeMessages(17);
        }
        j4d.b(new Runnable(accVar) {
            final acc a;

            @Override
            public void run() {
                MarqueeCornerView marqueeCornerView = MarqueeCornerView.this;
                marqueeCornerView.w = false;
                l4d.g(marqueeCornerView.v, marqueeCornerView);
            }
        });
    }

    public void appear(boolean z) {
        l4d.g(this.v, this);
        l4d.c(this.v, this, this.x);
        this.w = true;
        VASTFloatAd vASTFloatAd = this.z;
        if (vASTFloatAd != null) {
            if (vASTFloatAd.isHasRender()) {
                l();
                c();
                p();
            } else if (z) {
                b();
            }
        }
    }

    public void disappear(boolean z) {
        a(z, null);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.r.onTouchEvent(motionEvent);
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public MarqueeCornerView getSchemeView() {
        return this;
    }

    public boolean isVisiblity() {
        return this.w;
    }

    public final void o() {
        if (this.I == null) {
            c();
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.middle_marquee_scale_enter);
        animationLoadAnimation.setAnimationListener(new h());
        this.I.startAnimation(animationLoadAnimation);
    }

    @Override
    public boolean onDown(MotionEvent motionEvent) {
        if (this.t) {
            setClickable(false);
        } else {
            setClickable(true);
        }
        return true;
    }

    @Override
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        ly3 ly3Var;
        if (motionEvent2.getX() - motionEvent.getX() <= 20.0f || Math.abs(f2) <= 200.0f || (ly3Var = this.u) == null) {
            return false;
        }
        ly3Var.onTp(-999.0f, -999.0f, -999.0f, -999.0f, -999.0f, -999.0f);
        return false;
    }

    @Override
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
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
        return this.t ? this.r.onTouchEvent(motionEvent) : super.onTouchEvent(motionEvent);
    }

    public final void p() {
        TextView textView = this.E;
        if (textView == null || this.C == null) {
            g();
            return;
        }
        float fMeasureText = textView.getPaint().measureText(this.E.getText().toString());
        if (fMeasureText <= 0.0f) {
            return;
        }
        int width = this.C.getWidth();
        int left = this.C.getLeft();
        this.N = width;
        if (fMeasureText <= width - left) {
            this.M = 0;
        } else {
            this.M = (int) (-fMeasureText);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.E, "translationX", width, this.M);
        objectAnimatorOfFloat.setDuration(this.G * 1000);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setRepeatMode(1);
        objectAnimatorOfFloat.start();
    }

    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        this.v = viewGroup;
        this.x = marginLayoutParams;
        return this;
    }

    @Override
    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
        this.y = c0159a;
    }

    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        return this;
    }

    public void setOnFlipTouchEvent(boolean z, ly3 ly3Var) {
        this.u = ly3Var;
        this.t = z;
        if (z) {
            return;
        }
        setTapclickListener(new e(ly3Var));
    }

    public void startTurning() {
    }

    public void stopTurning() {
    }

    private void b() {
        VASTFloatAd vASTFloatAd = this.z;
        if (vASTFloatAd != null && vASTFloatAd.getClose() == 1) {
            if (this.L == null) {
                this.L = new i(this);
            }
            i iVar = this.L;
            if (iVar != null) {
                iVar.sendEmptyMessageDelayed(17, 1000L);
            }
        }
        o();
        VASTFloatAd vASTFloatAd2 = this.z;
        if (vASTFloatAd2 != null) {
            vASTFloatAd2.setHasRender(true);
        }
    }

    private void d() {
        l4d.f(this.I, 0);
        l4d.f(this.C, 4);
        l4d.f(this.B, 4);
        l4d.f(this.E, 4);
    }

    @Override
    public void bindData(VASTFloatAd vASTFloatAd) {
        this.z = vASTFloatAd;
        this.C = (ParentClickHorizontalScrollView) findViewById(R.id.sc_content);
        this.E = (TextView) findViewById(R.id.tv_content);
        this.F = (TextView) findViewById(R.id.mgmi_ad_dec);
        this.D = (TextView) findViewById(R.id.tv_introduce);
        this.I = (ImageView) findViewById(R.id.iv_icon);
        this.A = (ViewGroup) findViewById(R.id.mgmi_id_close_icon);
        this.B = (RelativeLayout) findViewById(R.id.rl_content);
        this.C.setParentView(this);
        m();
        this.A.setOnClickListener(new c());
        lvd.b(vASTFloatAd, this.F);
        if (vASTFloatAd.getCurrentStaticResource() != null && !TextUtils.isEmpty(vASTFloatAd.getCurrentStaticResource().getUrl())) {
            ey4.d(this.I, Uri.parse(vASTFloatAd.getCurrentStaticResource().getUrl()), lbd.c(vASTFloatAd.getCurrentStaticResource().getUrl(), lbd.E).n(0).t(), new d());
        }
        d();
        i();
        appear(true);
    }

    public void c(acc accVar) {
        RelativeLayout relativeLayout = this.B;
        if (relativeLayout != null && this.I != null && l4d.d(relativeLayout)) {
            if (!this.w) {
                j4d.b(new Runnable(accVar) {
                    final acc a;

                    @Override
                    public void run() {
                        MarqueeCornerView marqueeCornerView = MarqueeCornerView.this;
                        marqueeCornerView.w = false;
                        l4d.g(marqueeCornerView.v, marqueeCornerView);
                    }
                });
                return;
            }
            ViewGroup.LayoutParams layoutParams = this.B.getLayoutParams();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
            valueAnimatorOfFloat.setDuration(this.H);
            valueAnimatorOfFloat.addUpdateListener(new a(layoutParams));
            valueAnimatorOfFloat.addListener(new b(layoutParams));
            valueAnimatorOfFloat.start();
            return;
        }
        j4d.b(new Runnable(accVar) {
            final acc a;

            @Override
            public void run() {
                MarqueeCornerView marqueeCornerView = MarqueeCornerView.this;
                marqueeCornerView.w = false;
                l4d.g(marqueeCornerView.v, marqueeCornerView);
            }
        });
    }

    public MarqueeCornerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.r = new GestureDetector(this);
        this.w = false;
        this.G = 2;
        this.H = 1200;
        this.M = 0;
        setOnTouchListener(this);
    }

    public MarqueeCornerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.r = new GestureDetector(this);
        this.w = false;
        this.G = 2;
        this.H = 1200;
        this.M = 0;
        setOnTouchListener(this);
    }

    public void a() {
        int i2 = this.J - 1;
        this.J = i2;
        if (i2 > 0) {
            i iVar = this.L;
            if (iVar != null) {
                iVar.sendEmptyMessageDelayed(17, 1000L);
                return;
            }
            return;
        }
        l();
        i iVar2 = this.L;
        if (iVar2 != null) {
            iVar2.removeMessages(17);
        }
    }
}
