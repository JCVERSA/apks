package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.internal.ads.zzbwa;

public final class lcf implements RewardItem {
    public final zzbwa a;

    public lcf(zzbwa zzbwaVar) {
        this.a = zzbwaVar;
    }

    @Override
    public final int getAmount() {
        zzbwa zzbwaVar = this.a;
        if (zzbwaVar != null) {
            try {
                return zzbwaVar.zze();
            } catch (RemoteException e) {
                zzo.zzk("Could not forward getAmount to RewardItem", e);
            }
        }
        return 0;
    }

    @Override
    public final String getType() {
        zzbwa zzbwaVar = this.a;
        if (zzbwaVar != null) {
            try {
                return zzbwaVar.zzf();
            } catch (RemoteException e) {
                zzo.zzk("Could not forward getType to RewardItem", e);
            }
        }
        return null;
    }
}
