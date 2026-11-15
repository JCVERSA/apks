package com.mbridge.msdk.splash.middle;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.out.MBSplashLoadListener;
import com.mbridge.msdk.out.MBridgeIds;
import java.util.ArrayList;

public class b {

    private MBSplashLoadListener f36700a;

    private c f36701b;

    private String f36702c;

    private String f36703d;

    private MBridgeIds f36704e;

    public b(c cVar, MBridgeIds mBridgeIds) {
        this.f36701b = cVar;
        this.f36704e = mBridgeIds;
        if (mBridgeIds != null) {
            this.f36702c = mBridgeIds.getUnitId();
        }
    }

    public void a(MBSplashLoadListener mBSplashLoadListener) {
        this.f36700a = mBSplashLoadListener;
    }

    public void a(String str) {
        this.f36703d = str;
    }

    public void a(CampaignEx campaignEx, int i10) {
        c cVar;
        c cVar2 = this.f36701b;
        if (cVar2 == null || !cVar2.g() || campaignEx == null) {
            return;
        }
        MBSplashLoadListener mBSplashLoadListener = this.f36700a;
        if (mBSplashLoadListener != null) {
            mBSplashLoadListener.onLoadSuccessed(this.f36704e, i10);
            this.f36700a.isSupportZoomOut(this.f36704e, campaignEx.getFlb() == 1);
        }
        this.f36701b.b(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), arrayList, this.f36702c, campaignEx.isBidCampaign());
        if (i10 != 2 || (cVar = this.f36701b) == null) {
            return;
        }
        cVar.b(campaignEx, 0, true);
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar, int i10) {
        c cVar = this.f36701b;
        if (cVar == null || !cVar.g()) {
            return;
        }
        String str = "";
        if (bVar != null) {
            String strG = bVar.g();
            if (!TextUtils.isEmpty(strG)) {
                str = strG;
            }
        }
        MBSplashLoadListener mBSplashLoadListener = this.f36700a;
        if (mBSplashLoadListener != null) {
            mBSplashLoadListener.onLoadFailed(this.f36704e, str, i10);
        }
        this.f36701b.b(false);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, this.f36702c, !TextUtils.isEmpty(this.f36703d), bVar != null ? bVar.a() : null);
    }
}
