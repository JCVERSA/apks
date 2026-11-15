package defpackage;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.Executor;

public abstract class ti4 {
    public static final Object a = new Object();
    public static int b = 9;
    public static jhj c = null;
    public static HandlerThread d = null;
    public static Executor e = null;
    public static boolean f = false;

    public static ti4 a(Context context) {
        synchronized (a) {
            try {
                if (c == null) {
                    c = new jhj(context.getApplicationContext(), f ? b().getLooper() : context.getMainLooper(), e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c;
    }

    public static HandlerThread b() {
        synchronized (a) {
            try {
                HandlerThread handlerThread = d;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", b);
                d = handlerThread2;
                handlerThread2.start();
                return d;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract ConnectionResult c(sbj sbjVar, ServiceConnection serviceConnection, String str, Executor executor);

    public final void d(String str, String str2, int i, ServiceConnection serviceConnection, String str3, boolean z) {
        e(new sbj(str, str2, 4225, z), serviceConnection, str3);
    }

    public abstract void e(sbj sbjVar, ServiceConnection serviceConnection, String str);
}
