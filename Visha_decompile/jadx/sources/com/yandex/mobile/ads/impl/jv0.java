package com.yandex.mobile.ads.impl;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

public class jv0 extends qy {

    @Nullable
    public final String b;

    public jv0(IllegalStateException illegalStateException, @Nullable kv0 kv0Var) {
        StringBuilder sb = new StringBuilder("Decoder failed: ");
        sb.append(kv0Var == null ? null : kv0Var.a);
        super(sb.toString(), illegalStateException);
        this.b = f92.a >= 21 ? a(illegalStateException) : null;
    }

    @Nullable
    @RequiresApi(21)
    private static String a(IllegalStateException illegalStateException) {
        if (illegalStateException instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) illegalStateException).getDiagnosticInfo();
        }
        return null;
    }
}
