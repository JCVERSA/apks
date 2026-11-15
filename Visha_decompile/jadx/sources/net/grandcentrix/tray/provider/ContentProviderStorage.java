package net.grandcentrix.tray.provider;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.NonNull;
import defpackage.pf7;
import defpackage.q9b;
import defpackage.r9b;
import defpackage.ubc;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import net.grandcentrix.tray.core.TrayRuntimeException;
import net.grandcentrix.tray.core.TrayStorage;

public class ContentProviderStorage extends TrayStorage {
    public WeakHashMap c;
    public TrayContentObserver d;
    public HandlerThread e;
    public final Context f;
    public final a g;
    public volatile boolean h;
    public final b i;

    public class TrayContentObserver extends ContentObserver {
        public TrayContentObserver(Handler handler) {
            super(handler);
        }

        @Override
        public void onChange(boolean z) {
            onChange(z, null);
        }

        @Override
        public void onChange(boolean z, Uri uri) {
            if (uri == null) {
                uri = ContentProviderStorage.this.i.d().d(ContentProviderStorage.this.a()).a();
            }
            List listE = ContentProviderStorage.this.g.e(uri);
            for (Map.Entry entry : new HashSet(ContentProviderStorage.this.c.entrySet())) {
                ubc.a(entry.getKey());
                Handler handler = (Handler) entry.getValue();
                handler.getClass();
                handler.post(new Runnable(null, listE) {
                    final pf7 val$listener;
                    final List val$trayItems;

                    {
                        this.val$trayItems = listE;
                    }

                    @Override
                    public void run() {
                        throw null;
                    }
                });
            }
        }
    }

    public ContentProviderStorage(Context context, String str, TrayStorage.Type type) {
        super(str, type);
        this.c = new WeakHashMap();
        this.h = false;
        Context applicationContext = context.getApplicationContext();
        this.f = applicationContext;
        this.i = new b(applicationContext);
        this.g = new a(applicationContext);
    }

    @Override
    public q9b get(String str) {
        List listE = this.g.e(this.i.d().e(b()).d(a()).c(str).a());
        int size = listE.size();
        if (size > 1) {
            r9b.c("found more than one item for key '" + str + "' in module " + a() + ". This can be caused by using the same name for a device and user specific preference.");
            for (int i = 0; i < listE.size(); i++) {
                r9b.a("item #" + i + " " + ((q9b) listE.get(i)));
            }
        }
        if (size > 0) {
            return (q9b) listE.get(0);
        }
        return null;
    }

    @Override
    public int getVersion() {
        List listD = this.g.d(this.i.d().b(true).e(b()).d(a()).c("version").a());
        if (listD.size() == 0) {
            return 0;
        }
        return Integer.valueOf(((q9b) listD.get(0)).a()).intValue();
    }

    @Override
    @TargetApi(16)
    public synchronized void registerOnTrayPreferenceChangeListener(@NonNull pf7 pf7Var) {
        if (pf7Var == null) {
            return;
        }
        try {
            Looper looperMyLooper = Looper.myLooper();
            this.c.put(pf7Var, looperMyLooper != null ? new Handler(looperMyLooper) : null);
            if (this.c.keySet().size() == 1) {
                HandlerThread handlerThread = new HandlerThread("observer") {
                    @Override
                    public void onLooperPrepared() {
                        super.onLooperPrepared();
                        ContentProviderStorage.this.d = ContentProviderStorage.this.new TrayContentObserver(new Handler(getLooper()));
                        ContentProviderStorage.this.f.getContentResolver().registerContentObserver(ContentProviderStorage.this.i.d().e(ContentProviderStorage.this.b()).d(ContentProviderStorage.this.a()).a(), true, ContentProviderStorage.this.d);
                        ContentProviderStorage.this.h = true;
                    }
                };
                this.e = handlerThread;
                handlerThread.start();
                while (!this.h) {
                }
                this.h = false;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public boolean remove(String str) {
        if (str != null) {
            return this.g.f(this.i.d().e(b()).d(a()).c(str).a()) > 0;
        }
        throw new IllegalArgumentException("null is not valid. use clear or wipe to delete all preferences");
    }

    @Override
    public boolean setVersion(int i) {
        if (b() == TrayStorage.Type.UNDEFINED) {
            throw new TrayRuntimeException("writing data into a storage with type UNDEFINED is forbidden. Only Read and delete is allowed.");
        }
        return this.g.b(this.i.d().b(true).e(b()).d(a()).c("version").a(), String.valueOf(i));
    }

    @Override
    public void unregisterOnTrayPreferenceChangeListener(@NonNull pf7 pf7Var) {
        if (pf7Var == null) {
            return;
        }
        this.c.remove(pf7Var);
        if (this.c.size() == 0) {
            this.f.getContentResolver().unregisterContentObserver(this.d);
            this.d = null;
            this.e.quit();
            this.e = null;
        }
    }
}
