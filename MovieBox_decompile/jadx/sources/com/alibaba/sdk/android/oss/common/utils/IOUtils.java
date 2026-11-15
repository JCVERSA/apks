package com.alibaba.sdk.android.oss.common.utils;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;

public class IOUtils {
    private static final int BUFFER_SIZE = 4096;

    public static byte[] readStreamAsBytesArray(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 <= -1) {
                byteArrayOutputStream.flush();
                safeClose(byteArrayOutputStream);
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public static String readStreamAsString(InputStream inputStream, String str) throws Throwable {
        if (inputStream == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[4096];
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream, str));
            while (true) {
                try {
                    int i10 = bufferedReader2.read(cArr);
                    if (i10 <= 0) {
                        String string = stringWriter.toString();
                        safeClose(inputStream);
                        bufferedReader2.close();
                        stringWriter.close();
                        return string;
                    }
                    stringWriter.write(cArr, 0, i10);
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    safeClose(inputStream);
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    stringWriter.close();
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void safeClose(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void safeClose(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static byte[] readStreamAsBytesArray(InputStream inputStream, int i10) throws IOException {
        int i11;
        if (inputStream == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        long j10 = 0;
        while (true) {
            long j11 = i10;
            if (j10 >= j11 || (i11 = inputStream.read(bArr, 0, Math.min(2048, (int) (j11 - j10)))) <= -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i11);
            j10 += (long) i11;
        }
        byteArrayOutputStream.flush();
        safeClose(byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }
}
