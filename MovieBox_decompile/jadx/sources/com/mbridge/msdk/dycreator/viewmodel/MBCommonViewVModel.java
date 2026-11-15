package com.mbridge.msdk.dycreator.viewmodel;

import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.viewobserver.c;
import com.mbridge.msdk.dycreator.viewobserver.d;
import com.mbridge.msdk.dycreator.viewobserver.f;
import com.mbridge.msdk.dycreator.viewobserver.h;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener;

public class MBCommonViewVModel implements BaseViewModel {

    private d f34069a;

    private c f34070b;

    private f f34071c;

    private h f34072d;

    private DynamicViewBackListener f34073e;

    public MBCommonViewVModel() {
        EventBus.getDefault().register(this);
    }

    private void a(SplashResData splashResData) {
        DynamicViewBackListener dynamicViewBackListener = this.f34073e;
        if (dynamicViewBackListener != null) {
            dynamicViewBackListener.viewClicked(splashResData);
        }
    }

    public void onEventMainThread(SplashResData splashResData) {
        a(splashResData);
    }

    @Override
    public void setClickSubject(c cVar) {
        if (cVar != null) {
            this.f34070b = cVar;
        }
    }

    @Override
    public void setConcreteSubject(d dVar) {
        if (dVar != null) {
            this.f34069a = dVar;
        }
    }

    @Override
    public void setDynamicViewBackListener(DynamicViewBackListener dynamicViewBackListener) {
        if (dynamicViewBackListener != null) {
            this.f34073e = dynamicViewBackListener;
        }
    }

    @Override
    public void setEffectSubject(f fVar) {
        if (fVar != null) {
            this.f34071c = fVar;
        }
    }

    @Override
    public void setModelDataAndBind() {
    }

    @Override
    public void setReportSubject(h hVar) {
        if (hVar != null) {
            this.f34072d = hVar;
        }
    }
}
