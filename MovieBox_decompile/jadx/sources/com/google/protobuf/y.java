package com.google.protobuf;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

public final class y {
    private static final int DEFAULT_BUFFER_SIZE = 4096;
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final ByteBuffer EMPTY_BYTE_BUFFER;
    public static final com.google.protobuf.i EMPTY_CODED_INPUT_STREAM;
    static final Charset US_ASCII = Charset.forName(C.ASCII_NAME);
    static final Charset UTF_8 = Charset.forName("UTF-8");
    static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    public interface a extends j {
        void addBoolean(boolean z10);

        boolean getBoolean(int i10);

        @Override
        boolean isModifiable();

        @Override
        void makeImmutable();

        @Override
        a mutableCopyWithCapacity(int i10);

        @Override
        j mutableCopyWithCapacity(int i10);

        boolean setBoolean(int i10, boolean z10);
    }

    public interface b extends j {
        void addDouble(double d10);

        double getDouble(int i10);

        @Override
        boolean isModifiable();

        @Override
        void makeImmutable();

        @Override
        b mutableCopyWithCapacity(int i10);

        @Override
        j mutableCopyWithCapacity(int i10);

        double setDouble(int i10, double d10);
    }

    public interface c {
        int getNumber();
    }

    public interface d {
        c findValueByNumber(int i10);
    }

    public interface e {
        boolean isInRange(int i10);
    }

    public interface f extends j {
        void addFloat(float f10);

        float getFloat(int i10);

        @Override
        boolean isModifiable();

        @Override
        void makeImmutable();

        @Override
        f mutableCopyWithCapacity(int i10);

        @Override
        j mutableCopyWithCapacity(int i10);

        float setFloat(int i10, float f10);
    }

    public interface g extends j {
        void addInt(int i10);

        int getInt(int i10);

        @Override
        boolean isModifiable();

        @Override
        void makeImmutable();

        @Override
        g mutableCopyWithCapacity(int i10);

        @Override
        j mutableCopyWithCapacity(int i10);

        int setInt(int i10, int i11);
    }

    public static class h extends AbstractList {
        private final a converter;
        private final List<Object> fromList;

        public interface a {
            Object convert(Object obj);
        }

        public h(List<Object> list, a aVar) {
            this.fromList = list;
            this.converter = aVar;
        }

        @Override
        public Object get(int i10) {
            return this.converter.convert(this.fromList.get(i10));
        }

        @Override
        public int size() {
            return this.fromList.size();
        }
    }

    public interface i extends j {
        void addLong(long j10);

        long getLong(int i10);

        @Override
        boolean isModifiable();

        @Override
        void makeImmutable();

        @Override
        i mutableCopyWithCapacity(int i10);

        @Override
        j mutableCopyWithCapacity(int i10);

        long setLong(int i10, long j10);
    }

    public interface j extends List, RandomAccess {
        boolean isModifiable();

        void makeImmutable();

