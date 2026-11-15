package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.transsion.widgetslib.dialog.d;
import com.transsion.xuanniao.account.R;
import java.lang.ref.WeakReference;

public class cr7 {
    public WeakReference a;

    public class a implements DialogInterface.OnClickListener {
        public final Context b;

        public a(cr7 cr7Var, Context context) {
            this.b = context;
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                this.b.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
            } catch (Exception unused) {
                this.b.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
            }
        }
    }

    public static class b {
        public static cr7 a = new cr7();
    }

    public boolean a(Context context) {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")) == null) {
            return false;
        }
        try {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public void b(Context context) {
        WeakReference weakReference = this.a;
        d dVarA = weakReference != null ? (d) weakReference.get() : null;
        if (dVarA == null || !dVarA.isShowing()) {
            dVarA = new d.a(context, R.style.dialog_soft_input).B(context.getString(R.string.xn_no_net)).k(context.getString(R.string.xn_set_net_note)).w(context.getString(R.string.xn_set_net), new a(this, context)).n(context.getString(R.string.xn_cancel), null).a();
            this.a = new WeakReference(dVarA);
        }
        if (dVarA.isShowing()) {
            return;
        }
        dVarA.show();
    }
}
