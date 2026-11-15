package defpackage;

import android.content.Context;
import android.database.ContentObserver;
import android.util.Log;
import androidx.core.content.PermissionChecker;

public final class tzi implements jzi {
    public static tzi c;
    public final Context a;
    public final ContentObserver b;

    public tzi() {
        this.a = null;
        this.b = null;
    }

    public static tzi a(Context context) {
        tzi tziVar;
        synchronized (tzi.class) {
            try {
                if (c == null) {
                    c = PermissionChecker.checkSelfPermission(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new tzi(context) : new tzi();
                }
                tziVar = c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tziVar;
    }

    public static synchronized void d() {
        Context context;
        try {
            tzi tziVar = c;
            if (tziVar != null && (context = tziVar.a) != null && tziVar.b != null) {
                context.getContentResolver().unregisterContentObserver(c.b);
            }
            c = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final String zzb(final String str) {
        Context context = this.a;
        if (context != null && !kui.a(context)) {
            try {
                return (String) czi.a(new gzi() {
                    @Override
                    public final Object zza() {
                        return this.a.c(str);
                    }
                });
            } catch (IllegalStateException | NullPointerException | SecurityException e) {
                Log.e("GservicesLoader", "Unable to read GServices for: ".concat(String.valueOf(str)), e);
            }
        }
        return null;
    }

    public final String c(String str) {
        return iti.a(this.a.getContentResolver(), str, null);
    }

    public tzi(Context context) {
        this.a = context;
        qzi qziVar = new qzi(this, null);
        this.b = qziVar;
        context.getContentResolver().registerContentObserver(iti.a, true, qziVar);
    }
}
