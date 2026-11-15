package com.mbridge.msdk.dycreator.viewmodel;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.dycreator.binding.b;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.viewobserver.c;
import com.mbridge.msdk.dycreator.viewobserver.d;
import com.mbridge.msdk.dycreator.viewobserver.f;
import com.mbridge.msdk.dycreator.viewobserver.h;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;

public class MBSplashViewVModel implements BaseViewModel {

    private d f34080a;

    private c f34081b;

    private f f34082c;

    private h f34083d;

    private DynamicViewBackListener f34084e;

    private DyOption f34085f;

    static class AnonymousClass1 {

        static final int[] f34086a;

        static {
            int[] iArr = new int[EAction.values().length];
            f34086a = iArr;
            try {
                iArr[EAction.DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34086a[EAction.CLOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public MBSplashViewVModel(DyOption dyOption) {
        this.f34085f = dyOption;
        String campaignUnitId = (dyOption == null || dyOption.getCampaignEx() == null) ? "" : dyOption.getCampaignEx().getCampaignUnitId();
        if (TextUtils.isEmpty(campaignUnitId)) {
            EventBus.getDefault().register(this);
        } else {
            EventBus.getDefault().register(campaignUnitId, this);
        }
    }

    private void a(Object obj) {
        c cVar = this.f34081b;
        if (cVar != null) {
            cVar.a(obj);
        }
    }

    private void b(Object obj) {
        d dVar = this.f34080a;
        if (dVar != null) {
            dVar.a(obj);
        }
    }

    private void c(Object obj) {
        f fVar = this.f34082c;
        if (fVar != null) {
            fVar.a(obj);
        }
    }

    public void onEventMainThread(SplashResData splashResData) {
        a(splashResData);
    }

    @Override
    public void setClickSubject(c cVar) {
        if (cVar != null) {
            this.f34081b = cVar;
        }
    }

    @Override
    public void setConcreteSubject(d dVar) {
        if (dVar != null) {
            this.f34080a = dVar;
        }
    }

    @Override
    public void setDynamicViewBackListener(DynamicViewBackListener dynamicViewBackListener) {
        if (dynamicViewBackListener != null) {
            this.f34084e = dynamicViewBackListener;
        }
    }

    @Override
    public void setEffectSubject(f fVar) {
        if (fVar != null) {
            this.f34082c = fVar;
        }
    }

    @Override
    public void setModelDataAndBind() {
        MBSplashData mBSplashData = new MBSplashData(this.f34085f);
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (contextD != null) {
            DyOption dyOption = this.f34085f;
            if (dyOption != null) {
                CampaignEx campaignEx = dyOption.getCampaignEx();
                if (campaignEx != null) {
                    mBSplashData.setAdClickText(campaignEx.getAdCall());
                }
                mBSplashData.setCountDownText(contextD.getResources().getString(g0.a(contextD, this.f34085f.isCanSkip() ? "mbridge_splash_count_time_can_skip" : "mbridge_splash_count_time_can_skip_not", "string")));
            }
            mBSplashData.setNoticeImage(g0.a(contextD, "mbridge_splash_notice", "drawable"));
            String strP = k0.p(contextD);
            mBSplashData.setLogoText((TextUtils.isEmpty(strP) || !strP.contains("zh")) ? "AD" : "广告");
        }
        b(mBSplashData);
        a(mBSplashData);
        c(mBSplashData);
    }

    @Override
    public void setReportSubject(h hVar) {
        if (hVar != null) {
            this.f34083d = hVar;
        }
    }

    private void a(SplashResData splashResData) {
        if (this.f34084e == null || splashResData == null) {
            return;
        }
        int i10 = AnonymousClass1.f34086a[splashResData.geteAction().ordinal()];
        if (i10 == 1 || i10 == 2) {
            b(splashResData);
        }
        this.f34084e.viewClicked(splashResData);
    }

    private void b(SplashResData splashResData) {
        try {
            String campaignUnitId = "";
            if (splashResData.getBaseViewData() != null && splashResData.getBaseViewData().getBindData() != null) {
                campaignUnitId = splashResData.getBaseViewData().getBindData().getCampaignUnitId();
            }
            if (!TextUtils.isEmpty(campaignUnitId)) {
                EventBus.getDefault().unregister(campaignUnitId);
                b.a().b();
            } else {
                EventBus.getDefault().unregister(this);
                b.a().b();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            EventBus.getDefault().unregister(this);
            EventBus.getDefault().release();
            b.a().b();
        }
    }
}
