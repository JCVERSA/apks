package com.google.common.primitives;

import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Comparator;
import sun.misc.Unsafe;

enum UnsignedBytes$LexicographicalComparatorHolder$UnsafeComparator implements Comparator<byte[]> {
    INSTANCE;

    static final boolean BIG_ENDIAN = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);
    static final int BYTE_ARRAY_BASE_OFFSET;
    static final Unsafe theUnsafe;

    class a implements PrivilegedExceptionAction {
        a() {
        }

        @Override
        public Unsafe run() throws IllegalAccessException {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            throw new NoSuchFieldError("the Unsafe");
        }
    }

    static {
        Unsafe unsafe = getUnsafe();
        theUnsafe = unsafe;
        int iArrayBaseOffset = unsafe.arrayBaseOffset(byte[].class);
        BYTE_ARRAY_BASE_OFFSET = iArrayBaseOffset;
        if (!"64".equals(System.getProperty("sun.arch.data.model")) || iArrayBaseOffset % 8 != 0 || unsafe.arrayIndexScale(byte[].class) != 1) {
            throw new Error();
        }
    }

    private static Unsafe getUnsafe() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e10) {
                throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new a());
        }
    }

    @Override
    public String toString() {
        return "UnsignedBytes.lexicographicalComparator() (sun.misc.Unsafe version)";
    }

    @Override
    public int compare(byte[] bArr, byte[] bArr2) {
        int iMin = Math.min(bArr.length, bArr2.length);
        int i10 = iMin & (-8);
        int i11 = 0;
        while (i11 < i10) {
            Unsafe unsafe = theUnsafe;
            int i12 = BYTE_ARRAY_BASE_OFFSET;
            long j10 = i11;
            long j11 = unsafe.getLong(bArr, ((long) i12) + j10);
            long j12 = unsafe.getLong(bArr2, ((long) i12) + j10);
            if (j11 != j12) {
                if (BIG_ENDIAN) {
                    return Long.compare(j11 ^ Long.MIN_VALUE, j12 ^ Long.MIN_VALUE);
                }
                int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j11 ^ j12) & (-8);
                return ((int) ((j11 >>> iNumberOfTrailingZeros) & 255)) - ((int) ((j12 >>> iNumberOfTrailingZeros) & 255));
            }
            i11 += 8;
        }
        while (i11 < iMin) {
            int iB = f.b(bArr[i11], bArr2[i11]);
            if (iB != 0) {
                return iB;
            }
            i11++;
        }
        return bArr.length - bArr2.length;
    }
}
