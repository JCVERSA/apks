package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.internal.client.zzdd;
import com.google.android.gms.ads.internal.client.zzdf;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.client.zzdh;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzez;
import com.google.android.gms.ads.internal.client.zzfo;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.internal.ads.zzbfs;
import com.google.android.gms.internal.ads.zzbft;
import com.google.android.gms.internal.ads.zzbhn;
import com.google.android.gms.internal.ads.zzbso;
import java.util.ArrayList;
import java.util.List;

public final class faf extends NativeAd {
    public final zzbhn a;
    public final eaf c;
    public final NativeAd.AdChoicesInfo d;
    public final List b = new ArrayList();
    public final List e = new ArrayList();

    public faf(zzbhn zzbhnVar) {
        eaf eafVar;
        this.a = zzbhnVar;
        caf cafVar = null;
        try {
            List listZzu = zzbhnVar.zzu();
            if (listZzu != null) {
                for (Object obj : listZzu) {
                    zzbft zzbftVarZzg = obj instanceof IBinder ? zzbfs.zzg((IBinder) obj) : null;
                    if (zzbftVarZzg != null) {
                        this.b.add(new eaf(zzbftVarZzg));
                    }
                }
            }
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
        try {
            List listZzv = this.a.zzv();
            if (listZzv != null) {
                for (Object obj2 : listZzv) {
                    zzdg zzdgVarZzb = obj2 instanceof IBinder ? zzdf.zzb((IBinder) obj2) : null;
                    if (zzdgVarZzb != null) {
                        this.e.add(new zzdh(zzdgVarZzb));
                    }
                }
            }
        } catch (RemoteException e2) {
            zzo.zzh("", e2);
        }
        try {
            zzbft zzbftVarZzk = this.a.zzk();
            eafVar = zzbftVarZzk != null ? new eaf(zzbftVarZzk) : null;
        } catch (RemoteException e3) {
            zzo.zzh("", e3);
        }
        this.c = eafVar;
        try {
            if (this.a.zzi() != null) {
                cafVar = new caf(this.a.zzi());
            }
        } catch (RemoteException e4) {
            zzo.zzh("", e4);
        }
        this.d = cafVar;
    }

    @Override
    public final Object a() {
        try {
            return this.a.zzm();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final void cancelUnconfirmedClick() {
        try {
            this.a.zzw();
        } catch (RemoteException e) {
            zzo.zzh("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override
    public final void destroy() {
        try {
            this.a.zzx();
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void enableCustomClickGesture() {
        try {
            this.a.zzD();
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.d;
    }

    @Override
    public final String getAdvertiser() {
        try {
            return this.a.zzn();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String getBody() {
        try {
            return this.a.zzo();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String getCallToAction() {
        try {
            return this.a.zzp();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final Bundle getExtras() {
        try {
            Bundle bundleZzf = this.a.zzf();
            if (bundleZzf != null) {
                return bundleZzf;
            }
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
        return new Bundle();
    }

    @Override
    public final String getHeadline() {
        try {
            return this.a.zzq();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final NativeAd.Image getIcon() {
        return this.c;
    }

    @Override
    public final List getImages() {
        return this.b;
    }

    @Override
    public final MediaContent getMediaContent() {
        try {
            zzbhn zzbhnVar = this.a;
            if (zzbhnVar.zzj() != null) {
                return new zzez(zzbhnVar.zzj(), null);
            }
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
        return null;
    }

    @Override
    public final List getMuteThisAdReasons() {
        return this.e;
    }

    @Override
    public final String getPrice() {
        try {
            return this.a.zzs();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final ResponseInfo getResponseInfo() {
        zzdx zzdxVarZzg;
        try {
            zzdxVarZzg = this.a.zzg();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            zzdxVarZzg = null;
        }
        return ResponseInfo.zza(zzdxVarZzg);
    }

    @Override
    public final Double getStarRating() {
        try {
            double dZze = this.a.zze();
            if (dZze == -1.0d) {
                return null;
            }
            return Double.valueOf(dZze);
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String getStore() {
        try {
            return this.a.zzt();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.a.zzH();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return false;
        }
    }

    @Override
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.a.zzI();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return false;
        }
    }

    @Override
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            try {
                if (this.a.zzI()) {
                    if (muteThisAdReason == null) {
                        this.a.zzy(null);
                        return;
                    } else if (muteThisAdReason instanceof zzdh) {
                        this.a.zzy(((zzdh) muteThisAdReason).zza());
                        return;
                    } else {
                        zzo.zzg("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
                        return;
                    }
                }
            } catch (RemoteException e) {
                zzo.zzh("", e);
            }
            zzo.zzg("Ad is not custom mute enabled");
        } catch (RemoteException e2) {
            zzo.zzh("", e2);
        }
    }

    @Override
    public final void performClick(Bundle bundle) {
        try {
            this.a.zzz(bundle);
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void recordCustomClickGesture() {
        try {
            this.a.zzA();
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void recordEvent(Bundle bundle) {
        try {
            this.a.zzB(bundle);
        } catch (RemoteException e) {
            zzo.zzh("Failed to record native event", e);
        }
    }

    @Override
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.a.zzJ(bundle);
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return false;
        }
    }

    @Override
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.a.zzC(bundle);
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.a.zzE(new zzdd(muteThisAdListener));
        } catch (RemoteException e) {
            zzo.zzh("", e);
        }
    }

    @Override
    public final void setOnPaidEventListener(@Nullable OnPaidEventListener onPaidEventListener) {
        try {
            this.a.zzF(new zzfo(onPaidEventListener));
        } catch (RemoteException e) {
            zzo.zzh("Failed to setOnPaidEventListener", e);
        }
    }

    @Override
    public final void setUnconfirmedClickListener(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.a.zzG(new zzbso(unconfirmedClickListener));
        } catch (RemoteException e) {
            zzo.zzh("Failed to setUnconfirmedClickListener", e);
        }
    }
}
