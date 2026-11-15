package androidx.browser.trusted;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import androidx.core.app.t;
import java.util.Locale;
import m.g;

public abstract class TrustedWebActivityService extends Service {

    private NotificationManager f1893a;

    int f1894b = -1;

    private final d.b.a f1895c = new a();

    class a extends d.b.a {
        a() {
        }

        private void X0() {
            TrustedWebActivityService trustedWebActivityService = TrustedWebActivityService.this;
            int i10 = trustedWebActivityService.f1894b;
            if (i10 != -1) {
                if (i10 != Binder.getCallingUid()) {
                    throw new SecurityException("Caller is not verified as Trusted Web Activity provider.");
                }
            } else {
                trustedWebActivityService.getPackageManager().getPackagesForUid(Binder.getCallingUid());
                TrustedWebActivityService.this.c();
                throw null;
            }
        }

        @Override
        public int C0() {
            X0();
            return TrustedWebActivityService.this.i();
        }

        @Override
        public Bundle D0(Bundle bundle) {
            X0();
            return new d.e(TrustedWebActivityService.this.d(d.c.a(bundle).f1901a)).a();
        }

        @Override
        public Bundle G() {
            X0();
            return TrustedWebActivityService.this.h();
        }

        @Override
        public void H0(Bundle bundle) {
            X0();
            d.b bVarA = d.b.a(bundle);
            TrustedWebActivityService.this.e(bVarA.f1899a, bVarA.f1900b);
        }

        @Override
        public Bundle P(Bundle bundle) {
            X0();
            d.C0018d c0018dA = d.C0018d.a(bundle);
            return new d.e(TrustedWebActivityService.this.j(c0018dA.f1902a, c0018dA.f1903b, c0018dA.f1904c, c0018dA.f1905d)).a();
        }

        @Override
        public Bundle k0() {
            X0();
            return new d.a(TrustedWebActivityService.this.g()).a();
        }

        @Override
        public Bundle z(String str, Bundle bundle, IBinder iBinder) {
            X0();
            return TrustedWebActivityService.this.f(str, bundle, c.a(iBinder));
        }
    }

    private static String a(String str) {
        return str.toLowerCase(Locale.ROOT).replace(' ', '_') + "_channel_id";
    }

    private void b() {
        if (this.f1893a == null) {
            throw new IllegalStateException("TrustedWebActivityService has not been properly initialized. Did onCreate() call super.onCreate()?");
        }
    }

    public abstract g c();

    public boolean d(String str) {
        b();
        if (!t.b(this).a()) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        return b.b(this.f1893a, a(str));
    }

    public void e(String str, int i10) {
        b();
        this.f1893a.cancel(str, i10);
    }

    public Bundle f(String str, Bundle bundle, c cVar) {
        return null;
    }

    public Parcelable[] g() {
        b();
        return androidx.browser.trusted.a.a(this.f1893a);
    }

    public Bundle h() {
        int i10 = i();
        Bundle bundle = new Bundle();
        if (i10 == -1) {
            return bundle;
        }
        bundle.putParcelable("android.support.customtabs.trusted.SMALL_ICON_BITMAP", BitmapFactory.decodeResource(getResources(), i10));
        return bundle;
    }

    public int i() {
        try {
            Bundle bundle = getPackageManager().getServiceInfo(new ComponentName(this, getClass()), 128).metaData;
            if (bundle == null) {
                return -1;
            }
            return bundle.getInt("android.support.customtabs.trusted.SMALL_ICON", -1);
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    public boolean j(String str, int i10, Notification notification, String str2) {
        b();
        if (!t.b(this).a()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            String strA = a(str2);
            notification = b.a(this, this.f1893a, notification, strA, str2);
            if (!b.b(this.f1893a, strA)) {
                return false;
            }
        }
        this.f1893a.notify(str, i10, notification);
        return true;
    }

    @Override
    public final IBinder onBind(Intent intent) {
        return this.f1895c;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.f1893a = (NotificationManager) getSystemService("notification");
    }

    @Override
    public final boolean onUnbind(Intent intent) {
        this.f1894b = -1;
        return super.onUnbind(intent);
    }
}
