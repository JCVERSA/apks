package com.google.firebase.crashlytics.internal.common;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

class g {

    private static final String f30352b = CommonUtils.z(UUID.randomUUID().toString() + System.currentTimeMillis());

    private static final AtomicLong f30353c = new AtomicLong(0);

    private final String f30354a;

    g() {
        byte[] bArr = new byte[10];
        f(bArr);
        e(bArr);
        d(bArr);
        String strT = CommonUtils.t(bArr);
        Locale locale = Locale.US;
        this.f30354a = String.format(locale, "%s%s%s%s", strT.substring(0, 12), strT.substring(12, 16), strT.subSequence(16, 20), f30352b.substring(0, 12)).toUpperCase(locale);
    }

    private static byte[] a(long j10) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt((int) j10);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    private static byte[] b(long j10) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.putShort((short) j10);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.position(0);
        return byteBufferAllocate.array();
    }

    private void d(byte[] bArr) {
        byte[] bArrB = b(Integer.valueOf(Process.myPid()).shortValue());
        bArr[8] = bArrB[0];
        bArr[9] = bArrB[1];
    }

    private void e(byte[] bArr) {
        byte[] bArrB = b(f30353c.incrementAndGet());
        bArr[6] = bArrB[0];
        bArr[7] = bArrB[1];
    }

    private void f(byte[] bArr) {
        long time = new Date().getTime();
        byte[] bArrA = a(time / 1000);
        bArr[0] = bArrA[0];
        bArr[1] = bArrA[1];
        bArr[2] = bArrA[2];
        bArr[3] = bArrA[3];
        byte[] bArrB = b(time % 1000);
        bArr[4] = bArrB[0];
        bArr[5] = bArrB[1];
    }

    public String c() {
        return this.f30354a;
    }

    public String toString() {
        return this.f30354a;
    }
}
