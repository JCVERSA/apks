package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import java.util.ArrayList;

public class p implements c3 {

    private final Context f24880a;

    private boolean f24884e;

    private boolean f24886g;

    private boolean f24887h;

    private boolean f24888i;

    private final com.google.android.exoplayer2.mediacodec.j f24881b = new com.google.android.exoplayer2.mediacodec.j();

    private int f24882c = 0;

    private long f24883d = 5000;

    private com.google.android.exoplayer2.mediacodec.o f24885f = com.google.android.exoplayer2.mediacodec.o.f24770a;

    public p(Context context) {
        this.f24880a = context;
    }

    @Override
    public y2[] a(Handler handler, com.google.android.exoplayer2.video.w wVar, com.google.android.exoplayer2.audio.r rVar, da.o oVar, com.google.android.exoplayer2.metadata.e eVar) {
        ArrayList arrayList = new ArrayList();
        h(this.f24880a, this.f24882c, this.f24885f, this.f24884e, handler, wVar, this.f24883d, arrayList);
        AudioSink audioSinkC = c(this.f24880a, this.f24886g, this.f24887h, this.f24888i);
        if (audioSinkC != null) {
            b(this.f24880a, this.f24882c, this.f24885f, this.f24884e, audioSinkC, handler, rVar, arrayList);
        }
        g(this.f24880a, oVar, handler.getLooper(), this.f24882c, arrayList);
        e(this.f24880a, eVar, handler.getLooper(), this.f24882c, arrayList);
        d(this.f24880a, this.f24882c, arrayList);
        f(this.f24880a, handler, this.f24882c, arrayList);
        return (y2[]) arrayList.toArray(new y2[0]);
    }

    protected void b(Context context, int i10, com.google.android.exoplayer2.mediacodec.o oVar, boolean z10, AudioSink audioSink, Handler handler, com.google.android.exoplayer2.audio.r rVar, ArrayList arrayList) {
        int i11;
        int i12;
        int i13;
        arrayList.add(new com.google.android.exoplayer2.audio.a0(context, i(), oVar, z10, handler, rVar, audioSink));
        if (i10 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i10 == 2) {
            size--;
        }
        try {
            try {
                i11 = size + 1;
                try {
                    arrayList.add(size, (y2) Class.forName("com.google.android.exoplayer2.decoder.midi.MidiRenderer").getConstructor(null).newInstance(null));
                    com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded MidiRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i11;
                    i11 = size;
                }
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating MIDI extension", e10);
            }
        } catch (ClassNotFoundException unused2) {
        }
        try {
            try {
                i12 = i11 + 1;
                try {
                    arrayList.add(i11, (y2) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.r.class, AudioSink.class).newInstance(handler, rVar, audioSink));
                    com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded LibopusAudioRenderer.");
                } catch (ClassNotFoundException unused3) {
                    i11 = i12;
                    i12 = i11;
                }
            } catch (ClassNotFoundException unused4) {
            }
            try {
                try {
                    i13 = i12 + 1;
                    try {
                        arrayList.add(i12, (y2) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.r.class, AudioSink.class).newInstance(handler, rVar, audioSink));
                        com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded LibflacAudioRenderer.");
                    } catch (ClassNotFoundException unused5) {
                        i12 = i13;
                        i13 = i12;
                    }
                } catch (ClassNotFoundException unused6) {
                }
                try {
                    arrayList.add(i13, (y2) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.r.class, AudioSink.class).newInstance(handler, rVar, audioSink));
                    com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded FfmpegAudioRenderer.");
                } catch (ClassNotFoundException unused7) {
                } catch (Exception e11) {
                    throw new RuntimeException("Error instantiating FFmpeg extension", e11);
                }
            } catch (Exception e12) {
                throw new RuntimeException("Error instantiating FLAC extension", e12);
            }
        } catch (Exception e13) {
            throw new RuntimeException("Error instantiating Opus extension", e13);
        }
    }

    protected AudioSink c(Context context, boolean z10, boolean z11, boolean z12) {
        return new DefaultAudioSink.d().g(com.google.android.exoplayer2.audio.f.c(context)).i(z10).h(z11).j(z12 ? 1 : 0).f();
    }

    protected void d(Context context, int i10, ArrayList arrayList) {
        arrayList.add(new oa.b());
    }

    protected void e(Context context, com.google.android.exoplayer2.metadata.e eVar, Looper looper, int i10, ArrayList arrayList) {
        arrayList.add(new com.google.android.exoplayer2.metadata.f(eVar, looper));
    }

    protected void g(Context context, da.o oVar, Looper looper, int i10, ArrayList arrayList) {
        arrayList.add(new da.p(oVar, looper));
    }

    protected void h(Context context, int i10, com.google.android.exoplayer2.mediacodec.o oVar, boolean z10, Handler handler, com.google.android.exoplayer2.video.w wVar, long j10, ArrayList arrayList) {
        int i11;
        arrayList.add(new com.google.android.exoplayer2.video.g(context, i(), oVar, j10, z10, handler, wVar, 50));
        if (i10 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i10 == 2) {
            size--;
        }
        try {
            try {
                i11 = size + 1;
                try {
                    arrayList.add(size, (y2) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.w.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, wVar, 50));
                    com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i11;
                    i11 = size;
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                arrayList.add(i11, (y2) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.w.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, wVar, 50));
                com.google.android.exoplayer2.util.s.f("DefaultRenderersFactory", "Loaded Libgav1VideoRenderer.");
            } catch (ClassNotFoundException unused3) {
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating AV1 extension", e10);
            }
        } catch (Exception e11) {
            throw new RuntimeException("Error instantiating VP9 extension", e11);
        }
    }

    protected com.google.android.exoplayer2.mediacodec.l.b i() {
        return this.f24881b;
    }

    public p j(boolean z10) {
        this.f24884e = z10;
        return this;
    }

    protected void f(Context context, Handler handler, int i10, ArrayList arrayList) {
    }
}
