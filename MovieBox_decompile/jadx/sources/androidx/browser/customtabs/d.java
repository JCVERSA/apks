package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.LocaleList;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import java.util.ArrayList;

public final class d {

    public final Intent f1857a;

    public final Bundle f1858b;

    private static class a {
        @Nullable
        static String a() {
            LocaleList adjustedDefault = LocaleList.getAdjustedDefault();
            if (adjustedDefault.size() > 0) {
                return adjustedDefault.get(0).toLanguageTag();
            }
            return null;
        }
    }

    d(Intent intent, Bundle bundle) {
        this.f1857a = intent;
        this.f1858b = bundle;
    }

    public void a(Context context, Uri uri) {
        this.f1857a.setData(uri);
        androidx.core.content.b.startActivity(context, this.f1857a, this.f1858b);
    }

    public static final class b {

        private ArrayList f1861c;

        private Bundle f1862d;

        private ArrayList f1863e;

        private SparseArray f1864f;

        private Bundle f1865g;

        private final Intent f1859a = new Intent("android.intent.action.VIEW");

        private final androidx.browser.customtabs.b.a f1860b = new androidx.browser.customtabs.b.a();

        private int f1866h = 0;

        private boolean f1867i = true;

        public b() {
        }

        private void b() {
            String strA = a.a();
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            Bundle bundleExtra = this.f1859a.hasExtra("com.android.browser.headers") ? this.f1859a.getBundleExtra("com.android.browser.headers") : new Bundle();
            if (bundleExtra.containsKey("Accept-Language")) {
                return;
            }
            bundleExtra.putString("Accept-Language", strA);
            this.f1859a.putExtra("com.android.browser.headers", bundleExtra);
        }

        private void d(IBinder iBinder, PendingIntent pendingIntent) {
            Bundle bundle = new Bundle();
            androidx.core.app.f.b(bundle, "android.support.customtabs.extra.SESSION", iBinder);
            if (pendingIntent != null) {
                bundle.putParcelable("android.support.customtabs.extra.SESSION_ID", pendingIntent);
            }
            this.f1859a.putExtras(bundle);
        }

        public d a() {
            if (!this.f1859a.hasExtra("android.support.customtabs.extra.SESSION")) {
                d(null, null);
            }
            ArrayList<? extends Parcelable> arrayList = this.f1861c;
            if (arrayList != null) {
                this.f1859a.putParcelableArrayListExtra("android.support.customtabs.extra.MENU_ITEMS", arrayList);
            }
            ArrayList<? extends Parcelable> arrayList2 = this.f1863e;
            if (arrayList2 != null) {
                this.f1859a.putParcelableArrayListExtra("android.support.customtabs.extra.TOOLBAR_ITEMS", arrayList2);
            }
            this.f1859a.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.f1867i);
            this.f1859a.putExtras(this.f1860b.a().a());
            Bundle bundle = this.f1865g;
            if (bundle != null) {
                this.f1859a.putExtras(bundle);
            }
            if (this.f1864f != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putSparseParcelableArray("androidx.browser.customtabs.extra.COLOR_SCHEME_PARAMS", this.f1864f);
                this.f1859a.putExtras(bundle2);
            }
            this.f1859a.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", this.f1866h);
            if (Build.VERSION.SDK_INT >= 24) {
                b();
            }
            return new d(this.f1859a, this.f1862d);
        }

        public b c(j jVar) {
            this.f1859a.setPackage(jVar.e().getPackageName());
            d(jVar.d(), jVar.f());
            return this;
        }

        public b e(int i10) {
            if (i10 < 0 || i10 > 2) {
                throw new IllegalArgumentException("Invalid value for the shareState argument");
            }
            this.f1866h = i10;
            if (i10 == 1) {
                this.f1859a.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", true);
            } else if (i10 == 2) {
                this.f1859a.putExtra("android.support.customtabs.extra.SHARE_MENU_ITEM", false);
            } else {
                this.f1859a.removeExtra("android.support.customtabs.extra.SHARE_MENU_ITEM");
            }
            return this;
        }

        public b f(boolean z10) {
            this.f1859a.putExtra("android.support.customtabs.extra.ENABLE_URLBAR_HIDING", z10);
            return this;
        }

        public b(j jVar) {
            if (jVar != null) {
                c(jVar);
            }
        }
    }
}
