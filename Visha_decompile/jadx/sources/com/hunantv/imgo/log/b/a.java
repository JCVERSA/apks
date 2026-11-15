package com.hunantv.imgo.log.b;

import android.text.TextUtils;
import com.hunantv.imgo.log.LogConfig;
import com.hunantv.imgo.util.n;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class a implements f {
    public static a a;

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                try {
                    if (a == null) {
                        a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    private String c() {
        String str = com.hunantv.imgo.log.c.b;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str + "/config.conf";
    }

    private File d() {
        String strC = c();
        if (TextUtils.isEmpty(strC)) {
            return null;
        }
        try {
            File file = new File(strC);
            if (file.exists()) {
                file.delete();
                file.createNewFile();
            } else {
                file.createNewFile();
            }
            return file;
        } catch (Exception unused) {
            return null;
        }
    }

    public void b() throws Throwable {
        String strC = c();
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        File file = new File(strC);
        if (!file.exists() || file.isDirectory()) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    byte[] bArr = new byte[4096];
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        LogConfig logConfigA = LogConfig.a(bArr, fileInputStream2.read(bArr));
                        if (logConfigA != null && logConfigA.e()) {
                            com.hunantv.imgo.log.c.c = logConfigA;
                        }
                        fileInputStream2.close();
                    } catch (Exception e) {
                        e = e;
                        fileInputStream = fileInputStream2;
                        e.printStackTrace();
                        if (fileInputStream == null) {
                        } else {
                            fileInputStream.close();
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e4) {
                e = e4;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override
    public com.hunantv.imgo.log.entity.c a(com.hunantv.imgo.log.entity.b bVar) {
        LogConfig logConfigA;
        n.a("ConfigRequestHandler", "handleRequest start");
        try {
            byte[] bArr = bVar.b;
            if (bArr != null && (logConfigA = LogConfig.a(bArr, bArr.length)) != null && logConfigA.e()) {
                com.hunantv.imgo.log.c.c = logConfigA;
                a(logConfigA);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        byte[] bytes = "OK".getBytes();
        return new com.hunantv.imgo.log.entity.c(new com.hunantv.imgo.log.entity.a((byte) 20, bytes.length), bytes);
    }

    private void a(LogConfig logConfig) throws Throwable {
        File fileD;
        if (logConfig != null && logConfig.e() && (fileD = d()) != null && fileD.exists() && fileD.canWrite()) {
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(fileD);
                    try {
                        fileOutputStream2.write(logConfig.d());
                        fileOutputStream2.close();
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e4) {
                e = e4;
            }
        }
    }
}
