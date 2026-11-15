package defpackage;

import android.content.Context;
import com.google.android.gms.internal.ads.j6;

public abstract class v0i {
    public static u0i a(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context = applicationContext;
        }
        return new w0i(new j6(context));
    }
}
