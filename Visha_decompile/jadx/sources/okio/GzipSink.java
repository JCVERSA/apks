package okio;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0007J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0007J\u000f\u0010\u0018\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0002\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u001aR\u0017\u0010\u0018\u001a\u00020\u00158G¢\u0006\f\n\u0004\b\u0018\u0010\u001b\u001a\u0004\b\u0018\u0010\u0017R\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lokio/GzipSink;", "Lokio/Sink;", "sink", MethodDecl.initName, "(Lokio/Sink;)V", "Lzfb;", "writeFooter", "()V", "Lokio/Buffer;", "buffer", "", "byteCount", "updateCrc", "(Lokio/Buffer;J)V", "source", "write", "flush", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "Ljava/util/zip/Deflater;", "-deprecated_deflater", "()Ljava/util/zip/Deflater;", "deflater", "Lokio/RealBufferedSink;", "Lokio/RealBufferedSink;", "Ljava/util/zip/Deflater;", "Lokio/DeflaterSink;", "deflaterSink", "Lokio/DeflaterSink;", "", "closed", "Z", "Ljava/util/zip/CRC32;", "crc", "Ljava/util/zip/CRC32;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GzipSink implements Sink {
    private boolean closed;
    private final CRC32 crc;
    private final Deflater deflater;
    private final DeflaterSink deflaterSink;
    private final buffer sink;

    public GzipSink(Sink sink) {
        y45.j(sink, "sink");
        buffer bufferVar = new buffer(sink);
        this.sink = bufferVar;
        Deflater deflater = new Deflater(-1, true);
        this.deflater = deflater;
        this.deflaterSink = new DeflaterSink((BufferedSink) bufferVar, deflater);
        this.crc = new CRC32();
        Buffer buffer = bufferVar.bufferField;
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    private final void updateCrc(Buffer buffer, long byteCount) {
        Segment segment = buffer.head;
        y45.g(segment);
        while (byteCount > 0) {
            int iMin = (int) Math.min(byteCount, segment.limit - segment.pos);
            this.crc.update(segment.data, segment.pos, iMin);
            byteCount -= (long) iMin;
            segment = segment.next;
            y45.g(segment);
        }
    }

    private final void writeFooter() {
        this.sink.writeIntLe((int) this.crc.getValue());
        this.sink.writeIntLe((int) this.deflater.getBytesRead());
    }

    public final Deflater getDeflater() {
        return this.deflater;
    }

    @Override
    public void close() throws Throwable {
        if (this.closed) {
            return;
        }
        this.deflaterSink.finishDeflate$okio();
        writeFooter();
        th = null;
        try {
            this.deflater.end();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        try {
            this.sink.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.closed = true;
        if (th != null) {
            throw th;
        }
    }

    public final Deflater deflater() {
        return this.deflater;
    }

    @Override
    public void flush() throws IOException {
        this.deflaterSink.flush();
    }

    @Override
    public Timeout timeout() {
        return this.sink.timeout();
    }

    @Override
    public void write(Buffer source, long byteCount) throws IOException {
        y45.j(source, "source");
        if (byteCount < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + byteCount).toString());
        }
        if (byteCount == 0) {
            return;
        }
        updateCrc(source, byteCount);
        this.deflaterSink.write(source, byteCount);
    }
}
