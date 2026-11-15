package com.yandex.mobile.ads.impl;

import com.transsion.livecaption.constant.ICode;
import defpackage.y45;
import java.io.IOException;
import okio.BufferedSink;

public abstract class yp1 {

    public static final class a {
        private a() {
        }

        public static xp1 a(byte[] bArr) {
            int length = bArr.length;
            y45.j(bArr, "<this>");
            long length2 = bArr.length;
            long j = 0;
            long j2 = length;
            byte[] bArr2 = g92.a;
            if ((j | j2) < 0 || j > length2 || length2 - j < j2) {
                throw new ArrayIndexOutOfBoundsException();
            }
            return new xp1(null, bArr, length, 0);
        }

        public a(int i) {
            this();
        }
    }

    public static final xp1 a(byte[] bArr) {
        y45.j(bArr, ICode.CALL.CALL_KEY_CONTENT);
        int length = bArr.length;
        y45.j(bArr, ICode.CALL.CALL_KEY_CONTENT);
        y45.j(bArr, "<this>");
        long length2 = bArr.length;
        long j = 0;
        long j2 = length;
        byte[] bArr2 = g92.a;
        if ((j | j2) < 0 || j > length2 || length2 - j < j2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        return new xp1(null, bArr, length, 0);
    }

    public abstract long a() throws IOException;

    public abstract void a(BufferedSink bufferedSink) throws IOException;

    public abstract cx0 b();
}
