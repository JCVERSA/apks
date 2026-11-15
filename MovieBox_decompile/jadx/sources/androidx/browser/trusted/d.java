package androidx.browser.trusted;

import android.app.Notification;
import android.os.Bundle;
import android.os.Parcelable;

public abstract class d {

    static class a {

        public final Parcelable[] f1898a;

        a(Parcelable[] parcelableArr) {
            this.f1898a = parcelableArr;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("android.support.customtabs.trusted.ACTIVE_NOTIFICATIONS", this.f1898a);
            return bundle;
        }
    }

    static class b {

        public final String f1899a;

        public final int f1900b;

        b(String str, int i10) {
            this.f1899a = str;
            this.f1900b = i10;
        }

        public static b a(Bundle bundle) {
            d.a(bundle, "android.support.customtabs.trusted.PLATFORM_TAG");
            d.a(bundle, "android.support.customtabs.trusted.PLATFORM_ID");
            return new b(bundle.getString("android.support.customtabs.trusted.PLATFORM_TAG"), bundle.getInt("android.support.customtabs.trusted.PLATFORM_ID"));
        }
    }

    static class c {

        public final String f1901a;

        c(String str) {
            this.f1901a = str;
        }

        public static c a(Bundle bundle) {
            d.a(bundle, "android.support.customtabs.trusted.CHANNEL_NAME");
            return new c(bundle.getString("android.support.customtabs.trusted.CHANNEL_NAME"));
        }
    }

    static class C0018d {

        public final String f1902a;

        public final int f1903b;

        public final Notification f1904c;

        public final String f1905d;

        C0018d(String str, int i10, Notification notification, String str2) {
            this.f1902a = str;
            this.f1903b = i10;
            this.f1904c = notification;
            this.f1905d = str2;
        }

        public static C0018d a(Bundle bundle) {
            d.a(bundle, "android.support.customtabs.trusted.PLATFORM_TAG");
            d.a(bundle, "android.support.customtabs.trusted.PLATFORM_ID");
            d.a(bundle, "android.support.customtabs.trusted.NOTIFICATION");
            d.a(bundle, "android.support.customtabs.trusted.CHANNEL_NAME");
            return new C0018d(bundle.getString("android.support.customtabs.trusted.PLATFORM_TAG"), bundle.getInt("android.support.customtabs.trusted.PLATFORM_ID"), (Notification) bundle.getParcelable("android.support.customtabs.trusted.NOTIFICATION"), bundle.getString("android.support.customtabs.trusted.CHANNEL_NAME"));
        }
    }

    static class e {

        public final boolean f1906a;

        e(boolean z10) {
            this.f1906a = z10;
        }

        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putBoolean("android.support.customtabs.trusted.NOTIFICATION_SUCCESS", this.f1906a);
            return bundle;
        }
    }

    static void a(Bundle bundle, String str) {
        if (bundle.containsKey(str)) {
            return;
        }
        throw new IllegalArgumentException("Bundle must contain " + str);
    }
}
