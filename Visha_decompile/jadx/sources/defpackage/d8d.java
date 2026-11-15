package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.transsion.sdk.oneid.e;

public class d8d extends BroadcastReceiver {
    public boolean a = true;

    @Override
    public void onReceive(Context context, Intent intent) {
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
            if (this.a) {
                this.a = false;
                return;
            }
            try {
                if (p6d.p(context)) {
                    e.a(context).l();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
