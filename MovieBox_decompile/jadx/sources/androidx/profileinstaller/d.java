package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.concurrent.Executor;

public class d {

    private final AssetManager f13714a;

    private final Executor f13715b;

    private final h.c f13716c;

    private final File f13718e;

    private final String f13719f;

    private final String f13720g;

    private final String f13721h;

    private e[] f13723j;

    private byte[] f13724k;

    private boolean f13722i = false;

    private final byte[] f13717d = d();

    public d(AssetManager assetManager, Executor executor, h.c cVar, String str, String str2, String str3, File file) {
        this.f13714a = assetManager;
        this.f13715b = executor;
        this.f13716c = cVar;
        this.f13719f = str;
        this.f13720g = str2;
        this.f13721h = str3;
        this.f13718e = file;
    }

    private d b(e[] eVarArr, byte[] bArr) {
        try {
            InputStream inputStreamH = h(this.f13714a, this.f13721h);
            if (inputStreamH == null) {
                if (inputStreamH != null) {
                    inputStreamH.close();
                }
                return null;
            }
            try {
                this.f13723j = l.r(inputStreamH, l.p(inputStreamH, l.f13744b), bArr, eVarArr);
                inputStreamH.close();
                return this;
            } catch (Throwable th2) {
                try {
                    inputStreamH.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        } catch (FileNotFoundException e10) {
            this.f13716c.a(9, e10);
        } catch (IOException e11) {
            this.f13716c.a(7, e11);
        } catch (IllegalStateException e12) {
            this.f13723j = null;
            this.f13716c.a(8, e12);
        }
    }

    private void c() {
        if (!this.f13722i) {
            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
        }
    }

    private static byte[] d() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 24) {
            return null;
        }
        if (i10 >= 31) {
            return n.f13756a;
        }
        switch (i10) {
            case 24:
            case 25:
                return n.f13760e;
            case 26:
                return n.f13759d;
            case 27:
                return n.f13758c;
            case 28:
            case NOTIFICATION_REDIRECT_VALUE:
            case 30:
                return n.f13757b;
            default:
                return null;
        }
    }

    private InputStream f(AssetManager assetManager) {
        try {
            return h(assetManager, this.f13720g);
        } catch (FileNotFoundException e10) {
            this.f13716c.a(6, e10);
            return null;
        } catch (IOException e11) {
            this.f13716c.a(7, e11);
            return null;
        }
    }

    public void g(int i10, Object obj) {
        this.f13716c.a(i10, obj);
    }

    private InputStream h(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e10) {
            String message = e10.getMessage();
            if (message != null && message.contains("compressed")) {
                this.f13716c.b(5, null);
            }
            return null;
        }
    }

    private e[] j(InputStream inputStream) {
        try {
            try {
                try {
                    try {
                        e[] eVarArrX = l.x(inputStream, l.p(inputStream, l.f13743a), this.f13719f);
                        try {
                            return eVarArrX;
                        } catch (IOException e10) {
                            return eVarArrX;
                        }
                    } catch (IOException e11) {
                        this.f13716c.a(7, e11);
                        return null;
                    }
                } catch (IllegalStateException e12) {
                    this.f13716c.a(8, e12);
                    inputStream.close();
                    return null;
                }
            } catch (IOException e13) {
                this.f13716c.a(7, e13);
                inputStream.close();
                return null;
            }
        } finally {
            try {
                inputStream.close();
            } catch (IOException e14) {
                this.f13716c.a(7, e14);
            }
        }
    }

    private static boolean k() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 24) {
            return false;
        }
        return i10 >= 31 || i10 == 24 || i10 == 25;
    }

    private void l(final int i10, final Object obj) {
        this.f13715b.execute(new Runnable() {
            @Override
            public final void run() {
                this.f13711a.g(i10, obj);
            }
        });
    }

    public boolean e() {
        if (this.f13717d == null) {
            l(3, Integer.valueOf(Build.VERSION.SDK_INT));
            return false;
        }
        if (!this.f13718e.exists()) {
            try {
                if (!this.f13718e.createNewFile()) {
                    l(4, null);
                    return false;
                }
            } catch (IOException unused) {
                l(4, null);
                return false;
            }
        } else if (!this.f13718e.canWrite()) {
            l(4, null);
            return false;
        }
        this.f13722i = true;
        return true;
    }

    public d i() {
        d dVarB;
        c();
        if (this.f13717d == null) {
            return this;
        }
        InputStream inputStreamF = f(this.f13714a);
        if (inputStreamF != null) {
            this.f13723j = j(inputStreamF);
        }
        e[] eVarArr = this.f13723j;
        return (eVarArr == null || !k() || (dVarB = b(eVarArr, this.f13717d)) == null) ? this : dVarB;
    }

    public d m() {
        e[] eVarArr = this.f13723j;
        byte[] bArr = this.f13717d;
        if (eVarArr != null && bArr != null) {
            c();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    l.F(byteArrayOutputStream, bArr);
                    if (!l.C(byteArrayOutputStream, bArr, eVarArr)) {
                        this.f13716c.a(5, null);
                        this.f13723j = null;
                        byteArrayOutputStream.close();
                        return this;
                    }
                    this.f13724k = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    this.f13723j = null;
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (IOException e10) {
                this.f13716c.a(7, e10);
            } catch (IllegalStateException e11) {
                this.f13716c.a(8, e11);
            }
        }
        return this;
    }

    public boolean n() {
        byte[] bArr = this.f13724k;
        if (bArr == null) {
            return false;
        }
        c();
        try {
            try {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(this.f13718e);
                    try {
                        FileChannel channel = fileOutputStream.getChannel();
                        try {
                            FileLock fileLockTryLock = channel.tryLock();
                            try {
                                f.l(byteArrayInputStream, fileOutputStream, fileLockTryLock);
                                l(1, null);
                                if (fileLockTryLock != null) {
                                    fileLockTryLock.close();
                                }
                                channel.close();
                                fileOutputStream.close();
                                byteArrayInputStream.close();
                                this.f13724k = null;
                                this.f13723j = null;
                                return true;
                            } catch (Throwable th2) {
                                if (fileLockTryLock != null) {
                                    try {
                                        fileLockTryLock.close();
                                    } catch (Throwable th3) {
                                        th2.addSuppressed(th3);
                                    }
                                }
                                throw th2;
                            }
                        } catch (Throwable th4) {
                            if (channel != null) {
                                try {
                                    channel.close();
                                } catch (Throwable th5) {
                                    th4.addSuppressed(th5);
                                }
                            }
                            throw th4;
                        }
                    } catch (Throwable th6) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th7) {
                            th6.addSuppressed(th7);
                        }
                        throw th6;
                    }
                } catch (Throwable th8) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th9) {
                        th8.addSuppressed(th9);
                    }
                    throw th8;
                }
            } catch (FileNotFoundException e10) {
                l(6, e10);
                this.f13724k = null;
                this.f13723j = null;
                return false;
            } catch (IOException e11) {
                l(7, e11);
                this.f13724k = null;
                this.f13723j = null;
                return false;
            }
        } catch (Throwable th10) {
            this.f13724k = null;
            this.f13723j = null;
            throw th10;
        }
    }
}
