package okio;

import defpackage.e74;
import defpackage.j05;
import defpackage.y45;
import defpackage.zfb;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J(\u0010\n\u001a\u00020\b*\u00020\u00062\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u0007H\u0082\b¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\f\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0015\u001a\u00020\b¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001b\u001a\u00020\u001a8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\"\u0010 \u001a\u00020\u001f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010&\u001a\u00020\u001f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b&\u0010!\u001a\u0004\b'\u0010#\"\u0004\b(\u0010%R\"\u0010)\u001a\u00020\u001f8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b)\u0010!\u001a\u0004\b*\u0010#\"\u0004\b+\u0010%R$\u0010,\u001a\u0004\u0018\u00010\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010\u0010\"\u0004\b/\u0010\u000eR\u0017\u00101\u001a\u0002008\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0017\u00106\u001a\u0002058\u0006¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u0017\u0010\f\u001a\u00020\u00068G¢\u0006\f\n\u0004\b\f\u0010-\u001a\u0004\b\f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\u00118G¢\u0006\f\n\u0004\b\u0014\u0010:\u001a\u0004\b\u0014\u0010\u0013¨\u0006;"}, d2 = {"Lokio/Pipe;", "", "", "maxBufferSize", MethodDecl.initName, "(J)V", "Lokio/Sink;", "Lkotlin/Function1;", "Lzfb;", "block", "forward", "(Lokio/Sink;Le74;)V", "sink", "fold", "(Lokio/Sink;)V", "-deprecated_sink", "()Lokio/Sink;", "Lokio/Source;", "-deprecated_source", "()Lokio/Source;", "source", "cancel", "()V", "J", "getMaxBufferSize$okio", "()J", "Lokio/Buffer;", "buffer", "Lokio/Buffer;", "getBuffer$okio", "()Lokio/Buffer;", "", "canceled", "Z", "getCanceled$okio", "()Z", "setCanceled$okio", "(Z)V", "sinkClosed", "getSinkClosed$okio", "setSinkClosed$okio", "sourceClosed", "getSourceClosed$okio", "setSourceClosed$okio", "foldedSink", "Lokio/Sink;", "getFoldedSink$okio", "setFoldedSink$okio", "Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "getLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "Ljava/util/concurrent/locks/Condition;", "condition", "Ljava/util/concurrent/locks/Condition;", "getCondition", "()Ljava/util/concurrent/locks/Condition;", "Lokio/Source;", "okio"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Pipe {
    private final Buffer buffer = new Buffer();
    private boolean canceled;
    private final Condition condition;
    private Sink foldedSink;
    private final ReentrantLock lock;
    private final long maxBufferSize;
    private final Sink sink;
    private boolean sinkClosed;
    private final Source source;
    private boolean sourceClosed;

    public Pipe(long j) {
        this.maxBufferSize = j;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.lock = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        y45.i(conditionNewCondition, "newCondition(...)");
        this.condition = conditionNewCondition;
        if (j >= 1) {
            this.sink = new Sink() {
                private final Timeout timeout = new Timeout();

                @Override
                public void close() {
                    boolean hasDeadline;
                    ReentrantLock lock = Pipe.this.getLock();
                    Pipe pipe = Pipe.this;
                    lock.lock();
                    try {
                        if (pipe.getSinkClosed()) {
                            lock.unlock();
                            return;
                        }
                        Sink foldedSink = pipe.getFoldedSink();
                        if (foldedSink == null) {
                            if (pipe.getSourceClosed() && pipe.getBuffer().size() > 0) {
                                throw new IOException("source is closed");
                            }
                            pipe.setSinkClosed$okio(true);
                            pipe.getCondition().signalAll();
                            foldedSink = null;
                        }
                        zfb zfbVar = zfb.a;
                        lock.unlock();
                        if (foldedSink != null) {
                            Pipe pipe2 = Pipe.this;
                            Timeout timeout = foldedSink.getTimeout();
                            Timeout timeout2 = pipe2.sink().getTimeout();
                            long timeoutNanos = timeout.getTimeoutNanos();
                            timeout.timeout(Timeout.INSTANCE.minTimeout(timeout2.getTimeoutNanos(), timeout.getTimeoutNanos()), TimeUnit.NANOSECONDS);
                            if (!timeout.getHasDeadline()) {
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                                }
                                try {
                                    foldedSink.close();
                                    if (hasDeadline) {
                                        return;
                                    } else {
                                        return;
                                    }
                                } finally {
                                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                    if (timeout2.getHasDeadline()) {
                                        timeout.clearDeadline();
                                    }
                                }
                            }
                            long jDeadlineNanoTime = timeout.deadlineNanoTime();
                            if (timeout2.getHasDeadline()) {
                                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                            }
                            try {
                                foldedSink.close();
                            } finally {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(jDeadlineNanoTime);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        lock.unlock();
                        throw th;
                    }
                }

                @Override
                public void flush() {
                    boolean hasDeadline;
                    ReentrantLock lock = Pipe.this.getLock();
                    Pipe pipe = Pipe.this;
                    lock.lock();
                    try {
                        if (pipe.getSinkClosed()) {
                            throw new IllegalStateException("closed");
                        }
                        if (pipe.getCanceled()) {
                            throw new IOException("canceled");
                        }
                        Sink foldedSink = pipe.getFoldedSink();
                        if (foldedSink == null) {
                            if (pipe.getSourceClosed() && pipe.getBuffer().size() > 0) {
                                throw new IOException("source is closed");
                            }
                            foldedSink = null;
                        }
                        zfb zfbVar = zfb.a;
                        lock.unlock();
                        if (foldedSink != null) {
                            Pipe pipe2 = Pipe.this;
                            Timeout timeout = foldedSink.getTimeout();
                            Timeout timeout2 = pipe2.sink().getTimeout();
                            long timeoutNanos = timeout.getTimeoutNanos();
                            timeout.timeout(Timeout.INSTANCE.minTimeout(timeout2.getTimeoutNanos(), timeout.getTimeoutNanos()), TimeUnit.NANOSECONDS);
                            if (!timeout.getHasDeadline()) {
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                                }
                                try {
                                    foldedSink.flush();
                                    if (hasDeadline) {
                                        return;
                                    } else {
                                        return;
                                    }
                                } finally {
                                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                    if (timeout2.getHasDeadline()) {
                                        timeout.clearDeadline();
                                    }
                                }
                            }
                            long jDeadlineNanoTime = timeout.deadlineNanoTime();
                            if (timeout2.getHasDeadline()) {
                                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                            }
                            try {
                                foldedSink.flush();
                            } finally {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(jDeadlineNanoTime);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        lock.unlock();
                        throw th;
                    }
                }

                @Override
                public Timeout getTimeout() {
                    return this.timeout;
                }

                @Override
                public void write(Buffer source, long byteCount) {
                    Sink foldedSink;
                    boolean hasDeadline;
                    y45.j(source, "source");
                    ReentrantLock lock = Pipe.this.getLock();
                    Pipe pipe = Pipe.this;
                    lock.lock();
                    try {
                        if (pipe.getSinkClosed()) {
                            throw new IllegalStateException("closed");
                        }
                        if (pipe.getCanceled()) {
                            throw new IOException("canceled");
                        }
                        while (true) {
                            if (byteCount <= 0) {
                                foldedSink = null;
                                break;
                            }
                            foldedSink = pipe.getFoldedSink();
                            if (foldedSink != null) {
                                break;
                            }
                            if (pipe.getSourceClosed()) {
                                throw new IOException("source is closed");
                            }
                            long maxBufferSize = pipe.getMaxBufferSize() - pipe.getBuffer().size();
                            if (maxBufferSize == 0) {
                                this.timeout.awaitSignal(pipe.getCondition());
                                if (pipe.getCanceled()) {
                                    throw new IOException("canceled");
                                }
                            } else {
                                long jMin = Math.min(maxBufferSize, byteCount);
                                pipe.getBuffer().write(source, jMin);
                                byteCount -= jMin;
                                pipe.getCondition().signalAll();
                            }
                        }
                        zfb zfbVar = zfb.a;
                        lock.unlock();
                        if (foldedSink != null) {
                            Pipe pipe2 = Pipe.this;
                            Timeout timeout = foldedSink.getTimeout();
                            Timeout timeout2 = pipe2.sink().getTimeout();
                            long timeoutNanos = timeout.getTimeoutNanos();
                            timeout.timeout(Timeout.INSTANCE.minTimeout(timeout2.getTimeoutNanos(), timeout.getTimeoutNanos()), TimeUnit.NANOSECONDS);
                            if (!timeout.getHasDeadline()) {
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                                }
                                try {
                                    foldedSink.write(source, byteCount);
                                    if (hasDeadline) {
                                        return;
                                    } else {
                                        return;
                                    }
                                } finally {
                                    timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                    if (timeout2.getHasDeadline()) {
                                        timeout.clearDeadline();
                                    }
                                }
                            }
                            long jDeadlineNanoTime = timeout.deadlineNanoTime();
                            if (timeout2.getHasDeadline()) {
                                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
                            }
                            try {
                                foldedSink.write(source, byteCount);
                            } finally {
                                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                                if (timeout2.getHasDeadline()) {
                                    timeout.deadlineNanoTime(jDeadlineNanoTime);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        lock.unlock();
                        throw th;
                    }
                }
            };
            this.source = new Source() {
                private final Timeout timeout = new Timeout();

                @Override
                public void close() {
                    ReentrantLock lock = Pipe.this.getLock();
                    Pipe pipe = Pipe.this;
                    lock.lock();
                    try {
                        pipe.setSourceClosed$okio(true);
                        pipe.getCondition().signalAll();
                        zfb zfbVar = zfb.a;
                    } finally {
                        lock.unlock();
                    }
                }

                @Override
                public long read(Buffer sink, long byteCount) {
                    y45.j(sink, "sink");
                    ReentrantLock lock = Pipe.this.getLock();
                    Pipe pipe = Pipe.this;
                    lock.lock();
                    try {
                        if (pipe.getSourceClosed()) {
                            throw new IllegalStateException("closed");
                        }
                        if (pipe.getCanceled()) {
                            throw new IOException("canceled");
                        }
                        while (pipe.getBuffer().size() == 0) {
                            if (pipe.getSinkClosed()) {
                                lock.unlock();
                                return -1L;
                            }
                            this.timeout.awaitSignal(pipe.getCondition());
                            if (pipe.getCanceled()) {
                                throw new IOException("canceled");
                            }
                        }
                        long j2 = pipe.getBuffer().read(sink, byteCount);
                        pipe.getCondition().signalAll();
                        lock.unlock();
                        return j2;
                    } catch (Throwable th) {
                        lock.unlock();
                        throw th;
                    }
                }

                @Override
                public Timeout getTimeout() {
                    return this.timeout;
                }
            };
        } else {
            throw new IllegalArgumentException(("maxBufferSize < 1: " + j).toString());
        }
    }

    private final void forward(Sink sink, e74 e74Var) {
        Timeout timeout = sink.getTimeout();
        Timeout timeout2 = sink().getTimeout();
        long timeoutNanos = timeout.getTimeoutNanos();
        timeout.timeout(Timeout.INSTANCE.minTimeout(timeout2.getTimeoutNanos(), timeout.getTimeoutNanos()), TimeUnit.NANOSECONDS);
        if (!timeout.getHasDeadline()) {
            if (timeout2.getHasDeadline()) {
                timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
            }
            try {
                e74Var.invoke(sink);
                zfb zfbVar = zfb.a;
                j05.b(1);
                return;
            } finally {
                j05.b(1);
                timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
                if (timeout2.getHasDeadline()) {
                    timeout.clearDeadline();
                }
                j05.a(1);
            }
        }
        long jDeadlineNanoTime = timeout.deadlineNanoTime();
        if (timeout2.getHasDeadline()) {
            timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
        }
        try {
            e74Var.invoke(sink);
            zfb zfbVar2 = zfb.a;
            j05.b(1);
        } finally {
            j05.b(1);
            timeout.timeout(timeoutNanos, TimeUnit.NANOSECONDS);
            if (timeout2.getHasDeadline()) {
                timeout.deadlineNanoTime(jDeadlineNanoTime);
            }
            j05.a(1);
        }
    }

    public final Sink getSink() {
        return this.sink;
    }

    public final Source getSource() {
        return this.source;
    }

    public final void cancel() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.canceled = true;
            this.buffer.clear();
            this.condition.signalAll();
            zfb zfbVar = zfb.a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void fold(Sink sink) throws IOException {
        y45.j(sink, "sink");
        while (true) {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (this.foldedSink != null) {
                    throw new IllegalStateException("sink already folded");
                }
                if (this.canceled) {
                    this.foldedSink = sink;
                    throw new IOException("canceled");
                }
                if (this.buffer.exhausted()) {
                    this.sourceClosed = true;
                    this.foldedSink = sink;
                    reentrantLock.unlock();
                    return;
                }
                boolean z = this.sinkClosed;
                Buffer buffer = new Buffer();
                Buffer buffer2 = this.buffer;
                buffer.write(buffer2, buffer2.size());
                this.condition.signalAll();
                zfb zfbVar = zfb.a;
                reentrantLock.unlock();
                try {
                    sink.write(buffer, buffer.size());
                    if (z) {
                        sink.close();
                    } else {
                        sink.flush();
                    }
                } catch (Throwable th) {
                    ReentrantLock reentrantLock2 = this.lock;
                    reentrantLock2.lock();
                    try {
                        this.sourceClosed = true;
                        this.condition.signalAll();
                        zfb zfbVar2 = zfb.a;
                        throw th;
                    } finally {
                        reentrantLock2.unlock();
                    }
                }
            } catch (Throwable th2) {
                reentrantLock.unlock();
                throw th2;
            }
        }
    }

    public final Buffer getBuffer() {
        return this.buffer;
    }

    public final boolean getCanceled() {
        return this.canceled;
    }

    public final Condition getCondition() {
        return this.condition;
    }

    public final Sink getFoldedSink() {
        return this.foldedSink;
    }

    public final ReentrantLock getLock() {
        return this.lock;
    }

    public final long getMaxBufferSize() {
        return this.maxBufferSize;
    }

    public final boolean getSinkClosed() {
        return this.sinkClosed;
    }

    public final boolean getSourceClosed() {
        return this.sourceClosed;
    }

    public final void setCanceled$okio(boolean z) {
        this.canceled = z;
    }

    public final void setFoldedSink$okio(Sink sink) {
        this.foldedSink = sink;
    }

    public final void setSinkClosed$okio(boolean z) {
        this.sinkClosed = z;
    }

    public final void setSourceClosed$okio(boolean z) {
        this.sourceClosed = z;
    }

    public final Sink sink() {
        return this.sink;
    }

    public final Source source() {
        return this.source;
    }
}
