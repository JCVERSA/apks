package io.appmetrica.analytics.impl;

import android.os.ResultReceiver;

public final class G4 {
    public final Bl a;
    public final F4 b;
    public final ResultReceiver c;

    public G4(C2431b4 c2431b4) {
        this(new Bl(c2431b4), new F4(c2431b4.b(), c2431b4.a().a()), c2431b4.a().c());
    }

    public G4(Bl bl, F4 f4, ResultReceiver resultReceiver) {
        this.a = bl;
        this.b = f4;
        this.c = resultReceiver;
    }
}
