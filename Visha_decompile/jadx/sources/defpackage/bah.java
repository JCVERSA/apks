package defpackage;

import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.internal.client.zzet;

public final class bah implements AdapterStatus {
    public bah(zzet zzetVar) {
    }

    @Override
    public final String getDescription() {
        return "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.";
    }

    @Override
    public final AdapterStatus.State getInitializationState() {
        return AdapterStatus.State.READY;
    }

    @Override
    public final int getLatency() {
        return 0;
    }
}
