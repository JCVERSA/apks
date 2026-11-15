package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.widget.video.AdVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.VideoMeasureManager;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

public final class o4 {

    private AdsDTO f22106a;

    private WeakReference f22107b;

    private WeakReference f22108c;

    public o4(AdsDTO key, AdVideoView view, s4 measureListener) {
        Intrinsics.h(key, "key");
        Intrinsics.h(view, "view");
        Intrinsics.h(measureListener, "measureListener");
        this.f22106a = key;
        this.f22107b = new WeakReference(view);
        this.f22108c = new WeakReference(measureListener);
    }

    public static final void c(s4 s4Var, AdVideoView adVideoView) {
        s4Var.a(VideoMeasureManager.INSTANCE.d(adVideoView));
    }

    public final AdsDTO b() {
        return this.f22106a;
    }

    public final void d() {
        final AdVideoView adVideoView = (AdVideoView) this.f22107b.get();
        final s4 s4Var = (s4) this.f22108c.get();
        if (adVideoView == null || s4Var == null) {
            return;
        }
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                o4.c(s4Var, adVideoView);
            }
        });
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.c(o4.class, obj != null ? obj.getClass() : null)) {
            return (obj instanceof o4) && Intrinsics.c(this.f22106a, ((o4) obj).f22106a);
        }
        return false;
    }

    public int hashCode() {
        return this.f22106a.hashCode();
    }
}
