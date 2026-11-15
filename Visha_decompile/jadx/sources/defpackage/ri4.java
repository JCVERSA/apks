package defpackage;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.cloud.upload.service.UploadService;
import com.transsion.cloud.upload.task.NewUploadTask;
import java.util.ArrayList;
import java.util.List;

public class ri4 {
    public static volatile ri4 c;
    public bx4 a;
    public final ServiceConnection b = new a();

    public class a implements ServiceConnection {
        public a() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                ri4.this.a = (bx4) iBinder;
            } catch (Exception e) {
                LogUtils.l("visha_GlobalUploadManager", "start service error: " + e.getMessage());
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            ri4.this.a = null;
        }
    }

    public static ri4 e() {
        if (c == null) {
            synchronized (ri4.class) {
                try {
                    if (c == null) {
                        c = new ri4();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public long a() {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            return bx4Var.g();
        }
        return 0L;
    }

    public List b() {
        bx4 bx4Var = this.a;
        return bx4Var != null ? bx4Var.t() : new ArrayList();
    }

    public int c() {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            return bx4Var.h();
        }
        return 0;
    }

    public List d() {
        bx4 bx4Var = this.a;
        return bx4Var != null ? bx4Var.e() : new ArrayList();
    }

    public List f() {
        bx4 bx4Var = this.a;
        return bx4Var != null ? bx4Var.x() : new ArrayList();
    }

    public List g() {
        bx4 bx4Var = this.a;
        return bx4Var != null ? bx4Var.j() : new ArrayList();
    }

    public int h() {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            return bx4Var.z();
        }
        return 0;
    }

    public void i(Context context) {
        LogUtils.i("visha_GlobalUploadManager", "linkUploadService");
        context.bindService(new Intent(context, (Class<?>) UploadService.class), this.b, 1);
    }

    public void j(boolean z) {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.f(z);
        }
    }

    public void k(NewUploadTask newUploadTask) {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.s(newUploadTask);
        }
    }

    public void l() {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.l();
        }
    }

    public void m(NewUploadTask newUploadTask) {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.u(newUploadTask);
        }
    }

    public void n(String str, rw4 rw4Var) {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.k(str, rw4Var);
        }
    }

    public void o() {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.q();
        }
    }

    public void p(Context context, List list) {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.y(context, list);
        }
    }

    public void q(Notification notification) {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.b(notification);
        }
    }

    public void r(NewUploadTask newUploadTask, boolean z) {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.r(newUploadTask, z);
        }
    }

    public void s(boolean z) {
        bx4 bx4Var = this.a;
        if (bx4Var != null) {
            bx4Var.a(z);
        }
    }
}
