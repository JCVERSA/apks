package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;

public interface e {

    public static final e f26795a = new i0();

    void a();

    o createHandler(Looper looper, Handler.Callback callback);

    long elapsedRealtime();

    long uptimeMillis();
}
