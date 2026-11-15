package defpackage;

import android.os.Build;
import android.os.ext.SdkExtensions;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;

public final class q7h implements deh {
    public final Integer a;

    public q7h(Integer num) {
        this.a = num;
    }

    public static q7h a(VersionInfoParcel versionInfoParcel) {
        if (!((Boolean) zzbd.zzc().b(cye.ga)).booleanValue()) {
            return new q7h(null);
        }
        zzv.zzq();
        int extensionVersion = 0;
        try {
            int i = Build.VERSION.SDK_INT;
            if (i < 30 || SdkExtensions.getExtensionVersion(30) <= 3) {
                if (((Boolean) zzbd.zzc().b(cye.ja)).booleanValue()) {
                    if (versionInfoParcel.clientJarVersion >= ((Integer) zzbd.zzc().b(cye.ia)).intValue() && i >= 31 && SdkExtensions.getExtensionVersion(31) >= 9) {
                        extensionVersion = SdkExtensions.getExtensionVersion(31);
                    }
                }
            } else {
                extensionVersion = SdkExtensions.getExtensionVersion(1000000);
            }
        } catch (Exception e) {
            zzv.zzp().x(e, "AdUtil.getAdServicesExtensionVersion");
        }
        return new q7h(Integer.valueOf(extensionVersion));
    }

    @Override
    public final void zza(Object obj) {
    }

    @Override
    public final void zzb(Object obj) {
        Integer num = this.a;
        kyf kyfVar = (kyf) obj;
        if (num != null) {
            kyfVar.a.putInt("aos", num.intValue());
        }
    }
}
