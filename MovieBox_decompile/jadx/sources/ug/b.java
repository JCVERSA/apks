package ug;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class b implements ServiceConnection {

    public static final a f73065c = new a(null);

    private final String f73066a;

    private Context f73067b;

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
                    String id2 = ug.a.AbstractBinderC0895a.X0(service).getId();
                    tg.b bVar = tg.b.f72740a;
                    Intrinsics.e(id2);
                    bVar.s(id2);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onServiceConnected oaid=");
                    sb2.append(id2);
                    Context context = this.f73067b;
                    if (context != null) {
                        context.unbindService(this);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                Context context2 = this.f73067b;
                if (context2 != null) {
                    context2.unbindService(this);
                }
            }
        } catch (Throwable th2) {
            try {
                Context context3 = this.f73067b;
                if (context3 != null) {
                    context3.unbindService(this);
                }
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            throw th2;
        }
    }

    @Override
    public void onServiceDisconnected(ComponentName name) {
        Intrinsics.h(name, "name");
    }

    private b(Context context, Intent intent) {
        this.f73066a = b.class.getSimpleName();
        if (context instanceof Application) {
            this.f73067b = context;
        } else {
            this.f73067b = context.getApplicationContext();
        }
        try {
            context.bindService(intent, this, 1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
