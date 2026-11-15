package com.mbridge.msdk.dycreator.viewmodel;

import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.viewdata.a;
import com.mbridge.msdk.dycreator.viewobserver.c;
import com.mbridge.msdk.dycreator.viewobserver.d;
import com.mbridge.msdk.dycreator.viewobserver.f;
import com.mbridge.msdk.dycreator.viewobserver.h;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener;

public class MBRewardViewVModel implements BaseViewModel {

    private d f34074a;

    private c f34075b;

    private f f34076c;

    private h f34077d;

    private DynamicViewBackListener f34078e;

    private DyOption f34079f;

    public MBRewardViewVModel(DyOption dyOption) {
        this.f34079f = dyOption;
        EventBus.getDefault().register(this);
    }

    private void a(Object obj) {
        c cVar = this.f34075b;
        if (cVar != null) {
            cVar.a(obj);
        }
    }

    private void b(Object obj) {
        d dVar = this.f34074a;
        if (dVar != null) {
            dVar.a(obj);
        }
    }

    private void c(Object obj) {
        f fVar = this.f34076c;
        if (fVar != null) {
            fVar.a(obj);
        }
    }

    private void d(Object obj) {
        h hVar = this.f34077d;
        if (hVar != null) {
            hVar.a(obj);
        }
    }

    public void onEventMainThread(SplashResData splashResData) {
        a(splashResData);
    }

    @Override
    public void setClickSubject(c cVar) {
        if (cVar != null) {
            this.f34075b = cVar;
        }
    }

    @Override
    public void setConcreteSubject(d dVar) {
        if (dVar != null) {
            this.f34074a = dVar;
        }
    }

    @Override
    public void setDynamicViewBackListener(DynamicViewBackListener dynamicViewBackListener) {
        if (dynamicViewBackListener != null) {
            this.f34078e = dynamicViewBackListener;
        }
    }

    @Override
    public void setEffectSubject(f fVar) {
        if (fVar != null) {
            this.f34076c = fVar;
        }
    }

    @Override
    public void setModelDataAndBind() {
        a aVar = new a(this.f34079f);
        b(aVar);
        a(aVar);
        c(aVar);
        d(aVar);
    }

    @Override
    public void setReportSubject(h hVar) {
        if (hVar != null) {
            this.f34077d = hVar;
        }
    }

    private void a(SplashResData splashResData) {
        DynamicViewBackListener dynamicViewBackListener = this.f34078e;
        if (dynamicViewBackListener != null) {
            dynamicViewBackListener.viewClicked(splashResData);
        }
    }
}
