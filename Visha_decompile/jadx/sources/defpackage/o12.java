package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import com.transsion.widgetsgdpr.R;

public abstract class o12 implements id4 {
    public static final int d = R.string.os_gdpr_default_privacy_link;
    public static final int e = R.string.os_gdpr_user_agreement_link;
    public int a = 0;
    public int b = f();
    public int c = g();

    public static int f() {
        if (olb.e) {
            return R.string.os_gdpr_default_privacy_link_itelos;
        }
        if (olb.d) {
            return R.string.os_gdpr_default_privacy_link_xos;
        }
        return olb.c ? R.string.os_gdpr_default_privacy_link_hios : d;
    }

    public static int g() {
        if (olb.e) {
            return R.string.os_gdpr_user_agreement_link_itelos;
        }
        if (olb.d) {
            return R.string.os_gdpr_user_agreement_link_xos;
        }
        return olb.c ? R.string.os_gdpr_user_agreement_link_hios : e;
    }

    @Override
    public void a(View view) {
        if (view == null) {
            return;
        }
        int i = this.a;
        if (i == 0) {
            Intent intent = new Intent("android.settings.USER_DISCLAIMER");
            intent.addFlags(268435456);
            i(view, intent);
        } else if (i == 1) {
            j(view, this.c);
        }
    }

    @Override
    public void b(View view) {
        if (view == null) {
            return;
        }
        int i = this.a;
        if (i == 0) {
            Intent intent = new Intent("com.transsion.settings.PrivacyPolicy");
            intent.addFlags(268435456);
            i(view, intent);
        } else if (i == 1) {
            j(view, this.b);
        }
    }

    public void h() {
        this.a = 1;
    }

    public final boolean i(View view, Intent intent) {
        try {
            view.getContext().startActivity(intent);
            return true;
        } catch (Exception e2) {
            Log.e("DefaultGdprCallback", "startActivitySafely: " + e2.getMessage());
            return false;
        }
    }

    public final void j(View view, int i) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(view.getContext().getString(i)));
        intent.addFlags(268435456);
        i(view, intent);
    }
}
