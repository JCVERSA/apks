package defpackage;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import org.slf4j.Marker;

public abstract class po0 implements Iterable {
    public static final po0 b = new qm5(new byte[0]);

    public interface a extends Iterator {
        byte nextByte();
    }

    public static po0 b(Iterator it, int i) {
        if (i == 1) {
            return (po0) it.next();
        }
        int i2 = i >>> 1;
        return b(it, i2).c(b(it, i - i2));
    }

    public static po0 f(Iterable iterable) {
        Collection arrayList;
        if (iterable instanceof Collection) {
            arrayList = (Collection) iterable;
        } else {
            arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add((po0) it.next());
            }
        }
        return arrayList.isEmpty() ? b : b(arrayList.iterator(), arrayList.size());
    }

    public static po0 i(byte[] bArr) {
        return j(bArr, 0, bArr.length);
    }

    public static po0 j(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new qm5(bArr2);
    }

    public static po0 k(String str) {
        try {
            return new qm5(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }

    public static b q() {
        return new b(128);
    }

    public po0 c(po0 po0Var) {
        int size = size();
        int size2 = po0Var.size();
        if (((long) size) + ((long) size2) < 2147483647L) {
            return vv8.C(this, po0Var);
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("ByteString would be too long: ");
        sb.append(size);
        sb.append(Marker.ANY_NON_NULL_MARKER);
        sb.append(size2);
        throw new IllegalArgumentException(sb.toString());
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public void l(byte[] bArr, int i, int i2, int i3) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Target offset < 0: ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        if (i3 < 0) {
            StringBuilder sb3 = new StringBuilder(23);
            sb3.append("Length < 0: ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
        int i4 = i + i3;
        if (i4 > size()) {
            StringBuilder sb4 = new StringBuilder(34);
            sb4.append("Source end offset < 0: ");
            sb4.append(i4);
            throw new IndexOutOfBoundsException(sb4.toString());
        }
        int i5 = i2 + i3;
        if (i5 <= bArr.length) {
            if (i3 > 0) {
                m(bArr, i, i2, i3);
            }
        } else {
            StringBuilder sb5 = new StringBuilder(34);
            sb5.append("Target end offset < 0: ");
            sb5.append(i5);
            throw new IndexOutOfBoundsException(sb5.toString());
        }
    }

    public abstract void m(byte[] bArr, int i, int i2, int i3);

    public abstract int n();

    public abstract boolean o();

    public abstract boolean p();

    public abstract int r(int i, int i2, int i3);

    public abstract int s(int i, int i2, int i3);

    public abstract int size();

    public abstract int t();

    public String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public byte[] u() {
        int size = size();
        if (size == 0) {
            return f.a;
        }
        byte[] bArr = new byte[size];
        m(bArr, 0, 0, size);
        return bArr;
    }

    public abstract String v(String str);

    public String w() {
        try {
            return v("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported?", e);
        }
    }

    public void x(OutputStream outputStream, int i, int i2) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(23);
            sb2.append("Length < 0: ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        int i3 = i + i2;
        if (i3 <= size()) {
            if (i2 > 0) {
                y(outputStream, i, i2);
            }
        } else {
            StringBuilder sb3 = new StringBuilder(39);
            sb3.append("Source end offset exceeded: ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    public abstract void y(OutputStream outputStream, int i, int i2);

    public static final class b extends OutputStream {
        public static final byte[] g = new byte[0];
        public final int b;
        public final ArrayList c;
        public int d;
        public byte[] e;
        public int f;

        public b(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Buffer size < 0");
            }
            this.b = i;
            this.c = new ArrayList();
            this.e = new byte[i];
        }

        public final byte[] a(byte[] bArr, int i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
            return bArr2;
        }

        public final void b(int i) {
            this.c.add(new qm5(this.e));
            int length = this.d + this.e.length;
            this.d = length;
            this.e = new byte[Math.max(this.b, Math.max(i, length >>> 1))];
            this.f = 0;
        }

        public final void d() {
            int i = this.f;
            byte[] bArr = this.e;
            if (i >= bArr.length) {
                this.c.add(new qm5(this.e));
                this.e = g;
            } else if (i > 0) {
                this.c.add(new qm5(a(bArr, i)));
            }
            this.d += this.f;
            this.f = 0;
        }

        public synchronized int e() {
            return this.d + this.f;
        }

        public synchronized po0 g() {
            d();
            return po0.f(this.c);
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(e()));
        }

        @Override
        public synchronized void write(int i) {
            try {
                if (this.f == this.e.length) {
                    b(1);
                }
                byte[] bArr = this.e;
                int i2 = this.f;
                this.f = i2 + 1;
                bArr[i2] = (byte) i;
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override
        public synchronized void write(byte[] bArr, int i, int i2) {
            try {
                byte[] bArr2 = this.e;
                int length = bArr2.length;
                int i3 = this.f;
                if (i2 <= length - i3) {
                    System.arraycopy(bArr, i, bArr2, i3, i2);
                    this.f += i2;
                } else {
                    int length2 = bArr2.length - i3;
                    System.arraycopy(bArr, i, bArr2, i3, length2);
                    int i4 = i2 - length2;
                    b(i4);
                    System.arraycopy(bArr, i + length2, this.e, 0, i4);
                    this.f = i4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
