package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

final class RopeByteString extends ByteString {
    static final int[] minLengthByDepth = {1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, Integer.MAX_VALUE};
    private static final long serialVersionUID = 1;
    private final ByteString left;
    private final int leftLength;
    private final ByteString right;
    private final int totalLength;
    private final int treeDepth;

    class a extends ByteString.b {

        final c f8401a;

        ByteString.e f8402b = b();

        a() {
            this.f8401a = new c(RopeByteString.this, null);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [androidx.datastore.preferences.protobuf.ByteString$e] */
        private ByteString.e b() {
            if (this.f8401a.hasNext()) {
                return this.f8401a.next().iterator2();
            }
            return null;
        }

        @Override
        public boolean hasNext() {
            return this.f8402b != null;
        }

        @Override
        public byte nextByte() {
            ByteString.e eVar = this.f8402b;
            if (eVar == null) {
                throw new NoSuchElementException();
            }
            byte bNextByte = eVar.nextByte();
            if (!this.f8402b.hasNext()) {
                this.f8402b = b();
            }
            return bNextByte;
        }
    }

    private static final class c implements Iterator {

        private final ArrayDeque f8405a;

        private ByteString.LeafByteString f8406b;

        c(ByteString byteString, a aVar) {
            this(byteString);
        }

        private ByteString.LeafByteString a(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.f8405a.push(ropeByteString);
                byteString = ropeByteString.left;
            }
            return (ByteString.LeafByteString) byteString;
        }

        private ByteString.LeafByteString b() {
            ByteString.LeafByteString leafByteStringA;
            do {
                ArrayDeque arrayDeque = this.f8405a;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                leafByteStringA = a(((RopeByteString) this.f8405a.pop()).right);
            } while (leafByteStringA.isEmpty());
            return leafByteStringA;
        }

        @Override
        public ByteString.LeafByteString next() {
            ByteString.LeafByteString leafByteString = this.f8406b;
            if (leafByteString == null) {
                throw new NoSuchElementException();
            }
            this.f8406b = b();
            return leafByteString;
        }

        @Override
        public boolean hasNext() {
            return this.f8406b != null;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private c(ByteString byteString) {
            if (!(byteString instanceof RopeByteString)) {
                this.f8405a = null;
                this.f8406b = (ByteString.LeafByteString) byteString;
                return;
            }
            RopeByteString ropeByteString = (RopeByteString) byteString;
            ArrayDeque arrayDeque = new ArrayDeque(ropeByteString.getTreeDepth());
            this.f8405a = arrayDeque;
            arrayDeque.push(ropeByteString);
            this.f8406b = a(ropeByteString.left);
        }
    }

    RopeByteString(ByteString byteString, ByteString byteString2, a aVar) {
        this(byteString, byteString2);
    }

    private static ByteString a(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    private boolean b(ByteString byteString) {
        ByteString.LeafByteString leafByteString;
        a aVar = null;
        c cVar = new c(this, aVar);
        ByteString.LeafByteString leafByteString2 = (ByteString.LeafByteString) cVar.next();
        c cVar2 = new c(byteString, aVar);
        ByteString.LeafByteString leafByteString3 = (ByteString.LeafByteString) cVar2.next();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int size = leafByteString2.size() - i10;
            int size2 = leafByteString3.size() - i11;
            int iMin = Math.min(size, size2);
            if (!(i10 == 0 ? leafByteString2.equalsRange(leafByteString3, i11, iMin) : leafByteString3.equalsRange(leafByteString2, i10, iMin))) {
                return false;
            }
            i12 += iMin;
            int i13 = this.totalLength;
            if (i12 >= i13) {
                if (i12 == i13) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                leafByteString = (ByteString.LeafByteString) cVar.next();
                i10 = 0;
            } else {
                i10 += iMin;
            }
            if (iMin == size2) {
                leafByteString2 = leafByteString2;
                leafByteString2 = leafByteString;
                leafByteString3 = (ByteString.LeafByteString) cVar2.next();
                i11 = 0;
            } else {
                leafByteString2 = leafByteString2;
                leafByteString2 = leafByteString;
                i11 += iMin;
            }
        }
    }

