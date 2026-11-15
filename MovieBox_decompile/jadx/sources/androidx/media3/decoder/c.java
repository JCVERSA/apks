package androidx.media3.decoder;

import android.media.MediaCodec;
import androidx.media3.common.util.a1;

public final class c {

    public byte[] f10635a;

    public byte[] f10636b;

    public int f10637c;

    public int[] f10638d;

    public int[] f10639e;

    public int f10640f;

    public int f10641g;

    public int f10642h;

    private final MediaCodec.CryptoInfo f10643i;

    private final b f10644j;

    private static final class b {

        private final MediaCodec.CryptoInfo f10645a;

        private final MediaCodec.CryptoInfo.Pattern f10646b;

        public void b(int i10, int i11) {
            this.f10646b.set(i10, i11);
            this.f10645a.setPattern(this.f10646b);
        }

        private b(MediaCodec.CryptoInfo cryptoInfo) {
            this.f10645a = cryptoInfo;
            this.f10646b = d.a(0, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f10643i = cryptoInfo;
        this.f10644j = a1.f10038a >= 24 ? new b(cryptoInfo) : null;
    }

    public MediaCodec.CryptoInfo a() {
        return this.f10643i;
    }

    public void b(int i10) {
        if (i10 == 0) {
            return;
        }
        if (this.f10638d == null) {
            int[] iArr = new int[1];
            this.f10638d = iArr;
            this.f10643i.numBytesOfClearData = iArr;
        }
        int[] iArr2 = this.f10638d;
        iArr2[0] = iArr2[0] + i10;
    }

    public void c(int i10, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i11, int i12, int i13) {
        this.f10640f = i10;
        this.f10638d = iArr;
        this.f10639e = iArr2;
        this.f10636b = bArr;
        this.f10635a = bArr2;
        this.f10637c = i11;
        this.f10641g = i12;
        this.f10642h = i13;
        MediaCodec.CryptoInfo cryptoInfo = this.f10643i;
        cryptoInfo.numSubSamples = i10;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i11;
        if (a1.f10038a >= 24) {
            ((b) androidx.media3.common.util.a.e(this.f10644j)).b(i12, i13);
        }
    }
}
