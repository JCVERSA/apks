package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.view.View;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.binding.response.base.BaseRespData;
import com.mbridge.msdk.dycreator.listener.DyCountDownListener;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.wrapper.DyAdType;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewCreator;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.splash.view.MBSplashView;
import java.util.List;

class c extends com.mbridge.msdk.splash.manager.a {

    class a implements DyCountDownListener {

        final DyOption f36620a;

        a(DyOption dyOption) {
            this.f36620a = dyOption;
        }

        @Override
        public void getCountDownValue(int i10) {
            this.f36620a.setDyCountDownListener(i10);
        }
    }

    class b implements DynamicViewBackListener {

        final com.mbridge.msdk.splash.inter.a f36622a;

        final MBSplashView f36623b;

        final com.mbridge.msdk.splash.common.c f36624c;

        final DyOption f36625d;

        b(com.mbridge.msdk.splash.inter.a aVar, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, DyOption dyOption) {
            this.f36622a = aVar;
            this.f36623b = mBSplashView;
            this.f36624c = cVar;
            this.f36625d = dyOption;
        }

        @Override
        public void viewClicked(BaseRespData baseRespData) {
            com.mbridge.msdk.splash.signal.b splashSignalCommunicationImpl;
            MBSplashView mBSplashView = this.f36623b;
            com.mbridge.msdk.splash.middle.a aVarA = (mBSplashView == null || (splashSignalCommunicationImpl = mBSplashView.getSplashSignalCommunicationImpl()) == null) ? null : splashSignalCommunicationImpl.a();
            DyOption dyOption = this.f36625d;
            CampaignEx campaignEx = dyOption != null ? dyOption.getCampaignEx() : null;
            EAction eAction = baseRespData instanceof SplashResData ? ((SplashResData) baseRespData).geteAction() : null;
            if (eAction != null) {
                int i10 = C0517c.f36627a[eAction.ordinal()];
                if (i10 == 1) {
                    if (aVarA != null) {
                        if (baseRespData == null) {
                            aVarA.a(campaignEx);
                            return;
                        } else {
                            if (baseRespData instanceof SplashResData) {
                                SplashResData splashResData = (SplashResData) baseRespData;
                                if (splashResData.getBaseViewData() != null) {
                                    c.this.a(splashResData.getBaseViewData(), aVarA, campaignEx);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (i10 == 2) {
                    if (aVarA != null) {
                        aVarA.close();
                    }
                } else if (i10 == 3) {
                    if (this.f36625d != null) {
                        com.mbridge.msdk.click.c.e(com.mbridge.msdk.foundation.controller.c.m().d(), this.f36625d.getAdChoiceLink());
                    }
                } else if (i10 == 4 && baseRespData != null && (baseRespData instanceof SplashResData)) {
                    SplashResData splashResData2 = (SplashResData) baseRespData;
                    if (splashResData2.getBaseViewData() != null) {
                        c.this.a(aVarA, campaignEx, splashResData2.getBaseViewData());
                    }
                }
            }
        }

        @Override
        public void viewCreateFail(com.mbridge.msdk.dycreator.error.a aVar) {
            MBSplashView mBSplashView = this.f36623b;
            if (mBSplashView != null) {
                Context context = mBSplashView.getContext();
                if (context == null) {
                    context = com.mbridge.msdk.foundation.controller.c.m().d();
                }
                c.this.a(context, this.f36623b, this.f36624c, this.f36622a);
            }
        }

        @Override
        public void viewCreatedSuccess(View view) {
            com.mbridge.msdk.splash.inter.a aVar = this.f36622a;
            if (aVar != null) {
                if (view != null) {
                    aVar.a(view);
                } else {
                    aVar.onError("View render error.");
                }
            }
        }
    }

    static class C0517c {

        static final int[] f36627a;

        static {
            int[] iArr = new int[EAction.values().length];
            f36627a = iArr;
            try {
                iArr[EAction.DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36627a[EAction.CLOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36627a[EAction.NOTICE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36627a[EAction.FEEDBACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static class d {

        private static final c f36628a = new c(null);
    }

    c(a aVar) {
        this();
    }

    public static c a() {
        return d.f36628a;
    }

    private c() {
    }

    @Override
    protected void a(List<String> list, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        DyOption dyOptionBuild = new DyOption.Builder().campaignEx(cVar.b()).fileDirs(list).dyAdType(DyAdType.SPLASH).canSkip(cVar.m()).isScreenClick(cVar.f() == 1).isClickButtonVisible(cVar.c() == 0).isShakeVisible(cVar.i() == 1).isApkInfoVisible(cVar.a() == 0).isLogoVisible(cVar.e() == 1).shakeStrenght(cVar.j()).shakeTime(cVar.k()).orientation(cVar.g()).countDownTime(cVar.d()).adChoiceLink(t0.a(cVar.b())).build();
        mBSplashView.setDyCountDownListener(new a(dyOptionBuild));
        DynamicViewCreator.getInstance().createDynamicView(dyOptionBuild, new b(aVar, mBSplashView, cVar, dyOptionBuild));
    }
}
