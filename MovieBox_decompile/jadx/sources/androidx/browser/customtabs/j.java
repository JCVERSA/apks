package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import java.util.List;

public final class j {

    private final Object f1880a = new Object();

    private final c.b f1881b;

    private final c.a f1882c;

    private final ComponentName f1883d;

    private final PendingIntent f1884e;

    class a extends c.c.a {

        private final Handler f1885a = new Handler(Looper.getMainLooper());

        final l f1886b;

        a(l lVar) {
            this.f1886b = lVar;
        }

        @Override
        public void onGreatestScrollPercentageIncreased(final int i10, final Bundle bundle) {
            Handler handler = this.f1885a;
            final l lVar = this.f1886b;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    lVar.onGreatestScrollPercentageIncreased(i10, bundle);
                }
            });
        }

        @Override
        public void onSessionEnded(final boolean z10, final Bundle bundle) {
            Handler handler = this.f1885a;
            final l lVar = this.f1886b;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    lVar.onSessionEnded(z10, bundle);
                }
            });
        }

        @Override
        public void onVerticalScrollEvent(final boolean z10, final Bundle bundle) {
            Handler handler = this.f1885a;
            final l lVar = this.f1886b;
            handler.post(new Runnable() {
                @Override
                public final void run() {
                    lVar.onVerticalScrollEvent(z10, bundle);
                }
            });
        }
    }

    j(c.b bVar, c.a aVar, ComponentName componentName, PendingIntent pendingIntent) {
        this.f1881b = bVar;
        this.f1882c = aVar;
        this.f1883d = componentName;
        this.f1884e = pendingIntent;
    }

    private void a(Bundle bundle) {
        PendingIntent pendingIntent = this.f1884e;
        if (pendingIntent != null) {
            bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
        }
    }

    private Bundle b(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        a(bundle2);
        return bundle2;
    }

    private c.c.a c(l lVar) {
        return new a(lVar);
    }

    IBinder d() {
        return this.f1882c.asBinder();
    }

    ComponentName e() {
        return this.f1883d;
    }

    PendingIntent f() {
        return this.f1884e;
    }

    public boolean g(Bundle bundle) {
        try {
            return this.f1881b.B(this.f1882c, bundle);
        } catch (SecurityException e10) {
            throw new UnsupportedOperationException("This method isn't supported by the Custom Tabs implementation.", e10);
        }
    }

    public boolean h(Uri uri, Bundle bundle, List list) {
        try {
            return this.f1881b.U(this.f1882c, uri, b(bundle), list);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public int i(String str, Bundle bundle) {
        int iW;
        Bundle bundleB = b(bundle);
        synchronized (this.f1880a) {
            try {
                try {
                    iW = this.f1881b.W(this.f1882c, str, bundleB);
                } catch (RemoteException unused) {
                    return -2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return iW;
    }

    public boolean j(l lVar, Bundle bundle) {
        try {
            return this.f1881b.P0(this.f1882c, c(lVar).asBinder(), bundle);
        } catch (SecurityException e10) {
            throw new UnsupportedOperationException("This method isn't supported by the Custom Tabs implementation.", e10);
        }
    }
}
