package com.doman.core.d;

import com.doman.core.CoreMain;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

public final class b {
    private static b a;

    private b() {
    }

    public static b a() {
        if (a == null) {
            a = new b();
        }
        return a;
    }

    public static Object a(String str) throws Throwable {
        ObjectInputStream objectInputStream;
        Throwable th;
        FileInputStream fileInputStreamOpenFileInput;
        try {
            fileInputStreamOpenFileInput = CoreMain.getInstance().getContext().openFileInput(str);
            try {
                objectInputStream = new ObjectInputStream(fileInputStreamOpenFileInput);
                try {
                    Object object = objectInputStream.readObject();
                    if (fileInputStreamOpenFileInput != null) {
                        try {
                            fileInputStreamOpenFileInput.close();
                        } catch (IOException unused) {
                        }
                    }
                    try {
                        objectInputStream.close();
                    } catch (IOException unused2) {
                    }
                    return object;
                } catch (Exception unused3) {
                    if (fileInputStreamOpenFileInput != null) {
                        try {
                            fileInputStreamOpenFileInput.close();
                        } catch (IOException unused4) {
                        }
                    }
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException unused5) {
                        }
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStreamOpenFileInput != null) {
                        try {
                            fileInputStreamOpenFileInput.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (objectInputStream == null) {
                        throw th;
                    }
                    try {
                        objectInputStream.close();
                        throw th;
                    } catch (IOException unused7) {
                        throw th;
                    }
                }
            } catch (Exception unused8) {
                objectInputStream = null;
            } catch (Throwable th3) {
                objectInputStream = null;
                th = th3;
            }
        } catch (Exception unused9) {
            fileInputStreamOpenFileInput = null;
            objectInputStream = null;
        } catch (Throwable th4) {
            objectInputStream = null;
            th = th4;
            fileInputStreamOpenFileInput = null;
        }
    }
}
