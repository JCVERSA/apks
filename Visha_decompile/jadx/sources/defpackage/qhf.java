package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzcfn;
import java.util.Map;

public final class qhf implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        chf chfVar = (chf) obj;
        zzcfn zzcfnVarZzq = chfVar.zzq();
        if (zzcfnVarZzq == null) {
            try {
                zzcfn zzcfnVar = new zzcfn(chfVar, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                chfVar.zzC(zzcfnVar);
                zzcfnVarZzq = zzcfnVar;
            } catch (NullPointerException | NumberFormatException e) {
                int i = zze.zza;
                zzo.zzh("Unable to parse videoMeta message.", e);
                zzv.zzp().x(e, "VideoMetaGmsgHandler.onGmsg");
                return;
            }
        }
        float f = Float.parseFloat((String) map.get("duration"));
        boolean zEquals = "1".equals(map.get("muted"));
        float f2 = Float.parseFloat((String) map.get("currentTime"));
        int i2 = Integer.parseInt((String) map.get("playbackState"));
        if (i2 < 0 || i2 > 3) {
            i2 = 0;
        }
        String str = (String) map.get("aspectRatio");
        float f3 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
        if (zzo.zzm(3)) {
            zzo.zze("Video Meta GMSG: currentTime : " + f2 + " , duration : " + f + " , isMuted : " + zEquals + " , playbackState : " + i2 + " , aspectRatio : " + str);
        }
        zzcfnVarZzq.zzr(f2, f, i2, zEquals, f3);
    }
}