    static ByteString concatenate(ByteString byteString, ByteString byteString2) {
        if (byteString2.size() == 0) {
            return byteString;
        }
        if (byteString.size() == 0) {
            return byteString2;
        }
        int size = byteString.size() + byteString2.size();
        if (size < 128) {
            return a(byteString, byteString2);
        }
        if (byteString instanceof RopeByteString) {
            RopeByteString ropeByteString = (RopeByteString) byteString;
            if (ropeByteString.right.size() + byteString2.size() < 128) {
                return new RopeByteString(ropeByteString.left, a(ropeByteString.right, byteString2));
            }
            if (ropeByteString.left.getTreeDepth() > ropeByteString.right.getTreeDepth() && ropeByteString.getTreeDepth() > byteString2.getTreeDepth()) {
                return new RopeByteString(ropeByteString.left, new RopeByteString(ropeByteString.right, byteString2));
            }
        }
        return size >= minLength(Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1) ? new RopeByteString(byteString, byteString2) : new b(null).b(byteString, byteString2);
    }

    static int minLength(int i10) {
        int[] iArr = minLengthByDepth;
        if (i10 >= iArr.length) {
            return Integer.MAX_VALUE;
        }
        return iArr[i10];
    }

    static RopeByteString newInstanceForTest(ByteString byteString, ByteString byteString2) {
        return new RopeByteString(byteString, byteString2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("RopeByteStream instances are not to be serialized directly");
    }

    @Override
    public ByteBuffer asReadOnlyByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override
    public List<ByteBuffer> asReadOnlyByteBufferList() {
        ArrayList arrayList = new ArrayList();
        c cVar = new c(this, null);
        while (cVar.hasNext()) {
            arrayList.add(cVar.next().asReadOnlyByteBuffer());
        }
        return arrayList;
    }

    @Override
    public byte byteAt(int i10) {
        ByteString.checkIndex(i10, this.totalLength);
        return internalByteAt(i10);
    }

    @Override
    public void copyTo(ByteBuffer byteBuffer) {
        this.left.copyTo(byteBuffer);
        this.right.copyTo(byteBuffer);
    }

    @Override
    protected void copyToInternal(byte[] bArr, int i10, int i11, int i12) {
        int i13 = i10 + i12;
        int i14 = this.leftLength;
        if (i13 <= i14) {
            this.left.copyToInternal(bArr, i10, i11, i12);
        } else {
            if (i10 >= i14) {
                this.right.copyToInternal(bArr, i10 - i14, i11, i12);
                return;
            }
            int i15 = i14 - i10;
            this.left.copyToInternal(bArr, i10, i11, i15);
            this.right.copyToInternal(bArr, 0, i11 + i15, i12 - i15);
        }
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ByteString)) {
            return false;
        }
        ByteString byteString = (ByteString) obj;
        if (this.totalLength != byteString.size()) {
            return false;
        }
        if (this.totalLength == 0) {
            return true;
        }
        int iPeekCachedHashCode = peekCachedHashCode();
        int iPeekCachedHashCode2 = byteString.peekCachedHashCode();
        if (iPeekCachedHashCode == 0 || iPeekCachedHashCode2 == 0 || iPeekCachedHashCode == iPeekCachedHashCode2) {
            return b(byteString);
        }
        return false;
    }

    @Override
    protected int getTreeDepth() {
        return this.treeDepth;
    }

    @Override
    byte internalByteAt(int i10) {
        int i11 = this.leftLength;
        return i10 < i11 ? this.left.internalByteAt(i10) : this.right.internalByteAt(i10 - i11);
    }

    @Override
    protected boolean isBalanced() {
        return this.totalLength >= minLength(this.treeDepth);
    }

    @Override
    public boolean isValidUtf8() {
        int iPartialIsValidUtf8 = this.left.partialIsValidUtf8(0, 0, this.leftLength);
        ByteString byteString = this.right;
        return byteString.partialIsValidUtf8(iPartialIsValidUtf8, 0, byteString.size()) == 0;
    }

