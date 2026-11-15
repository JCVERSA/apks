package defpackage;

import com.google.android.gms.ads.initialization.AdapterStatus;

public final class f5f implements AdapterStatus {
    public final AdapterStatus.State a;
    public final String b;
    public final int c;

    public f5f(AdapterStatus.State state, String str, int i) {
        this.a = state;
        this.b = str;
        this.c = i;
    }

    @Override
    public final String getDescription() {
        return this.b;
    }

    @Override
    public final AdapterStatus.State getInitializationState() {
        return this.a;
    }

    @Override
    public final int getLatency() {
        return this.c;
    }
}
