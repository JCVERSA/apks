package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.collection.x0;
import java.util.List;
import java.util.NoSuchElementException;

public abstract class CustomTabsService extends Service {

    final x0 f1844a = new x0();

    private c.b.a f1845b = new a();

    class a extends c.b.a {
        a() {
        }

        private PendingIntent Z0(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("android.support.customtabs.extra.SESSION_ID");
            bundle.remove("android.support.customtabs.extra.SESSION_ID");
            return pendingIntent;
        }

        private Uri a1(Bundle bundle) {
            if (bundle == null) {
                return null;
            }
            return Build.VERSION.SDK_INT >= 33 ? (Uri) androidx.browser.customtabs.a.a(bundle, "target_origin", Uri.class) : (Uri) bundle.getParcelable("target_origin");
        }

        public void b1(k kVar) {
            CustomTabsService.this.a(kVar);
        }

        private boolean c1(c.a aVar, PendingIntent pendingIntent) {
            final k kVar = new k(aVar, pendingIntent);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() {
                    @Override
                    public final void binderDied() {
                        this.f1868a.b1(kVar);
                    }
                };
                synchronized (CustomTabsService.this.f1844a) {
                    aVar.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.f1844a.put(aVar.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.e(kVar);
            } catch (RemoteException unused) {
                return false;
            }
        }

        @Override
        public boolean B(c.a aVar, Bundle bundle) {
            return CustomTabsService.this.c(new k(aVar, Z0(bundle)), bundle);
        }

        @Override
        public boolean P0(c.a aVar, IBinder iBinder, Bundle bundle) {
            return CustomTabsService.this.j(new k(aVar, Z0(bundle)), m.a(iBinder), bundle);
        }

        @Override
        public boolean T(c.a aVar, Uri uri, int i10, Bundle bundle) {
            return CustomTabsService.this.g(new k(aVar, Z0(bundle)), uri, i10, bundle);
        }

        @Override
        public boolean U(c.a aVar, Uri uri, Bundle bundle, List list) {
            return CustomTabsService.this.d(new k(aVar, Z0(bundle)), uri, bundle, list);
        }

        @Override
        public boolean U0(c.a aVar, Uri uri, Bundle bundle) {
            return CustomTabsService.this.i(new k(aVar, Z0(bundle)), uri, a1(bundle), bundle);
        }

        @Override
        public int W(c.a aVar, String str, Bundle bundle) {
            return CustomTabsService.this.f(new k(aVar, Z0(bundle)), str, bundle);
        }

        @Override
        public boolean d(c.a aVar, Bundle bundle) {
            return c1(aVar, Z0(bundle));
        }

        @Override
        public boolean g(c.a aVar, Bundle bundle) {
            return CustomTabsService.this.k(new k(aVar, Z0(bundle)), bundle);
        }

        @Override
        public boolean l0(c.a aVar, int i10, Uri uri, Bundle bundle) {
            return CustomTabsService.this.l(new k(aVar, Z0(bundle)), i10, uri, bundle);
        }

        @Override
        public boolean r(c.a aVar) {
            return c1(aVar, null);
        }

        @Override
        public Bundle u(String str, Bundle bundle) {
            return CustomTabsService.this.b(str, bundle);
        }

        @Override
        public boolean w0(long j10) {
            return CustomTabsService.this.m(j10);
        }

        @Override
        public boolean x0(c.a aVar, Uri uri) {
            return CustomTabsService.this.i(new k(aVar, null), uri, null, new Bundle());
        }
    }

    protected boolean a(k kVar) {
        try {
            synchronized (this.f1844a) {
                try {
                    IBinder iBinderA = kVar.a();
                    if (iBinderA == null) {
                        return false;
                    }
                    iBinderA.unlinkToDeath((IBinder.DeathRecipient) this.f1844a.get(iBinderA), 0);
                    this.f1844a.remove(iBinderA);
                    return true;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } catch (NoSuchElementException unused) {
            return false;
        }
    }

    protected abstract Bundle b(String str, Bundle bundle);

    protected boolean c(k kVar, Bundle bundle) {
        return false;
    }

    protected abstract boolean d(k kVar, Uri uri, Bundle bundle, List list);

    protected abstract boolean e(k kVar);

    protected abstract int f(k kVar, String str, Bundle bundle);

    protected abstract boolean g(k kVar, Uri uri, int i10, Bundle bundle);

    protected abstract boolean h(k kVar, Uri uri);

    protected boolean i(k kVar, Uri uri, Uri uri2, Bundle bundle) {
        return h(kVar, uri);
    }

    protected boolean j(k kVar, l lVar, Bundle bundle) {
        return false;
    }

    protected abstract boolean k(k kVar, Bundle bundle);

    protected abstract boolean l(k kVar, int i10, Uri uri, Bundle bundle);

    protected abstract boolean m(long j10);

    @Override
    public IBinder onBind(Intent intent) {
        return this.f1845b;
    }
}
