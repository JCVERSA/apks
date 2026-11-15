package ru;

import android.net.ConnectivityManager;
import android.net.Network;
import com.transsion.upgradesdk.bean.UpgradeData;
import kotlin.jvm.internal.Intrinsics;

public final class e extends ConnectivityManager.NetworkCallback {

    public final f f71354a;

    public e(f fVar) {
        this.f71354a = fVar;
    }

    @Override
    public final void onAvailable(Network network) {
        Intrinsics.h(network, "network");
        super.onAvailable(network);
        try {
            f fVar = this.f71354a;
            tu.g.b(fVar.f71359d, "CDNConfigNet step1-1:start");
            qu.d dVar = qu.f.f70259o;
            if (dVar.a().f70272l) {
                tu.g.b(fVar.f71359d, "CDNConfigNet step1-2: cached");
                return;
            }
            if (((d) d.f71350d.getValue()).f71353c == 1) {
                tu.g.b(fVar.f71359d, "CDNConfigNet step1-3: requesting");
                return;
            }
            UpgradeData upgradeData = dVar.a().f70262b;
            int cdnRequestIntervalHours = upgradeData != null ? upgradeData.getCdnRequestIntervalHours() : 6;
            if (fVar.f71358c > 0 && System.currentTimeMillis() - fVar.f71358c < ((long) (cdnRequestIntervalHours * 3600)) * 1000) {
                tu.g.b(fVar.f71359d, "CDNConfigNet step1-3: request interval");
            } else {
                fVar.f71358c = System.currentTimeMillis();
                dVar.a().b(2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public final void onLost(Network network) {
        Intrinsics.h(network, "network");
        super.onLost(network);
    }
}
