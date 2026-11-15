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
import com.mbridge.msdk.setting.h;

@Deprecated
public class MBInterstitialVideoHandler {

    private String f35167a;

    private a f35168b;

    private String f35169c;

    private String f35170d;

    private String f35171e;

    private String f35172f;

    private String f35173g;

    private InterstitialVideoListener f35174h;

    private int f35175i = 2;

    private boolean f35176j = false;

    private boolean f35177k = false;

    private boolean f35178l = false;

    private int f35179m;

    private int f35180n;

    private int f35181o;

    public MBInterstitialVideoHandler(Context context, String str, String str2) {
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
        this.f35169c = str2;
        this.f35167a = str;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f35168b == null) {
                a aVar = new a();
                this.f35168b = aVar;
                aVar.d(true);
                this.f35168b.c(str, str2);
                h.b().g(str2);
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f35168b;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f35168b;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f35168b;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isReady() {
        a();
        a aVar = this.f35168b;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void load() {
        a();
        if (this.f35168b != null) {
            this.f35168b.a(true, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35169c, true, 2));
        }
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f35168b != null) {
            this.f35168b.a(false, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35169c, true, 1));
        }
    }

    public void playVideoMute(int i10) {
        this.f35175i = i10;
        a aVar = this.f35168b;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f35170d = str;
        this.f35171e = str2;
        this.f35172f = str3;
        this.f35173g = str4;
        this.f35177k = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f35169c, str, str2, str3, str4);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f35179m = i10;
        this.f35180n = i11;
        this.f35181o = com.mbridge.msdk.foundation.same.a.K;
        this.f35178l = true;
        b();
    }

    public void setInterstitialVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f35174h = interstitialVideoListener;
        this.f35176j = true;
        a aVar = this.f35168b;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35168b.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener));
        this.f35176j = false;
    }

    @Deprecated
    public void setRewardVideoListener(InterstitialVideoListener interstitialVideoListener) {
        this.f35174h = interstitialVideoListener;
        this.f35176j = true;
        a aVar = this.f35168b;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35168b.a(new com.mbridge.msdk.interstitialvideo.listener.a(interstitialVideoListener));
        this.f35176j = false;
    }

    public void show() {
        a();
        if (this.f35168b != null) {
            this.f35168b.a((String) null, (String) null, (String) null, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35169c, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f35179m = i10;
        this.f35180n = (int) (d10 * 100.0d);
        this.f35181o = com.mbridge.msdk.foundation.same.a.J;
        this.f35178l = true;
        b();
    }

    private void a() {
        a aVar;
        if (this.f35168b == null) {
            b(this.f35167a, this.f35169c);
        }
        if (this.f35176j) {
            this.f35168b.a(new com.mbridge.msdk.interstitialvideo.listener.a(this.f35174h, this.f35169c, false));
            this.f35176j = false;
        }
        if (this.f35177k) {
            this.f35168b.a(this.f35170d, this.f35171e, this.f35172f, this.f35173g);
            this.f35177k = false;
        }
        if (!this.f35178l || (aVar = this.f35168b) == null) {
            return;
        }
        aVar.a(this.f35179m, this.f35181o, this.f35180n);
        this.f35178l = false;
    }

    private void b() {
        a aVar = this.f35168b;
        if (aVar != null) {
            aVar.a(this.f35179m, this.f35181o, this.f35180n);
        }
    }

    public MBInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }
}
