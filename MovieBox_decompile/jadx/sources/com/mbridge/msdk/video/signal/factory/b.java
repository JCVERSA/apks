package com.mbridge.msdk.video.signal.factory;

import android.app.Activity;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.c;
import com.mbridge.msdk.video.signal.d;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.g;
import com.mbridge.msdk.video.signal.impl.i;
import com.mbridge.msdk.video.signal.impl.j;
import com.mbridge.msdk.video.signal.impl.k;
import com.mbridge.msdk.video.signal.impl.m;
import com.mbridge.msdk.video.signal.impl.n;
import com.mbridge.msdk.video.signal.impl.o;
import com.mbridge.msdk.video.signal.impl.q;
import java.util.List;

public class b extends a {

    private Activity f38971h;

    private WebView f38972i;

    private MBridgeVideoView f38973j;

    private MBridgeContainerView f38974k;

    private CampaignEx f38975l;

    private MBridgeBTContainer f38976m;

    private com.mbridge.msdk.video.signal.a.InterfaceC0545a f38977n;

    private String f38978o;

    private List<CampaignEx> f38979p;

    public b(Activity activity) {
        this.f38971h = activity;
    }

    public void a(k kVar) {
        this.f38965b = kVar;
    }

    @Override
    public com.mbridge.msdk.video.signal.b getActivityProxy() {
        WebView webView = this.f38972i;
        if (webView == null) {
            return super.getActivityProxy();
        }
        if (this.f38964a == null) {
            this.f38964a = new i(webView);
        }
        return this.f38964a;
    }

    @Override
    public com.mbridge.msdk.video.signal.i getIJSRewardVideoV1() {
        Activity activity;
        MBridgeContainerView mBridgeContainerView = this.f38974k;
        if (mBridgeContainerView == null || (activity = this.f38971h) == null) {
            return super.getIJSRewardVideoV1();
        }
        if (this.f38969f == null) {
            this.f38969f = new o(activity, mBridgeContainerView);
        }
        return this.f38969f;
    }

    @Override
    public c getJSBTModule() {
        if (this.f38971h == null || this.f38976m == null) {
            return super.getJSBTModule();
        }
        if (this.f38970g == null) {
            this.f38970g = new j(this.f38971h, this.f38976m);
        }
        return this.f38970g;
    }

    @Override
    public d getJSCommon() {
        CampaignEx campaignEx;
        List<CampaignEx> list;
        Activity activity = this.f38971h;
        if (activity == null || (campaignEx = this.f38975l) == null) {
            return super.getJSCommon();
        }
        if (this.f38965b == null) {
            this.f38965b = new k(activity, campaignEx);
        }
        if (this.f38975l.getDynamicTempCode() == 5 && (list = this.f38979p) != null) {
            d dVar = this.f38965b;
            if (dVar instanceof k) {
                ((k) dVar).a(list);
            }
        }
        this.f38965b.setActivity(this.f38971h);
        this.f38965b.setUnitId(this.f38978o);
        this.f38965b.a(this.f38977n);
        return this.f38965b;
    }

    @Override
    public f getJSContainerModule() {
        MBridgeContainerView mBridgeContainerView = this.f38974k;
        if (mBridgeContainerView == null) {
            return super.getJSContainerModule();
        }
        if (this.f38968e == null) {
            this.f38968e = new m(mBridgeContainerView);
        }
        return this.f38968e;
    }

    @Override
    public g getJSNotifyProxy() {
        WebView webView = this.f38972i;
        if (webView == null) {
            return super.getJSNotifyProxy();
        }
        if (this.f38967d == null) {
            this.f38967d = new n(webView);
        }
        return this.f38967d;
    }

    @Override
    public com.mbridge.msdk.video.signal.j getJSVideoModule() {
        MBridgeVideoView mBridgeVideoView = this.f38973j;
        if (mBridgeVideoView == null) {
            return super.getJSVideoModule();
        }
        if (this.f38966c == null) {
            this.f38966c = new q(mBridgeVideoView);
        }
        return this.f38966c;
    }

    public void a(List<CampaignEx> list) {
        this.f38979p = list;
    }

    public b(Activity activity, MBridgeBTContainer mBridgeBTContainer, WebView webView) {
        this.f38971h = activity;
        this.f38976m = mBridgeBTContainer;
        this.f38972i = webView;
    }

    public b(Activity activity, WebView webView, MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.video.signal.a.InterfaceC0545a interfaceC0545a) {
        this.f38971h = activity;
        this.f38972i = webView;
        this.f38973j = mBridgeVideoView;
        this.f38974k = mBridgeContainerView;
        this.f38975l = campaignEx;
        this.f38977n = interfaceC0545a;
        this.f38978o = mBridgeVideoView.getUnitId();
    }
}
