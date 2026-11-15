package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.internal.client.zzdf;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.client.zzdh;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbfr;
import com.google.android.gms.internal.ads.zzbft;
import com.google.android.gms.internal.ads.zzbhn;
import java.util.ArrayList;
import java.util.List;

public final class m1f extends UnifiedNativeAd {
    public final zzbhn a;
    public final c1f c;
    public final List b = new ArrayList();
    public final VideoController d = new VideoController();
    public final List e = new ArrayList();

    public m1f(zzbhn zzbhnVar) {
        zzbft zzbfrVar;
        IBinder iBinder;
        this.a = zzbhnVar;
        c1f c1fVar = null;
        try {
            List listZzu = zzbhnVar.zzu();
            if (listZzu != null) {
                for (Object obj : listZzu) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        zzbfrVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        zzbfrVar = iInterfaceQueryLocalInterface instanceof zzbft ? (zzbft) iInterfaceQueryLocalInterface : new zzbfr(iBinder);
                    }
                    if (zzbfrVar != null) {
                        this.b.add(new c1f(zzbfrVar));
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
            if (zzbftVarZzk != null) {
                c1fVar = new c1f(zzbftVarZzk);
            }
        } catch (RemoteException e3) {
            zzo.zzh("", e3);
        }
        this.c = c1fVar;
        try {
            if (this.a.zzi() != null) {
                new b1f(this.a.zzi());
            }
        } catch (RemoteException e4) {
            zzo.zzh("", e4);
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
    public final VideoController zza() {
        try {
            zzbhn zzbhnVar = this.a;
            if (zzbhnVar.zzh() != null) {
                this.d.zzb(zzbhnVar.zzh());
            }
        } catch (RemoteException e) {
            zzo.zzh("Exception occurred while getting video controller", e);
        }
        return this.d;
    }

    @Override
    public final NativeAd.Image zzb() {
        return this.c;
    }

    @Override
    public final Double zzc() {
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
    public final Object zzd() {
        try {
            IObjectWrapper iObjectWrapperZzl = this.a.zzl();
            if (iObjectWrapperZzl != null) {
                return ObjectWrapper.unwrap(iObjectWrapperZzl);
            }
            return null;
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String zze() {
        try {
            return this.a.zzn();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String zzf() {
        try {
            return this.a.zzo();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String zzg() {
        try {
            return this.a.zzp();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String zzh() {
        try {
            return this.a.zzq();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String zzi() {
        try {
            return this.a.zzs();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final String zzj() {
        try {
            return this.a.zzt();
        } catch (RemoteException e) {
            zzo.zzh("", e);
            return null;
        }
    }

    @Override
    public final List zzk() {
        return this.b;
    }
}
