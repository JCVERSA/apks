package com.transsion.sniffer_load;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import defpackage.ba0;
import defpackage.mf7;
import defpackage.rw4;
import defpackage.ry2;
import java.util.ArrayList;
import java.util.List;

public class GlobalDownloadManger implements ry2 {
    public static volatile boolean d = false;
    public static volatile GlobalDownloadManger e;
    public ry2 b;
    public final ServiceConnection c = new a();

    public enum NetType {
        NO,
        WIFI,
        MOBILE,
        UNKNOWN
    }

    public class a implements ServiceConnection {
        public a() {
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                GlobalDownloadManger.this.b = (ry2) iBinder;
                LiveEventBus.b().c("download_service_connected", Boolean.TRUE);
            } catch (Exception unused) {
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            GlobalDownloadManger.this.b = null;
        }
    }

    public static GlobalDownloadManger B() {
        if (e == null) {
            synchronized (GlobalDownloadManger.class) {
                try {
                    if (e == null) {
                        e = new GlobalDownloadManger();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    @Override
    public void A(NewDownloadTask newDownloadTask, boolean z) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.A(newDownloadTask, z);
        }
    }

    @Override
    public NewDownloadTask getTask(String str) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            return (NewDownloadTask) ry2Var.getTask(str);
        }
        return null;
    }

    public void D(Context context) {
        context.bindService(new Intent(context, (Class<?>) DownloadService.class), this.c, 1);
    }

    @Override
    public void s(NewDownloadTask newDownloadTask) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.s(newDownloadTask);
        }
    }

    @Override
    public void u(NewDownloadTask newDownloadTask) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.u(newDownloadTask);
        }
    }

    @Override
    public void a(boolean z) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.a(z);
        }
    }

    @Override
    public void b(Notification notification) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.b(notification);
        }
    }

    @Override
    public NewDownloadTask c(String str, boolean z) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            return ry2Var.c(str, z);
        }
        return null;
    }

    @Override
    public boolean d(String str) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            return ry2Var.d(str);
        }
        return false;
    }

    @Override
    public List e() {
        ry2 ry2Var = this.b;
        return ry2Var != null ? ry2Var.e() : new ArrayList();
    }

    @Override
    public void f(boolean z) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.f(z);
        }
    }

    @Override
    public long g() {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            return ry2Var.g();
        }
        return 0L;
    }

    @Override
    public int h() {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            return ry2Var.h();
        }
        return 0;
    }

    @Override
    public void i(String str) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.i(str);
        }
    }

    @Override
    public void k(String str, rw4 rw4Var) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.k(str, rw4Var);
        }
    }

    @Override
    public void l() {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.l();
        }
    }

    @Override
    public void m(String str) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.m(str);
        }
    }

    @Override
    public boolean n(Context context, List list) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            return ry2Var.n(context, list);
        }
        return false;
    }

    @Override
    public int o() {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            return ry2Var.o();
        }
        return 0;
    }

    @Override
    public boolean p(Context context, ba0 ba0Var) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            return ry2Var.p(context, ba0Var);
        }
        return false;
    }

    @Override
    public void q() {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.q();
        }
    }

    @Override
    public List t() {
        ry2 ry2Var = this.b;
        return ry2Var != null ? ry2Var.t() : new ArrayList();
    }

    @Override
    public void v(String str, mf7 mf7Var) {
        ry2 ry2Var = this.b;
        if (ry2Var != null) {
            ry2Var.v(str, mf7Var);
        }
    }

    @Override
    public NetType w() {
        ry2 ry2Var = this.b;
        return ry2Var != null ? ry2Var.w() : NetType.MOBILE;
    }

    @Override
    public List x() {
        ry2 ry2Var = this.b;
        return ry2Var != null ? ry2Var.x() : new ArrayList();
    }
}
