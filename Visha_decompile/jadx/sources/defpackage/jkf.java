package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import com.google.android.gms.ads.internal.util.zze;

public final class jkf extends MutableContextWrapper {
    public Activity a;
    public Context b;
    public Context c;

    public jkf(Context context) {
        super(context);
        setBaseContext(context);
    }

    public final Activity a() {
        return this.a;
    }

    public final Context b() {
        return this.c;
    }

    public final void c(Intent intent, int i) {
        if (this.a == null) {
            intent.setFlags(268435456);
            this.b.startActivity(intent);
            return;
        }
        zze.zza("Starting activity for result with intent: " + String.valueOf(intent.getData()) + " and requestCode: 236");
        this.a.startActivityForResult(intent, 236);
    }

    @Override
    public final Object getSystemService(String str) {
        return this.c.getSystemService(str);
    }

    @Override
    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.b = applicationContext;
        this.a = context instanceof Activity ? (Activity) context : null;
        this.c = context;
        super.setBaseContext(applicationContext);
    }

    @Override
    public final void startActivity(Intent intent) {
        Activity activity = this.a;
        if (activity != null) {
            activity.startActivity(intent);
        } else {
            intent.setFlags(268435456);
            this.b.startActivity(intent);
        }
    }
}
