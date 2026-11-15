package defpackage;

import android.os.Handler;
import android.os.Looper;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.cloud_drive.base.exceptions.NoConnectivityException;
import com.transsion.cloud_drive.transfer.api.model.BaseTaskInfo;
import com.transsion.cloud_drive.transfer.api.model.TransferStatus;
import com.transsion.cloud_drive.transfer.common.TransferErrorCode;
import com.transsion.cloud_drive.transfer.exception.ServerException;
import com.transsion.cloud_drive.transfer.exception.SpaceNotEnoughException;
import com.transsion.cloud_drive.transfer.exception.TransferException;
import java.io.FileNotFoundException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

public abstract class wc0 implements wda {
    public final BaseTaskInfo a;
    public final String b;
    public of7 c;
    public long d;
    public final Handler e;
    public boolean f;
    public boolean g;
    public boolean h;

    public wc0(BaseTaskInfo baseTaskInfo) {
        y45.j(baseTaskInfo, "taskInfo");
        this.a = baseTaskInfo;
        this.b = baseTaskInfo.getTaskId();
        this.e = new Handler(Looper.getMainLooper());
    }

    public static final void m(wc0 wc0Var) {
        y45.j(wc0Var, "this$0");
        of7 of7Var = wc0Var.c;
        if (of7Var != null) {
            of7Var.a(wc0Var.a.getTaskId(), wc0Var.a);
        }
    }

    public static final void o(wc0 wc0Var) {
        y45.j(wc0Var, "this$0");
        of7 of7Var = wc0Var.c;
        if (of7Var != null) {
            of7Var.b(wc0Var.getId(), wc0Var.a);
        }
    }

    public static final void q(wc0 wc0Var, r5b r5bVar) {
        y45.j(wc0Var, "this$0");
        y45.j(r5bVar, "$errorInfo");
        of7 of7Var = wc0Var.c;
        if (of7Var != null) {
            of7Var.f(wc0Var.getId(), wc0Var.a, r5bVar);
        }
    }

    public static final void s(wc0 wc0Var) {
        y45.j(wc0Var, "this$0");
        of7 of7Var = wc0Var.c;
        if (of7Var != null) {
            of7Var.h(wc0Var.a.getTaskId(), wc0Var.a);
        }
    }

    public static final void u(wc0 wc0Var) {
        y45.j(wc0Var, "this$0");
        of7 of7Var = wc0Var.c;
        if (of7Var != null) {
            String id = wc0Var.getId();
            BaseTaskInfo baseTaskInfo = wc0Var.a;
            of7Var.e(id, baseTaskInfo, baseTaskInfo.getTransferredSize(), wc0Var.a.getFileSize());
        }
    }

    public static final void x(wc0 wc0Var) {
        y45.j(wc0Var, "this$0");
        of7 of7Var = wc0Var.c;
        if (of7Var != null) {
            of7Var.g(wc0Var.a.getTaskId(), wc0Var.a);
        }
    }

    public final TransferException A(Throwable th) {
        TransferException transferException;
        y45.j(th, "error");
        if (th instanceof TransferException) {
            return (TransferException) th;
        }
        if ((th instanceof NoConnectivityException) || !d07.a.a()) {
            transferException = new TransferException(TransferErrorCode.NO_NETWORK, null, th, 2, null);
        } else {
            boolean z = th instanceof ServerException;
            if (z && ((ServerException) th).getCode() == 401) {
                transferException = new TransferException(TransferErrorCode.AUTH_ERROR, th.getMessage(), th);
            } else if (z) {
                transferException = new TransferException(TransferErrorCode.SERVER, th.getMessage(), th);
            } else if (k(th) || (th instanceof InterruptedException) || (th instanceof InterruptedIOException)) {
                transferException = new TransferException(TransferErrorCode.NETWORK_ERROR, th.getMessage(), th);
            } else if (th instanceof SpaceNotEnoughException) {
                transferException = new TransferException(TransferErrorCode.STORAGE_NOT_ENOUGH, th.getMessage(), th);
            } else {
                transferException = th instanceof FileNotFoundException ? new TransferException(TransferErrorCode.FILE_NOT_FOUND_ERROR, th.getMessage(), th) : new TransferException(TransferErrorCode.UNKNOWN, th.getMessage(), th);
            }
        }
        return transferException;
    }

