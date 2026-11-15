package defpackage;

import android.content.Context;

public final class uzh {
    public static uzh b;
    public final vzh a;

    public uzh(Context context) {
        this.a = vzh.b(context);
    }

    public static final uzh a(Context context) {
        uzh uzhVar;
        synchronized (uzh.class) {
            try {
                if (b == null) {
                    b = new uzh(context);
                }
                uzhVar = b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return uzhVar;
    }

    public final void b(boolean z) {
        synchronized (uzh.class) {
            this.a.d("paidv2_user_option", Boolean.valueOf(z));
        }
    }

    public final void c(boolean z) {
        synchronized (uzh.class) {
            try {
                vzh vzhVar = this.a;
                vzhVar.d("paidv2_publisher_option", Boolean.valueOf(z));
                if (!z) {
                    vzhVar.e("paidv2_creation_time");
                    vzhVar.e("paidv2_id");
                    vzhVar.e("vendor_scoped_gpid_v2_id");
                    vzhVar.e("vendor_scoped_gpid_v2_creation_time");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean d() {
        boolean zF;
        synchronized (uzh.class) {
            zF = this.a.f("paidv2_publisher_option", true);
        }
        return zF;
    }

    public final boolean e() {
        boolean zF;
        synchronized (uzh.class) {
            zF = this.a.f("paidv2_user_option", true);
        }
        return zF;
    }
}
