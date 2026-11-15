package defpackage;

import android.content.Context;
import android.content.ContextWrapper;

public abstract class dcf extends ContextWrapper {
    public static Context a(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }
}
