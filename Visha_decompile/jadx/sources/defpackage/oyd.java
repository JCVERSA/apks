package defpackage;

import com.cloud.hisavana.sdk.common.widget.video.AdVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.manager.VideoMeasureManager;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;

public final class oyd {
    public AdsDTO a;
    public WeakReference b;
    public WeakReference c;

    public oyd(AdsDTO adsDTO, AdVideoView adVideoView, y30 y30Var) {
        y45.j(adsDTO, "key");
        y45.j(adVideoView, "view");
        y45.j(y30Var, "measureListener");
        this.a = adsDTO;
        this.b = new WeakReference(adVideoView);
        this.c = new WeakReference(y30Var);
    }

    public static final void c(y30 y30Var, AdVideoView adVideoView) {
        y30Var.a(VideoMeasureManager.INSTANCE.d(adVideoView));
    }

    public final AdsDTO b() {
        return this.a;
    }

    public final void d() {
        final AdVideoView adVideoView = (AdVideoView) this.b.get();
        final y30 y30Var = (y30) this.c.get();
        if (adVideoView == null || y30Var == null) {
            return;
        }
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                oyd.c(y30Var, adVideoView);
            }
        });
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (y45.e(oyd.class, obj != null ? obj.getClass() : null)) {
            return (obj instanceof oyd) && y45.e(this.a, ((oyd) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
