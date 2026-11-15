package defpackage;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class lxa {
    public static final a d = new a(null);
    public final int a;
    public final byte[] b;
    public final byte[] c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final lxa a(byte[] bArr) {
            byte[] bArr2;
            y45.j(bArr, "data");
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            byte[] bArr3 = new byte[byteBufferWrap.getInt()];
            byteBufferWrap.get(bArr3);
            int i = byteBufferWrap.getInt();
            int i2 = byteBufferWrap.getInt();
            if (i2 > 0) {
                bArr2 = new byte[i2];
                byteBufferWrap.get(bArr2);
            } else {
                bArr2 = null;
            }
            return new lxa(i, bArr3, bArr2);
        }

        public a() {
        }
    }

    public lxa(int i, byte[] bArr, byte[] bArr2) {
        y45.j(bArr, "main");
        this.a = i;
        this.b = bArr;
        this.c = bArr2;
    }

    public final byte[] a() {
        return this.b;
    }

    public final int b() {
        return this.a;
    }

    public final byte[] c() {
        byte[] bArr = this.c;
        int length = bArr == null ? 0 : bArr.length;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.b.length + 12 + length);
        byteBufferAllocate.putInt(this.b.length);
        byteBufferAllocate.put(this.b);
        byteBufferAllocate.putInt(this.a);
        byteBufferAllocate.putInt(length);
        byte[] bArr2 = this.c;
        if (bArr2 != null) {
            byteBufferAllocate.put(bArr2);
        }
        byte[] bArrArray = byteBufferAllocate.array();
        y45.i(bArrArray, "buffer.array()");
        return bArrArray;
    }

    public lxa(int i, byte[] bArr, byte[] bArr2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, bArr, (i2 & 4) != 0 ? null : bArr2);
    }
}
