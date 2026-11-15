package com.mbridge.msdk.newinterstitial.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.out.BaseExtraInterfaceForHandler;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.reward.controller.a;
import org.json.JSONObject;

public class MBBidNewInterstitialHandler implements BaseExtraInterfaceForHandler {

    private String f35906a;

    private String f35907b;

    private String f35908c;

    private String f35909d;

    private String f35910e;

    private a f35911f;

    private String f35912g;

    private NewInterstitialListener f35913h;

    private int f35914i = 2;

    private boolean f35915j = false;

    private boolean f35916k = false;

    private boolean f35917l = false;

    private int f35918m;

    private int f35919n;

    private int f35920o;

    public MBBidNewInterstitialHandler(Context context, String str, String str2) {
        if (c.m().d() == null && context != null) {
            c.m().b(context);
        }
        a(str, str2);
    }

    private void a(String str, String str2) {
        String strE = t0.e(str2);
        if (!TextUtils.isEmpty(strE)) {
            t0.b(str2, strE);
        }
        this.f35906a = str;
        this.f35912g = str2;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f35911f == null) {
                a aVar = new a();
                this.f35911f = aVar;
                aVar.d(true);
                this.f35911f.e(true);
                this.f35911f.c(str, str2);
            }
        } catch (Throwable th2) {
            o0.b("MBBidNewInterstitialHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f35911f;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f35911f;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f35911f;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f35911f;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f35911f != null) {
            this.f35911f.a(false, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35912g, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f35911f != null) {
            this.f35911f.a(true, str, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35912g, true, 2));
        }
    }

    public void playVideoMute(int i10) {
        this.f35914i = i10;
        a aVar = this.f35911f;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f35908c = str;
        this.f35907b = str2;
        this.f35909d = str3;
        this.f35910e = str4;
        this.f35916k = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f35912g, str, str2, str3, str4);
    }

    @Override
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.f35912g, jSONObject);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f35918m = i10;
        this.f35919n = i11;
        this.f35920o = com.mbridge.msdk.foundation.same.a.K;
        this.f35917l = true;
        b();
    }

    public void setInterstitialVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f35913h = newInterstitialListener;
        this.f35915j = true;
        a aVar = this.f35911f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35911f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f35912g, true));
        this.f35915j = false;
    }

    @Deprecated
    public void setRewardVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f35913h = newInterstitialListener;
        this.f35915j = true;
        a aVar = this.f35911f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35911f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f35912g, true));
        this.f35915j = false;
    }

    public void showFromBid() {
        a();
        if (this.f35911f != null) {
            this.f35911f.a((String) null, (String) null, (String) null, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35912g, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f35918m = i10;
        this.f35919n = (int) (d10 * 100.0d);
        this.f35920o = com.mbridge.msdk.foundation.same.a.J;
        this.f35917l = true;
        b();
    }

    private void a() {
        a aVar;
        if (this.f35911f == null) {
            b(this.f35906a, this.f35912g);
        }
        if (this.f35915j) {
            a aVar2 = this.f35911f;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.newinterstitial.listener.a(this.f35913h, this.f35912g, true));
            }
            this.f35915j = false;
        }
        if (this.f35916k) {
            a aVar3 = this.f35911f;
            if (aVar3 != null) {
                aVar3.a(this.f35908c, this.f35907b, this.f35909d, this.f35910e);
            }
            this.f35916k = false;
        }
        if (!this.f35917l || (aVar = this.f35911f) == null) {
            return;
        }
        aVar.a(this.f35918m, this.f35920o, this.f35919n);
        this.f35917l = false;
    }

    private void b() {
        a aVar = this.f35911f;
        if (aVar != null) {
            aVar.a(this.f35918m, this.f35920o, this.f35919n);
        }
    }

    public MBBidNewInterstitialHandler(String str, String str2) {
        a(str, str2);
    }
}
