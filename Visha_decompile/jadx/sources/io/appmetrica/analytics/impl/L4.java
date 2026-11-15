package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;

public final class L4 implements InterfaceC2954w4 {
    public final Context a;
    public final O4 b;
    public final ResultReceiver c;

    public L4(@NonNull Context context, @NonNull O4 o4, @NonNull G4 g4) {
        this.a = context;
        this.b = o4;
        this.c = g4.c;
        o4.a(this);
    }

    @Override
    public final void a(@NonNull C2408a6 c2408a6, @NonNull G4 g4) {
        this.b.a(g4.b);
        this.b.a(c2408a6, this);
    }

    @NonNull
    public final O4 b() {
        return this.b;
    }

    @NonNull
    public final Context c() {
        return this.a;
    }

    @NonNull
    @VisibleForTesting
    public final ResultReceiver d() {
        return this.c;
    }

    public final void a(@NonNull C2655k4 c2655k4) {
        I6.a(this.c, c2655k4);
    }

    @Override
    public final void a() {
        this.b.b(this);
    }
}
