package defpackage;

import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;

public abstract class mv4 {
    public static void a(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Exception e) {
            ie7.a(e);
        }
    }

    public static boolean b(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                return true;
            }
            file.delete();
        }
        return file.mkdirs();
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return b(new File(str));
    }

    public static boolean d(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isFile()) {
            file.delete();
            return true;
        }
        if (!file.isDirectory()) {
            return true;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                d(file2);
            }
        }
        file.delete();
        return true;
    }

    public static boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return d(new File(str));
    }

    public static byte[] f(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        i(inputStream, byteArrayOutputStream);
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] g(Object obj) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    try {
                        objectOutputStream.writeObject(obj);
                        objectOutputStream.flush();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        a(objectOutputStream);
                        a(byteArrayOutputStream);
                        return byteArray;
                    } catch (IOException e) {
                        e = e;
                        ie7.a(e);
                        a(objectOutputStream);
                        a(byteArrayOutputStream);
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream2 = objectOutputStream;
                    a(objectOutputStream2);
                    a(byteArrayOutputStream);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                objectOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                a(objectOutputStream2);
                a(byteArrayOutputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            byteArrayOutputStream = null;
            objectOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    public static Object h(byte[] bArr) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        ObjectInputStream objectInputStream;
        if (bArr == null) {
            return null;
        }
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    try {
                        Object object = objectInputStream.readObject();
                        a(objectInputStream);
                        a(byteArrayInputStream);
                        return object;
                    } catch (Exception e) {
                        e = e;
                        ie7.a(e);
                        a(objectInputStream);
                        a(byteArrayInputStream);
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    a(objectInputStream);
                    a(byteArrayInputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                objectInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
                a(objectInputStream);
                a(byteArrayInputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            objectInputStream = null;
            byteArrayInputStream = null;
        } catch (Throwable th4) {
            byteArrayInputStream = null;
            th = th4;
            objectInputStream = null;
        }
    }

    public static void i(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }
}
