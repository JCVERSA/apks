package com.mbridge.msdk.interstitialvideo.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.newreward.function.common.MBridgeGlobalCommon;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.reward.controller.a;

@Deprecated
public class MBBidInterstitialVideoHandler {

    private a f35151a;

    private String f35152b;

    private String f35153c;

    private String f35154d;

    private String f35155e;

    private String f35156f;

    private String f35157g;

    private InterstitialVideoListener f35158h;

    private int f35159i = 2;

    private boolean f35160j = false;

    private boolean f35161k = false;

    private boolean f35162l = false;

    private boolean f35163m = false;

    private int f35164n;

    private int f35165o;

    private int f35166p;

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
        this.f35152b = str2;
        this.f35153c = str;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f35151a == null) {
                a aVar = new a();
                this.f35151a = aVar;
                aVar.d(true);
                this.f35151a.e(true);
                this.f35151a.c(str, str2);
            }
        } catch (Throwable th2) {
            o0.b("MBBidRewardVideoHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f35151a;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f35151a;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f35151a;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isBidReady() {
        a();
        a aVar = this.f35151a;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f35151a != null) {
            this.f35151a.a(false, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35152b, true, 1));
        }
    }

    public void loadFromBid(String str) {
        a();
        if (this.f35151a != null) {
            this.f35151a.a(true, str, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35152b, true, 2));
        }
    }

    public void playVideoMute(int i10) {
        this.f35159i = i10;
        a aVar = this.f35151a;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f35154d = str;
        this.f35155e = str2;
        this.f35156f = str3;
        this.f35157g = str4;
        this.f35161k = true;
        this.f35162l = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f35152b, str, str2, str3, str4);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f35164n = i10;
        this.f35165o = i11;
        this.f35166p = com.mbridge.msdk.foundation.same.a.K;
        this.f35163m = true;
        b();
    }

    public void setInterstitialVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f35158h = interstitialVideoListener;
        this.f35160j = true;
        a aVar = this.f35151a;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35151a.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener, this.f35152b, true));
        this.f35160j = false;
    }

    @Deprecated
    public void setRewardVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f35158h = interstitialVideoListener;
        this.f35160j = true;
        a aVar = this.f35151a;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35151a.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener, this.f35152b, true));
        this.f35160j = false;
    }

    public void showFromBid() {
        a();
        if (this.f35151a != null) {
            this.f35151a.a((String) null, (String) null, (String) null, d.b().a(1, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35152b, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f35164n = i10;
        this.f35165o = (int) (d10 * 100.0d);
        this.f35166p = com.mbridge.msdk.foundation.same.a.J;
        this.f35163m = true;
        b();
    }

    private void a() {
        a aVar;
        if (this.f35151a == null) {
            b(this.f35153c, this.f35152b);
        }
        if (this.f35160j) {
            a aVar2 = this.f35151a;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.interstitialvideo.listener.a(this.f35158h, this.f35152b, true));
            }
            this.f35160j = false;
        }
        if (this.f35161k) {
            a aVar3 = this.f35151a;
            if (aVar3 != null) {
                aVar3.a(this.f35154d, this.f35155e, this.f35156f, this.f35157g);
            }
            this.f35161k = false;
        }
        if (!this.f35163m || (aVar = this.f35151a) == null) {
            return;
        }
        aVar.a(this.f35164n, this.f35166p, this.f35165o);
        this.f35163m = false;
    }

    private void b() {
        a aVar = this.f35151a;
        if (aVar != null) {
            aVar.a(this.f35164n, this.f35166p, this.f35165o);
        }
    }

    public MBBidInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }
}
