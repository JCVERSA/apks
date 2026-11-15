package org.libtorrent4j;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

final class Files {
    private static final int EOF = -1;

    private Files() {
    }

    public static byte[] bytes(File file) throws Throwable {
        FileInputStream fileInputStreamOpenInputStream;
        try {
            fileInputStreamOpenInputStream = openInputStream(file);
            try {
                byte[] byteArray = toByteArray(fileInputStreamOpenInputStream, file.length());
                closeQuietly((InputStream) fileInputStreamOpenInputStream);
                return byteArray;
            } catch (Throwable th) {
                th = th;
                closeQuietly((InputStream) fileInputStreamOpenInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStreamOpenInputStream = null;
        }
    }

    public static void closeQuietly(InputStream inputStream) {
        closeQuietly((Closeable) inputStream);
    }

    private static FileInputStream openInputStream(File file) throws IOException {
        if (!file.exists()) {
            throw new FileNotFoundException("File '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            throw new IOException("File '" + file + "' exists but is a directory");
        }
        if (file.canRead()) {
            return new FileInputStream(file);
        }
        throw new IOException("File '" + file + "' cannot be read");
    }

    private static byte[] toByteArray(InputStream inputStream, long j) throws IOException {
        if (j <= 2147483647L) {
            return toByteArray(inputStream, (int) j);
        }
        throw new IllegalArgumentException("Size cannot be greater than Integer max value: " + j);
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static byte[] toByteArray(InputStream inputStream, int i) throws IOException {
        if (i < 0) {
            throw new IllegalArgumentException("Size must be equal or greater than zero: " + i);
        }
        int i2 = 0;
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        while (i2 < i) {
            int i3 = inputStream.read(bArr, i2, i - i2);
            if (i3 == -1) {
                break;
            }
            i2 += i3;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Unexpected readed size. current: " + i2 + ", excepted: " + i);
    }
}
