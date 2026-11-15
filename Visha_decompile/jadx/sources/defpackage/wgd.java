package defpackage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;

public abstract class wgd {
    public static void a(InputStream inputStream, OutputStream outputStream) throws IOException {
        GZIPInputStream gZIPInputStream = new GZIPInputStream(inputStream);
        byte[] bArr = new byte[1024];
        while (true) {
            int i = gZIPInputStream.read(bArr, 0, 1024);
            if (i == -1) {
                gZIPInputStream.close();
                return;
            }
            outputStream.write(bArr, 0, i);
        }
    }

    public static boolean b(File file) {
        FileOutputStream fileOutputStream;
        Exception e;
        FileInputStream fileInputStream;
        boolean z = true;
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file.getPath().replace(".gz", ""));
                try {
                    try {
                        a(fileInputStream, fileOutputStream);
                        fileOutputStream.flush();
                        y4d.f(fileInputStream, fileOutputStream);
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        y4d.f(fileInputStream, fileOutputStream);
                        z = false;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    y4d.f(fileInputStream2, fileOutputStream);
                    throw th;
                }
            } catch (Exception e3) {
                fileOutputStream = null;
                e = e3;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                fileInputStream2 = fileInputStream;
                y4d.f(fileInputStream2, fileOutputStream);
                throw th;
            }
        } catch (Exception e4) {
            fileOutputStream = null;
            e = e4;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            y4d.f(fileInputStream2, fileOutputStream);
            throw th;
        }
        file.delete();
        return z;
    }

    public static boolean c(File file) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    byte[] bArr = new byte[2];
                    fileInputStream2.read(bArr);
                    boolean z = (((bArr[1] & 255) << 8) | bArr[0]) == 35615;
                    try {
                        fileInputStream2.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return z;
                } catch (Exception e2) {
                    e = e2;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
