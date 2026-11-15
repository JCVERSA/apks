package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.cloudcore.cloudapi.impl.CloudManagerImpl;
import com.transsion.cloudcore.cloudapi.impl.CloudUploadManagerImpl;
import com.transsion.cloudcore.cloudapi.impl.a;

public final class a41 {
    public static final a41 a = new a41();
    public static volatile boolean b;

    public final void a() {
        if (b) {
            return;
        }
        Log.e("CloudTransferFactory", "CloudTransferFactory not initialized, please call init() first");
    }

    public final mq3 b(Context context) {
        y45.j(context, "context");
        a();
        return a.a.d().c();
    }

    public final xy0 c(Context context) {
        y45.j(context, "context");
        a();
        return CloudManagerImpl.g.a(context);
    }

    public final fu4 d(Context context) {
        y45.j(context, "context");
        a();
        return ez0.h.a(context);
    }

    public final eu9 e(Context context) {
        y45.j(context, "context");
        a();
        return a.a.d().d();
    }

    public final ju4 f(Context context) {
        y45.j(context, "context");
        a();
        return CloudUploadManagerImpl.h.a(context);
    }

    public final synchronized void g(Context context, vz0 vz0Var) {
        y45.j(context, "context");
        y45.j(vz0Var, "config");
        if (!b) {
            a aVar = a.a;
            Context applicationContext = context.getApplicationContext();
            y45.i(applicationContext, "getApplicationContext(...)");
            aVar.j(applicationContext, vz0Var);
            b = true;
        }
    }
}
