package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.video.bt.module.MBTempContainer;

public class e extends MBTempContainer.k.a {

    private h f38130b;

    private com.mbridge.msdk.foundation.same.report.metrics.c f38131c;

    public e(com.mbridge.msdk.foundation.same.report.metrics.c cVar, h hVar) {
        this.f38130b = hVar;
        this.f38131c = cVar;
    }

    @Override
    public void onError(String str) {
        super.onError(str);
        h hVar = this.f38130b;
        if (hVar != null) {
            hVar.a(this.f38131c, str);
        }
    }
}
