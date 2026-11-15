package com.mbridge.msdk.video.module;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.video.dynview.listener.h;
import org.json.JSONException;
import org.json.JSONObject;

public class MBridgeClickCTAView extends MBridgeClickCTAViewDiff {
    public f ctaClickCallBack;

    private ViewGroup f38405m;

    private ImageView f38406n;

    private TextView f38407o;

    private TextView f38408p;

    private String f38409q;

    private float f38410r;

    private float f38411s;

    private int f38412t;

    private ObjectAnimator f38413u;

    class b extends com.mbridge.msdk.widget.a {
        b() {
        }

        @Override
        protected void a(View view) {
            MBridgeClickCTAView.this.getClass();
            MBridgeClickCTAView.this.e();
        }
    }

    class c extends com.mbridge.msdk.widget.a {
        c() {
        }

        @Override
        protected void a(View view) {
            MBridgeClickCTAView.this.getClass();
            MBridgeClickCTAView.this.e();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override
        public void onClick(View view) {
        }
    }

    class e extends com.mbridge.msdk.video.module.listener.impl.e {
        e(ImageView imageView, CampaignEx campaignEx, String str) {
            super(imageView, campaignEx, str);
        }

        @Override
        public void onFailedLoad(String str, String str2) {
            super.onFailedLoad(str, str2);
            MBridgeClickCTAView.this.g();
        }
    }

    public interface f {
    }

    public MBridgeClickCTAView(Context context) {
        super(context);
    }

    public void e() {
        JSONException e10;
        JSONObject jSONObject;
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                CampaignEx.c rewardTemplateMode = this.f38394b.getRewardTemplateMode();
                String str = "";
                if (rewardTemplateMode != null) {
                    str = rewardTemplateMode.f() + "";
                }
                j.a(com.mbridge.msdk.foundation.controller.c.m().d(), "cta_click", this.f38394b.getCampaignUnitId(), this.f38394b.isBidCampaign(), this.f38394b.getRequestId(), this.f38394b.getRequestIdNotice(), this.f38394b.getId(), str);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f34506j, a(0));
            } catch (JSONException e12) {
                e10 = e12;
                e10.printStackTrace();
            }
        } catch (JSONException e13) {
            e10 = e13;
            jSONObject = null;
        }
        this.f38394b.setTriggerClickSource(1);
        this.f38394b.setClickTempSource(1);
        this.notifyListener.a(105, jSONObject);
    }

    private void f() {
        int iFindLayout = findLayout("mbridge_reward_clickable_cta");
        if (g0.a(iFindLayout)) {
            this.f38395c.inflate(iFindLayout, this);
            this.f38397e = h();
            d();
            i();
        }
    }

    public void g() {
        ImageView imageView = this.f38406n;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    public boolean h() {
        this.f38405m = (ViewGroup) findViewById(findID("mbridge_viewgroup_ctaroot"));
        this.f38406n = (ImageView) findViewById(findID("mbridge_iv_appicon"));
        this.f38407o = (TextView) findViewById(findID("mbridge_tv_title"));
        TextView textView = (TextView) findViewById(findID("mbridge_tv_install"));
        this.ctaTv = textView;
        return isNotNULL(this.f38405m, this.f38406n, this.f38407o, textView);
    }

    private void i() {
        setWrapContent();
    }

    @Override
    protected void d() {
        super.d();
        if (this.f38397e) {
            CampaignEx campaignEx = this.f38394b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                setOnClickListener(new b());
            }
            this.ctaTv.setOnClickListener(new c());
            ImageView imageView = this.f38406n;
            if (imageView != null) {
                imageView.setOnClickListener(new d());
            }
        }
    }

    @Override
    public void init(Context context) {
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ObjectAnimator objectAnimator = this.f38413u;
        if (objectAnimator != null) {
            try {
                objectAnimator.start();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ObjectAnimator objectAnimator = this.f38413u;
        if (objectAnimator != null) {
            try {
                objectAnimator.cancel();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f38410r = motionEvent.getRawX();
        this.f38411s = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override
    public void onSelfConfigurationChanged(Configuration configuration) {
        super.onSelfConfigurationChanged(configuration);
        this.f38412t = configuration.orientation;
    }

    @Override
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null) {
            if (campaignEx.isDynamicView()) {
                a(this, this.f38394b);
            } else {
                f();
            }
            if (this.f38397e) {
                if (com.mbridge.msdk.util.b.a()) {
                    setChinaCTAData();
                }
                this.ctaTv.setText(this.f38394b.getAdCall());
                if (TextUtils.isEmpty(this.f38394b.getIconUrl())) {
                    g();
                } else {
                    com.mbridge.msdk.foundation.same.image.b.a(this.f38393a.getApplicationContext()).a(this.f38394b.getIconUrl(), new e(this.f38406n, this.f38394b, this.f38409q));
                }
                if (this.f38407o != null && !TextUtils.isEmpty(this.f38394b.getAppName())) {
                    this.f38407o.setText(this.f38394b.getAppName());
                }
                if (this.f38408p == null || TextUtils.isEmpty(this.f38394b.getAppDesc())) {
                    return;
                }
                this.f38408p.setText(this.f38394b.getAppDesc());
            }
        }
    }

    public void setCtaClickCallBack(f fVar) {
    }

    public void setObjectAnimator(ObjectAnimator objectAnimator) {
        this.f38413u = objectAnimator;
    }

    public void setUnitId(String str) {
        this.f38409q = str;
    }

    public MBridgeClickCTAView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(ViewGroup viewGroup, CampaignEx campaignEx) {
        com.mbridge.msdk.video.dynview.b.a().a(new com.mbridge.msdk.video.dynview.wrapper.c().a(viewGroup, campaignEx), new a(viewGroup));
    }

    class a implements h {

        final ViewGroup f38414a;

        a(ViewGroup viewGroup) {
            this.f38414a = viewGroup;
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                this.f38414a.addView(aVar.b());
                MBridgeClickCTAView mBridgeClickCTAView = MBridgeClickCTAView.this;
                mBridgeClickCTAView.f38397e = mBridgeClickCTAView.h();
                MBridgeClickCTAView mBridgeClickCTAView2 = MBridgeClickCTAView.this;
                mBridgeClickCTAView2.f38408p = (TextView) mBridgeClickCTAView2.findViewById(mBridgeClickCTAView2.findID("mbridge_tv_desc"));
                MBridgeClickCTAView.this.d();
            }
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            o0.b(MBridgeBaseView.TAG, "errorMsg:" + aVar.c());
        }
    }
}
