package com.google.protobuf;

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
        ByteString.e current = nextPiece();
        final c pieces;

        a() {
            this.pieces = new c(RopeByteString.this, null);
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [com.google.protobuf.ByteString$e] */
        private ByteString.e nextPiece() {
            if (this.pieces.hasNext()) {
                return this.pieces.next().iterator2();
            }
            return null;
        }

        @Override
        public boolean hasNext() {
            return this.current != null;
        }

        @Override
        public byte nextByte() {
            ByteString.e eVar = this.current;
            if (eVar == null) {
                throw new NoSuchElementException();
            }
            byte bNextByte = eVar.nextByte();
            if (!this.current.hasNext()) {
                this.current = nextPiece();
            }
            return bNextByte;
        }
    }

    private static final class c implements Iterator {
        private final ArrayDeque<RopeByteString> breadCrumbs;
        private ByteString.LeafByteString next;

        c(ByteString byteString, a aVar) {
            this(byteString);
        }

        private ByteString.LeafByteString getLeafByLeft(ByteString byteString) {
            while (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                this.breadCrumbs.push(ropeByteString);
                byteString = ropeByteString.left;
            }
            return (ByteString.LeafByteString) byteString;
        }

        private ByteString.LeafByteString getNextNonEmptyLeaf() {
            ByteString.LeafByteString leafByLeft;
            do {
                ArrayDeque<RopeByteString> arrayDeque = this.breadCrumbs;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    return null;
                }
                leafByLeft = getLeafByLeft(this.breadCrumbs.pop().right);
            } while (leafByLeft.isEmpty());
            return leafByLeft;
        }

        @Override
        public boolean hasNext() {
            return this.next != null;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private c(ByteString byteString) {
            if (!(byteString instanceof RopeByteString)) {
                this.breadCrumbs = null;
                this.next = (ByteString.LeafByteString) byteString;
                return;
            }
            RopeByteString ropeByteString = (RopeByteString) byteString;
            ArrayDeque<RopeByteString> arrayDeque = new ArrayDeque<>(ropeByteString.getTreeDepth());
            this.breadCrumbs = arrayDeque;
            arrayDeque.push(ropeByteString);
            this.next = getLeafByLeft(ropeByteString.left);
        }

        @Override
        public ByteString.LeafByteString next() {
            ByteString.LeafByteString leafByteString = this.next;
            if (leafByteString == null) {
                throw new NoSuchElementException();
            }
            this.next = getNextNonEmptyLeaf();
            return leafByteString;
        }
    }

    RopeByteString(ByteString byteString, ByteString byteString2, a aVar) {
        this(byteString, byteString2);
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
            return concatenateBytes(byteString, byteString2);
        }
        if (byteString instanceof RopeByteString) {
            RopeByteString ropeByteString = (RopeByteString) byteString;
            if (ropeByteString.right.size() + byteString2.size() < 128) {
                return new RopeByteString(ropeByteString.left, concatenateBytes(ropeByteString.right, byteString2));
            }
            if (ropeByteString.left.getTreeDepth() > ropeByteString.right.getTreeDepth() && ropeByteString.getTreeDepth() > byteString2.getTreeDepth()) {
                return new RopeByteString(ropeByteString.left, new RopeByteString(ropeByteString.right, byteString2));
            }
        }
        return size >= minLength(Math.max(byteString.getTreeDepth(), byteString2.getTreeDepth()) + 1) ? new RopeByteString(byteString, byteString2) : new b(null).balance(byteString, byteString2);
    }

    private static ByteString concatenateBytes(ByteString byteString, ByteString byteString2) {
        int size = byteString.size();
        int size2 = byteString2.size();
        byte[] bArr = new byte[size + size2];
        byteString.copyTo(bArr, 0, 0, size);
        byteString2.copyTo(bArr, 0, size, size2);
        return ByteString.wrap(bArr);
    }

    private boolean equalsFragments(ByteString byteString) {
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
            return equalsFragments(byteString);
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
        return i.newInstance((Iterable<ByteBuffer>) asReadOnlyByteBufferList(), true);
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
        private final ArrayDeque<ByteString> prefixesStack;

        private b() {
            this.prefixesStack = new ArrayDeque<>();
        }

        public ByteString balance(ByteString byteString, ByteString byteString2) {
            doBalance(byteString);
            doBalance(byteString2);
            ByteString byteStringPop = this.prefixesStack.pop();
            while (!this.prefixesStack.isEmpty()) {
                byteStringPop = new RopeByteString(this.prefixesStack.pop(), byteStringPop, null);
            }
            return byteStringPop;
        }

        private void doBalance(ByteString byteString) {
            if (byteString.isBalanced()) {
                insert(byteString);
                return;
            }
            if (byteString instanceof RopeByteString) {
                RopeByteString ropeByteString = (RopeByteString) byteString;
                doBalance(ropeByteString.left);
                doBalance(ropeByteString.right);
            } else {
                throw new IllegalArgumentException("Has a new type of ByteString been created? Found " + byteString.getClass());
            }
        }

        private int getDepthBinForLength(int i10) {
            int iBinarySearch = Arrays.binarySearch(RopeByteString.minLengthByDepth, i10);
            return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
        }

        private void insert(ByteString byteString) {
            a aVar;
            int depthBinForLength = getDepthBinForLength(byteString.size());
            int iMinLength = RopeByteString.minLength(depthBinForLength + 1);
            if (this.prefixesStack.isEmpty() || this.prefixesStack.peek().size() >= iMinLength) {
                this.prefixesStack.push(byteString);
                return;
            }
            int iMinLength2 = RopeByteString.minLength(depthBinForLength);
            ByteString byteStringPop = this.prefixesStack.pop();
            while (true) {
                aVar = null;
                if (this.prefixesStack.isEmpty() || this.prefixesStack.peek().size() >= iMinLength2) {
                    break;
                } else {
                    byteStringPop = new RopeByteString(this.prefixesStack.pop(), byteStringPop, aVar);
                }
            }
            RopeByteString ropeByteString = new RopeByteString(byteStringPop, byteString, aVar);
            while (!this.prefixesStack.isEmpty()) {
                if (this.prefixesStack.peek().size() >= RopeByteString.minLength(getDepthBinForLength(ropeByteString.size()) + 1)) {
                    break;
                } else {
                    ropeByteString = new RopeByteString(this.prefixesStack.pop(), ropeByteString, aVar);
                }
            }
            this.prefixesStack.push(ropeByteString);
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
        private ByteString.LeafByteString currentPiece;
        private int currentPieceIndex;
        private int currentPieceOffsetInRope;
        private int currentPieceSize;
        private int mark;
        private c pieceIterator;

        public d() {
            initialize();
        }

        private void advanceIfCurrentPieceFullyRead() {
            if (this.currentPiece != null) {
                int i10 = this.currentPieceIndex;
                int i11 = this.currentPieceSize;
                if (i10 == i11) {
                    this.currentPieceOffsetInRope += i11;
                    this.currentPieceIndex = 0;
                    if (!this.pieceIterator.hasNext()) {
                        this.currentPiece = null;
                        this.currentPieceSize = 0;
                    } else {
                        ByteString.LeafByteString next = this.pieceIterator.next();
                        this.currentPiece = next;
                        this.currentPieceSize = next.size();
                    }
                }
            }
        }

        private int availableInternal() {
            return RopeByteString.this.size() - (this.currentPieceOffsetInRope + this.currentPieceIndex);
        }

        private void initialize() {
            c cVar = new c(RopeByteString.this, null);
            this.pieceIterator = cVar;
            ByteString.LeafByteString next = cVar.next();
            this.currentPiece = next;
            this.currentPieceSize = next.size();
            this.currentPieceIndex = 0;
            this.currentPieceOffsetInRope = 0;
        }

        private int readSkipInternal(byte[] bArr, int i10, int i11) {
            int i12 = i11;
            while (i12 > 0) {
                advanceIfCurrentPieceFullyRead();
                if (this.currentPiece == null) {
                    break;
                }
                int iMin = Math.min(this.currentPieceSize - this.currentPieceIndex, i12);
                if (bArr != null) {
                    this.currentPiece.copyTo(bArr, this.currentPieceIndex, i10, iMin);
                    i10 += iMin;
                }
                this.currentPieceIndex += iMin;
                i12 -= iMin;
            }
            return i11 - i12;
        }

        @Override
        public int available() throws IOException {
            return availableInternal();
        }

        @Override
        public void mark(int i10) {
            this.mark = this.currentPieceOffsetInRope + this.currentPieceIndex;
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
            int skipInternal = readSkipInternal(bArr, i10, i11);
            if (skipInternal != 0) {
                return skipInternal;
            }
            if (i11 > 0 || availableInternal() == 0) {
                return -1;
            }
            return skipInternal;
        }

        @Override
        public synchronized void reset() {
            initialize();
            readSkipInternal(null, 0, this.mark);
        }

        @Override
        public long skip(long j10) {
            if (j10 < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (j10 > 2147483647L) {
                j10 = 2147483647L;
            }
            return readSkipInternal(null, 0, (int) j10);
        }

        @Override
        public int read() throws IOException {
            advanceIfCurrentPieceFullyRead();
            ByteString.LeafByteString leafByteString = this.currentPiece;
            if (leafByteString == null) {
                return -1;
            }
            int i10 = this.currentPieceIndex;
            this.currentPieceIndex = i10 + 1;
            return leafByteString.byteAt(i10) & 255;
        }
    }
}
