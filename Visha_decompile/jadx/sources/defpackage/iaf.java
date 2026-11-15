package defpackage;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.ads.zzbsw;
import com.google.android.gms.internal.ads.zzbsy;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbtb;

public final class iaf extends RemoteCreator {
    public iaf() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    @Override
    public final Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        return iInterfaceQueryLocalInterface instanceof zzbtb ? (zzbtb) iInterfaceQueryLocalInterface : new zzbsz(iBinder);
    }

    public final zzbsy c(Activity activity) {
        try {
            IBinder iBinderZze = ((zzbtb) b(activity)).zze(ObjectWrapper.wrap(activity));
            if (iBinderZze == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinderZze.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            return iInterfaceQueryLocalInterface instanceof zzbsy ? (zzbsy) iInterfaceQueryLocalInterface : new zzbsw(iBinderZze);
        } catch (RemoteException e) {
            zzo.zzk("Could not create remote AdOverlay.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            zzo.zzk("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
