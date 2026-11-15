package defpackage;

import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.internal.client.zzez;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.google.android.gms.internal.ads.zzbft;
import com.google.android.gms.internal.ads.zzbgn;
import java.util.List;

public final class haf implements NativeCustomFormatAd {
    public final zzbgn a;
    public NativeCustomFormatAd.DisplayOpenMeasurement b;

    public haf(zzbgn zzbgnVar) {
        this.a = zzbgnVar;
    }

    @Override
    public final void destroy() {
        try {
            this.a.zzl();
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final List getAvailableAssetNames() {
        try {
            return this.a.zzk();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String getCustomFormatId() {
        try {
            return this.a.zzi();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final NativeCustomFormatAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.b == null) {
                zzbgn zzbgnVar = this.a;
                if (zzbgnVar.zzq()) {
                    this.b = new daf(zzbgnVar);
                }
            }
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
        return this.b;
    }

    @Override
    public final NativeAd.Image getImage(String str) {
        try {
            zzbft zzbftVarZzg = this.a.zzg(str);
            if (zzbftVarZzg != null) {
                return new eaf(zzbftVarZzg);
            }
            return null;
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final MediaContent getMediaContent() {
        try {
            zzbgn zzbgnVar = this.a;
            if (zzbgnVar.zzf() != null) {
                return new zzez(zzbgnVar.zzf(), zzbgnVar);
            }
            return null;
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final CharSequence getText(String str) {
        try {
            return this.a.zzj(str);
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final void performClick(String str) {
        try {
            this.a.zzn(str);
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void recordImpression() {
        try {
            this.a.zzo();
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }
}