        j mutableCopyWithCapacity(int i10);
    }

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_BYTE_BUFFER = ByteBuffer.wrap(bArr);
        EMPTY_CODED_INPUT_STREAM = com.google.protobuf.i.newInstance(bArr);
    }

    private y() {
    }

    public static byte[] byteArrayDefaultValue(String str) {
        return str.getBytes(ISO_8859_1);
    }

    public static ByteBuffer byteBufferDefaultValue(String str) {
        return ByteBuffer.wrap(byteArrayDefaultValue(str));
    }

    public static ByteString bytesDefaultValue(String str) {
        return ByteString.copyFrom(str.getBytes(ISO_8859_1));
    }

    static <T> T checkNotNull(T t10) {
        t10.getClass();
        return t10;
    }

    public static ByteBuffer copyByteBuffer(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.clear();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferDuplicate.capacity());
        byteBufferAllocate.put(byteBufferDuplicate);
        byteBufferAllocate.clear();
        return byteBufferAllocate;
    }

    public static boolean equals(List<byte[]> list, List<byte[]> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!Arrays.equals(list.get(i10), list2.get(i10))) {
                return false;
            }
        }
        return true;
    }

    public static boolean equalsByteBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        if (byteBuffer.capacity() != byteBuffer2.capacity()) {
            return false;
        }
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        e0.clear(byteBufferDuplicate);
        ByteBuffer byteBufferDuplicate2 = byteBuffer2.duplicate();
        e0.clear(byteBufferDuplicate2);
        return byteBufferDuplicate.equals(byteBufferDuplicate2);
    }

    public static <T extends s0> T getDefaultInstance(Class<T> cls) {
        try {
            Method method = cls.getMethod("getDefaultInstance", null);
            return (T) method.invoke(method, null);
        } catch (Exception e10) {
            throw new RuntimeException("Failed to get default instance for " + cls, e10);
        }
    }

    public static int hashBoolean(boolean z10) {
        return z10 ? 1231 : 1237;
    }

    public static int hashCode(List<byte[]> list) {
        Iterator<byte[]> it = list.iterator();
        int iHashCode = 1;
        while (it.hasNext()) {
            iHashCode = (iHashCode * 31) + hashCode(it.next());
        }
        return iHashCode;
    }

    public static int hashCodeByteBuffer(List<ByteBuffer> list) {
        Iterator<ByteBuffer> it = list.iterator();
        int iHashCodeByteBuffer = 1;
        while (it.hasNext()) {
            iHashCodeByteBuffer = (iHashCodeByteBuffer * 31) + hashCodeByteBuffer(it.next());
        }
        return iHashCodeByteBuffer;
    }

    public static int hashEnum(c cVar) {
        return cVar.getNumber();
    }

    public static int hashEnumList(List<? extends c> list) {
        Iterator<? extends c> it = list.iterator();
        int iHashEnum = 1;
        while (it.hasNext()) {
            iHashEnum = (iHashEnum * 31) + hashEnum(it.next());
        }
        return iHashEnum;
    }

    public static int hashLong(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static boolean isValidUtf8(ByteString byteString) {
        return byteString.isValidUtf8();
    }

    static Object mergeMessage(Object obj, Object obj2) {
        return ((s0) obj).toBuilder().mergeFrom((s0) obj2).buildPartial();
    }

    static int partialHash(int i10, byte[] bArr, int i11, int i12) {
        for (int i13 = i11; i13 < i11 + i12; i13++) {
            i10 = (i10 * 31) + bArr[i13];
        }
        return i10;
    }

    public static String stringDefaultValue(String str) {
        return new String(str.getBytes(ISO_8859_1), UTF_8);
    }

    public static byte[] toByteArray(String str) {
        return str.getBytes(UTF_8);
    }

    public static String toStringUtf8(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    static <T> T checkNotNull(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return Utf8.isValidUtf8(bArr);
    }

    public static int hashCode(byte[] bArr) {
        return hashCode(bArr, 0, bArr.length);
    }

    public static int hashCodeByteBuffer(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            int iPartialHash = partialHash(byteBuffer.capacity(), byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.capacity());
            if (iPartialHash == 0) {
                return 1;
            }
            return iPartialHash;
        }
        int iCapacity = byteBuffer.capacity() <= 4096 ? byteBuffer.capacity() : 4096;
        byte[] bArr = new byte[iCapacity];
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        e0.clear(byteBufferDuplicate);
        int iCapacity2 = byteBuffer.capacity();
        while (byteBufferDuplicate.remaining() > 0) {
            int iRemaining = byteBufferDuplicate.remaining() <= iCapacity ? byteBufferDuplicate.remaining() : iCapacity;
            byteBufferDuplicate.get(bArr, 0, iRemaining);
            iCapacity2 = partialHash(iCapacity2, bArr, 0, iRemaining);
        }
        if (iCapacity2 == 0) {
            return 1;
        }
        return iCapacity2;
    }

    static int hashCode(byte[] bArr, int i10, int i11) {
        int iPartialHash = partialHash(i11, bArr, i10, i11);
        if (iPartialHash == 0) {
            return 1;
        }
        return iPartialHash;
    }

    public static boolean equalsByteBuffer(List<ByteBuffer> list, List<ByteBuffer> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (!equalsByteBuffer(list.get(i10), list2.get(i10))) {
                return false;
            }
        }
        return true;
    }
}
