package androidx.media3.datasource.cronet;

import java.nio.ByteBuffer;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UploadDataSink;

final class a extends UploadDataProvider {

    private final byte[] f10600a;

    private int f10601b;

    public a(byte[] bArr) {
        this.f10600a = bArr;
    }

    @Override
    public long getLength() {
        return this.f10600a.length;
    }

    @Override
    public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
        int iMin = Math.min(byteBuffer.remaining(), this.f10600a.length - this.f10601b);
        byteBuffer.put(this.f10600a, this.f10601b, iMin);
        this.f10601b += iMin;
        uploadDataSink.onReadSucceeded(false);
    }

    @Override
    public void rewind(UploadDataSink uploadDataSink) {
        this.f10601b = 0;
        uploadDataSink.onRewindSucceeded();
    }
}
