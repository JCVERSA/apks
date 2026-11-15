package defpackage;

import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;

public final class kqj implements Spatializer$OnSpatializerStateChangedListener {
    public final rqj a;

    public kqj(lqj lqjVar, rqj rqjVar) {
        this.a = rqjVar;
    }

    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        this.a.u();
    }

    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        this.a.u();
    }
}
