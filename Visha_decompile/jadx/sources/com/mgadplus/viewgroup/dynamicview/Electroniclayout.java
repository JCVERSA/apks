package com.mgadplus.viewgroup.dynamicview;

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
import defpackage.e9d;
import defpackage.l4d;

public class Electroniclayout extends FlipFramelayout {
    public boolean I;
    public FrameLayout J;
    public FrameLayout K;
    public TextView L;
    public TextView M;
    public TextView N;
    public TextView O;
    public ImageView P;
    public boolean Q;
    public ViewGroup R;
    public ViewGroup.MarginLayoutParams S;
    public com.mgadplus.viewgroup.dynamicview.a.C0159a T;
    public GestureDetector U;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (Electroniclayout.this.T != null) {
                Electroniclayout.this.T.a();
            }
        }
    }

    public Electroniclayout(@NonNull Context context) {
        super(context);
        this.Q = false;
        this.U = new GestureDetector(this);
        setOnTouchListener(this);
    }

    @Override
    public void a() {
    }

    @Override
    public void appear(boolean z) {
        l4d.g(this.R, this);
        l4d.c(this.R, this, this.S);
        this.Q = true;
        if (z) {
            a();
            c();
        }
    }

    @Override
    public void b() {
    }

    @Override
    public void disappear(boolean z) {
        l4d.g(this.R, this);
        this.Q = false;
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.U.onTouchEvent(motionEvent);
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    @Override
    public Electroniclayout getSchemeView() {
        return this;
    }

    @Override
    public boolean isVisiblity() {
        return this.Q;
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
        return this.I ? this.U.onTouchEvent(motionEvent) : super.onTouchEvent(motionEvent);
    }

    @Override
    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        this.R = viewGroup;
        this.S = marginLayoutParams;
        return this;
    }

    @Override
    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
        this.T = c0159a;
    }

    @Override
    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        return null;
    }

    @Override
    public void startTurning() {
    }

    @Override
    public void stopTurning() {
    }

    @Override
    public void bindData(VASTFloatAd vASTFloatAd) {
        if (vASTFloatAd == null || vASTFloatAd.getECommerce() == null) {
            return;
        }
        l4d.g(this.R, this);
        l4d.c(this.R, this, this.S);
        this.Q = true;
        ImageView imageView = (ImageView) findViewById(R.id.closeAdIcon);
        this.P = imageView;
        imageView.setOnClickListener(new a());
        if (vASTFloatAd.getClose() == 1) {
            this.P.setVisibility(0);
        } else {
            this.P.setVisibility(8);
        }
        e9d eCommerce = vASTFloatAd.getECommerce();
        if (TextUtils.isEmpty(eCommerce.e())) {
            ((TextView) findViewById(R.id.title)).setVisibility(8);
        } else {
            ((TextView) findViewById(R.id.title)).setText(eCommerce.e());
        }
        if (!TextUtils.isEmpty(eCommerce.l())) {
            TextView textView = (TextView) findViewById(R.id.detaiButton);
            this.O = textView;
            textView.setText(eCommerce.l());
        }
        this.M = (TextView) findViewById(R.id.message01);
        this.N = (TextView) findViewById(R.id.message02);
        if (TextUtils.isEmpty(eCommerce.k())) {
            l4d.f(this.M, 8);
        } else {
            this.M.setText("￥" + eCommerce.k());
        }
        if (TextUtils.isEmpty(eCommerce.i())) {
            l4d.f(this.N, 8);
        } else {
            this.N.getPaint().setFlags(16);
            this.N.setText("￥" + eCommerce.i());
        }
        this.L = (TextView) findViewById(R.id.detai);
        if (TextUtils.isEmpty(eCommerce.g())) {
            l4d.f(this.L, 8);
        } else {
            this.L.setText(eCommerce.g());
        }
        FrameLayout frameLayout = (FrameLayout) findViewById(R.id.image_container);
        this.J = frameLayout;
        this.K = frameLayout;
    }

    public Electroniclayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.Q = false;
        this.U = new GestureDetector(this);
        setOnTouchListener(this);
    }

    public Electroniclayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Q = false;
        this.U = new GestureDetector(this);
        setOnTouchListener(this);
    }
}
