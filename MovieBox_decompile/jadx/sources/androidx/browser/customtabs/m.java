package androidx.browser.customtabs;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;

final class m implements l {

    private final c.c f1892a;

    private m(c.c cVar) {
        this.f1892a = cVar;
    }

    static m a(IBinder iBinder) {
        return new m(c.c.a.X0(iBinder));
    }

    @Override
    public void onGreatestScrollPercentageIncreased(int i10, Bundle bundle) {
        try {
            this.f1892a.onGreatestScrollPercentageIncreased(i10, bundle);
        } catch (RemoteException unused) {
            Log.e("EngagementSigsCallbkRmt", "RemoteException during IEngagementSignalsCallback transaction");
        }
    }

    @Override
    public void onSessionEnded(boolean z10, Bundle bundle) {
        try {
            this.f1892a.onSessionEnded(z10, bundle);
        } catch (RemoteException unused) {
            Log.e("EngagementSigsCallbkRmt", "RemoteException during IEngagementSignalsCallback transaction");
        }
    }

    @Override
    public void onVerticalScrollEvent(boolean z10, Bundle bundle) {
        try {
            this.f1892a.onVerticalScrollEvent(z10, bundle);
        } catch (RemoteException unused) {
            Log.e("EngagementSigsCallbkRmt", "RemoteException during IEngagementSignalsCallback transaction");
        }
    }
}
