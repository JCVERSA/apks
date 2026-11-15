package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.foundation.tools.o0;

public class b implements h {

    private Boolean f38117a = null;

    private Boolean f38118b = null;

    public void a() {
        this.f38118b = Boolean.TRUE;
    }

    public void b() {
        this.f38117a = Boolean.TRUE;
    }

    public Boolean c() {
        return this.f38118b;
    }

    public Boolean d() {
        return this.f38117a;
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        o0.a("ShowRewardListener", "onAdShow");
        this.f38117a = Boolean.TRUE;
    }

    @Override
    public void b(String str, String str2) {
        o0.a("ShowRewardListener", "onVideoComplete: " + str2);
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
        o0.a("ShowRewardListener", "onAdClose:isCompleteView:" + z10 + ",reward:" + cVar2);
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
        o0.a("ShowRewardListener", "onShowFail:" + str);
        this.f38118b = Boolean.TRUE;
    }

    @Override
    public void a(boolean z10, String str, String str2) {
        o0.a("ShowRewardListener", "onVideoAdClicked:" + str2);
    }

    @Override
    public void a(boolean z10, int i10) {
        o0.a("ShowRewardListener", "onAdCloseWithIVReward: " + z10 + "  " + i10);
    }

    @Override
    public void a(String str, String str2) {
        o0.a("ShowRewardListener", "onEndcardShow: " + str2);
    }

    @Override
    public void a(int i10, String str, String str2) {
        o0.a("ShowRewardListener", "onAutoLoad: " + str2);
    }
}
