package okio;

import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;
import java.io.IOException;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0011\u0010\rJ\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0002\u001a\u00020\u00018\u0007¢\u0006\f\n\u0004\b\u0002\u0010\u0017\u001a\u0004\b\u0002\u0010\u0016¨\u0006\u0018"}, d2 = {"Lokio/ForwardingSink;", "Lokio/Sink;", "delegate", MethodDecl.initName, "(Lokio/Sink;)V", "Lokio/Buffer;", "source", "", "byteCount", "Lzfb;", "write", "(Lokio/Buffer;J)V", "flush", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "", "toString", "()Ljava/lang/String;", "-deprecated_delegate", "()Lokio/Sink;", "Lokio/Sink;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ForwardingSink implements Sink {
    private final Sink delegate;

    public ForwardingSink(Sink sink) {
        y45.j(sink, "delegate");
        this.delegate = sink;
    }

    public final Sink getDelegate() {
        return this.delegate;
    }

    @Override
    public void close() throws IOException {
        this.delegate.close();
    }

    public final Sink delegate() {
        return this.delegate;
    }

    @Override
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override
    public void write(Buffer source, long byteCount) throws IOException {
        y45.j(source, "source");
        this.delegate.write(source, byteCount);
    }
}
