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

@Deprecated
public class MBBidInterstitialVideoHandler implements BaseExtraInterfaceForHandler {

    private String f35892a;

    private String f35893b;

    private String f35894c;

    private String f35895d;

    private String f35896e;

    private a f35897f;

    private NewInterstitialListener f35898g;

    private int f35899h = 2;

    private boolean f35900i = false;

    private boolean f35901j = false;

    private boolean f35902k = false;

    private int f35903l;

    private int f35904m;
    public String mUnitId;

    private int f35905n;

    public MBBidInterstitialVideoHandler(Context context, String str, String str2) {
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
        this.mUnitId = str2;
        this.f35892a = str;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f35897f == null) {
                a aVar = new a();
                this.f35897f = aVar;
                aVar.d(true);
                this.f35897f.e(true);
                this.f35897f.c(str, str2);
            }
        } catch (Throwable th2) {
            o0.b("MBBidInterstitialVideoHandler", th2.getMessage(), th2);
        }
    }

    private void c() {
        a aVar = this.f35897f;
        if (aVar != null) {
            aVar.a(this.f35903l, this.f35905n, this.f35904m);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f35897f;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f35897f;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f35897f;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f35897f;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f35897f != null) {
            this.f35897f.a(false, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.mUnitId, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f35897f != null) {
            this.f35897f.a(true, str, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.mUnitId, true, 2));
        }
    }

    public void playVideoMute(int i10) {
        this.f35899h = i10;
        a aVar = this.f35897f;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f35894c = str;
        this.f35893b = str2;
        this.f35895d = str3;
        this.f35896e = str4;
        this.f35901j = true;
        MBridgeGlobalCommon.setAlertDialogText(this.mUnitId, str, str2, str3, str4);
    }

    @Override
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.mUnitId, jSONObject);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f35903l = i10;
        this.f35904m = i11;
        this.f35905n = com.mbridge.msdk.foundation.same.a.K;
        this.f35902k = true;
        c();
    }

    public void setInterstitialVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f35898g = newInterstitialListener;
        this.f35900i = true;
        a aVar = this.f35897f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35897f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener));
        this.f35900i = false;
    }

    @Deprecated
    public void setRewardVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f35898g = newInterstitialListener;
        this.f35900i = true;
        a aVar = this.f35897f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35897f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener));
        this.f35900i = false;
    }

    public void showFromBid() {
        a();
        if (this.f35897f != null) {
            this.f35897f.a((String) null, (String) null, (String) null, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.mUnitId, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f35903l = i10;
        this.f35904m = (int) (d10 * 100.0d);
        this.f35905n = com.mbridge.msdk.foundation.same.a.J;
        this.f35902k = true;
        c();
    }

    private void a() {
        if (this.f35897f == null) {
            b(this.f35892a, this.mUnitId);
        }
        b();
    }

    private void b() {
        a aVar;
        if (this.f35900i) {
            a aVar2 = this.f35897f;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.newinterstitial.listener.a(this.f35898g));
            }
            this.f35900i = false;
        }
        if (this.f35901j) {
            a aVar3 = this.f35897f;
            if (aVar3 != null) {
                aVar3.a(this.f35894c, this.f35893b, this.f35895d, this.f35896e);
            }
            this.f35901j = false;
        }
        if (!this.f35902k || (aVar = this.f35897f) == null) {
            return;
        }
        aVar.a(this.f35903l, this.f35905n, this.f35904m);
        this.f35902k = false;
    }

    public MBBidInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }
}
