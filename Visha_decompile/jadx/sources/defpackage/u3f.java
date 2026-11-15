package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzb;
import java.util.Map;

public final class u3f implements n3f {
    public static final Map d = s71.d(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    public final zzb a;
    public final q9f b;
    public final baf c;

    public u3f(zzb zzbVar, q9f q9fVar, baf bafVar) {
        this.a = zzbVar;
        this.b = q9fVar;
        this.c = bafVar;
    }

    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        int iIntValue = ((Integer) d.get((String) map.get(CmcdData.OBJECT_TYPE_AUDIO_ONLY))).intValue();
        int i = 6;
        if (iIntValue != 5) {
            if (iIntValue != 7) {
                zzb zzbVar = this.a;
                if (!zzbVar.zzc()) {
                    zzbVar.zzb(null);
                    return;
                }
                if (iIntValue == 1) {
                    this.b.j(map);
                    return;
                }
                if (iIntValue == 3) {
                    new t9f(ejfVar, map).i();
                    return;
                }
                if (iIntValue == 4) {
                    new o9f(ejfVar, map).j();
                    return;
                }
                if (iIntValue != 5) {
                    if (iIntValue == 6) {
                        this.b.i(true);
                        return;
                    } else if (iIntValue != 7) {
                        int i2 = zze.zza;
                        zzo.zzi("Unknown MRAID command called.");
                        return;
                    }
                }
            }
            this.c.zzc();
            return;
        }
        String str = (String) map.get("forceOrientation");
        boolean z = map.containsKey("allowOrientationChange") ? Boolean.parseBoolean((String) map.get("allowOrientationChange")) : true;
        if (ejfVar == null) {
            int i3 = zze.zza;
            zzo.zzj("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            i = 7;
        } else if (!"landscape".equalsIgnoreCase(str)) {
            i = z ? -1 : 14;
        }
        ejfVar.zzau(i);
    }
}
