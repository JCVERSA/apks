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
import com.mbridge.msdk.setting.h;
import org.json.JSONObject;

public class MBNewInterstitialHandler implements BaseExtraInterfaceForHandler {

    private String f35921a;

    private String f35922b;

    private String f35923c;

    private String f35924d;

    private String f35925e;

    private a f35926f;

    private String f35927g;

    private NewInterstitialListener f35928h;

    private int f35929i = 2;

    private boolean f35930j = false;

    private boolean f35931k = false;

    private boolean f35932l = false;

    private int f35933m;

    private int f35934n;

    private int f35935o;

    public MBNewInterstitialHandler(Context context, String str, String str2) {
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
        this.f35921a = str;
        this.f35927g = str2;
        a();
    }

    private void b(String str, String str2) {
        try {
            if (this.f35926f == null) {
                a aVar = new a();
                this.f35926f = aVar;
                aVar.d(true);
                this.f35926f.c(str, str2);
                h.b().g(str2);
            }
        } catch (Throwable th2) {
            o0.b("MBRewardVideoHandler", th2.getMessage(), th2);
        }
    }

    public void clearVideoCache() {
        try {
            a aVar = this.f35926f;
            if (aVar != null) {
                aVar.e();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.f35926f;
        return aVar != null ? aVar.j() : "";
    }

    public String getRequestId() {
        a aVar = this.f35926f;
        return aVar != null ? aVar.m() : "";
    }

    public boolean isReady() {
        a();
        a aVar = this.f35926f;
        if (aVar != null) {
            return aVar.c(true);
        }
        return false;
    }

    public void load() {
        a();
        if (this.f35926f != null) {
            this.f35926f.a(true, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35927g, true, 2));
        }
    }

    public void loadFormSelfFilling() {
        a();
        if (this.f35926f != null) {
            this.f35926f.a(false, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35927g, true, 1));
        }
    }

    public void playVideoMute(int i10) {
        this.f35929i = i10;
        a aVar = this.f35926f;
        if (aVar != null) {
            aVar.a(i10);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        this.f35922b = str;
        this.f35923c = str2;
        this.f35924d = str3;
        this.f35925e = str4;
        this.f35931k = true;
        MBridgeGlobalCommon.setAlertDialogText(this.f35927g, str, str2, str3, str4);
    }

    @Override
    public void setExtraInfo(JSONObject jSONObject) {
        c.m().a(this.f35927g, jSONObject);
    }

    public void setIVRewardEnable(int i10, int i11) {
        this.f35933m = i10;
        this.f35934n = i11;
        this.f35935o = com.mbridge.msdk.foundation.same.a.K;
        this.f35932l = true;
        b();
    }

    public void setInterstitialVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f35928h = newInterstitialListener;
        this.f35930j = true;
        a aVar = this.f35926f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35926f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f35927g, false));
        this.f35930j = false;
    }

    @Deprecated
    public void setRewardVideoListener(NewInterstitialListener newInterstitialListener) {
        this.f35928h = newInterstitialListener;
        this.f35930j = true;
        a aVar = this.f35926f;
        if (aVar == null || aVar.u()) {
            return;
        }
        this.f35926f.a(new com.mbridge.msdk.newinterstitial.listener.a(newInterstitialListener, this.f35927g, false));
        this.f35930j = false;
    }

    public void show() {
        a();
        if (this.f35926f != null) {
            this.f35926f.a((String) null, (String) null, (String) null, d.b().a(0, MBSupportMuteAdType.INTERSTITIAL_VIDEO, this.f35927g, false, -1));
        }
    }

    public void setIVRewardEnable(int i10, double d10) {
        this.f35933m = i10;
        this.f35934n = (int) (d10 * 100.0d);
        this.f35935o = com.mbridge.msdk.foundation.same.a.J;
        this.f35932l = true;
        b();
    }

    private void a() {
        a aVar;
        if (this.f35926f == null) {
            b(this.f35921a, this.f35927g);
        }
        if (this.f35930j) {
            a aVar2 = this.f35926f;
            if (aVar2 != null) {
                aVar2.a(new com.mbridge.msdk.newinterstitial.listener.a(this.f35928h, this.f35927g, false));
            }
            this.f35930j = false;
        }
        if (this.f35931k) {
            a aVar3 = this.f35926f;
            if (aVar3 != null) {
                aVar3.a(this.f35922b, this.f35923c, this.f35924d, this.f35925e);
            }
            this.f35931k = false;
        }
        if (!this.f35932l || (aVar = this.f35926f) == null) {
            return;
        }
        aVar.a(this.f35933m, this.f35935o, this.f35934n);
        this.f35932l = false;
    }

    private void b() {
        a aVar = this.f35926f;
        if (aVar != null) {
            aVar.a(this.f35933m, this.f35935o, this.f35934n);
        }
    }

    public MBNewInterstitialHandler(String str, String str2) {
        a(str, str2);
    }
}
