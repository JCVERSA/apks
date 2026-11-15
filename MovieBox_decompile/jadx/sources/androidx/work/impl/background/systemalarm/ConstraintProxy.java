package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.NetworkType;
import androidx.work.j;
import j4.u;
import java.util.Iterator;
import java.util.List;

abstract class ConstraintProxy extends BroadcastReceiver {

    private static final String f15192a = j.i("ConstraintProxy");

    public static class BatteryChargingProxy extends ConstraintProxy {
        @Override
        public void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    public static class BatteryNotLowProxy extends ConstraintProxy {
        @Override
        public void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    public static class NetworkStateProxy extends ConstraintProxy {
        @Override
        public void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    public static class StorageNotLowProxy extends ConstraintProxy {
        @Override
        public void onReceive(Context context, Intent intent) {
            super.onReceive(context, intent);
        }
    }

    ConstraintProxy() {
    }

    static void a(Context context, List list) {
        Iterator it = list.iterator();
        boolean zF = false;
        boolean zG = false;
        boolean zI = false;
        boolean z10 = false;
        while (it.hasNext()) {
            androidx.work.b bVar = ((u) it.next()).f62996j;
            zF |= bVar.f();
            zG |= bVar.g();
            zI |= bVar.i();
            z10 |= bVar.d() != NetworkType.NOT_REQUIRED;
            if (zF && zG && zI && z10) {
                break;
            }
        }
        context.sendBroadcast(ConstraintProxyUpdateReceiver.a(context, zF, zG, zI, z10));
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        j.e().a(f15192a, "onReceive : " + intent);
        context.startService(b.a(context));
    }
}
