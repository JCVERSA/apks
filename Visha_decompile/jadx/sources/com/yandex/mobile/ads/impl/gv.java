package com.yandex.mobile.ads.impl;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

public final class gv {

    @Nullable
    public byte[] a;

    @Nullable
    public byte[] b;
    public int c;

    @Nullable
    public int[] d;

    @Nullable
    public int[] e;
    public int f;
    public int g;
    public int h;
    private final MediaCodec.CryptoInfo i;

    @Nullable
    private final a j;

    @RequiresApi(24)
    public static final class a {
        private final MediaCodec.CryptoInfo a;
        private final MediaCodec.CryptoInfo.Pattern b;

        private a(MediaCodec.CryptoInfo cryptoInfo) {
            this.a = cryptoInfo;
            this.b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }

        public void a(int i, int i2) {
            this.b.set(i, i2);
            this.a.setPattern(this.b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public gv() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.i = cryptoInfo;
        this.j = f92.a >= 24 ? new a(cryptoInfo) : null;
    }

    public final MediaCodec.CryptoInfo a() {
        return this.i;
    }

    public final void a(int i) {
        if (i == 0) {
            return;
        }
        if (this.d == null) {
            int[] iArr = new int[1];
            this.d = iArr;
            this.i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.d;
        iArr2[0] = iArr2[0] + i;
    }

    public final void a(int i, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i2, int i3, int i4) {
        this.f = i;
        this.d = iArr;
        this.e = iArr2;
        this.b = bArr;
        this.a = bArr2;
        this.c = i2;
        this.g = i3;
        this.h = i4;
        MediaCodec.CryptoInfo cryptoInfo = this.i;
        cryptoInfo.numSubSamples = i;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i2;
        if (f92.a >= 24) {
            a aVar = this.j;
            aVar.getClass();
            aVar.a(i3, i4);
        }
    }
}
