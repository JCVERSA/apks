package o0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import ru.zdevs.zarchiver.ZApp;

public abstract class a implements Closeable {

    public String f1289c;

    public Process f1290d;

    public DataOutputStream f1291e;

    public DataInputStream f1292f;

    public DataInputStream f1293g;

    public volatile boolean f1295i;

    public int f1287a = 0;

    public String f1288b = null;

    public int f1294h = 0;

    public int f1296j = 0;

    public static a c(int i2) {
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                return new b();
            }
            if (Build.VERSION.SDK_INT >= 23) {
                return new e();
            }
        }
        return new f();
    }

    public static boolean g(int i2) {
        if (i2 == 1) {
            if (f.f1309l == 0) {
                f.f1309l = (byte) 1;
                b bVar = new b();
                if (bVar.f() && bVar.a(5, "su -v")) {
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String strK = bVar.k(true);
                        if (strK == null) {
                            break;
                        }
                        sb.append(strK);
                        sb.append('\n');
                    }
                    sb.length();
                    if (bVar.f1294h == 0) {
                        f.f1309l = (byte) 2;
                    }
                }
                bVar.close();
            }
            return f.f1309l == 2;
        }
        if (i2 != 2 && i2 != 3) {
            return true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        if (e.f1306k == 0) {
            if (ZApp.f1438g) {
                e.f1306k = (byte) 2;
            } else {
                PackageInfo packageInfo = null;
                Context contextC = ZApp.c(null);
                if (contextC != null) {
                    try {
                        packageInfo = contextC.getPackageManager().getPackageInfo("moe.shizuku.privileged.api", 0);
                    } catch (Throwable unused) {
                    }
                }
                if (packageInfo == null || packageInfo.versionCode < 502) {
                    e.f1306k = (byte) 1;
                } else {
                    e.f1306k = (byte) 2;
                }
            }
        }
        return e.f1306k == 2;
    }

    public final synchronized boolean a(int i2, String str) {
        if (!n(str + " ; echo -e \"\\n#@#[$?]#@#\\n\" \r\n")) {
            return false;
        }
        return l(i2, 2);
    }

    public final synchronized boolean b(String str) {
        return a(600, str);
    }

    @Override
    public final synchronized void close() {
        this.f1295i = true;
        synchronized (this) {
            notifyAll();
        }
        n0.e.d(this.f1291e);
        this.f1291e = null;
        n0.e.d(this.f1292f);
        this.f1292f = null;
        n0.e.d(this.f1293g);
        this.f1293g = null;
        Process process = this.f1290d;
        if (process != null) {
            try {
                process.destroy();
            } catch (Exception unused) {
            }
            this.f1290d = null;
        }
    }

    public abstract int d();

    public final void e(Process process) {
        this.f1295i = false;
        this.f1290d = process;
        this.f1291e = new DataOutputStream(this.f1290d.getOutputStream());
        this.f1292f = new DataInputStream(this.f1290d.getInputStream());
        this.f1293g = new DataInputStream(this.f1290d.getErrorStream());
    }

    public final boolean f() {
        return (this.f1290d == null || this.f1291e == null || this.f1292f == null) ? false : true;
    }

    public final boolean h() {
        Process process = this.f1290d;
        if (process == null) {
            return true;
        }
        try {
            process.exitValue();
            if (!this.f1295i) {
                try {
                    Thread.sleep(300L);
                } catch (Exception unused) {
                }
                i();
                this.f1295i = true;
            }
            return true;
        } catch (IllegalArgumentException unused2) {
            return false;
        }
    }

    public final void i() {
        String strN;
        try {
            DataInputStream dataInputStream = this.f1293g;
            if (dataInputStream == null || dataInputStream.available() <= 0) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            while (!this.f1295i && (strN = n0.e.n(this.f1293g, false)) != null) {
                sb.append(strN);
                sb.append('\n');
            }
            if (sb.length() > 2) {
                this.f1289c = sb.toString();
            }
        } catch (Exception unused) {
        }
    }

    public final void j(long j2) {
        synchronized (this) {
            wait(j2);
        }
    }

    public final synchronized String k(boolean z2) {
        String str;
        DataInputStream dataInputStream;
        str = null;
        while (!this.f1295i && (dataInputStream = this.f1292f) != null && (!z2 || str == null)) {
            try {
                if (dataInputStream.available() <= 0) {
                    j(100L);
                } else {
                    if (this.f1295i) {
                        break;
                    }
                    String strN = n0.e.n(this.f1292f, true);
                    if (strN != null) {
                        if (strN.startsWith("#@#[") && strN.endsWith("]#@#")) {
                            try {
                                this.f1294h = Integer.parseInt(strN.substring(4, strN.length() - 4));
                            } catch (Exception unused) {
                                this.f1294h = -1;
                            }
                            if (this.f1294h != 0) {
                                i();
                            }
                            this.f1295i = true;
                        } else {
                            str = strN;
                        }
                    }
                }
            } catch (Exception unused2) {
            }
        }
        return str;
    }

    public final synchronized boolean l(int i2, int i3) {
        int i4 = i2 * 100;
        do {
            try {
                j(10L);
                int iAvailable = this.f1292f.available();
                if (this.f1292f != null && iAvailable < i3 && (i4 = i4 - 1) > 0 && !this.f1295i) {
                }
                return i4 > 0;
            } catch (Exception unused) {
                this.f1295i = true;
                return false;
            }
        } while (!h());
        this.f1295i = true;
        return false;
    }

    public final void m(String str) {
        if (this.f1295i || this.f1291e == null) {
            return;
        }
        try {
            this.f1291e.write((str + "\r\n").getBytes("UTF-8"));
            this.f1291e.flush();
        } catch (Exception unused) {
        }
    }

    public final synchronized boolean n(String str) {
        this.f1295i = false;
        this.f1294h = -1;
        if (this.f1291e == null) {
            return false;
        }
        try {
            this.f1289c = null;
            DataInputStream dataInputStream = this.f1292f;
            if (dataInputStream != null && dataInputStream.available() > 0) {
                DataInputStream dataInputStream2 = this.f1292f;
                dataInputStream2.skip(dataInputStream2.available());
            }
            DataInputStream dataInputStream3 = this.f1293g;
            if (dataInputStream3 != null && dataInputStream3.available() > 0) {
                DataInputStream dataInputStream4 = this.f1293g;
                dataInputStream4.skip(dataInputStream4.available());
            }
            this.f1291e.write(str.getBytes("UTF-8"));
            this.f1291e.flush();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
