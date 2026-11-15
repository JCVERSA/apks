package com.google.common.primitives;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.xd8;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public abstract class Bytes {

    public static class ByteArrayAsList extends AbstractList<Byte> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final byte[] array;
        final int end;
        final int start;

        public ByteArrayAsList(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override
        public boolean contains(Object obj) {
            return (obj instanceof Byte) && Bytes.d(this.array, ((Byte) obj).byteValue(), this.start, this.end) != -1;
        }

        @Override
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof ByteArrayAsList)) {
                return super.equals(obj);
            }
            ByteArrayAsList byteArrayAsList = (ByteArrayAsList) obj;
            int size = size();
            if (byteArrayAsList.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (this.array[this.start + i] != byteArrayAsList.array[byteArrayAsList.start + i]) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int hashCode() {
            int iC = 1;
            for (int i = this.start; i < this.end; i++) {
                iC = (iC * 31) + Bytes.c(this.array[i]);
            }
            return iC;
        }

        @Override
        public int indexOf(Object obj) {
            int iD;
            if (!(obj instanceof Byte) || (iD = Bytes.d(this.array, ((Byte) obj).byteValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iD - this.start;
        }

        @Override
        public boolean isEmpty() {
            return false;
        }

        @Override
        public int lastIndexOf(Object obj) {
            int iF;
            if (!(obj instanceof Byte) || (iF = Bytes.f(this.array, ((Byte) obj).byteValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iF - this.start;
        }

        @Override
        public int size() {
            return this.end - this.start;
        }

        @Override
        public List<Byte> subList(int i, int i2) {
            xd8.t(i, i2, size());
            if (i == i2) {
                return Collections.emptyList();
            }
            byte[] bArr = this.array;
            int i3 = this.start;
            return new ByteArrayAsList(bArr, i + i3, i3 + i2);
        }

        public byte[] toByteArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 5);
            sb.append('[');
            sb.append((int) this.array[this.start]);
            int i = this.start;
            while (true) {
                i++;
                if (i >= this.end) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(", ");
                sb.append((int) this.array[i]);
            }
        }

        public ByteArrayAsList(byte[] bArr, int i, int i2) {
            this.array = bArr;
            this.start = i;
            this.end = i2;
        }

        @Override
        public Byte get(int i) {
            xd8.m(i, size());
            return Byte.valueOf(this.array[this.start + i]);
        }

        @Override
        public Byte set(int i, Byte b) {
            xd8.m(i, size());
            byte[] bArr = this.array;
            int i2 = this.start;
            byte b2 = bArr[i2 + i];
            bArr[i2 + i] = ((Byte) xd8.o(b)).byteValue();
            return Byte.valueOf(b2);
        }
    }

    public static int c(byte b) {
        return b;
    }

    public static int d(byte[] bArr, byte b, int i, int i2) {
        while (i < i2) {
            if (bArr[i] == b) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static int e(byte[] bArr, byte[] bArr2) {
        xd8.p(bArr, "array");
        xd8.p(bArr2, TypedValues.AttributesType.S_TARGET);
        if (bArr2.length == 0) {
            return 0;
        }
        for (int i = 0; i < (bArr.length - bArr2.length) + 1; i++) {
            for (int i2 = 0; i2 < bArr2.length; i2++) {
                if (bArr[i + i2] != bArr2[i2]) {
                }
            }
            return i;
        }
        return -1;
    }

    public static int f(byte[] bArr, byte b, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            if (bArr[i3] == b) {
                return i3;
            }
        }
        return -1;
    }

    public static byte[] g(Collection collection) {
        if (collection instanceof ByteArrayAsList) {
            return ((ByteArrayAsList) collection).toByteArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = ((Number) xd8.o(array[i])).byteValue();
        }
        return bArr;
    }
}
