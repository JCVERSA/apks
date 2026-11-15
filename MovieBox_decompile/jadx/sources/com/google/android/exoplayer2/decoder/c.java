package com.google.android.exoplayer2.decoder;

import android.media.MediaCodec;
import com.google.android.exoplayer2.util.p0;

public final class c {

    public byte[] f24222a;

    public byte[] f24223b;

    public int f24224c;

    public int[] f24225d;

    public int[] f24226e;

    public int f24227f;

    public int f24228g;

    public int f24229h;

    private final MediaCodec.CryptoInfo f24230i;

    private final b f24231j;

    private static final class b {

        private final MediaCodec.CryptoInfo f24232a;

        private final MediaCodec.CryptoInfo.Pattern f24233b;

        public void b(int i10, int i11) {
            this.f24233b.set(i10, i11);
            this.f24232a.setPattern(this.f24233b);
        }

        private b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f24232a = cryptoInfo;
            this.f24233b = androidx.media3.decoder.d.a(0, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f24230i = cryptoInfo;
        this.f24231j = p0.f26854a >= 24 ? new b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.f24230i;
    }

    public void b(int i10) {
        if (i10 == 0) {
            return;
        }
        if (this.f24225d == null) {
            int[] iArr = new int[1];
            this.f24225d = iArr;
            this.f24230i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f24225d;
        iArr2[0] = iArr2[0] + i10;
    }

    public void c(int i10, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i11, int i12, int i13) {
        this.f24227f = i10;
        this.f24225d = iArr;
        this.f24226e = iArr2;
        this.f24223b = bArr;
        this.f24222a = bArr2;
        this.f24224c = i11;
        this.f24228g = i12;
        this.f24229h = i13;
        MediaCodec.CryptoInfo cryptoInfo = this.f24230i;
        cryptoInfo.numSubSamples = i10;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i11;
        if (p0.f26854a >= 24) {
            ((b) com.google.android.exoplayer2.util.a.e(this.f24231j)).b(i12, i13);
        }
    }
}
