package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import com.google.android.gms.ads.internal.util.zzcd;
import java.util.concurrent.Callable;

public final class hxe {
    public final Context a;

    public hxe(Context context) {
        wd8.m(context, "Context can not be null");
        this.a = context;
    }

    public final boolean a(Intent intent) {
        wd8.m(intent, "Intent can not be null");
        return !this.a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public final boolean b() {
        return a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }

    public final boolean c() {
        Callable callable = new Callable() {
            @Override
            public final Object call() {
                return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
            }
        };
        Context context = this.a;
        return ((Boolean) zzcd.zza(context, callable)).booleanValue() && mpc.a(context).a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }
}
