package com.facebook.ads.redexgen.core;

import android.database.Cursor;

public final class C2177md implements BC {
    public final Cursor A00;

    public final boolean A01() {
        return BB.A00(this);
    }

    public C2177md(Cursor cursor) {
        this.A00 = cursor;
    }

    public final B8 A00() {
        return C9H.A01(this.A00);
    }

    @Override
    public final void close() {
        this.A00.close();
    }

    @Override
    public final int getPosition() {
        return this.A00.getPosition();
    }

    @Override
    public final boolean moveToPosition(int i) {
        return this.A00.moveToPosition(i);
    }
}
