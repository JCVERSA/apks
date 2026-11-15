package com.mbridge.msdk.video.bt.module.orglistener;

import com.mbridge.msdk.foundation.tools.o0;

public class c extends b {

    private com.mbridge.msdk.video.bt.module.listener.b f38119c;

    private String f38120d;

    public c(com.mbridge.msdk.video.bt.module.listener.b bVar, String str) {
        this.f38119c = bVar;
        this.f38120d = str;
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f38119c != null) {
            o0.a("H5ShowRewardListener", "onAdShow");
            this.f38119c.a(this.f38120d);
        }
    }

    @Override
    public void b(String str, String str2) {
        if (this.f38119c != null) {
            o0.a("H5ShowRewardListener", "onVideoComplete");
            this.f38119c.a(this.f38120d, str, str2);
        }
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
        if (this.f38119c != null) {
            o0.a("H5ShowRewardListener", "onAdClose");
            this.f38119c.a(this.f38120d, z10, cVar2);
        }
    }

    @Override
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
        if (this.f38119c != null) {
            o0.a("H5ShowRewardListener", "onShowFail");
            this.f38119c.a(this.f38120d, str);
        }
    }

    @Override
    public void a(boolean z10, String str, String str2) {
        if (this.f38119c != null) {
            o0.a("H5ShowRewardListener", "onVideoAdClicked");
            this.f38119c.b(this.f38120d, str, str2);
        }
    }

    @Override
    public void a(String str, String str2) {
        if (this.f38119c != null) {
            o0.a("H5ShowRewardListener", "onEndcardShow");
            this.f38119c.c(this.f38120d, str, str2);
        }
    }

    @Override
    public void a(int i10, String str, String str2) {
        if (this.f38119c != null) {
            o0.a("H5ShowRewardListener", "onAutoLoad");
            this.f38119c.a(this.f38120d, i10, str, str2);
        }
    }
}
