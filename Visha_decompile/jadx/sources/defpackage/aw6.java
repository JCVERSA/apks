package defpackage;

import android.media.AudioManager;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.transsion.audio.data.AudioOpStatus;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.playercommon.utils.MediaVolumeManager;

public abstract class aw6 {
    public static void a(int i, int i2, MusicPlayManager musicPlayManager) {
        Log.i("MusicTypeVolumeUtils", "changeVolume volume:" + i + ",maxVolume:" + i2);
        ((AudioManager) Utils.a().getSystemService("audio")).setStreamVolume(3, i, 4);
    }

    public static final int b(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    public static void c(AudioOpStatus audioOpStatus, float f, MusicPlayManager musicPlayManager) {
        int i = audioOpStatus.mMusicMaxVolume;
        int iB = b((int) (i * f), 0, i);
        if (f > 0.0f && iB == 0) {
            iB = 1;
        }
        audioOpStatus.mMusicVolume = iB;
        audioOpStatus.mAudioVolume = f;
        a(iB, audioOpStatus.mMusicMaxVolume, musicPlayManager);
    }

    public static float d(AudioOpStatus audioOpStatus, boolean z, MusicPlayManager musicPlayManager) {
        int i = audioOpStatus.mMusicMaxVolume;
        int iB = z ? b(audioOpStatus.mMusicVolume + 1, 0, i) : b(audioOpStatus.mMusicVolume - 1, 0, i);
        a(iB, i, musicPlayManager);
        return iB / i;
    }

    public static void e(AudioOpStatus audioOpStatus) {
        MediaVolumeManager mediaVolumeManagerS = MediaVolumeManager.s();
        int iU = mediaVolumeManagerS.u();
        int iT = mediaVolumeManagerS.t();
        audioOpStatus.mMusicMaxVolume = iU;
        audioOpStatus.mMusicVolume = iT;
        audioOpStatus.mAudioVolume = iU == 0 ? 0.0f : (iT * 1.0f) / iU;
    }
}
