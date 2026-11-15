package androidx.datastore.preferences.protobuf;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.InvalidMarkException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;

public abstract class ByteString implements Iterable<Byte>, Serializable {
    static final int CONCATENATE_BY_COPY_SIZE = 128;
    public static final ByteString EMPTY = new LiteralByteString(w.f8606d);
    static final int MAX_READ_FROM_CHUNK_SIZE = 8192;
    static final int MIN_READ_FROM_CHUNK_SIZE = 256;
    private static final int UNSIGNED_BYTE_MASK = 255;
    private static final Comparator<ByteString> UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    private static final d byteArrayCopier;
    private static final long serialVersionUID = 1;
    private int hash = 0;

    private static final class BoundedByteString extends LiteralByteString {
        private static final long serialVersionUID = 1;
        private final int bytesLength;
        private final int bytesOffset;

        BoundedByteString(byte[] bArr, int i10, int i11) {
            super(bArr);
            ByteString.checkRange(i10, i10 + i11, bArr.length);
            this.bytesOffset = i10;
            this.bytesLength = i11;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override
        public byte byteAt(int i10) {
            ByteString.checkIndex(i10, size());
            return this.bytes[this.bytesOffset + i10];
        }

        @Override
        protected void copyToInternal(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.bytes, getOffsetIntoBytes() + i10, bArr, i11, i12);
        }

        @Override
        protected int getOffsetIntoBytes() {
            return this.bytesOffset;
        }

        @Override
        byte internalByteAt(int i10) {
            return this.bytes[this.bytesOffset + i10];
        }

        @Override
        public int size() {
            return this.bytesLength;
        }

        Object writeReplace() {
            return ByteString.wrap(toByteArray());
        }
    }

    static abstract class LeafByteString extends ByteString {
        private static final long serialVersionUID = 1;

        LeafByteString(a aVar) {
            this();
        }

        abstract boolean equalsRange(ByteString byteString, int i10, int i11);

        @Override
        protected final int getTreeDepth() {
            return 0;
        }

        @Override
        protected final boolean isBalanced() {
            return true;
        }

        @Override
        public Iterator<Byte> iterator() {
            return super.iterator2();
        }

        @Override
        void writeToReverse(androidx.datastore.preferences.protobuf.h hVar) throws IOException {
            writeTo(hVar);
        }

        private LeafByteString() {
        }
    }

    private static class LiteralByteString extends LeafByteString {
        private static final long serialVersionUID = 1;
        protected final byte[] bytes;

        LiteralByteString(byte[] bArr) {
            super(null);
            bArr.getClass();
            this.bytes = bArr;
        }

        @Override
        public final ByteBuffer asReadOnlyByteBuffer() {
            return ByteBuffer.wrap(this.bytes, getOffsetIntoBytes(), size()).asReadOnlyBuffer();
        }

        @Override
        public final List<ByteBuffer> asReadOnlyByteBufferList() {
            return Collections.singletonList(asReadOnlyByteBuffer());
        }

        @Override
        public byte byteAt(int i10) {
            return this.bytes[i10];
        }

        @Override
        public final void copyTo(ByteBuffer byteBuffer) {
            byteBuffer.put(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override
        protected void copyToInternal(byte[] bArr, int i10, int i11, int i12) {
            System.arraycopy(this.bytes, i10, bArr, i11, i12);
        }

        @Override
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteString) || size() != ((ByteString) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof LiteralByteString)) {
                return obj.equals(this);
            }
            LiteralByteString literalByteString = (LiteralByteString) obj;
            int iPeekCachedHashCode = peekCachedHashCode();
            int iPeekCachedHashCode2 = literalByteString.peekCachedHashCode();
            if (iPeekCachedHashCode == 0 || iPeekCachedHashCode2 == 0 || iPeekCachedHashCode == iPeekCachedHashCode2) {
                return equalsRange(literalByteString, 0, size());
            }
            return false;
        }

