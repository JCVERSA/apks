package defpackage;

import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import java.util.Objects;

public final class igj extends AudioDeviceCallback {
    public final qgj a;

    public igj(qgj qgjVar, ogj ogjVar) {
        this.a = qgjVar;
    }

    @Override
    public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
        qgj qgjVar = this.a;
        qgjVar.j(ggj.c(qgjVar.a, qgjVar.h, qgjVar.g));
    }

    @Override
    public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
        qgj qgjVar = this.a;
        sgj sgjVar = qgjVar.g;
        int i = kfh.a;
        for (AudioDeviceInfo audioDeviceInfo : audioDeviceInfoArr) {
            if (Objects.equals(audioDeviceInfo, sgjVar)) {
                qgjVar.g = null;
                break;
            }
        }
        qgjVar.j(ggj.c(qgjVar.a, qgjVar.h, qgjVar.g));
    }
}
