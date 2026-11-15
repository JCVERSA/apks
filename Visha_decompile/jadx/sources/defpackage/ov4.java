package defpackage;

import android.util.Base64;
import com.transsion.livecaption.constant.ICode;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStreamWriter;
import java.io.Serializable;

public final class ov4 {
    public static final ov4 a = new ov4();

    public static final void a(File file) {
        y45.j(file, "file");
        if (file.delete()) {
            return;
        }
        c.d.w(c.c, "Could not delete file: " + file);
    }

    public static final void c(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static final void e(File file, String str) {
        y45.j(file, "file");
        y45.j(str, ICode.CALL.CALL_KEY_CONTENT);
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.flush();
        } finally {
            c(outputStreamWriter);
        }
    }

    public final Serializable b(Class cls, String str) {
        y45.j(cls, "clazz");
        if (str != null) {
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str, 0)));
                try {
                    Object object = objectInputStream.readObject();
                    if (cls.isInstance(object)) {
                        Serializable serializable = (Serializable) cls.cast(object);
                        ly0.a(objectInputStream, null);
                        return serializable;
                    }
                    zfb zfbVar = zfb.a;
                    ly0.a(objectInputStream, null);
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        ly0.a(objectInputStream, th);
                        throw th2;
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public final String d(Serializable serializable) {
        y45.j(serializable, "serializable");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(serializable);
                String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
                ly0.a(objectOutputStream, null);
                return strEncodeToString;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(objectOutputStream, th);
                    throw th2;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
