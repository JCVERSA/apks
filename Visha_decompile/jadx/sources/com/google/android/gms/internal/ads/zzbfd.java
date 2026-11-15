package com.google.android.gms.internal.ads;

import android.graphics.Color;
import com.hunantv.media.drm.IDrmSession;
import java.util.ArrayList;
import java.util.List;
import org.mozilla.classfile.ByteCode;

public final class zzbfd extends zzbfl {
    static final int zza;
    static final int zzb;
    private static final int zzc;
    private final String zzd;
    private final List zze = new ArrayList();
    private final List zzf = new ArrayList();
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;

    static {
        int iRgb = Color.rgb(12, ByteCode.FRETURN, IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT);
        zzc = iRgb;
        zza = Color.rgb(IDrmSession.ERROR_SESSION_DRM_NULL, IDrmSession.ERROR_SESSION_DRM_NULL, IDrmSession.ERROR_SESSION_DRM_NULL);
        zzb = iRgb;
    }

    public zzbfd(String str, List list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.zzd = str;
        for (int i3 = 0; i3 < list.size(); i3++) {
            zzbfg zzbfgVar = (zzbfg) list.get(i3);
            this.zze.add(zzbfgVar);
            this.zzf.add(zzbfgVar);
        }
        this.zzg = num != null ? num.intValue() : zza;
        this.zzh = num2 != null ? num2.intValue() : zzb;
        this.zzi = num3 != null ? num3.intValue() : 12;
        this.zzj = i;
        this.zzk = i2;
    }

    public final int zzb() {
        return this.zzj;
    }

    public final int zzc() {
        return this.zzk;
    }

    public final int zzd() {
        return this.zzg;
    }

    public final int zze() {
        return this.zzh;
    }

    public final int zzf() {
        return this.zzi;
    }

    @Override
    public final String zzg() {
        return this.zzd;
    }

    @Override
    public final List zzh() {
        return this.zzf;
    }

    public final List zzi() {
        return this.zze;
    }
}
