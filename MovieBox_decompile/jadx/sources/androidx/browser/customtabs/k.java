package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

public class k {

    final c.a f1888a;

    private final PendingIntent f1889b;

    private final c f1890c;

    class a extends c {
        a() {
        }

        @Override
        public void extraCallback(String str, Bundle bundle) {
            try {
                k.this.f1888a.L(str, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override
        public Bundle extraCallbackWithResult(String str, Bundle bundle) {
            try {
                return k.this.f1888a.s(str, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
                return null;
            }
        }

        @Override
        public void onActivityResized(int i10, int i11, Bundle bundle) {
            try {
                k.this.f1888a.B0(i10, i11, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override
        public void onMessageChannelReady(Bundle bundle) {
            try {
                k.this.f1888a.R0(bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override
        public void onNavigationEvent(int i10, Bundle bundle) {
            try {
                k.this.f1888a.K0(i10, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override
        public void onPostMessage(String str, Bundle bundle) {
            try {
                k.this.f1888a.O0(str, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }

        @Override
        public void onRelationshipValidationResult(int i10, Uri uri, boolean z10, Bundle bundle) {
            try {
                k.this.f1888a.T0(i10, uri, z10, bundle);
            } catch (RemoteException unused) {
                Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
            }
        }
    }

    k(c.a aVar, PendingIntent pendingIntent) {
        if (aVar == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.f1888a = aVar;
        this.f1889b = pendingIntent;
        this.f1890c = aVar == null ? null : new a();
    }

    private IBinder b() {
        c.a aVar = this.f1888a;
        if (aVar != null) {
            return aVar.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    IBinder a() {
        c.a aVar = this.f1888a;
        if (aVar == null) {
            return null;
        }
        return aVar.asBinder();
    }

    PendingIntent c() {
        return this.f1889b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        PendingIntent pendingIntentC = kVar.c();
        PendingIntent pendingIntent = this.f1889b;
        if ((pendingIntent == null) != (pendingIntentC == null)) {
            return false;
        }
        return pendingIntent != null ? pendingIntent.equals(pendingIntentC) : b().equals(kVar.b());
    }

    public int hashCode() {
        PendingIntent pendingIntent = this.f1889b;
        return pendingIntent != null ? pendingIntent.hashCode() : b().hashCode();
    }
}
