package androidx.media3.exoplayer.audio;

import android.media.AudioAttributes;
import android.media.AudioTrack;

public class z0 implements DefaultAudioSink.f {
    private AudioTrack b(AudioSink.a aVar, androidx.media3.common.c cVar, int i10) {
        return new AudioTrack(e(cVar, aVar.f10692d), androidx.media3.common.util.a1.L(aVar.f10690b, aVar.f10691c, aVar.f10689a), aVar.f10694f, 1, i10);
    }

    private AudioTrack c(AudioSink.a aVar, androidx.media3.common.c cVar, int i10) {
        AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(e(cVar, aVar.f10692d)).setAudioFormat(androidx.media3.common.util.a1.L(aVar.f10690b, aVar.f10691c, aVar.f10689a)).setTransferMode(1).setBufferSizeInBytes(aVar.f10694f).setSessionId(i10);
        if (androidx.media3.common.util.a1.f10038a >= 29) {
            g(sessionId, aVar.f10693e);
        }
        return d(sessionId).build();
    }

    private AudioAttributes e(androidx.media3.common.c cVar, boolean z10) {
        return z10 ? f() : cVar.a().f9607a;
    }

    private AudioAttributes f() {
        return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
    }

    private void g(AudioTrack.Builder builder, boolean z10) {
        builder.setOffloadedPlayback(z10);
    }

    @Override
    public final AudioTrack a(AudioSink.a aVar, androidx.media3.common.c cVar, int i10) {
        return androidx.media3.common.util.a1.f10038a >= 23 ? c(aVar, cVar, i10) : b(aVar, cVar, i10);
    }

    protected AudioTrack.Builder d(AudioTrack.Builder builder) {
        return builder;
    }
}
