package com.mbridge.msdk.advanced.middle;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.NativeAdvancedAdListener;
import java.util.ArrayList;

public class b {

    private NativeAdvancedAdListener f33336a;

    private c f33337b;

    private MBridgeIds f33338c;

    private String f33339d;

    private String f33340e;

    public b(c cVar, MBridgeIds mBridgeIds) {
        this.f33337b = cVar;
        this.f33338c = mBridgeIds;
        this.f33339d = mBridgeIds.getUnitId();
    }

    public void a(NativeAdvancedAdListener nativeAdvancedAdListener) {
        this.f33336a = nativeAdvancedAdListener;
    }

    public void a(String str) {
        this.f33340e = str;
    }

    public void a(CampaignEx campaignEx, int i10) {
        c cVar;
        o0.b("NativeAdvancedLoadManager", "onLoadSuccessed: " + i10);
        c cVar2 = this.f33337b;
        if (cVar2 == null || !cVar2.g() || campaignEx == null) {
            return;
        }
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f33336a;
        if (nativeAdvancedAdListener != null && this.f33337b != null) {
            nativeAdvancedAdListener.onLoadSuccessed(this.f33338c);
        }
        this.f33337b.a(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), arrayList, this.f33339d, campaignEx.isBidCampaign());
        if (i10 != 2 || (cVar = this.f33337b) == null) {
            return;
        }
        cVar.a(campaignEx, true);
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar, int i10) {
        c cVar = this.f33337b;
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
        NativeAdvancedAdListener nativeAdvancedAdListener = this.f33336a;
        if (nativeAdvancedAdListener != null) {
            nativeAdvancedAdListener.onLoadFailed(this.f33338c, str);
        }
        this.f33337b.a(false);
        j.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, this.f33339d, !TextUtils.isEmpty(this.f33340e), bVar != null ? bVar.a() : null);
    }
}