    @Override
    public i newCodedInput() {
        return i.i(asReadOnlyByteBufferList(), true);
    }

    @Override
    public InputStream newInput() {
        return new d();
    }

    @Override
    protected int partialHash(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.leftLength;
        if (i13 <= i14) {
            return this.left.partialHash(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.right.partialHash(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.right.partialHash(this.left.partialHash(i10, i11, i15), 0, i12 - i15);
    }

    @Override
    protected int partialIsValidUtf8(int i10, int i11, int i12) {
        int i13 = i11 + i12;
        int i14 = this.leftLength;
        if (i13 <= i14) {
            return this.left.partialIsValidUtf8(i10, i11, i12);
        }
        if (i11 >= i14) {
            return this.right.partialIsValidUtf8(i10, i11 - i14, i12);
        }
        int i15 = i14 - i11;
        return this.right.partialIsValidUtf8(this.left.partialIsValidUtf8(i10, i11, i15), 0, i12 - i15);
    }

    @Override
    public int size() {
        return this.totalLength;
    }

    @Override
    public ByteString substring(int i10, int i11) {
        int iCheckRange = ByteString.checkRange(i10, i11, this.totalLength);
        if (iCheckRange == 0) {
            return ByteString.EMPTY;
        }
        if (iCheckRange == this.totalLength) {
            return this;
        }
        int i12 = this.leftLength;
        if (i11 <= i12) {
            return this.left.substring(i10, i11);
        }
        return i10 >= i12 ? this.right.substring(i10 - i12, i11 - i12) : new RopeByteString(this.left.substring(i10), this.right.substring(0, i11 - this.leftLength));
    }

    @Override
    protected String toStringInternal(Charset charset) {
        return new String(toByteArray(), charset);
    }

    Object writeReplace() {
        return ByteString.wrap(toByteArray());
    }

    @Override
    public void writeTo(OutputStream outputStream) throws IOException {
        this.left.writeTo(outputStream);
        this.right.writeTo(outputStream);
    }

    @Override
    void writeToInternal(OutputStream outputStream, int i10, int i11) throws IOException {
        int i12 = i10 + i11;
        int i13 = this.leftLength;
        if (i12 <= i13) {
            this.left.writeToInternal(outputStream, i10, i11);
        } else {
            if (i10 >= i13) {
                this.right.writeToInternal(outputStream, i10 - i13, i11);
                return;
            }
            int i14 = i13 - i10;
            this.left.writeToInternal(outputStream, i10, i14);
            this.right.writeToInternal(outputStream, 0, i11 - i14);
        }
    }

    @Override
    void writeToReverse(h hVar) throws IOException {
        this.right.writeToReverse(hVar);
        this.left.writeToReverse(hVar);
    }

    private static class b {

        private final ArrayDeque f8404a;

        private b() {
            this.f8404a = new ArrayDeque();
        }

        public ByteString b(ByteString byteString, ByteString byteString2) {
            c(byteString);
            c(byteString2);
            ByteString ropeByteString = (ByteString) this.f8404a.pop();
            while (!this.f8404a.isEmpty()) {
                ropeByteString = new RopeByteString((ByteString) this.f8404a.pop(), ropeByteString, null);
            }
            return ropeByteString;
        }

        private void c(ByteString byteString) {
            if (byteString.isBalanced()) {
                e(byteString);
                return;
            }
            if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                c(ropeByteString.left);
                c(ropeByteString.right);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + byteString.getClass());
            }
        }

        private int d(int i10) {
            int iBinarySearch = Arrays.binarySearch(RopeByteString.minLengthByDepth, i10);
            return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
        }

        private void e(ByteString byteString) {
            a aVar;
            int iD = d(byteString.size());
            int iMinLength = RopeByteString.minLength(iD + 1);
            if (this.f8404a.isEmpty() || ((ByteString) this.f8404a.peek()).size() >= iMinLength) {
                this.f8404a.push(byteString);
                return;
            }
            int iMinLength2 = RopeByteString.minLength(iD);
            ByteString ropeByteString = (ByteString) this.f8404a.pop();
            while (true) {
                aVar = null;
                if (this.f8404a.isEmpty() || ((ByteString) this.f8404a.peek()).size() >= iMinLength2) {
                    break;
                } else {
                    ropeByteString = new RopeByteString((ByteString) this.f8404a.pop(), ropeByteString, aVar);
                }
            }
            RopeByteString ropeByteString2 = new RopeByteString(ropeByteString, byteString, aVar);
            while (!this.f8404a.isEmpty()) {
                if (((ByteString) this.f8404a.peek()).size() >= RopeByteString.minLength(d(ropeByteString2.size()) + 1)) {
                    break;
                } else {
                    ropeByteString2 = new RopeByteString((ByteString) this.f8404a.pop(), ropeByteString2, aVar);
                }
            }
            this.f8404a.push(ropeByteString2);
        }

        b(a aVar) {
            this();
        }
    }

    private RopeByteString(ByteString byteString, ByteString byteString2) {
        this.left = byteString;
        this.right = byteString2;
        int size = byteString.size();
        this.leftLength = size;
        this.totalLength = size + byteString2.size();
        this.treeDepth = Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1;
    }

    @Override
    public Iterator<Byte> iterator2() {
        return new a();
    }

    @Override
    void writeTo(h hVar) throws IOException {
        this.left.writeTo(hVar);
        this.right.writeTo(hVar);
    }

    private class d extends InputStream {

        private c f8407a;

        private ByteString.LeafByteString f8408b;

        private int f8409c;

        private int f8410d;

        private int f8411e;

        private int f8412f;

        public d() {
            k();
        }

        private void d() {
            if (this.f8408b != null) {
                int i10 = this.f8410d;
                int i11 = this.f8409c;
                if (i10 == i11) {
                    this.f8411e += i11;
                    this.f8410d = 0;
                    if (!this.f8407a.hasNext()) {
                        this.f8408b = null;
                        this.f8409c = 0;
                    } else {
                        ByteString.LeafByteString next = this.f8407a.next();
                        this.f8408b = next;
                        this.f8409c = next.size();
                    }
                }
            }
        }

        private int h() {
            return RopeByteString.this.size() - (this.f8411e + this.f8410d);
        }

        private void k() {
            c cVar = new c(RopeByteString.this, null);
            this.f8407a = cVar;
            ByteString.LeafByteString next = cVar.next();
            this.f8408b = next;
            this.f8409c = next.size();
            this.f8410d = 0;
            this.f8411e = 0;
        }

        private int l(byte[] bArr, int i10, int i11) {
            int i12 = i11;
            while (i12 > 0) {
                d();
                if (this.f8408b == null) {
                    break;
                }
                int iMin = Math.min(this.f8409c - this.f8410d, i12);
                if (bArr != null) {
                    this.f8408b.copyTo(bArr, this.f8410d, i10, iMin);
                    i10 += iMin;
                }
                this.f8410d += iMin;
                i12 -= iMin;
            }
            return i11 - i12;
        }

        @Override
        public int available() {
            return h();
        }

        @Override
        public void mark(int i10) {
            this.f8412f = this.f8411e + this.f8410d;
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) {
            bArr.getClass();
            if (i10 < 0 || i11 < 0 || i11 > bArr.length - i10) {
                throw new IndexOutOfBoundsException();
            }
            int iL = l(bArr, i10, i11);
            if (iL != 0) {
                return iL;
            }
            if (i11 > 0 || h() == 0) {
                return -1;
            }
            return iL;
        }

        @Override
        public synchronized void reset() {
            k();
            l(null, 0, this.f8412f);
        }

        @Override
        public long skip(long j10) {
            if (j10 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (j10 > 2147483647L) {
                j10 = 2147483647L;
            }
            return l(null, 0, (int) j10);
        }

        @Override
        public int read() {
            d();
            ByteString.LeafByteString leafByteString = this.f8408b;
            if (leafByteString == null) {
                return -1;
            }
            int i10 = this.f8410d;
            this.f8410d = i10 + 1;
            return leafByteString.byteAt(i10) & 255;
        }
    }
}
