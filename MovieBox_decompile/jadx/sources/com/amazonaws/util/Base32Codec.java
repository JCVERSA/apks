package com.amazonaws.util;

import com.vungle.ads.internal.protos.Sdk$SDKError;

class Base32Codec extends AbstractBase32Codec {

    private static class LazyHolder {

        private static final byte[] f18371a = b();

        private static byte[] b() {
            byte[] bArr = new byte[Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE];
            for (int i10 = 0; i10 <= 122; i10++) {
                if (i10 >= 65 && i10 <= 90) {
                    bArr[i10] = (byte) (i10 - 65);
                } else if (i10 >= 50 && i10 <= 55) {
                    bArr[i10] = (byte) (i10 - 24);
                } else if (i10 < 97 || i10 > 122) {
                    bArr[i10] = -1;
                } else {
                    bArr[i10] = (byte) (i10 - 97);
                }
            }
            return bArr;
        }
    }

    Base32Codec() {
        super(k());
    }

    private static byte[] k() {
        return CodecUtils.toBytesDirect("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
    }

    @Override
    protected int j(byte b10) {
        byte b11 = LazyHolder.f18371a[b10];
        if (b11 > -1) {
            return b11;
        }
        throw new IllegalArgumentException("Invalid base 32 character: '" + ((char) b10) + "'");
    }
}
