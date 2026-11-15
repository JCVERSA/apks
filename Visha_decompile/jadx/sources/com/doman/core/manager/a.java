package com.doman.core.manager;

import com.doman.core.CoreMain;
import com.doman.core.a.f;
import com.doman.core.d.b;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public class a {
    private static a c;
    public String a;
    public String b;
    private String d = "InitConfigManager";

    private a() {
    }

    public static a a() {
        if (c == null) {
            synchronized (a.class) {
                try {
                    if (c == null) {
                        c = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public static f b() {
        b.a();
        return (f) b.a("INIT_CONFIG_BEAN");
    }

    public static boolean c() {
        f fVarB = b();
        if (fVarB != null) {
            return fVarB.A;
        }
        return false;
    }

    public static int d() {
        f fVarB = b();
        if (fVarB != null) {
            return fVarB.D;
        }
        return 0;
    }

    public static String e() {
        f fVarB = b();
        return fVarB != null ? fVarB.q : "";
    }

    public static String f() {
        f fVarB = b();
        return fVarB != null ? fVarB.E : "";
    }

    public static void a(f fVar) {
        ObjectOutputStream objectOutputStream;
        b.a();
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStreamOpenFileOutput = CoreMain.getInstance().getContext().openFileOutput("INIT_CONFIG_BEAN", 0);
            try {
                objectOutputStream = new ObjectOutputStream(fileOutputStreamOpenFileOutput);
                try {
                    objectOutputStream.writeObject(fVar);
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException unused) {
                        }
                    }
                    try {
                        objectOutputStream.close();
                    } catch (IOException unused2) {
                    }
                } catch (Exception unused3) {
                    fileOutputStream = fileOutputStreamOpenFileOutput;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused4) {
                        }
                    }
                    if (objectOutputStream != null) {
                        try {
                            objectOutputStream.close();
                        } catch (IOException unused5) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStreamOpenFileOutput;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (objectOutputStream == null) {
                        throw th;
                    }
                    try {
                        objectOutputStream.close();
                        throw th;
                    } catch (IOException unused7) {
                        throw th;
                    }
                }
            } catch (Exception unused8) {
                objectOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                objectOutputStream = null;
            }
        } catch (Exception unused9) {
            objectOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            objectOutputStream = null;
        }
    }
}
