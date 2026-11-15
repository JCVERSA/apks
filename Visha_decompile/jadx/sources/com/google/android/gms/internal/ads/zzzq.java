package com.google.android.gms.internal.ads;

import java.io.IOException;

public final class zzzq extends IOException {
    public zzzq(Throwable th) {
        super("Unexpected " + th.getClass().getSimpleName() + (th.getMessage() != null ? ": ".concat(String.valueOf(th.getMessage())) : ""), th);
    }
}
