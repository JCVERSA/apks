package com.mbridge.msdk.click;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;

public class h extends AppletSchemeCallBack {

    private final NativeListener.NativeTrackingListener f33497a;

    private final CampaignEx f33498b;

    private final AppletsModel f33499c;

    private final a f33500d;

    public h(NativeListener.NativeTrackingListener nativeTrackingListener, CampaignEx campaignEx, AppletsModel appletsModel, a aVar) {
        this.f33497a = nativeTrackingListener;
        this.f33498b = campaignEx;
        this.f33499c = appletsModel;
        this.f33500d = aVar;
    }

    @Override
    protected void onRequestFailed(int i10, String str, String str2) {
        CampaignEx campaignEx = this.f33498b;
        if (campaignEx == null || this.f33499c == null) {
            return;
        }
        try {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f33497a;
            if (nativeTrackingListener != null) {
                try {
                    nativeTrackingListener.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultAppletSchemeCallBack", e10.getMessage());
                    }
                }
            }
            this.f33499c.setUserClick(false);
            this.f33499c.setRequestingFinish();
            this.f33498b.setClickURL(str2);
            a aVar = this.f33500d;
            if (aVar != null) {
                try {
                    aVar.a(this.f33498b);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultAppletSchemeCallBack", e11.getMessage());
                    }
                }
            }
        } catch (Exception e12) {
            if (MBridgeConstans.DEBUG) {
                o0.b("DefaultAppletSchemeCallBack", e12.getMessage());
            }
        }
    }

    @Override
    protected void onRequestStart() {
    }

    @Override
    protected void onRequestSuccess(String str) {
        CampaignEx campaignEx = this.f33498b;
        if (campaignEx == null || this.f33499c == null) {
            return;
        }
        try {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f33497a;
            if (nativeTrackingListener != null) {
                try {
                    nativeTrackingListener.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultAppletSchemeCallBack", e10.getMessage());
                    }
                }
            }
            this.f33499c.setUserClick(false);
            this.f33499c.setRequestingFinish();
            this.f33498b.setDeepLinkUrl(str);
            a aVar = this.f33500d;
            if (aVar != null) {
                try {
                    aVar.a(this.f33498b);
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        o0.b("DefaultAppletSchemeCallBack", e11.getMessage());
                    }
                }
            }
        } catch (Exception e12) {
            if (MBridgeConstans.DEBUG) {
                o0.b("DefaultAppletSchemeCallBack", e12.getMessage());
            }
        }
    }
}
