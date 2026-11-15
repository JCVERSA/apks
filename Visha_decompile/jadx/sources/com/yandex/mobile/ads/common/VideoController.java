package com.yandex.mobile.ads.common;

import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.qe2;
import com.yandex.mobile.ads.impl.sn2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/mobile/ads/common/VideoController;", "", "Lcom/yandex/mobile/ads/impl/qe2;", "videoEventController", MethodDecl.initName, "(Lcom/yandex/mobile/ads/impl/qe2;)V", "Lcom/yandex/mobile/ads/common/VideoEventListener;", "videoEventListener", "Lzfb;", "setVideoEventListener", "(Lcom/yandex/mobile/ads/common/VideoEventListener;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
@MainThread
public final class VideoController {
    private final qe2 a;

    public VideoController(qe2 qe2Var) {
        y45.j(qe2Var, "videoEventController");
        this.a = qe2Var;
    }

    public final void setVideoEventListener(VideoEventListener videoEventListener) {
        if (videoEventListener == null) {
            this.a.a((sn2) null);
        } else {
            this.a.a(new sn2(videoEventListener));
        }
    }
}
