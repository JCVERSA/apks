package com.mbridge.msdk.nativex.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.report.g;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.mbridge.msdk.nativex.listener.b;
import org.json.JSONObject;

public class WindVaneWebViewForNV extends WindVaneWebView {

    private b f35863r;

    private boolean f35864s;

    public WindVaneWebViewForNV(Context context) {
        super(context);
        this.f35864s = false;
    }

    @Override
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        b bVar;
        if (i10 != 4 || (bVar = this.f35863r) == null) {
            return super.onKeyDown(i10, keyEvent);
        }
        bVar.a();
        return true;
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f35864s) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void orientation(boolean z10) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (z10) {
                jSONObject.put("orientation", TmcStartParams.KEY_LANDSCAPE);
            } else {
                jSONObject.put("orientation", "portrait");
            }
            f.a().a((WebView) this, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setBackListener(b bVar) {
        this.f35863r = bVar;
    }

    public void setInterceptTouch(boolean z10) {
        this.f35864s = z10;
    }

    public void webViewShow(CampaignEx campaignEx, String str) {
        try {
            f.a().a((WebView) this, "webviewshow", "");
            m mVar = new m();
            mVar.n(campaignEx.getRequestId());
            mVar.o(campaignEx.getRequestIdNotice());
            if (getContext() != null && getContext().getApplicationContext() != null) {
                mVar.b(campaignEx.getId());
                mVar.b(campaignEx.isMraid() ? m.N : m.O);
                g.d(mVar, getContext().getApplicationContext(), str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public WindVaneWebViewForNV(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f35864s = false;
    }

    public WindVaneWebViewForNV(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f35864s = false;
    }
}
