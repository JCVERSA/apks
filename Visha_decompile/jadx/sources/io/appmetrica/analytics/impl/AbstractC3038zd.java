package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;

public abstract class AbstractC3038zd implements Bn, InterfaceC2703m2 {
    public final String a;
    public final int b;
    public final Pn c;
    public final U2 d;
    public PublicLogger e = PublicLogger.getAnonymousInstance();

    public AbstractC3038zd(int i, String str, Pn pn, U2 u2) {
        this.b = i;
        this.a = str;
        this.c = pn;
        this.d = u2;
    }

    @NonNull
    public final Cn a() {
        Cn cn2 = new Cn();
        cn2.b = this.b;
        cn2.a = this.a.getBytes();
        cn2.d = new En();
        cn2.c = new Dn();
        return cn2;
    }

    @Override
    public abstract void a(@NonNull An an);

    @NonNull
    public final U2 b() {
        return this.d;
    }

    @NonNull
    public final String c() {
        return this.a;
    }

    @NonNull
    @VisibleForTesting
    public final Pn d() {
        return this.c;
    }

    public final int e() {
        return this.b;
    }

    public final boolean f() {
        Nn nnA = this.c.a(this.a);
        if (nnA.a) {
            return true;
        }
        this.e.warning("Attribute " + this.a + " of type " + ((String) AbstractC2699ln.a.get(this.b)) + " is skipped because " + nnA.b, new Object[0]);
        return false;
    }

    public final void a(@NonNull PublicLogger publicLogger) {
        this.e = publicLogger;
    }
}
