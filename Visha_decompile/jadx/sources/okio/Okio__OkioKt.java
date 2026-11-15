package okio;

import defpackage.e74;
import defpackage.j05;
import defpackage.ue3;
import defpackage.y45;
import java.io.Closeable;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0005*\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006\u001a\u000f\u0010\t\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001aC\u0010\u0010\u001a\u00028\u0001\"\u0010\b\u0000\u0010\f*\n\u0018\u00010\nj\u0004\u0018\u0001`\u000b\"\u0004\b\u0001\u0010\r*\u00028\u00002\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000eH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"Lokio/Source;", "Lokio/BufferedSource;", "buffer", "(Lokio/Source;)Lokio/BufferedSource;", "Lokio/Sink;", "Lokio/BufferedSink;", "(Lokio/Sink;)Lokio/BufferedSink;", "blackhole", "()Lokio/Sink;", "blackholeSink", "Ljava/io/Closeable;", "Lokio/Closeable;", "T", "R", "Lkotlin/Function1;", "block", "use", "(Ljava/io/Closeable;Le74;)Ljava/lang/Object;", "okio"}, k = 5, mv = {1, 9, 0}, xi = 48, xs = "okio/Okio")
final class Okio__OkioKt {
    public static final Sink blackhole() {
        return new BlackholeSink();
    }

    public static final BufferedSource buffer(Source source) {
        y45.j(source, "<this>");
        return new buffer(source);
    }

    public static final <T extends Closeable, R> R use(T t, e74 e74Var) throws Throwable {
        R r;
        y45.j(e74Var, "block");
        Throwable th = null;
        try {
            r = (R) e74Var.invoke(t);
            j05.b(1);
            if (t != null) {
                try {
                    t.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            j05.a(1);
        } catch (Throwable th3) {
            j05.b(1);
            if (t != null) {
                try {
                    t.close();
                } catch (Throwable th4) {
                    ue3.a(th3, th4);
                }
            }
            j05.a(1);
            th = th3;
            r = null;
        }
        if (th != null) {
            throw th;
        }
        y45.g(r);
        return r;
    }

    public static final BufferedSink buffer(Sink sink) {
        y45.j(sink, "<this>");
        return new buffer(sink);
    }
}
