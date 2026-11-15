package com.wecloud.load.lib;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class o {

    public static final a f58629f = new a(null);

    private static volatile o f58630g;

    private volatile i f58631a;

    private volatile boolean f58632b;

    private volatile h f58633c;

    private ServiceConnection f58634d;

    private SoDownloadRequest f58635e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final o a() {
            o oVar = o.f58630g;
            if (oVar == null) {
                synchronized (this) {
                    oVar = o.f58630g;
                    if (oVar == null) {
                        oVar = new o(null);
                        o.f58630g = oVar;
                    }
                }
            }
            return oVar;
        }

        private a() {
        }
    }

    public static final class b implements ServiceConnection {

        final Context f58637b;

        b(Context context) {
            this.f58637b = context;
        }

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            o.this.f58631a = i.a.X0(iBinder);
            o.this.f58632b = true;
            wf.a.C0922a.f(wf.a.f74274a, "SoLoadManager", "服务绑定成功", false, 4, null);
            SoDownloadRequest soDownloadRequest = o.this.f58635e;
            if (soDownloadRequest != null) {
                o oVar = o.this;
                oVar.f58635e = null;
                oVar.j(soDownloadRequest);
            }
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            o.this.f58631a = null;
            o.this.f58632b = false;
            wf.a.C0922a.f(wf.a.f74274a, "SoLoadManager", "服务断开连接", false, 4, null);
            try {
                if (o.this.f58634d != null) {
                    Context context = this.f58637b;
                    ServiceConnection serviceConnection = o.this.f58634d;
                    Intrinsics.e(serviceConnection);
                    context.unbindService(serviceConnection);
                }
            } catch (Exception e10) {
                wf.a.C0922a.k(wf.a.f74274a, "SoLoadManager", "解绑服务异常: " + e10.getMessage(), e10, false, 8, null);
            }
            o.this.f58634d = null;
        }
    }

    public o(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final void i(Context context, h callback, SoDownloadRequest request) {
        Intrinsics.h(context, "context");
        Intrinsics.h(callback, "callback");
        Intrinsics.h(request, "request");
        this.f58633c = callback;
        this.f58635e = request;
        if (this.f58632b && this.f58631a != null) {
            this.f58635e = null;
            j(request);
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context.getPackageName(), "com.wecloud.load.lib.SoLoadService"));
        this.f58634d = new b(context);
        try {
            context.startService(intent);
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "SoLoadManager", "已启动 Service", false, 4, null);
            ServiceConnection serviceConnection = this.f58634d;
            if (serviceConnection == null) {
                wf.a.C0922a.l(c0922a, "SoLoadManager", "绑定服务失败：serviceConnection 已被并发清空", false, 4, null);
                this.f58635e = null;
            } else {
                if (context.bindService(intent, serviceConnection, 0)) {
                    return;
                }
                wf.a.C0922a.l(c0922a, "SoLoadManager", "绑定服务失败", false, 4, null);
                this.f58635e = null;
            }
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, "SoLoadManager", "启动 Service 失败: " + e10.getMessage(), e10, false, 8, null);
        }
    }

    public final boolean j(SoDownloadRequest request) {
        Intrinsics.h(request, "request");
        if (!this.f58632b || this.f58631a == null) {
            wf.a.C0922a.l(wf.a.f74274a, "SoLoadManager", "服务未绑定，无法加载SO", false, 4, null);
            return false;
        }
        if (this.f58633c == null) {
            wf.a.C0922a.l(wf.a.f74274a, "SoLoadManager", "回调接口为空", false, 4, null);
            return false;
        }
        try {
            i iVar = this.f58631a;
            if (iVar != null) {
                iVar.D(request, this.f58633c);
            }
            return true;
        } catch (RemoteException e10) {
            wf.a.C0922a.k(wf.a.f74274a, "SoLoadManager", "调用服务异常: " + e10.getMessage(), e10, false, 8, null);
            return false;
        }
    }

    public final void k(Context context) {
        ServiceConnection serviceConnection;
        Intrinsics.h(context, "context");
        if (!this.f58632b || (serviceConnection = this.f58634d) == null) {
            return;
        }
        try {
            Intrinsics.e(serviceConnection);
            context.unbindService(serviceConnection);
        } catch (Exception e10) {
            wf.a.C0922a.k(wf.a.f74274a, "SoLoadManager", "解绑服务异常: " + e10.getMessage(), e10, false, 8, null);
        }
        this.f58631a = null;
        this.f58632b = false;
        this.f58633c = null;
        this.f58634d = null;
        this.f58635e = null;
        Log.e("SoLoadManager", "解绑服务:");
    }

    private o() {
    }
}
