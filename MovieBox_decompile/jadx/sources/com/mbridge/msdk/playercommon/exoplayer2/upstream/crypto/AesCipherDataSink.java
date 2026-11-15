package com.mbridge.msdk.playercommon.exoplayer2.upstream.crypto;

import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSink;
import com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSpec;
import java.io.IOException;

public final class AesCipherDataSink implements DataSink {
    private AesFlushingCipher cipher;
    private final byte[] scratch;
    private final byte[] secretKey;
    private final DataSink wrappedDataSink;

    public AesCipherDataSink(byte[] bArr, DataSink dataSink) {
        this(bArr, dataSink, null);
    }

    @Override
    public void close() throws IOException {
        this.cipher = null;
        this.wrappedDataSink.close();
    }

    @Override
    public void open(DataSpec dataSpec) throws IOException {
        this.wrappedDataSink.open(dataSpec);
        this.cipher = new AesFlushingCipher(1, this.secretKey, CryptoUtil.getFNV64Hash(dataSpec.key), dataSpec.absoluteStreamPosition);
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (this.scratch == null) {
            this.cipher.updateInPlace(bArr, i10, i11);
            this.wrappedDataSink.write(bArr, i10, i11);
            return;
        }
        int i12 = 0;
        while (i12 < i11) {
            int iMin = Math.min(i11 - i12, this.scratch.length);
            this.cipher.update(bArr, i10 + i12, iMin, this.scratch, 0);
            this.wrappedDataSink.write(this.scratch, 0, iMin);
            i12 += iMin;
        }
    }

    public AesCipherDataSink(byte[] bArr, DataSink dataSink, byte[] bArr2) {
        this.wrappedDataSink = dataSink;
        this.secretKey = bArr;
        this.scratch = bArr2;
    }
}