        @Override
        final boolean equalsRange(ByteString byteString, int i10, int i11) {
            if (i11 > byteString.size()) {
                throw new IllegalArgumentException("Length too large: " + i11 + size());
            }
            int i12 = i10 + i11;
            if (i12 > byteString.size()) {
                throw new IllegalArgumentException("Ran off end of other: " + i10 + ", " + i11 + ", " + byteString.size());
            }
            if (!(byteString instanceof LiteralByteString)) {
                return byteString.substring(i10, i12).equals(substring(0, i11));
            }
            LiteralByteString literalByteString = (LiteralByteString) byteString;
            byte[] bArr = this.bytes;
            byte[] bArr2 = literalByteString.bytes;
            int offsetIntoBytes = getOffsetIntoBytes() + i11;
            int offsetIntoBytes2 = getOffsetIntoBytes();
            int offsetIntoBytes3 = literalByteString.getOffsetIntoBytes() + i10;
            while (offsetIntoBytes2 < offsetIntoBytes) {
                if (bArr[offsetIntoBytes2] != bArr2[offsetIntoBytes3]) {
                    return false;
                }
                offsetIntoBytes2++;
                offsetIntoBytes3++;
            }
            return true;
        }

        protected int getOffsetIntoBytes() {
            return 0;
        }

        @Override
        byte internalByteAt(int i10) {
            return this.bytes[i10];
        }

        @Override
        public final boolean isValidUtf8() {
            int offsetIntoBytes = getOffsetIntoBytes();
            return Utf8.s(this.bytes, offsetIntoBytes, size() + offsetIntoBytes);
        }

        @Override
        public final i newCodedInput() {
            return i.m(this.bytes, getOffsetIntoBytes(), size(), true);
        }

        @Override
        public final InputStream newInput() {
            return new ByteArrayInputStream(this.bytes, getOffsetIntoBytes(), size());
        }

        @Override
        protected final int partialHash(int i10, int i11, int i12) {
            return w.g(i10, this.bytes, getOffsetIntoBytes() + i11, i12);
        }

        @Override
        protected final int partialIsValidUtf8(int i10, int i11, int i12) {
            int offsetIntoBytes = getOffsetIntoBytes() + i11;
            return Utf8.u(i10, this.bytes, offsetIntoBytes, i12 + offsetIntoBytes);
        }

        @Override
        public int size() {
            return this.bytes.length;
        }

        @Override
        public final ByteString substring(int i10, int i11) {
            int iCheckRange = ByteString.checkRange(i10, i11, size());
            return iCheckRange == 0 ? ByteString.EMPTY : new BoundedByteString(this.bytes, getOffsetIntoBytes() + i10, iCheckRange);
        }

        @Override
        protected final String toStringInternal(Charset charset) {
            return new String(this.bytes, getOffsetIntoBytes(), size(), charset);
        }

        @Override
        public final void writeTo(OutputStream outputStream) throws IOException {
            outputStream.write(toByteArray());
        }

        @Override
        final void writeToInternal(OutputStream outputStream, int i10, int i11) throws IOException {
            outputStream.write(this.bytes, getOffsetIntoBytes() + i10, i11);
        }

