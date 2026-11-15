package com.mbridge.msdk.dycreator.binding.response;

import com.mbridge.msdk.dycreator.binding.response.base.BaseRespData;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.viewdata.base.a;

public class SplashResData extends BaseRespData {

    private a f33929a;

    private EAction f33930b;

    public a getBaseViewData() {
        return this.f33929a;
    }

    public EAction geteAction() {
        return this.f33930b;
    }

    public void setBaseViewData(a aVar) {
        this.f33929a = aVar;
    }

    public void seteAction(EAction eAction) {
        this.f33930b = eAction;
    }
}
