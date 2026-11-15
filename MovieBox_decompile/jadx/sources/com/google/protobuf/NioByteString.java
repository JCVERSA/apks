package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.InvalidMarkException;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;

final class NioByteString extends ByteString.LeafByteString {
    private final ByteBuffer buffer;

    NioByteString(ByteBuffer byteBuffer) {
        y.checkNotNull(byteBuffer, "buffer");
        this.buffer = byteBuffer.slice().order(ByteOrder.nativeOrder());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("NioByteString instances are not to be serialized directly");
    }

    private ByteBuffer slice(int i10, int i11) {
        if (i10 < this.buffer.position() || i11 > this.buffer.limit() || i10 > i11) {
            throw new IllegalArgumentException(String.format("Invalid indices [%d, %d]", Integer.valueOf(i10), Integer.valueOf(i11)));
        }
        ByteBuffer byteBufferSlice = this.buffer.slice();
        e0.position(byteBufferSlice, i10 - this.buffer.position());
        e0.limit(byteBufferSlice, i11 - this.buffer.position());
        return byteBufferSlice;
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
        e0.position(byteBufferSlice, i10);
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
        return Utf8.isValidUtf8(this.buffer);
    }

    @Override
    public i newCodedInput() {
        return i.newInstance(this.buffer, true);
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
        return Utf8.partialIsValidUtf8(i10, this.buffer, i11, i12 + i11);
    }

    @Override
    public int size() {
        return this.buffer.remaining();
    }

    @Override
    public ByteString substring(int i10, int i11) {
        try {
            return new NioByteString(slice(i10, i11));
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
            g.write(slice(i10, i11 + i10), outputStream);
        } else {
            outputStream.write(this.buffer.array(), this.buffer.arrayOffset() + this.buffer.position() + i10, i11);
        }
    }

    class a extends InputStream {
        private final ByteBuffer buf;

        a() {
            this.buf = NioByteString.this.buffer.slice();
        }

        @Override
        public int available() throws IOException {
            return this.buf.remaining();
        }

        @Override
        public void mark(int i10) {
            e0.mark(this.buf);
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read() throws IOException {
            if (this.buf.hasRemaining()) {
                return this.buf.get() & 255;
            }
            return -1;
        }

        @Override
        public void reset() throws IOException {
            try {
                e0.reset(this.buf);
            } catch (InvalidMarkException e10) {
                throw new IOException(e10);
            }
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (!this.buf.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i11, this.buf.remaining());
            this.buf.get(bArr, i10, iMin);
            return iMin;
        }
    }

    @Override
    void writeTo(h hVar) throws IOException {
        hVar.writeLazy(this.buffer.slice());
    }
}
