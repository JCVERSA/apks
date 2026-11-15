package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.TextView;
import com.mgmi.R;
import com.mgmi.model.VASTFloatAd;
import defpackage.l2d;
import defpackage.l4d;

public class AutoplayerLayout extends ContainerLayout implements BubbleRecyclerViewAdapter.a, CornerSchemeView {
    public AutoplayerRecyclerView r;
    public View t;
    public boolean u;
    public com.mgadplus.viewgroup.dynamicview.a.C0159a v;
    public VASTFloatAd w;
    public ViewGroup x;
    public ViewGroup.MarginLayoutParams y;
    public TextView z;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (AutoplayerLayout.this.v != null) {
                AutoplayerLayout.this.v.a();
            }
        }
    }

    public AutoplayerLayout(Context context) {
        super(context);
        this.u = false;
    }

    @Override
    public void bindData(VASTFloatAd vASTFloatAd) {
        this.w = vASTFloatAd;
        appear(true);
        AutoplayerRecyclerView autoplayerRecyclerView = this.r;
        if (autoplayerRecyclerView != null) {
            autoplayerRecyclerView.bindData(vASTFloatAd);
        }
        VASTFloatAd vASTFloatAd2 = this.w;
        if (vASTFloatAd2 == null || !vASTFloatAd2.isShowAdLog()) {
            l4d.f(this.z, 8);
        } else {
            l4d.f(this.z, 0);
        }
        startTurning();
    }

    public void appear(boolean z) {
        l4d.c(this.x, this, this.y);
        this.u = true;
    }

    public void disappear(boolean z) {
        l4d.g(this.x, this);
        stopTurning();
        this.u = false;
    }

    public AutoplayerLayout getSchemeView() {
        return this;
    }

    public boolean isVisiblity() {
        return this.u;
    }

    @Override
    public void leftClick() {
        AutoplayerRecyclerView autoplayerRecyclerView = this.r;
        if (autoplayerRecyclerView != null) {
            autoplayerRecyclerView.leftClick();
        }
    }

    @Override
    public void onAddItem(int i) {
        VASTFloatAd vASTFloatAd;
        View view = this.t;
        if (view == null || view.getAlpha() != 0.0f || this.r == null || (vASTFloatAd = this.w) == null || vASTFloatAd.getClose() != 1 || !this.r.a(i)) {
            return;
        }
        l4d.a(this.t, 1.0f);
    }

    @Override
    public void onBindComplete() {
        AutoplayerRecyclerView autoplayerRecyclerView = this.r;
        if (autoplayerRecyclerView != null) {
            autoplayerRecyclerView.onBindComplete();
        }
    }

    public void onCloseClick() {
        com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a = this.v;
        if (c0159a != null) {
            c0159a.a();
        }
    }

    @Override
    public void onFinishInflate() {
        super.onFinishInflate();
        AutoplayerRecyclerView autoplayerRecyclerView = (AutoplayerRecyclerView) findViewById(R.id.autoplayerview);
        this.r = autoplayerRecyclerView;
        autoplayerRecyclerView.setOnAutoplayerAdaperClick(this);
        this.z = (TextView) findViewById(R.id.mgmi_ad_dec);
        View viewFindViewById = findViewById(R.id.closeIcon);
        this.t = viewFindViewById;
        viewFindViewById.setOnClickListener(new a());
        l4d.a(this.t, 0.0f);
    }

    @Override
    public void onImageClick(l2d l2dVar) {
        com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a = this.v;
        if (c0159a != null) {
            c0159a.a(l2dVar.i());
        }
    }

    public CornerSchemeView prepareContainer(ViewGroup viewGroup, ViewGroup.MarginLayoutParams marginLayoutParams) {
        this.x = viewGroup;
        this.y = marginLayoutParams;
        return this;
    }

    @Override
    public void rightClick() {
        AutoplayerRecyclerView autoplayerRecyclerView = this.r;
        if (autoplayerRecyclerView != null) {
            autoplayerRecyclerView.rightClick();
        }
    }

    @Override
    public void setEventListener(com.mgadplus.viewgroup.dynamicview.a.C0159a c0159a) {
        this.v = c0159a;
    }

    public com.mgadplus.viewgroup.dynamicview.a setInterectAnimation(Animation animation, Animation animation2) {
        return null;
    }

    public void startTurning() {
        AutoplayerRecyclerView autoplayerRecyclerView = this.r;
        if (autoplayerRecyclerView != null) {
            autoplayerRecyclerView.startTurning();
        }
    }

    public void stopTurning() {
        AutoplayerRecyclerView autoplayerRecyclerView = this.r;
        if (autoplayerRecyclerView != null) {
            autoplayerRecyclerView.stopTurning();
        }
    }

    public AutoplayerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.u = false;
    }

    public AutoplayerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.u = false;
    }
}
