package okio;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;
import java.io.EOFException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000f\u0010\u0003¨\u0006\u0010"}, d2 = {"Lokio/BlackholeSink;", "Lokio/Sink;", MethodDecl.initName, "()V", "Lokio/Buffer;", "source", "", "byteCount", "Lzfb;", "write", "(Lokio/Buffer;J)V", "flush", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class BlackholeSink implements Sink {
    @Override
    public void close() {
    }

    @Override
    public void flush() {
    }

    @Override
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override
    public void write(Buffer source, long byteCount) throws EOFException {
        y45.j(source, "source");
        source.skip(byteCount);
    }
}
