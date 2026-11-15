package androidx.datastore.preferences.protobuf;

import java.nio.ByteBuffer;

@CheckReturnValue
abstract class AllocatedBuffer {
    public static AllocatedBuffer wrap(byte[] bArr) {
        return wrapNoCheck(bArr, 0, bArr.length);
    }

    private static AllocatedBuffer wrapNoCheck(final byte[] bArr, final int i, final int i2) {
        return new AllocatedBuffer() {
            private int position;

            @Override
            public byte[] array() {
                return bArr;
            }

            @Override
            public int arrayOffset() {
                return i;
            }

            @Override
            public boolean hasArray() {
                return true;
            }

            @Override
            public boolean hasNioBuffer() {
                return false;
            }

            @Override
            public int limit() {
                return i2;
            }

            @Override
            public ByteBuffer nioBuffer() {
                throw new UnsupportedOperationException();
            }

            @Override
            public int position() {
                return this.position;
            }

            @Override
            public int remaining() {
                return i2 - this.position;
            }

            @Override
            public AllocatedBuffer position(int i3) {
                if (i3 >= 0 && i3 <= i2) {
                    this.position = i3;
                    return this;
                }
                throw new IllegalArgumentException("Invalid position: " + i3);
            }
        };
    }

    public abstract byte[] array();

    public abstract int arrayOffset();

    public abstract boolean hasArray();

    public abstract boolean hasNioBuffer();

    public abstract int limit();

    public abstract ByteBuffer nioBuffer();

    public abstract int position();

    @CanIgnoreReturnValue
    public abstract AllocatedBuffer position(int i);

    public abstract int remaining();

    public static AllocatedBuffer wrap(byte[] bArr, int i, int i2) {
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException(String.format("bytes.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        return wrapNoCheck(bArr, i, i2);
    }

    public static AllocatedBuffer wrap(final ByteBuffer byteBuffer) {
        Internal.checkNotNull(byteBuffer, "buffer");
        return new AllocatedBuffer() {
            @Override
            public byte[] array() {
                return byteBuffer.array();
            }

            @Override
            public int arrayOffset() {
                return byteBuffer.arrayOffset();
            }

            @Override
            public boolean hasArray() {
                return byteBuffer.hasArray();
            }

            @Override
            public boolean hasNioBuffer() {
                return true;
            }

            @Override
            public int limit() {
                return byteBuffer.limit();
            }

            @Override
            public ByteBuffer nioBuffer() {
                return byteBuffer;
            }

            @Override
            public int position() {
                return byteBuffer.position();
            }

            @Override
            public int remaining() {
                return byteBuffer.remaining();
            }

            @Override
            public AllocatedBuffer position(int i) {
                Java8Compatibility.position(byteBuffer, i);
                return this;
            }
        };
    }
}
