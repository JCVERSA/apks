package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;

public abstract class dv3 extends cv3 {
    public static final ByteBuffer a(int i, CharsetEncoder charsetEncoder) {
        y45.j(charsetEncoder, "encoder");
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i * ((int) Math.ceil(charsetEncoder.maxBytesPerChar())));
        y45.i(byteBufferAllocate, "allocate(...)");
        return byteBufferAllocate;
    }

    public static final CharsetEncoder b(Charset charset) {
        y45.j(charset, "<this>");
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        return charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    public static final String c(File file, Charset charset) {
        y45.j(file, "<this>");
        y45.j(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String strC = mha.c(inputStreamReader);
            ly0.a(inputStreamReader, null);
            return strC;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(inputStreamReader, th);
                throw th2;
            }
        }
    }

    public static String d(File file, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = qv0.b;
        }
        return c(file, charset);
    }

    public static void e(File file, byte[] bArr) {
        y45.j(file, "<this>");
        y45.j(bArr, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArr);
            zfb zfbVar = zfb.a;
            ly0.a(fileOutputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(fileOutputStream, th);
                throw th2;
            }
        }
    }

    public static final void f(File file, String str, Charset charset) {
        y45.j(file, "<this>");
        y45.j(str, "text");
        y45.j(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            h(fileOutputStream, str, charset);
            zfb zfbVar = zfb.a;
            ly0.a(fileOutputStream, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                ly0.a(fileOutputStream, th);
                throw th2;
            }
        }
    }

    public static void g(File file, String str, Charset charset, int i, Object obj) {
        if ((i & 2) != 0) {
            charset = qv0.b;
        }
        f(file, str, charset);
    }

    public static final void h(OutputStream outputStream, String str, Charset charset) throws IOException {
        y45.j(outputStream, "<this>");
        y45.j(str, "text");
        y45.j(charset, "charset");
        if (str.length() < 16384) {
            byte[] bytes = str.getBytes(charset);
            y45.i(bytes, "getBytes(...)");
            outputStream.write(bytes);
            return;
        }
        CharsetEncoder charsetEncoderB = b(charset);
        CharBuffer charBufferAllocate = CharBuffer.allocate(8192);
        y45.g(charsetEncoderB);
        ByteBuffer byteBufferA = a(8192, charsetEncoderB);
        int i = 0;
        int i2 = 0;
        while (i < str.length()) {
            int iMin = Math.min(8192 - i2, str.length() - i);
            int i3 = i + iMin;
            char[] cArrArray = charBufferAllocate.array();
            y45.i(cArrArray, "array(...)");
            str.getChars(i, i3, cArrArray, i2);
            charBufferAllocate.limit(iMin + i2);
            i2 = 1;
            if (!charsetEncoderB.encode(charBufferAllocate, byteBufferA, i3 == str.length()).isUnderflow()) {
                throw new IllegalStateException("Check failed.");
            }
            outputStream.write(byteBufferA.array(), 0, byteBufferA.position());
            if (charBufferAllocate.position() != charBufferAllocate.limit()) {
                charBufferAllocate.put(0, charBufferAllocate.get());
            } else {
                i2 = 0;
            }
            charBufferAllocate.clear();
            byteBufferA.clear();
            i = i3;
        }
    }
}
