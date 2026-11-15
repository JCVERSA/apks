package com.transsion.api.gateway.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class UrlconncetionUtils {
    private static final int COPY_BUF_SIZE = 8024;

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        return copy(inputStream, outputStream, COPY_BUF_SIZE);
    }

    public static byte[] toBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        long j10 = 0;
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 <= 0) {
                return j10;
            }
            outputStream.write(bArr, 0, i11);
            j10 += (long) i11;
        }
    }
}
