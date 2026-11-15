package in;

import android.content.Context;
import android.os.Handler;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.audio.x;
import androidx.media3.exoplayer.mediacodec.h0;
import androidx.media3.exoplayer.o;
import androidx.media3.exoplayer.video.i0;
import com.transsion.player.exo.ORExoDecoderType;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g extends o {

    public static final a f62230n = new a(null);

    private final ORExoDecoderType f62231l;

    private final Lazy f62232m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public class b {

        public static final int[] f62233a;

        static {
            int[] iArr = new int[ORExoDecoderType.values().length];
            try {
                iArr[ORExoDecoderType.AV1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f62233a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Context context, ORExoDecoderType videoRendererType) {
        super(context);
        Intrinsics.h(context, "context");
        Intrinsics.h(videoRendererType, "videoRendererType");
        this.f62231l = videoRendererType;
        this.f62232m = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return g.t();
            }
        });
    }

    private final i r() {
        return (i) this.f62232m.getValue();
    }

    public static final i t() {
        return new i();
    }

    @Override
    protected void c(Context context, int i10, h0 mediaCodecSelector, boolean z10, AudioSink audioSink, Handler eventHandler, x eventListener, ArrayList out) {
        Intrinsics.h(context, "context");
        Intrinsics.h(mediaCodecSelector, "mediaCodecSelector");
        Intrinsics.h(audioSink, "audioSink");
        Intrinsics.h(eventHandler, "eventHandler");
        Intrinsics.h(eventListener, "eventListener");
        Intrinsics.h(out, "out");
        super.c(context, i10, mediaCodecSelector, z10, audioSink, eventHandler, eventListener, out);
        sn.e eVar = sn.e.f72355a;
        eVar.e("ORRenderersFactory", "buildAudioRenderers, mode:" + i10, true);
        if (i10 == 0) {
            return;
        }
        int size = out.size();
        if (i10 == 2) {
            size--;
        }
        try {
            out.add(size, new io.github.anilbeesetti.nextlib.media3ext.ffdecoder.b(eventHandler, eventListener, audioSink));
            eVar.e("ORRenderersFactory", "Loaded FfmpegAudioRenderer.", true);
        } catch (Exception e10) {
            e10.printStackTrace();
            sn.e.f72355a.c("ORRenderersFactory", "Error instantiating Ffmpeg extension :" + e10, true);
        }
    }

    @Override
    protected AudioSink d(Context context, boolean z10, boolean z11) {
        Intrinsics.h(context, "context");
        DefaultAudioSink defaultAudioSinkJ = new DefaultAudioSink.g(context).o(z10).n(z11).m(new i[]{r()}).j();
        Intrinsics.g(defaultAudioSinkJ, "build(...)");
        return defaultAudioSinkJ;
    }

    @Override
    protected void k(Context context, int i10, h0 mediaCodecSelector, boolean z10, Handler eventHandler, i0 eventListener, long j10, ArrayList out) {
        Intrinsics.h(context, "context");
        Intrinsics.h(mediaCodecSelector, "mediaCodecSelector");
        Intrinsics.h(eventHandler, "eventHandler");
        Intrinsics.h(eventListener, "eventListener");
        Intrinsics.h(out, "out");
        super.k(context, i10, mediaCodecSelector, z10, eventHandler, eventListener, j10, out);
        sn.e eVar = sn.e.f72355a;
        eVar.e("ORRenderersFactory", "buildVideoRenderers, mode:" + i10, true);
        if (i10 == 0) {
            return;
        }
        int size = out.size();
        if (i10 == 2) {
            size--;
        }
        try {
            out.add(size, b.f62233a[this.f62231l.ordinal()] == 1 ? new androidx.media3.decoder.av1.c(j10, eventHandler, eventListener, 50) : new io.github.anilbeesetti.nextlib.media3ext.ffdecoder.d(j10, eventHandler, eventListener, 50));
            eVar.e("ORRenderersFactory", "Loaded FfmpegVideoRenderer.", true);
        } catch (Exception e10) {
            e10.printStackTrace();
            sn.e.f72355a.c("ORRenderersFactory", "Error instantiating Ffmpeg extension :" + e10, true);
        }
    }

    public void s(float f10) {
        if (f10 > 1.0f) {
            f10 = (2 * f10) - 1.0f;
        }
        r().b(f10);
    }
}
