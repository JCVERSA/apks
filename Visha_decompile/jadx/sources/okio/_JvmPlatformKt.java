package okio;

import defpackage.c74;
import defpackage.j05;
import defpackage.qv0;
import defpackage.y45;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000H\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u00020\u0000*\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0013\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0000¢\u0006\u0004\b\b\u0010\t\u001a/\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\n*\u00060\u0006j\u0002`\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0086\bø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e*\n\u0010\u0010\"\u00020\u000f2\u00020\u000f*\n\u0010\u0012\"\u00020\u00112\u00020\u0011*\n\u0010\u0014\"\u00020\u00132\u00020\u0013*\n\u0010\u0016\"\u00020\u00152\u00020\u0015*\n\u0010\u0018\"\u00020\u00172\u00020\u0017*\n\u0010\u0019\"\u00020\u00062\u00020\u0006*\n\u0010\u001b\"\u00020\u001a2\u00020\u001a\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001c"}, d2 = {"", "", "toUtf8String", "([B)Ljava/lang/String;", "asUtf8ToByteArray", "(Ljava/lang/String;)[B", "Ljava/util/concurrent/locks/ReentrantLock;", "Lokio/Lock;", "newLock", "()Ljava/util/concurrent/locks/ReentrantLock;", "T", "Lkotlin/Function0;", "action", "withLock", "(Ljava/util/concurrent/locks/ReentrantLock;Lc74;)Ljava/lang/Object;", "Ljava/lang/ArrayIndexOutOfBoundsException;", "ArrayIndexOutOfBoundsException", "Ljava/io/Closeable;", "Closeable", "Ljava/io/EOFException;", "EOFException", "Ljava/io/FileNotFoundException;", "FileNotFoundException", "Ljava/io/IOException;", "IOException", "Lock", "Ljava/net/ProtocolException;", "ProtocolException", "okio"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class _JvmPlatformKt {
    public static final byte[] asUtf8ToByteArray(String str) {
        y45.j(str, "<this>");
        byte[] bytes = str.getBytes(qv0.b);
        y45.i(bytes, "getBytes(...)");
        return bytes;
    }

    public static final ReentrantLock newLock() {
        return new ReentrantLock();
    }

    public static final String toUtf8String(byte[] bArr) {
        y45.j(bArr, "<this>");
        return new String(bArr, qv0.b);
    }

    public static final <T> T withLock(ReentrantLock reentrantLock, c74 c74Var) {
        y45.j(reentrantLock, "<this>");
        y45.j(c74Var, "action");
        reentrantLock.lock();
        try {
            return (T) c74Var.invoke();
        } finally {
            j05.b(1);
            reentrantLock.unlock();
            j05.a(1);
        }
    }
}
