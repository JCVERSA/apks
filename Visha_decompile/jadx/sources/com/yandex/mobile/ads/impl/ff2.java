package com.yandex.mobile.ads.impl;

import android.view.View;
import com.transsion.dbdata.beans.media.PlayVideoData;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import java.util.LinkedHashMap;
import java.util.Map;

public final class ff2 {
    private final zb2<?> a;
    private final sg2 b;

    public ff2(zb2<?> zb2Var, sg2 sg2Var) {
        y45.j(zb2Var, "videoAdInfo");
        y45.j(sg2Var, "videoViewProvider");
        this.a = zb2Var;
        this.b = sg2Var;
    }

    public final Map<String, Object> a() {
        pp1 pp1Var = new pp1(new LinkedHashMap(), 2);
        View view = this.b.getView();
        Integer numValueOf = view != null ? Integer.valueOf(view.getHeight()) : null;
        Integer numValueOf2 = view != null ? Integer.valueOf(view.getWidth()) : null;
        ew0 ew0VarC = this.a.c();
        if (numValueOf == null || numValueOf.intValue() <= 0) {
            numValueOf = null;
        }
        pp1Var.b(numValueOf, "view_container_height");
        if (numValueOf2 == null || numValueOf2.intValue() <= 0) {
            numValueOf2 = null;
        }
        pp1Var.b(numValueOf2, "view_container_width");
        pp1Var.b(ew0VarC.d() > 0 ? Integer.valueOf(ew0VarC.d()) : null, PlayVideoData.TAG_VIDEO_HEIGHT);
        pp1Var.b(ew0VarC.h() > 0 ? Integer.valueOf(ew0VarC.h()) : null, PlayVideoData.TAG_VIDEO_WIDTH);
        pp1Var.b(ew0VarC.c(), "video_codec");
        pp1Var.b(ew0VarC.e(), "video_mime_type");
        pp1Var.b(ew0VarC.g(), "video_vmaf");
        return ky5.h(abb.a("video_playback_info", pp1Var.b()));
    }
}
