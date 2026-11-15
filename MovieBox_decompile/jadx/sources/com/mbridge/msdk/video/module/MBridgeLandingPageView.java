package com.mbridge.msdk.video.module;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.URLUtil;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.out.BaseTrackingListener;

public class MBridgeLandingPageView extends MBridgeH5EndCardView {

    private static final class b implements com.mbridge.msdk.mbsignalcommon.base.a {
        private b() {
        }

        @Override
        public boolean a(String str) {
            if (TextUtils.isEmpty(str) || URLUtil.isNetworkUrl(str)) {
                return false;
            }
            s0.a(c.m().d(), str, (BaseTrackingListener) null);
            return true;
        }
    }

    public MBridgeLandingPageView(Context context) {
        super(context);
    }

    @Override
    protected String getURL() {
        CampaignEx campaignEx = this.f38394b;
        if (campaignEx != null) {
            return com.mbridge.msdk.click.c.a(campaignEx.getClickURL(), "-999", "-999");
        }
        return null;
    }

    @Override
    public void init(Context context) {
        super.init(context);
    }

    @Override
    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        if (this.f38397e) {
            this.f38444p.setFilter(new b());
        }
        super.preLoadData(bVar);
        setVisibility(0);
        setCloseVisible(0);
    }

    @Override
    public void webviewshow() {
        try {
            o0.a(MBridgeBaseView.TAG, "webviewshow");
            f.a().a((WebView) this.f38444p, "webviewshow", "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public MBridgeLandingPageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
