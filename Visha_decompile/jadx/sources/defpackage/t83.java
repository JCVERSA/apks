package defpackage;

import androidx.media3.muxer.MuxerUtil;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

public class t83 implements Closeable {
    public final int b = 1179403647;
    public final FileChannel c;

    public t83(File file) {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.c = new FileInputStream(file).getChannel();
    }

    public final long a(o83 o83Var, long j, long j2) {
        for (long j3 = 0; j3 < j; j3++) {
            p83 p83VarB = o83Var.b(j3);
            if (p83VarB.a == 1) {
                long j4 = p83VarB.c;
                if (j4 <= j2 && j2 <= p83VarB.d + j4) {
                    return (j2 - j4) + p83VarB.b;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    public o83 b() throws IOException {
        this.c.position(0L);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        if (o(byteBufferAllocate, 0L) != 1179403647) {
            throw new IllegalArgumentException("Invalid ELF Magic!");
        }
        short sG = g(byteBufferAllocate, 4L);
        boolean z = g(byteBufferAllocate, 5L) == 2;
        if (sG == 1) {
            return new r83(z, this);
        }
        if (sG == 2) {
            return new s83(z, this);
        }
        throw new IllegalStateException("Invalid class type!");
    }

    @Override
    public void close() {
        this.c.close();
    }

    public List d() throws IOException {
        long j;
        n83 n83VarA;
        this.c.position(0L);
        ArrayList arrayList = new ArrayList();
        o83 o83VarB = b();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(o83VarB.a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = o83VarB.f;
        int i = 0;
        if (j2 == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
            j2 = o83VarB.c(0).a;
        }
        long j3 = 0;
        while (true) {
            if (j3 >= j2) {
                j = 0;
                break;
            }
            p83 p83VarB = o83VarB.b(j3);
            if (p83VarB.a == 2) {
                j = p83VarB.b;
                break;
            }
            j3++;
        }
        if (j == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        long j4 = 0;
        do {
            n83VarA = o83VarB.a(j, i);
            long j5 = n83VarA.a;
            if (j5 == 1) {
                arrayList2.add(Long.valueOf(n83VarA.b));
            } else if (j5 == 5) {
                j4 = n83VarA.b;
            }
            i++;
        } while (n83VarA.a != 0);
        if (j4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long jA = a(o83VarB, j2, j4);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList.add(n(byteBufferAllocate, ((Long) it.next()).longValue() + jA));
        }
        return arrayList;
    }

    public void e(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int i2 = this.c.read(byteBuffer, j + j2);
            if (i2 == -1) {
                throw new EOFException();
            }
            j2 += (long) i2;
        }
        byteBuffer.position(0);
    }

    public short g(ByteBuffer byteBuffer, long j) throws IOException {
        e(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    public int h(ByteBuffer byteBuffer, long j) throws IOException {
        e(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    public long k(ByteBuffer byteBuffer, long j) throws IOException {
        e(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    public String n(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short sG = g(byteBuffer, j);
            if (sG == 0) {
                return sb.toString();
            }
            sb.append((char) sG);
            j = j2;
        }
    }

    public long o(ByteBuffer byteBuffer, long j) throws IOException {
        e(byteBuffer, j, 4);
        return ((long) byteBuffer.getInt()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE;
    }
}
