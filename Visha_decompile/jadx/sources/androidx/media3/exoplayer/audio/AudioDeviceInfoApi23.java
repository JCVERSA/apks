package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.annotation.RequiresApi;

@RequiresApi(23)
final class AudioDeviceInfoApi23 {
    public final AudioDeviceInfo audioDeviceInfo;

    public AudioDeviceInfoApi23(AudioDeviceInfo audioDeviceInfo) {
        this.audioDeviceInfo = audioDeviceInfo;
    }
}
