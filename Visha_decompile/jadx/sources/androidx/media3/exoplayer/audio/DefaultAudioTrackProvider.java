package androidx.media3.exoplayer.audio;

import android.media.AudioTrack;
import androidx.annotation.RequiresApi;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

@UnstableApi
public class DefaultAudioTrackProvider implements DefaultAudioSink.AudioTrackProvider {
    private AudioTrack createAudioTrackV21(AudioSink.AudioTrackConfig audioTrackConfig, AudioAttributes audioAttributes, int i) {
        return new AudioTrack(getAudioTrackAttributesV21(audioAttributes, audioTrackConfig.tunneling), Util.getAudioFormat(audioTrackConfig.sampleRate, audioTrackConfig.channelConfig, audioTrackConfig.encoding), audioTrackConfig.bufferSize, 1, i);
    }

    @RequiresApi(23)
    private AudioTrack createAudioTrackV23(AudioSink.AudioTrackConfig audioTrackConfig, AudioAttributes audioAttributes, int i) {
        AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(getAudioTrackAttributesV21(audioAttributes, audioTrackConfig.tunneling)).setAudioFormat(Util.getAudioFormat(audioTrackConfig.sampleRate, audioTrackConfig.channelConfig, audioTrackConfig.encoding)).setTransferMode(1).setBufferSizeInBytes(audioTrackConfig.bufferSize).setSessionId(i);
        if (Util.SDK_INT >= 29) {
            setOffloadedPlaybackV29(sessionId, audioTrackConfig.offload);
        }
        return customizeAudioTrackBuilder(sessionId).build();
    }

    private android.media.AudioAttributes getAudioTrackAttributesV21(AudioAttributes audioAttributes, boolean z) {
        return z ? getAudioTrackTunnelingAttributesV21() : audioAttributes.getAudioAttributesV21().audioAttributes;
    }

    private android.media.AudioAttributes getAudioTrackTunnelingAttributesV21() {
        return new android.media.AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
    }

    @RequiresApi(29)
    private void setOffloadedPlaybackV29(AudioTrack.Builder builder, boolean z) {
        builder.setOffloadedPlayback(z);
    }

    @RequiresApi(23)
    public AudioTrack.Builder customizeAudioTrackBuilder(AudioTrack.Builder builder) {
        return builder;
    }

    @Override
    public final AudioTrack getAudioTrack(AudioSink.AudioTrackConfig audioTrackConfig, AudioAttributes audioAttributes, int i) {
        return Util.SDK_INT >= 23 ? createAudioTrackV23(audioTrackConfig, audioAttributes, i) : createAudioTrackV21(audioTrackConfig, audioAttributes, i);
    }
}
