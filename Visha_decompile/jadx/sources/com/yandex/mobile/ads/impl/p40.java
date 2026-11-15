package com.yandex.mobile.ads.impl;

import android.media.MediaDrmException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequiresApi(18)
public final class p40 implements l60 {
    @Override
    public final void a(@Nullable l60.b bVar) {
    }

    @Override
    public final int b() {
        return 1;
    }

    @Override
    public final byte[] c() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override
    public final fv d(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public final void release() {
    }

    @Override
    public final l60.a a(byte[] bArr, @Nullable List<f40.b> list, int i, @Nullable HashMap<String, String> map) {
        throw new IllegalStateException();
    }

    @Override
    public final void b(byte[] bArr) {
    }

    @Override
    public final void c(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public final l60.d a() {
        throw new IllegalStateException();
    }

    @Override
    @Nullable
    public final byte[] b(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override
    public final Map<String, String> a(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public final boolean a(String str, byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override
    public final void a(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }
}
