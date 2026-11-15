package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.taaneh.athena;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.ga.anateh;
import java.io.File;

public class g5d {
    public static volatile g5d e;
    public byte[] a;
    public boolean b;
    public String c;
    public String d;

    public static g5d d() {
        if (e == null) {
            synchronized (g5d.class) {
                try {
                    if (e == null) {
                        e = new g5d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(AthenaAnalytics.I().getFilesDir());
        String str2 = File.separator;
        sb.append(str2);
        sb.append(str);
        this.c = sb.toString();
        if (!c()) {
            this.c = AthenaAnalytics.I().getFilesDir().getPath();
        }
        this.d = this.c + str2 + "remote_config.cfg";
    }

    public void b(byte[] bArr) {
        this.a = bArr;
    }

    public final boolean c() {
        if (!this.b) {
            File file = new File(this.c);
            try {
                if (file.exists()) {
                    this.b = true;
                } else {
                    this.b = file.mkdirs();
                }
            } catch (Exception e2) {
                c4d.d(Log.getStackTraceString(e2));
            }
        }
        return this.b;
    }

    public void e(String str) throws Throwable {
        if (!TextUtils.isEmpty(this.c) && c()) {
            File file = new File(this.d);
            try {
                r4d.d(file, str, this.a);
            } catch (Exception e2) {
                zbd.a().c(new anateh("bufferSave", e2));
                try {
                    if (file.isDirectory()) {
                        athena.i(AthenaAnalytics.I(), this.d);
                    }
                } catch (Exception unused) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public String f() throws Throwable {
        if (!TextUtils.isEmpty(this.c) && c()) {
            File file = new File(this.d);
            try {
                return r4d.a(file, this.a);
            } catch (Exception e2) {
                try {
                    Bundle bundle = new Bundle();
                    bundle.putString("e", e2.getClass().getSimpleName());
                    bundle.putString("pwd", anehat.c(this.a));
                    bundle.putLong("len", file.length());
                    zbd.a().c(new anateh("bufferRead", bundle));
                    athena.o(AthenaAnalytics.I(), file);
                } catch (Exception unused) {
                    e2.printStackTrace();
                }
            }
        }
        return null;
    }
}
