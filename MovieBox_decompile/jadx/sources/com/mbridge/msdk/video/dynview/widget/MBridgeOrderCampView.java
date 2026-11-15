package com.mbridge.msdk.video.dynview.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.video.bt.module.orglistener.f;
import com.mbridge.msdk.video.module.MBridgeBaseView;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class MBridgeOrderCampView extends MBridgeBaseView {

    private MBridgeOrderCampView f38292m;

    private List<CampaignEx> f38293n;

    private int f38294o;

    private int f38295p;

    private int f38296q;

    private int f38297r;

    private String f38298s;

    private FeedBackButton f38299t;

    private ImageView f38300u;

    private boolean f38301v;

    private com.mbridge.msdk.video.dynview.listener.c f38302w;

    private com.mbridge.msdk.video.dynview.listener.b f38303x;

    private boolean f38304y;

    class a implements com.mbridge.msdk.video.dynview.listener.c {
        a() {
        }

        @Override
        public void a(CampaignEx campaignEx, int i10) {
            if (campaignEx != null) {
                try {
                    MBridgeOrderCampView.this.setCampaign(campaignEx);
                    campaignEx.setClickTempSource(2);
                    campaignEx.setTriggerClickSource(2);
                    MBridgeOrderCampView.this.a(campaignEx, 0, i10);
                } catch (Exception e10) {
                    o0.b(MBridgeBaseView.TAG, e10.getMessage());
                }
            }
        }

        @Override
        public void close() {
            MBridgeOrderCampView.this.g();
        }
    }

    class c implements com.mbridge.msdk.foundation.feedback.a {
        c() {
        }

        @Override
        public void a() {
        }

        @Override
        public void close() {
        }

        @Override
        public void a(String str) {
        }
    }

    class d implements View.OnClickListener {

        final String f38309a;

        d(String str) {
            this.f38309a = str;
        }

        @Override
        public void onClick(View view) {
            com.mbridge.msdk.click.c.e(((MBridgeBaseView) MBridgeOrderCampView.this).f38393a, this.f38309a);
        }
    }

    public MBridgeOrderCampView(Context context) {
        super(context);
        this.f38301v = false;
        this.f38302w = new a();
        this.f38304y = false;
    }

    private void f() {
        if (this.f38300u == null) {
            return;
        }
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD == null) {
            this.f38300u.setVisibility(8);
            return;
        }
        String strC = gVarD.c();
        if (TextUtils.isEmpty(strC)) {
            this.f38300u.setVisibility(8);
        }
        this.f38300u.setOnClickListener(new d(strC));
    }

    public void g() {
        try {
            e eVar = new e();
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000152", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000134", this.f38394b);
        } catch (Throwable th2) {
            o0.a(MBridgeBaseView.TAG, th2.getMessage());
        }
        try {
            com.mbridge.msdk.video.dynview.moffer.a.a().b();
        } catch (Exception e10) {
            o0.b(MBridgeBaseView.TAG, e10.getMessage());
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(104, "");
        }
    }

    public void createView(ViewGroup viewGroup) {
        if (this.f38293n == null) {
            com.mbridge.msdk.video.dynview.listener.b bVar = this.f38303x;
            if (bVar != null) {
                bVar.b();
                return;
            }
            return;
        }
        HashMap map = new HashMap();
        map.put("order_view_callback", this.f38302w);
        com.mbridge.msdk.video.dynview.b.a().a(new com.mbridge.msdk.video.dynview.wrapper.c().b(com.mbridge.msdk.foundation.controller.c.m().d(), this.f38293n), new b(viewGroup), map);
    }

    @Override
    public void init(Context context) {
        this.f38292m = this;
    }

    @Override
    protected void onAttachedToWindow() {
        JSONException e10;
        JSONObject jSONObject;
        super.onAttachedToWindow();
        if (this.f38293n == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f38293n.size(); i10++) {
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("camp_position", i10);
                } catch (JSONException e11) {
                    e10 = e11;
                    e10.printStackTrace();
                }
            } catch (JSONException e12) {
                e10 = e12;
                jSONObject = null;
            }
            com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
            if (aVar != null) {
                aVar.a(110, jSONObject);
            }
        }
    }

    public void setCampOrderViewBuildCallback(com.mbridge.msdk.video.dynview.listener.b bVar) {
        this.f38303x = bVar;
    }

    public void setCampaignExes(List<CampaignEx> list) {
        this.f38293n = list;
    }

    public void setNotchPadding(int i10, int i11, int i12, int i13) {
        this.f38294o = i10;
        this.f38295p = i11;
        this.f38296q = i12;
        this.f38297r = i13;
        setViewStatus();
    }

    public void setRewarded(boolean z10) {
        this.f38304y = z10;
    }

    public void setViewStatus() {
        MBridgeOrderCampView mBridgeOrderCampView = this.f38292m;
        if (mBridgeOrderCampView == null || !this.f38304y) {
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) mBridgeOrderCampView.findViewById(filterFindViewId(this.f38301v, "mbridge_native_order_camp_controller"));
        this.f38299t = (FeedBackButton) this.f38292m.findViewById(filterFindViewId(this.f38301v, "mbridge_native_order_camp_feed_btn"));
        this.f38300u = (ImageView) this.f38292m.findViewById(filterFindViewId(this.f38301v, "mbridge_iv_link"));
        if (relativeLayout != null) {
            relativeLayout.setPadding(this.f38294o, this.f38296q, this.f38295p, this.f38297r);
        }
        if (this.f38299t != null) {
            try {
                e();
            } catch (Exception e10) {
                o0.b(MBridgeBaseView.TAG, e10.getMessage());
            }
        }
        if (this.f38300u != null) {
            try {
                f();
            } catch (Exception e11) {
                o0.b(MBridgeBaseView.TAG, e11.getMessage());
            }
        }
    }

    public void startAlphaAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        this.f38292m.startAnimation(alphaAnimation);
    }

    public void startTranslateAnimation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 1.0f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(500L);
        this.f38292m.startAnimation(translateAnimation);
    }

    private void e() {
        List<CampaignEx> list = this.f38293n;
        if (list == null || list.get(0) == null) {
            FeedBackButton feedBackButton = this.f38299t;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        this.f38298s = this.f38293n.get(0).getCampaignUnitId();
        this.f38394b = this.f38293n.get(0);
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f38298s + "_2", this.f38394b);
        if (this.f38299t == null) {
            return;
        }
        if (!com.mbridge.msdk.foundation.feedback.b.b().a()) {
            this.f38299t.setVisibility(8);
            return;
        }
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f38298s + "_2", new c());
        com.mbridge.msdk.foundation.feedback.b.b().a(this.f38298s + "_2", this.f38299t);
    }

    public void a(CampaignEx campaignEx, int i10, int i11) {
        JSONException e10;
        JSONObject jSONObject;
        if (campaignEx != null && campaignEx.isDynamicView()) {
            try {
                CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
                String str = "";
                if (rewardTemplateMode != null) {
                    str = rewardTemplateMode.f() + "";
                }
                String str2 = str;
                j.a(com.mbridge.msdk.foundation.controller.c.m().d(), "order_view_click" + str2, campaignEx.getCampaignUnitId(), campaignEx.isBidCampaign(), campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), str2);
            } catch (Exception e11) {
                o0.b(MBridgeBaseView.TAG, e11.getMessage());
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.mbridge.msdk.foundation.same.a.f34506j, a(i10));
                jSONObject.put("camp_position", i11);
            } catch (JSONException e12) {
                e10 = e12;
                e10.printStackTrace();
            }
        } catch (JSONException e13) {
            e10 = e13;
            jSONObject = null;
        }
        com.mbridge.msdk.video.module.listener.a aVar = this.notifyListener;
        if (aVar != null) {
            aVar.a(105, jSONObject);
        }
    }

    public MBridgeOrderCampView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f38301v = false;
        this.f38302w = new a();
        this.f38304y = false;
    }

    class b implements com.mbridge.msdk.video.dynview.listener.h {

        final ViewGroup f38306a;

        b(ViewGroup viewGroup) {
            this.f38306a = viewGroup;
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.a aVar) {
            if (aVar != null) {
                try {
                    MBridgeOrderCampView.this.f38292m.addView(aVar.b());
                    MBridgeOrderCampView.this.f38301v = aVar.c();
                    this.f38306a.removeAllViews();
                    this.f38306a.addView(MBridgeOrderCampView.this.f38292m);
                    f.a(com.mbridge.msdk.foundation.controller.c.m().d(), (List<CampaignEx>) MBridgeOrderCampView.this.f38293n, ((CampaignEx) MBridgeOrderCampView.this.f38293n.get(0)).getCampaignUnitId());
                    MBridgeOrderCampView.this.setViewStatus();
                    if (MBridgeOrderCampView.this.f38303x != null) {
                        MBridgeOrderCampView.this.f38303x.a();
                    }
                } catch (Exception e10) {
                    o0.b(MBridgeBaseView.TAG, e10.getMessage());
                }
            }
        }

        @Override
        public void a(com.mbridge.msdk.video.dynview.error.a aVar) {
            try {
                f.a(com.mbridge.msdk.foundation.controller.c.m().d(), (List<CampaignEx>) MBridgeOrderCampView.this.f38293n, ((CampaignEx) MBridgeOrderCampView.this.f38293n.get(0)).getCampaignUnitId(), aVar.c());
                if (MBridgeOrderCampView.this.f38303x != null) {
                    MBridgeOrderCampView.this.f38303x.b();
                }
            } catch (Exception e10) {
                o0.b(MBridgeBaseView.TAG, e10.getMessage());
            }
        }
    }
}