        @Override
        final void writeTo(androidx.datastore.preferences.protobuf.h hVar) throws IOException {
            hVar.b(this.bytes, getOffsetIntoBytes(), size());
        }
    }

    private static final class NioByteString extends LeafByteString {
        private final ByteBuffer buffer;

        NioByteString(ByteBuffer byteBuffer) {
            super(null);
            w.b(byteBuffer, "buffer");
            this.buffer = byteBuffer.slice().order(ByteOrder.nativeOrder());
        }

        private ByteBuffer a(int i10, int i11) {
            if (i10 < this.buffer.position() || i11 > this.buffer.limit() || i10 > i11) {
                throw new IllegalArgumentException(String.format("Invalid indices [%d, %d]", Integer.valueOf(i10), Integer.valueOf(i11)));
            }
            ByteBuffer byteBufferSlice = this.buffer.slice();
            y.c(byteBufferSlice, i10 - this.buffer.position());
            y.a(byteBufferSlice, i11 - this.buffer.position());
            return byteBufferSlice;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException {
            throw new InvalidObjectException("NioByteString instances are not to be serialized directly");
        }

        private Object writeReplace() {
            return ByteString.copyFrom(this.buffer.slice());
        }

        @Override
        public ByteBuffer asReadOnlyByteBuffer() {
            return this.buffer.asReadOnlyBuffer();
        }

        @Override
        public List<ByteBuffer> asReadOnlyByteBufferList() {
            return Collections.singletonList(asReadOnlyByteBuffer());
        }

        @Override
        public byte byteAt(int i10) {
            try {
                return this.buffer.get(i10);
            } catch (ArrayIndexOutOfBoundsException e10) {
                throw e10;
            } catch (IndexOutOfBoundsException e11) {
                throw new ArrayIndexOutOfBoundsException(e11.getMessage());
            }
        }

        @Override
        public void copyTo(ByteBuffer byteBuffer) {
            byteBuffer.put(this.buffer.slice());
        }

        @Override
        protected void copyToInternal(byte[] bArr, int i10, int i11, int i12) {
            ByteBuffer byteBufferSlice = this.buffer.slice();
            y.c(byteBufferSlice, i10);
            byteBufferSlice.get(bArr, i11, i12);
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
            if (size() != byteString.size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (obj instanceof NioByteString) {
                return this.buffer.equals(((NioByteString) obj).buffer);
            }
            return obj instanceof RopeByteString ? obj.equals(this) : this.buffer.equals(byteString.asReadOnlyByteBuffer());
        }

        @Override
        boolean equalsRange(ByteString byteString, int i10, int i11) {
            return substring(0, i11).equals(byteString.substring(i10, i11 + i10));
        }

        @Override
        public byte internalByteAt(int i10) {
            return byteAt(i10);
        }

        @Override
        public boolean isValidUtf8() {
            return Utf8.r(this.buffer);
        }

        @Override
        public i newCodedInput() {
            return i.j(this.buffer, true);
        }

        @Override
        public InputStream newInput() {
            return new a();
        }

        @Override
        protected int partialHash(int i10, int i11, int i12) {
            for (int i13 = i11; i13 < i11 + i12; i13++) {
                i10 = (i10 * 31) + this.buffer.get(i13);
            }
            return i10;
        }

        @Override
        protected int partialIsValidUtf8(int i10, int i11, int i12) {
            return Utf8.t(i10, this.buffer, i11, i12 + i11);
        }

        @Override
        public int size() {
            return this.buffer.remaining();
        }

        @Override
        public ByteString substring(int i10, int i11) {
            try {
                return new NioByteString(a(i10, i11));
            } catch (ArrayIndexOutOfBoundsException e10) {
                throw e10;
            } catch (IndexOutOfBoundsException e11) {
                throw new ArrayIndexOutOfBoundsException(e11.getMessage());
            }
        }

        @Override
        protected String toStringInternal(Charset charset) {
            byte[] byteArray;
            int length;
            int iArrayOffset;
            if (this.buffer.hasArray()) {
                byteArray = this.buffer.array();
                iArrayOffset = this.buffer.arrayOffset() + this.buffer.position();
                length = this.buffer.remaining();
            } else {
                byteArray = toByteArray();
                length = byteArray.length;
                iArrayOffset = 0;
            }
            return new String(byteArray, iArrayOffset, length, charset);
        }

        @Override
        public void writeTo(OutputStream outputStream) throws IOException {
            outputStream.write(toByteArray());
        }

        @Override
        void writeToInternal(OutputStream outputStream, int i10, int i11) throws IOException {
            if (!this.buffer.hasArray()) {
                androidx.datastore.preferences.protobuf.g.g(a(i10, i11 + i10), outputStream);
            } else {
                outputStream.write(this.buffer.array(), this.buffer.arrayOffset() + this.buffer.position() + i10, i11);
            }
        }

        class a extends InputStream {

            private final ByteBuffer f8348a;

            a() {
                this.f8348a = NioByteString.this.buffer.slice();
            }

            @Override
            public int available() {
                return this.f8348a.remaining();
            }

            @Override
            public void mark(int i10) {
                y.b(this.f8348a);
            }

            @Override
            public boolean markSupported() {
                return true;
            }

            @Override
            public int read() {
                if (this.f8348a.hasRemaining()) {
                    return this.f8348a.get() & 255;
                }
                return -1;
            }

            @Override
            public void reset() throws IOException {
                try {
                    y.d(this.f8348a);
                } catch (InvalidMarkException e10) {
                    throw new IOException(e10);
                }
            }

            @Override
            public int read(byte[] bArr, int i10, int i11) {
                if (!this.f8348a.hasRemaining()) {
                    return -1;
                }
                int iMin = Math.min(i11, this.f8348a.remaining());
                this.f8348a.get(bArr, i10, iMin);
                return iMin;
            }
        }

        @Override
        void writeTo(androidx.datastore.preferences.protobuf.h hVar) throws IOException {
            hVar.a(this.buffer.slice());
        }
    }

    class a extends b {

        private int f8350a = 0;

        private final int f8351b;

        a() {
            this.f8351b = ByteString.this.size();
        }

        @Override
        public boolean hasNext() {
            return this.f8350a < this.f8351b;
        }

        @Override
        public byte nextByte() {
            int i10 = this.f8350a;
            if (i10 >= this.f8351b) {
                throw new NoSuchElementException();
            }
            this.f8350a = i10 + 1;
            return ByteString.this.internalByteAt(i10);
        }
    }

    static abstract class b implements e {
        b() {
        }

        @Override
        public final Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private static final class c implements d {
        private c() {
        }

        @Override
        public byte[] copyFrom(byte[] bArr, int i10, int i11) {
            return Arrays.copyOfRange(bArr, i10, i11 + i10);
        }

        c(a aVar) {
            this();
        }
    }

    private interface d {
        byte[] copyFrom(byte[] bArr, int i10, int i11);
    }

    public interface e extends Iterator {
        byte nextByte();
    }

    static final class f {

        private final CodedOutputStream f8353a;

        private final byte[] f8354b;

        f(int i10, a aVar) {
            this(i10);
        }

        public ByteString a() {
            this.f8353a.d();
            return new LiteralByteString(this.f8354b);
        }

        public CodedOutputStream b() {
            return this.f8353a;
        }

        private f(int i10) {
            byte[] bArr = new byte[i10];
            this.f8354b = bArr;
            this.f8353a = CodedOutputStream.d0(bArr);
        }
    }

    private static final class h implements d {
        private h() {
        }

        @Override
        public byte[] copyFrom(byte[] bArr, int i10, int i11) {
            byte[] bArr2 = new byte[i11];
            System.arraycopy(bArr, i10, bArr2, 0, i11);
            return bArr2;
        }

        h(a aVar) {
            this();
        }
    }

    static {
        a aVar = null;
        byteArrayCopier = androidx.datastore.preferences.protobuf.d.c() ? new h(aVar) : new c(aVar);
        UNSIGNED_LEXICOGRAPHICAL_COMPARATOR = new Comparator<ByteString>() {
            /* JADX WARN: Type inference failed for: r0v0, types: [androidx.datastore.preferences.protobuf.ByteString$e, java.util.Iterator] */
            /* JADX WARN: Type inference failed for: r1v0, types: [androidx.datastore.preferences.protobuf.ByteString$e, java.util.Iterator] */
            @Override
            public int compare(ByteString byteString, ByteString byteString2) {
                ?? Iterator2 = byteString.iterator2();
                ?? Iterator3 = byteString2.iterator2();
                while (Iterator2.hasNext() && Iterator3.hasNext()) {
                    int iCompareTo = Integer.valueOf(ByteString.toInt(Iterator2.nextByte())).compareTo(Integer.valueOf(ByteString.toInt(Iterator3.nextByte())));
                    if (iCompareTo != 0) {
                        return iCompareTo;
                    }
                }
                return Integer.valueOf(byteString.size()).compareTo(Integer.valueOf(byteString2.size()));
            }
        };
    }

    ByteString() {
    }

    private static ByteString balancedConcat(Iterator<ByteString> it, int i10) {
        if (i10 < 1) {
            throw new IllegalArgumentException(String.format("length (%s) must be >= 1", Integer.valueOf(i10)));
        }
        if (i10 == 1) {
            return it.next();
        }
        int i11 = i10 >>> 1;
        return balancedConcat(it, i11).concat(balancedConcat(it, i10 - i11));
    }

    static void checkIndex(int i10, int i11) {
        if (((i11 - (i10 + 1)) | i10) < 0) {
            if (i10 < 0) {
                throw new ArrayIndexOutOfBoundsException("Index < 0: " + i10);
            }
            throw new ArrayIndexOutOfBoundsException("Index > length: " + i10 + ", " + i11);
        }
    }

    static int checkRange(int i10, int i11, int i12) {
        int i13 = i11 - i10;
        if ((i10 | i11 | i13 | (i12 - i11)) >= 0) {
            return i13;
        }
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("Beginning index: " + i10 + " < 0");
        }
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("Beginning index larger than ending index: " + i10 + ", " + i11);
        }
        throw new IndexOutOfBoundsException("End index: " + i11 + " >= " + i12);
    }

    public static ByteString copyFrom(byte[] bArr, int i10, int i11) {
        checkRange(i10, i10 + i11, bArr.length);
        return new LiteralByteString(byteArrayCopier.copyFrom(bArr, i10, i11));
    }

    public static ByteString copyFromUtf8(String str) {
        return new LiteralByteString(str.getBytes(w.f8604b));
    }

    public static final ByteString empty() {
        return EMPTY;
    }

    private static int extractHexDigit(String str, int i10) {
        int iHexDigit = hexDigit(str.charAt(i10));
        if (iHexDigit != -1) {
            return iHexDigit;
        }
        throw new NumberFormatException("Invalid hexString " + str + " must only contain [0-9a-fA-F] but contained " + str.charAt(i10) + " at index " + i10);
    }

    public static ByteString fromHex(String str) {
        if (str.length() % 2 != 0) {
            throw new NumberFormatException("Invalid hexString " + str + " of length " + str.length() + " must be even.");
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = i10 * 2;
            bArr[i10] = (byte) (extractHexDigit(str, i11 + 1) | (extractHexDigit(str, i11) << 4));
        }
        return new LiteralByteString(bArr);
    }

    private static int hexDigit(char c10) {
        if (c10 >= '0' && c10 <= '9') {
            return c10 - '0';
        }
        if (c10 >= 'A' && c10 <= 'F') {
            return c10 - '7';
        }
        if (c10 < 'a' || c10 > 'f') {
            return -1;
        }
        return c10 - 'W';
    }

    static f newCodedBuilder(int i10) {
        return new f(i10, null);
    }

    public static g newOutput(int i10) {
        return new g(i10);
    }

    static ByteString nioByteString(ByteBuffer byteBuffer) {
        return new NioByteString(byteBuffer);
    }

    private static ByteString readChunk(InputStream inputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        int i11 = 0;
        while (i11 < i10) {
            int i12 = inputStream.read(bArr, i11, i10 - i11);
            if (i12 == -1) {
                break;
            }
            i11 += i12;
        }
        if (i11 == 0) {
            return null;
        }
        return copyFrom(bArr, 0, i11);
    }

    public static ByteString readFrom(InputStream inputStream) throws IOException {
        return readFrom(inputStream, 256, 8192);
    }

    public static int toInt(byte b10) {
        return b10 & 255;
    }

    private String truncateAndEscapeForDisplay() {
        if (size() <= 50) {
            return g1.a(this);
        }
        return g1.a(substring(0, 47)) + "...";
    }

    public static Comparator<ByteString> unsignedLexicographicalComparator() {
        return UNSIGNED_LEXICOGRAPHICAL_COMPARATOR;
    }

    static ByteString wrap(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasArray()) {
            return new NioByteString(byteBuffer);
        }
        return wrap(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
    }

    public abstract ByteBuffer asReadOnlyByteBuffer();

    public abstract List<ByteBuffer> asReadOnlyByteBufferList();

    public abstract byte byteAt(int i10);

    public final ByteString concat(ByteString byteString) {
        if (Integer.MAX_VALUE - size() >= byteString.size()) {
            return RopeByteString.concatenate(this, byteString);
        }
        throw new IllegalArgumentException("ByteString would be too long: " + size() + "+" + byteString.size());
    }

    public abstract void copyTo(ByteBuffer byteBuffer);

    public void copyTo(byte[] bArr, int i10) {
        copyTo(bArr, 0, i10, size());
    }

    protected abstract void copyToInternal(byte[] bArr, int i10, int i11, int i12);

    public final boolean endsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(size() - byteString.size()).equals(byteString);
    }

    public abstract boolean equals(Object obj);

    protected abstract int getTreeDepth();

    public final int hashCode() {
        int iPartialHash = this.hash;
        if (iPartialHash == 0) {
            int size = size();
            iPartialHash = partialHash(size, 0, size);
            if (iPartialHash == 0) {
                iPartialHash = 1;
            }
            this.hash = iPartialHash;
        }
        return iPartialHash;
    }

    abstract byte internalByteAt(int i10);

    protected abstract boolean isBalanced();

    public final boolean isEmpty() {
        return size() == 0;
    }

    public abstract boolean isValidUtf8();

    public abstract i newCodedInput();

    public abstract InputStream newInput();

    protected abstract int partialHash(int i10, int i11, int i12);

    protected abstract int partialIsValidUtf8(int i10, int i11, int i12);

    protected final int peekCachedHashCode() {
        return this.hash;
    }

    public abstract int size();

    public final boolean startsWith(ByteString byteString) {
        return size() >= byteString.size() && substring(0, byteString.size()).equals(byteString);
    }

    public final ByteString substring(int i10) {
        return substring(i10, size());
    }

    public abstract ByteString substring(int i10, int i11);

    public final byte[] toByteArray() {
        int size = size();
        if (size == 0) {
            return w.f8606d;
        }
        byte[] bArr = new byte[size];
        copyToInternal(bArr, 0, 0, size);
        return bArr;
    }

    public final String toString(String str) throws UnsupportedEncodingException {
        try {
            return toString(Charset.forName(str));
        } catch (UnsupportedCharsetException e10) {
            UnsupportedEncodingException unsupportedEncodingException = new UnsupportedEncodingException(str);
            unsupportedEncodingException.initCause(e10);
            throw unsupportedEncodingException;
        }
    }

    protected abstract String toStringInternal(Charset charset);

    public final String toStringUtf8() {
        return toString(w.f8604b);
    }

    abstract void writeTo(androidx.datastore.preferences.protobuf.h hVar) throws IOException;

    public abstract void writeTo(OutputStream outputStream) throws IOException;

    final void writeTo(OutputStream outputStream, int i10, int i11) throws IOException {
        checkRange(i10, i10 + i11, size());
        if (i11 > 0) {
            writeToInternal(outputStream, i10, i11);
        }
    }

    abstract void writeToInternal(OutputStream outputStream, int i10, int i11) throws IOException;

    abstract void writeToReverse(androidx.datastore.preferences.protobuf.h hVar) throws IOException;

    public static g newOutput() {
        return new g(128);
    }

    public static ByteString readFrom(InputStream inputStream, int i10) throws IOException {
        return readFrom(inputStream, i10, i10);
    }

    @Deprecated
    public final void copyTo(byte[] bArr, int i10, int i11, int i12) {
        checkRange(i10, i10 + i12, size());
        checkRange(i11, i11 + i12, bArr.length);
        if (i12 > 0) {
            copyToInternal(bArr, i10, i11, i12);
        }
    }

    @Override
    public Iterator<Byte> iterator2() {
        return new a();
    }

    public static ByteString copyFrom(byte[] bArr) {
        return copyFrom(bArr, 0, bArr.length);
    }

    public static ByteString readFrom(InputStream inputStream, int i10, int i11) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteString chunk = readChunk(inputStream, i10);
            if (chunk == null) {
                return copyFrom(arrayList);
            }
            arrayList.add(chunk);
            i10 = Math.min(i10 * 2, i11);
        }
    }

    public static final class g extends OutputStream {

        private static final byte[] f8355f = new byte[0];

        private final int f8356a;

        private final ArrayList f8357b;

        private int f8358c;

        private byte[] f8359d;

        private int f8360e;

        g(int i10) {
            if (i10 < 0) {
                throw new IllegalArgumentException("Buffer size < 0");
            }
            this.f8356a = i10;
            this.f8357b = new ArrayList();
            this.f8359d = new byte[i10];
        }

        private void b(int i10) {
            this.f8357b.add(new LiteralByteString(this.f8359d));
            int length = this.f8358c + this.f8359d.length;
            this.f8358c = length;
            this.f8359d = new byte[Math.max(this.f8356a, Math.max(i10, length >>> 1))];
            this.f8360e = 0;
        }

        public synchronized int d() {
            return this.f8358c + this.f8360e;
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(d()));
        }

        @Override
        public synchronized void write(int i10) {
            try {
                if (this.f8360e == this.f8359d.length) {
                    b(1);
                }
                byte[] bArr = this.f8359d;
                int i11 = this.f8360e;
                this.f8360e = i11 + 1;
                bArr[i11] = (byte) i10;
            } catch (Throwable th2) {
                throw th2;
            }
        }

        @Override
        public synchronized void write(byte[] bArr, int i10, int i11) {
            try {
                byte[] bArr2 = this.f8359d;
                int length = bArr2.length;
                int i12 = this.f8360e;
                if (i11 <= length - i12) {
                    System.arraycopy(bArr, i10, bArr2, i12, i11);
                    this.f8360e += i11;
                } else {
                    int length2 = bArr2.length - i12;
                    System.arraycopy(bArr, i10, bArr2, i12, length2);
                    int i13 = i11 - length2;
                    b(i13);
                    System.arraycopy(bArr, i10 + length2, this.f8359d, 0, i13);
                    this.f8360e = i13;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer, int i10) {
        checkRange(0, i10, byteBuffer.remaining());
        byte[] bArr = new byte[i10];
        byteBuffer.get(bArr);
        return new LiteralByteString(bArr);
    }

    static ByteString wrap(byte[] bArr) {
        return new LiteralByteString(bArr);
    }

    public final String toString(Charset charset) {
        return size() == 0 ? "" : toStringInternal(charset);
    }

    static ByteString wrap(byte[] bArr, int i10, int i11) {
        return new BoundedByteString(bArr, i10, i11);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()), truncateAndEscapeForDisplay());
    }

    public static ByteString copyFrom(ByteBuffer byteBuffer) {
        return copyFrom(byteBuffer, byteBuffer.remaining());
    }

    public static ByteString copyFrom(String str, String str2) throws UnsupportedEncodingException {
        return new LiteralByteString(str.getBytes(str2));
    }

    public static ByteString copyFrom(String str, Charset charset) {
        return new LiteralByteString(str.getBytes(charset));
    }

    public static ByteString copyFrom(Iterable<ByteString> iterable) {
        int size;
        if (!(iterable instanceof Collection)) {
            Iterator<ByteString> it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        } else {
            size = ((Collection) iterable).size();
        }
        if (size == 0) {
            return EMPTY;
        }
        return balancedConcat(iterable.iterator(), size);
    }
}