    public final void B(boolean z) {
        this.f = z;
    }

    public final void C(TransferStatus transferStatus) {
        y45.j(transferStatus, "status");
        this.a.setStatus(transferStatus);
    }

    public final boolean D() {
        return this.h || this.g;
    }

    @Override
    public void a(boolean z) {
        synchronized (this) {
            try {
                this.h = false;
                this.g = false;
                if (this.f) {
                    if (z) {
                        l();
                    } else {
                        r();
                    }
                } else if (z) {
                    this.h = true;
                } else {
                    this.g = true;
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public abstract String getId();

    public final boolean h() {
        return this.f;
    }

    public final BaseTaskInfo i() {
        return this.a;
    }

    public final of7 j() {
        return this.c;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0057  */
    public final boolean k(Throwable th) {
        String lowerCase;
        if (th == null) {
            return false;
        }
        if ((th instanceof SocketTimeoutException) || (th instanceof ConnectException) || (th instanceof SocketException) || (th instanceof UnknownHostException)) {
            return true;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Throwable cause = th.getCause(); cause != null && !linkedHashSet.contains(cause); cause = cause.getCause()) {
            linkedHashSet.add(cause);
            if ((cause instanceof SocketTimeoutException) || (cause instanceof ConnectException) || (cause instanceof SocketException) || (cause instanceof UnknownHostException)) {
                return true;
            }
        }
        String message = th.getMessage();
        if (message != null) {
            lowerCase = message.toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            if (lowerCase == null) {
                lowerCase = "";
            }
        } else {
            lowerCase = "";
        }
        List listN = y71.n("network", "connection", "timeout", "socket", SerializableCookie.HOST, "unreachable", "refused", "reset", "broken pipe", "no route to host", "connection timed out", "connection reset", "connection refused", "network is unreachable", "no internet", "unable to resolve host");
        if ((listN instanceof Collection) && listN.isEmpty()) {
            return false;
        }
        Iterator it = listN.iterator();
        while (it.hasNext()) {
            if (j1a.X(lowerCase, (String) it.next(), false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    public final void l() {
        C(TransferStatus.CANCEL);
        this.e.post(new Runnable() {
            @Override
            public final void run() {
                wc0.m(this.b);
            }
        });
    }

    public final void n() {
        C(TransferStatus.COMPLETED);
        this.e.post(new Runnable() {
            @Override
            public final void run() {
                wc0.o(this.b);
            }
        });
    }

    public final void p(final r5b r5bVar) {
        y45.j(r5bVar, "errorInfo");
        C(TransferStatus.ERROR);
        this.e.post(new Runnable() {
            @Override
            public final void run() {
                wc0.q(this.b, r5bVar);
            }
        });
    }

    public final void r() {
        C(TransferStatus.PAUSED);
        this.e.post(new Runnable() {
            @Override
            public final void run() {
                wc0.s(this.b);
            }
        });
    }

    public final void setListener(of7 of7Var) {
        this.c = of7Var;
    }

    public final void t() {
        C(TransferStatus.RUNNING);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.d > 300 || this.a.getTransferredSize() == this.a.getFileSize()) {
            this.d = jCurrentTimeMillis;
            this.e.post(new Runnable() {
                @Override
                public final void run() {
                    wc0.u(this.b);
                }
            });
        }
    }

    public final boolean v(Throwable th) {
        of7 of7Var = this.c;
        return of7Var != null && of7Var.d(getId(), this.a, th);
    }

    public final void w() {
        this.a.setStatus(TransferStatus.PREPARE);
        this.e.post(new Runnable() {
            @Override
            public final void run() {
                wc0.x(this.b);
            }
        });
    }

    public final void y() {
        synchronized (this) {
            try {
                this.f = true;
                if (this.h) {
                    l();
                } else if (this.g) {
                    r();
                }
                this.h = false;
                this.g = false;
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void z() {
        this.f = false;
        this.g = false;
        this.h = false;
    }
}
