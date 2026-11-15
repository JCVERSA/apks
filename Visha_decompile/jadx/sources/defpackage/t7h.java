package defpackage;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import java.util.concurrent.Callable;

public final class t7h implements eeh {
    public final g8i a;
    public final Context b;

    public t7h(g8i g8iVar, Context context) {
        this.a = g8iVar;
        this.b = context;
    }

    public static u7h a(t7h t7hVar) {
        int i;
        int streamMaxVolume;
        AudioManager audioManager = (AudioManager) t7hVar.b.getSystemService("audio");
        float fZza = zzv.zzs().zza();
        boolean zZze = zzv.zzs().zze();
        if (audioManager == null) {
            return new u7h(-1, false, false, -1, -1, -1, -1, -1, fZza, zZze, true);
        }
        int mode = audioManager.getMode();
        boolean zIsMusicActive = audioManager.isMusicActive();
        boolean zIsSpeakerphoneOn = audioManager.isSpeakerphoneOn();
        int streamVolume = audioManager.getStreamVolume(3);
        if (((Boolean) zzbd.zzc().b(cye.db)).booleanValue()) {
            int iZzj = zzv.zzr().zzj(audioManager);
            streamMaxVolume = audioManager.getStreamMaxVolume(3);
            i = iZzj;
        } else {
            i = -1;
            streamMaxVolume = -1;
        }
        return new u7h(mode, zIsMusicActive, zIsSpeakerphoneOn, streamVolume, i, streamMaxVolume, audioManager.getRingerMode(), audioManager.getStreamVolume(2), fZza, zZze, false);
    }

    @Override
    public final int zza() {
        return 13;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return t7h.a(this.b);
            }
        });
    }
}
