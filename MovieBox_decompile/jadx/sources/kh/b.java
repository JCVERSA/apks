package kh;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tn.tranpay.device.TNDeviceHelper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b implements ServiceConnection {

    public static final a f63991c = new a(null);

    private final String f63992a;

    private Context f63993b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, Intent intent) {
            Intrinsics.h(context, "context");
            Intrinsics.h(intent, "intent");
            new b(context, intent, null);
        }

        private a() {
        }
    }

    public b(Context context, Intent intent, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, intent);
    }

    @Override
    public void onServiceConnected(ComponentName name, IBinder service) {
        Intrinsics.h(name, "name");
        Intrinsics.h(service, "service");
        try {
            try {
                try {
                    String oaid = kh.a.AbstractBinderC0791a.X0(service).getId();
                    TNDeviceHelper tNDeviceHelper = TNDeviceHelper.f40534a;
                    Intrinsics.g(oaid, "oaid");
                    tNDeviceHelper.h(oaid);
                    String TAG = this.f63992a;
                    Intrinsics.g(TAG, "TAG");
                    lh.a.f65699a.b("onServiceConnected oaid=" + oaid, TAG);
                    Context context = this.f63993b;
                    if (context != null) {
                        context.unbindService(this);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    Context context2 = this.f63993b;
                    if (context2 != null) {
                        context2.unbindService(this);
                    }
                }
            } catch (Throwable th2) {
                try {
                    Context context3 = this.f63993b;
                    if (context3 != null) {
                        context3.unbindService(this);
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                throw th2;
            }
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName name) {
        Intrinsics.h(name, "name");
    }

    private b(Context context, Intent intent) {
        String TAG = b.class.getSimpleName();
        this.f63992a = TAG;
        if (context instanceof Application) {
            this.f63993b = context;
        } else {
            this.f63993b = context.getApplicationContext();
        }
        try {
            if (context.bindService(intent, this, 1)) {
                return;
            }
            lh.a aVar = lh.a.f65699a;
            Intrinsics.g(TAG, "TAG");
            aVar.b("Service binding failed", TAG);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
