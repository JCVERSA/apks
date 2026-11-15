package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.LocationManager;
import androidx.media3.common.C;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.athena.config.data.model.anehat;
import com.transsion.athena.taaneh.a;
import com.transsion.ga.AthenaAnalytics;

public class q4d extends BroadcastReceiver {
    public boolean a = true;

    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            if (this.a) {
                this.a = false;
                return;
            }
            try {
                if (o3d.f(context) && anehat.c(context)) {
                    AthenaAnalytics.b0();
                    AthenaAnalytics.D();
                    return;
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if ("android.location.PROVIDERS_CHANGED".equals(action)) {
            if (a.f(context, "android.permission.ACCESS_FINE_LOCATION") || a.f(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                try {
                    LocationManager locationManager = (LocationManager) context.getApplicationContext().getSystemService("location");
                    if (!locationManager.isProviderEnabled(DownloadFacadeEnum.USER_GPS) && !locationManager.isProviderEnabled("network")) {
                        return;
                    }
                    AthenaAnalytics.J(9999).k(502, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
