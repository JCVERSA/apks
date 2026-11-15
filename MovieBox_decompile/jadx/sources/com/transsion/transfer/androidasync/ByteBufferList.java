package com.transsion.transfer.androidasync;

import android.os.Looper;
import com.transsion.transfer.androidasync.util.ArrayDeque;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.PriorityQueue;

public class ByteBufferList {

    static PriorityQueue f53091d = new PriorityQueue(8, new Reclaimer());

    private static int f53092e = 1048576;

    public static int f53093f = 262144;

    static int f53094g = 0;

    static int f53095h = 0;

    private static final Object f53096i = new Object();

    public static final ByteBuffer f53097j = ByteBuffer.allocate(0);

    ArrayDeque f53098a = new ArrayDeque();

    ByteOrder f53099b = ByteOrder.BIG_ENDIAN;

    private int f53100c = 0;

    static class Reclaimer implements Comparator<ByteBuffer> {
        Reclaimer() {
        }

        @Override
        public int compare(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
            if (byteBuffer.capacity() == byteBuffer2.capacity()) {
                return 0;
            }
            return byteBuffer.capacity() > byteBuffer2.capacity() ? 1 : -1;
        }
    }

    public ByteBufferList() {
    }

    public static void A(ByteBuffer byteBuffer) {
        PriorityQueue priorityQueueP;
        if (byteBuffer == null || byteBuffer.isDirect() || byteBuffer.arrayOffset() != 0 || byteBuffer.array().length != byteBuffer.capacity() || byteBuffer.capacity() < 8192 || byteBuffer.capacity() > f53093f || (priorityQueueP = p()) == null) {
            return;
        }
        synchronized (f53096i) {
            while (f53094g > f53092e && priorityQueueP.size() > 0 && ((ByteBuffer) priorityQueueP.peek()).capacity() < byteBuffer.capacity()) {
                try {
                    f53094g -= ((ByteBuffer) priorityQueueP.remove()).capacity();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (f53094g > f53092e) {
                return;
            }
            byteBuffer.position(0);
            byteBuffer.limit(byteBuffer.capacity());
            f53094g += byteBuffer.capacity();
            priorityQueueP.add(byteBuffer);
            f53095h = Math.max(f53095h, byteBuffer.capacity());
        }
    }

    private void d(int i10) {
        if (C() >= 0) {
            this.f53100c += i10;
        }
    }

    private static PriorityQueue p() {
        Looper mainLooper = Looper.getMainLooper();
        if (mainLooper == null || Thread.currentThread() != mainLooper.getThread()) {
            return f53091d;
        }
        return null;
    }

    public static ByteBuffer t(int i10) {
        PriorityQueue priorityQueueP;
        ByteBuffer byteBuffer;
        if (i10 <= f53095h && (priorityQueueP = p()) != null) {
            synchronized (f53096i) {
                do {
                    try {
                        if (priorityQueueP.size() > 0) {
                            byteBuffer = (ByteBuffer) priorityQueueP.remove();
                            if (priorityQueueP.size() == 0) {
                                f53095h = 0;
                            }
                            f53094g -= byteBuffer.capacity();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                } while (byteBuffer.capacity() < i10);
                return byteBuffer;
            }
        }
        return ByteBuffer.allocate(Math.max(8192, i10));
    }

    private ByteBuffer x(int i10) {
        ByteBuffer byteBuffer;
        if (C() < i10) {
            throw new IllegalArgumentException("count : " + C() + "/" + i10);
        }
        ByteBuffer byteBuffer2 = (ByteBuffer) this.f53098a.peek();
        while (byteBuffer2 != null && !byteBuffer2.hasRemaining()) {
            A((ByteBuffer) this.f53098a.remove());
            byteBuffer2 = (ByteBuffer) this.f53098a.peek();
        }
        if (byteBuffer2 == null) {
            return f53097j;
        }
        if (byteBuffer2.remaining() >= i10) {
            return byteBuffer2.order(this.f53099b);
        }
        ByteBuffer byteBufferT = t(i10);
        byteBufferT.limit(i10);
        byte[] bArrArray = byteBufferT.array();
        int i11 = 0;
        loop1: while (true) {
            byteBuffer = null;
            do {
                if (i11 >= i10) {
                    break loop1;
                }
                byteBuffer = (ByteBuffer) this.f53098a.remove();
                int iMin = Math.min(i10 - i11, byteBuffer.remaining());
                byteBuffer.get(bArrArray, i11, iMin);
                i11 += iMin;
            } while (byteBuffer.remaining() != 0);
            A(byteBuffer);
        }
        if (byteBuffer != null && byteBuffer.remaining() > 0) {
            this.f53098a.addFirst(byteBuffer);
        }
        this.f53098a.addFirst(byteBufferT);
        return byteBufferT.order(this.f53099b);
    }

    public void B() {
        while (this.f53098a.size() > 0) {
            A((ByteBuffer) this.f53098a.remove());
        }
        this.f53100c = 0;
    }

    public int C() {
        return this.f53100c;
    }

    public ByteBuffer D() {
        ByteBuffer byteBuffer = (ByteBuffer) this.f53098a.remove();
        this.f53100c -= byteBuffer.remaining();
        return byteBuffer;
    }

    public int E() {
        return this.f53098a.size();
    }

    public void F() {
        x(0);
    }

    public ByteBufferList a(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            A(byteBuffer);
            return this;
        }
        d(byteBuffer.remaining());
        if (this.f53098a.size() > 0) {
            ByteBuffer byteBuffer2 = (ByteBuffer) this.f53098a.getLast();
            if (byteBuffer2.capacity() - byteBuffer2.limit() >= byteBuffer.remaining()) {
                byteBuffer2.mark();
                byteBuffer2.position(byteBuffer2.limit());
                byteBuffer2.limit(byteBuffer2.capacity());
                byteBuffer2.put(byteBuffer);
                byteBuffer2.limit(byteBuffer2.position());
                byteBuffer2.reset();
                A(byteBuffer);
                F();
                return this;
            }
        }
        this.f53098a.add(byteBuffer);
        F();
        return this;
    }

    public ByteBufferList b(ByteBuffer... byteBufferArr) {
        for (ByteBuffer byteBuffer : byteBufferArr) {
            a(byteBuffer);
        }
        return this;
    }

    public void c(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= 0) {
            A(byteBuffer);
            return;
        }
        d(byteBuffer.remaining());
        if (this.f53098a.size() > 0) {
            ByteBuffer byteBuffer2 = (ByteBuffer) this.f53098a.getFirst();
            if (byteBuffer2.position() >= byteBuffer.remaining()) {
                byteBuffer2.position(byteBuffer2.position() - byteBuffer.remaining());
                byteBuffer2.mark();
                byteBuffer2.put(byteBuffer);
                byteBuffer2.reset();
                A(byteBuffer);
                return;
            }
        }
        this.f53098a.addFirst(byteBuffer);
    }

    public byte e() {
        byte b10 = x(1).get();
        this.f53100c--;
        return b10;
    }

    public void f(ByteBufferList byteBufferList) {
        g(byteBufferList, C());
    }

    public void g(ByteBufferList byteBufferList, int i10) {
        if (C() < i10) {
            throw new IllegalArgumentException("length");
        }
        int i11 = 0;
        while (i11 < i10) {
            ByteBuffer byteBuffer = (ByteBuffer) this.f53098a.remove();
            int iRemaining = byteBuffer.remaining();
            if (iRemaining == 0) {
                A(byteBuffer);
            } else {
                int i12 = iRemaining + i11;
                if (i12 > i10) {
                    int i13 = i10 - i11;
                    ByteBuffer byteBufferT = t(i13);
                    byteBufferT.limit(i13);
                    byteBuffer.get(byteBufferT.array(), 0, i13);
                    byteBufferList.a(byteBufferT);
                    this.f53098a.addFirst(byteBuffer);
                    break;
                }
                byteBufferList.a(byteBuffer);
                i11 = i12;
            }
        }
        this.f53100c -= i10;
    }

    public void h(byte[] bArr) {
        i(bArr, 0, bArr.length);
    }

    public void i(byte[] bArr, int i10, int i11) {
        if (C() < i11) {
            throw new IllegalArgumentException("length");
        }
        int i12 = i11;
        while (i12 > 0) {
            ByteBuffer byteBuffer = (ByteBuffer) this.f53098a.peek();
            int iMin = Math.min(byteBuffer.remaining(), i12);
            if (bArr != null) {
                byteBuffer.get(bArr, i10, iMin);
            } else {
                byteBuffer.position(byteBuffer.position() + iMin);
            }
            i12 -= iMin;
            i10 += iMin;
            if (byteBuffer.remaining() == 0) {
                A(byteBuffer);
            }
        }
        this.f53100c -= i11;
    }

    public ByteBuffer j() {
        if (C() == 0) {
            return f53097j;
        }
        x(C());
        return D();
    }

    public ByteBuffer[] k() {
        ByteBuffer[] byteBufferArr = (ByteBuffer[]) this.f53098a.toArray(new ByteBuffer[this.f53098a.size()]);
        this.f53098a.clear();
        this.f53100c = 0;
        return byteBufferArr;
    }

    public byte[] l() {
        byte[] bArr = new byte[C()];
        h(bArr);
        return bArr;
    }

    public char m() {
        char c10 = (char) x(1).get();
        this.f53100c--;
        return c10;
    }

    public int n() {
        int i10 = x(4).getInt();
        this.f53100c -= 4;
        return i10;
    }

    public long o() {
        long j10 = x(8).getLong();
        this.f53100c -= 8;
        return j10;
    }

    public short q() {
        short s10 = x(2).getShort();
        this.f53100c -= 2;
        return s10;
    }

    public boolean r() {
        return C() > 0;
    }

    public boolean s() {
        return this.f53100c == 0;
    }

    public ByteBufferList u(ByteOrder byteOrder) {
        this.f53099b = byteOrder;
        return this;
    }

    public String v() {
        return w(null);
    }

    public String w(Charset charset) {
        byte[] bArrArray;
        int iRemaining;
        int i10;
        if (charset == null) {
            charset = com.transsion.transfer.androidasync.util.c.f53494b;
        }
        StringBuilder sb2 = new StringBuilder();
        for (ByteBuffer byteBuffer : this.f53098a) {
            if (byteBuffer.isDirect()) {
                bArrArray = new byte[byteBuffer.remaining()];
                iRemaining = byteBuffer.remaining();
                byteBuffer.get(bArrArray);
                i10 = 0;
            } else {
                bArrArray = byteBuffer.array();
                int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                iRemaining = byteBuffer.remaining();
                i10 = iArrayOffset;
            }
            sb2.append(new String(bArrArray, i10, iRemaining, charset));
        }
        return sb2.toString();
    }

    public String y() {
        return z(null);
    }

    public String z(Charset charset) {
        String strW = w(charset);
        B();
        return strW;
    }

    public ByteBufferList(ByteBuffer... byteBufferArr) {
        b(byteBufferArr);
    }

    public ByteBufferList(byte[] bArr) {
        a(ByteBuffer.wrap(bArr));
    }
}
