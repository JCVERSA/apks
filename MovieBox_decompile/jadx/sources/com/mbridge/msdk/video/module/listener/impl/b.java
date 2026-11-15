package com.mbridge.msdk.video.module.listener.impl;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;

public class b extends d {

    private MBridgeVideoView f38617n;

    private MBridgeContainerView f38618o;

    public b(MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i10, boolean z10) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i10, z10);
        this.f38617n = mBridgeVideoView;
        this.f38618o = mBridgeContainerView;
        if (mBridgeVideoView == null || mBridgeContainerView == null) {
            this.f38628a = false;
        }
    }

    @Override
    public void a(int i10, Object obj) {
        if (this.f38628a) {
            if (i10 == 8) {
                MBridgeContainerView mBridgeContainerView = this.f38618o;
                if (mBridgeContainerView == null) {
                    MBridgeVideoView mBridgeVideoView = this.f38617n;
                    if (mBridgeVideoView != null) {
                        mBridgeVideoView.showAlertView();
                    }
                } else if (mBridgeContainerView.showAlertWebView()) {
                    MBridgeVideoView mBridgeVideoView2 = this.f38617n;
                    if (mBridgeVideoView2 != null) {
                        mBridgeVideoView2.alertWebViewShowed();
                    }
                } else {
                    MBridgeVideoView mBridgeVideoView3 = this.f38617n;
                    if (mBridgeVideoView3 != null) {
                        mBridgeVideoView3.showAlertView();
                    }
                }
            } else if (i10 == 107) {
                this.f38618o.showVideoClickView(-1);
                this.f38617n.setCover(false);
                this.f38617n.setMiniEndCardState(false);
                this.f38617n.videoOperate(1);
            } else if (i10 == 112) {
                this.f38617n.setCover(true);
                this.f38617n.setMiniEndCardState(true);
                this.f38617n.videoOperate(2);
            } else if (i10 == 115) {
                this.f38618o.resizeMiniCard(this.f38617n.getBorderViewWidth(), this.f38617n.getBorderViewHeight(), this.f38617n.getBorderViewRadius());
            }
        }
        super.a(i10, obj);
    }
}
