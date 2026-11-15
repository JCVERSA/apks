package com.google.common.io;

import com.google.common.base.m;
import com.google.common.math.d;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;

public abstract class a {

    private static final OutputStream f30056a = new C0388a();

    class C0388a extends OutputStream {
        C0388a() {
        }

        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override
        public void write(int i10) {
        }

        @Override
        public void write(byte[] bArr) {
            m.o(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) {
            m.o(bArr);
            m.t(i10, i11 + i10, bArr.length);
        }
    }

    private static byte[] a(Queue queue, int i10) {
        if (queue.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr = (byte[]) queue.remove();
        if (bArr.length == i10) {
            return bArr;
        }
        int length = i10 - bArr.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, i10);
        while (length > 0) {
            byte[] bArr2 = (byte[]) queue.remove();
            int iMin = Math.min(length, bArr2.length);
            System.arraycopy(bArr2, 0, bArrCopyOf, i10 - length, iMin);
            length -= iMin;
        }
        return bArrCopyOf;
    }

    public static byte[] b(InputStream inputStream) {
        m.o(inputStream);
        return c(inputStream, new ArrayDeque(20), 0);
    }

    private static byte[] c(InputStream inputStream, Queue queue, int i10) throws IOException {
        int iMin = Math.min(8192, Math.max(128, Integer.highestOneBit(i10) * 2));
        while (i10 < 2147483639) {
            int iMin2 = Math.min(iMin, 2147483639 - i10);
            byte[] bArr = new byte[iMin2];
            queue.add(bArr);
            int i11 = 0;
            while (i11 < iMin2) {
                int i12 = inputStream.read(bArr, i11, iMin2 - i11);
                if (i12 == -1) {
                    return a(queue, i10);
                }
                i11 += i12;
                i10 += i12;
            }
            iMin = d.i(iMin, iMin < 4096 ? 4 : 2);
        }
        if (inputStream.read() == -1) {
            return a(queue, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
