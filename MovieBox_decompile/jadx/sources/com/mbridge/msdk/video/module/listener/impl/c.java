package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.signal.factory.IJSFactory;

public class c extends d {

    private IJSFactory f38619n;

    public c(IJSFactory iJSFactory, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i10, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i10, z10);
        this.f38619n = iJSFactory;
        if (iJSFactory == null) {
            this.f38628a = false;
        }
    }

    @Override
    public void a(int i10, Object obj) {
        if (this.f38628a) {
            if (i10 != 8) {
                if (i10 == 105) {
                    this.f38619n.getJSNotifyProxy().a(3, obj.toString());
                    i10 = -1;
                } else if (i10 == 107) {
                    this.f38619n.getJSContainerModule().showVideoClickView(-1);
                    this.f38619n.getJSVideoModule().setCover(false);
                    this.f38619n.getJSVideoModule().setMiniEndCardState(false);
                    this.f38619n.getJSVideoModule().videoOperate(1);
                } else if (i10 == 112) {
                    this.f38619n.getJSVideoModule().setCover(true);
                    this.f38619n.getJSVideoModule().setMiniEndCardState(true);
                    this.f38619n.getJSVideoModule().videoOperate(2);
                } else if (i10 == 115) {
                    com.mbridge.msdk.video.signal.j jSVideoModule = this.f38619n.getJSVideoModule();
                    this.f38619n.getJSContainerModule().resizeMiniCard(jSVideoModule.getBorderViewWidth(), jSVideoModule.getBorderViewHeight(), jSVideoModule.getBorderViewRadius());
                }
            } else if (this.f38619n.getJSContainerModule().showAlertWebView()) {
                this.f38619n.getJSVideoModule().alertWebViewShowed();
            } else {
                this.f38619n.getJSVideoModule().showAlertView();
            }
        }
        super.a(i10, obj);
    }
}
