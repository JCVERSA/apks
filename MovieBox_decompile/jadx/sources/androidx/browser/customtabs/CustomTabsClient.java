package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;

public abstract class CustomTabsClient {

    private final c.b f1838a;

    private final ComponentName f1839b;

    private final Context f1840c;

    CustomTabsClient(c.b bVar, ComponentName componentName, Context context) {
        this.f1838a = bVar;
        this.f1839b = componentName;
        this.f1840c = context;
    }

    public static boolean a(Context context, String str, f fVar) {
        fVar.setApplicationContext(context.getApplicationContext());
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return context.bindService(intent, fVar, 33);
    }

    private c.a.AbstractBinderC0137a b(final c cVar) {
        return new c.a.AbstractBinderC0137a() {

            private Handler f1841a = new Handler(Looper.getMainLooper());

            @Override
            public void B0(final int i10, final int i11, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1841a.post(new Runnable() {
                    @Override
                    public void run() {
                        cVar.onActivityResized(i10, i11, bundle);
                    }
                });
            }

            @Override
            public void K0(final int i10, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1841a.post(new Runnable() {
                    @Override
                    public void run() {
                        cVar.onNavigationEvent(i10, bundle);
                    }
                });
            }

            @Override
            public void L(final String str, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1841a.post(new Runnable() {
                    @Override
                    public void run() {
                        cVar.extraCallback(str, bundle);
                    }
                });
            }

            @Override
            public void O0(final String str, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1841a.post(new Runnable() {
                    @Override
                    public void run() {
                        cVar.onPostMessage(str, bundle);
                    }
                });
            }

            @Override
            public void R0(final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1841a.post(new Runnable() {
                    @Override
                    public void run() {
                        cVar.onMessageChannelReady(bundle);
                    }
                });
            }

            @Override
            public void T0(final int i10, final Uri uri, final boolean z10, final Bundle bundle) {
                if (cVar == null) {
                    return;
                }
                this.f1841a.post(new Runnable() {
                    @Override
                    public void run() {
                        cVar.onRelationshipValidationResult(i10, uri, z10, bundle);
                    }
                });
            }

            @Override
            public Bundle s(String str, Bundle bundle) {
                c cVar2 = cVar;
                if (cVar2 == null) {
                    return null;
                }
                return cVar2.extraCallbackWithResult(str, bundle);
            }
        };
    }

    private j d(c cVar, PendingIntent pendingIntent) {
        boolean zR;
        c.a.AbstractBinderC0137a abstractBinderC0137aB = b(cVar);
        try {
            if (pendingIntent != null) {
                Bundle bundle = new Bundle();
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
                zR = this.f1838a.d(abstractBinderC0137aB, bundle);
            } else {
                zR = this.f1838a.r(abstractBinderC0137aB);
            }
            if (zR) {
                return new j(this.f1838a, abstractBinderC0137aB, this.f1839b, pendingIntent);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    public j c(c cVar) {
        return d(cVar, null);
    }

    public boolean e(long j10) {
        try {
            return this.f1838a.w0(j10);
        } catch (RemoteException unused) {
            return false;
        }
    }
}
