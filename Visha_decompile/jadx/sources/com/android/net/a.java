package com.android.net;

import android.content.Intent;

public final class a extends u {
    private Intent c;

    public a() {
    }

    @Override
    public final String getMessage() {
        return this.c != null ? "User needs to (re)enter credentials." : super.getMessage();
    }

    public a(k kVar) {
        super(kVar);
    }
}
