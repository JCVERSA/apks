package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgd;
import com.google.android.gms.internal.ads.zzbge;
import com.google.android.gms.internal.ads.zzbgg;
import java.util.HashMap;

public final class o1f extends RemoteCreator {
    public o1f() {
        super("com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl");
    }

    @Override
    public final Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
        return iInterfaceQueryLocalInterface instanceof zzbgg ? (zzbgg) iInterfaceQueryLocalInterface : new zzbge(iBinder);
    }

    public final zzbgd c(View view, HashMap map, HashMap map2) {
        try {
            IBinder iBinderZze = ((zzbgg) b(view.getContext())).zze(ObjectWrapper.wrap(view), ObjectWrapper.wrap(map), ObjectWrapper.wrap(map2));
            if (iBinderZze == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZze.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            return iInterfaceQueryLocalInterface instanceof zzbgd ? (zzbgd) iInterfaceQueryLocalInterface : new zzbgb(iBinderZze);
        } catch (RemoteException | RemoteCreator.RemoteCreatorException e) {
            zzo.zzk("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }
}
