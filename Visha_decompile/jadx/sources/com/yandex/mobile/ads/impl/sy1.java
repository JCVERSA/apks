package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

public abstract class sy1 implements l01 {
    @Override
    @Nullable
    public final k01 a(n01 n01Var) {
        ByteBuffer byteBuffer = n01Var.d;
        byteBuffer.getClass();
        if (byteBuffer.position() != 0 || !byteBuffer.hasArray() || byteBuffer.arrayOffset() != 0) {
            throw new IllegalArgumentException();
        }
        if (n01Var.e()) {
            return null;
        }
        return a(n01Var, byteBuffer);
    }

    @Nullable
    public abstract k01 a(n01 n01Var, ByteBuffer byteBuffer);
}
