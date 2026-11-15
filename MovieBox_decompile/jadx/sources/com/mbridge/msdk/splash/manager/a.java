package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.splash.view.MBSplashNativeView;
import com.mbridge.msdk.splash.view.MBSplashView;
import java.util.ArrayList;
import java.util.List;

public class a {

    class C0515a implements com.mbridge.msdk.foundation.feedback.a {

        final com.mbridge.msdk.splash.middle.a f36580a;

        final int f36581b;

        C0515a(com.mbridge.msdk.splash.middle.a aVar, int i10) {
            this.f36580a = aVar;
            this.f36581b = i10;
        }

        @Override
        public void a() {
        }

        @Override
        public void close() {
            this.f36580a.a(2, this.f36581b);
        }

        @Override
        public void a(String str) {
            this.f36580a.a(2, this.f36581b);
        }
    }

    protected void a(List<String> list, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        throw null;
    }

    public void a(MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        Context context = mBSplashView.getContext();
        if (context == null) {
            context = com.mbridge.msdk.foundation.controller.c.m().d();
        }
        if (cVar == null && aVar != null) {
            aVar.onError("The render parameters is unavailable.");
            return;
        }
        String strA = (cVar == null || cVar.b() == null) ? "" : x.a(cVar.b().getAdZip());
        if (TextUtils.isEmpty(strA)) {
            a(context, mBSplashView, cVar, aVar);
            return;
        }
        if (cVar == null || cVar.b() == null) {
            return;
        }
        if (TextUtils.isEmpty(cVar.b().getAdZip())) {
            a(context, mBSplashView, cVar, aVar);
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(strA);
            a(arrayList, mBSplashView, cVar, aVar);
        } catch (Exception unused) {
            a(context, mBSplashView, cVar, aVar);
        }
    }

    protected void a(com.mbridge.msdk.splash.middle.a aVar, CampaignEx campaignEx, com.mbridge.msdk.dycreator.viewdata.base.a aVar2) {
        if (campaignEx != null) {
            String campaignUnitId = campaignEx.getCampaignUnitId();
            String requestId = campaignEx.getRequestId();
            int currentCountDown = aVar2 != null ? aVar2.getEffectData().getCurrentCountDown() : 0;
            aVar.a(1, currentCountDown);
            com.mbridge.msdk.foundation.feedback.bean.a aVarB = com.mbridge.msdk.foundation.feedback.b.b().b(campaignUnitId + "_" + requestId);
            if (aVarB != null) {
                aVarB.a(campaignEx);
                com.mbridge.msdk.foundation.feedback.b.b().a(campaignUnitId + "_" + requestId, new C0515a(aVar, currentCountDown));
                aVarB.p();
            }
        }
    }

    protected void a(com.mbridge.msdk.dycreator.viewdata.base.a aVar, com.mbridge.msdk.splash.middle.a aVar2, CampaignEx campaignEx) {
        float f10;
        int clickType;
        float f11;
        if (aVar == null || !(aVar instanceof MBSplashData)) {
            f10 = 0.0f;
            clickType = 0;
            f11 = 0.0f;
        } else {
            MBSplashData mBSplashData = (MBSplashData) aVar;
            f10 = mBSplashData.getxInScreen();
            f11 = mBSplashData.getyInScreen();
            clickType = mBSplashData.getClickType();
        }
        if (aVar2 != null) {
            try {
                aVar2.a(com.mbridge.msdk.splash.common.util.a.a(com.mbridge.msdk.splash.common.util.a.a(clickType, f10, f11), campaignEx));
            } catch (Throwable th2) {
                th2.printStackTrace();
                aVar2.a(campaignEx);
            }
        }
    }

    protected void a(Context context, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        try {
            MBSplashNativeView mBSplashNativeView = new MBSplashNativeView(context, mBSplashView, cVar);
            if (aVar != null) {
                aVar.a(mBSplashNativeView);
            }
        } catch (Throwable unused) {
            if (aVar != null) {
                aVar.onError("View render error.");
            }
        }
    }
}
