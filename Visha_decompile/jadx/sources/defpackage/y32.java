package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.audio.h;
import com.google.android.exoplayer2.mediacodec.b;
import com.google.android.exoplayer2.mediacodec.c;
import com.google.android.exoplayer2.mediacodec.e;
import com.google.android.exoplayer2.metadata.a;
import com.google.android.exoplayer2.w;
import java.util.ArrayList;

public class y32 implements ms8 {
    public final Context a;
    public boolean e;
    public boolean g;
    public boolean h;
    public boolean i;
    public final b b = new b();
    public int c = 0;
    public long d = 5000;
    public e f = e.a;

    public y32(Context context) {
        this.a = context;
    }

    @Override
    public w[] a(Handler handler, c6c c6cVar, com.google.android.exoplayer2.audio.b bVar, kha khaVar, fo6 fo6Var) {
        ArrayList arrayList = new ArrayList();
        h(this.a, this.c, this.f, this.e, handler, c6cVar, this.d, arrayList);
        AudioSink audioSinkC = c(this.a, this.g, this.h, this.i);
        if (audioSinkC != null) {
            b(this.a, this.c, this.f, this.e, audioSinkC, handler, bVar, arrayList);
        }
        g(this.a, khaVar, handler.getLooper(), this.c, arrayList);
        e(this.a, fo6Var, handler.getLooper(), this.c, arrayList);
        d(this.a, this.c, arrayList);
        f(this.a, handler, this.c, arrayList);
        return (w[]) arrayList.toArray(new w[0]);
    }

    public void b(Context context, int i, e eVar, boolean z, AudioSink audioSink, Handler handler, com.google.android.exoplayer2.audio.b bVar, ArrayList arrayList) {
        int i2;
        AudioSink audioSink2;
        Handler handler2;
        String str;
        int i3;
        int i4;
        arrayList.add(new h(context, i(), eVar, z, handler, bVar, audioSink));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                i2 = size + 1;
                try {
                    arrayList.add(size, (w) Class.forName("com.google.android.exoplayer2.decoder.midi.MidiRenderer").getConstructor(null).newInstance(null));
                    op5.f("DefaultRenderersFactory", "Loaded MidiRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i2;
                    i2 = size;
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                try {
                    audioSink2 = audioSink;
                    handler2 = handler;
                    str = "DefaultRenderersFactory";
                    try {
                        i3 = i2 + 1;
                        try {
                            arrayList.add(i2, (w) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.b.class, AudioSink.class).newInstance(handler2, bVar, audioSink2));
                            op5.f(str, "Loaded LibopusAudioRenderer.");
                        } catch (ClassNotFoundException unused3) {
                            i2 = i3;
                            i3 = i2;
                        }
                    } catch (ClassNotFoundException unused4) {
                    }
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating Opus extension", e);
                }
            } catch (ClassNotFoundException unused5) {
                audioSink2 = audioSink;
                handler2 = handler;
                str = "DefaultRenderersFactory";
            }
            try {
                try {
                    i4 = i3 + 1;
                    try {
                        arrayList.add(i3, (w) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.b.class, AudioSink.class).newInstance(handler2, bVar, audioSink2));
                        op5.f(str, "Loaded LibflacAudioRenderer.");
                    } catch (ClassNotFoundException unused6) {
                        i3 = i4;
                        i4 = i3;
                    }
                } catch (Exception e2) {
                    throw new RuntimeException("Error instantiating FLAC extension", e2);
                }
            } catch (ClassNotFoundException unused7) {
            }
            try {
                arrayList.add(i4, (w) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.b.class, AudioSink.class).newInstance(handler2, bVar, audioSink2));
                op5.f(str, "Loaded FfmpegAudioRenderer.");
            } catch (ClassNotFoundException unused8) {
            } catch (Exception e3) {
                throw new RuntimeException("Error instantiating FFmpeg extension", e3);
            }
        } catch (Exception e4) {
            throw new RuntimeException("Error instantiating MIDI extension", e4);
        }
    }

    public AudioSink c(Context context, boolean z, boolean z2, boolean z3) {
        return new DefaultAudioSink.d().g(kn.c(context)).i(z).h(z2).j(z3 ? 1 : 0).f();
    }

    public void d(Context context, int i, ArrayList arrayList) {
        arrayList.add(new yq0());
    }

    public void e(Context context, fo6 fo6Var, Looper looper, int i, ArrayList arrayList) {
        arrayList.add(new a(fo6Var, looper));
    }

    public void f(Context context, Handler handler, int i, ArrayList arrayList) {
    }

    public void g(Context context, kha khaVar, Looper looper, int i, ArrayList arrayList) {
        arrayList.add(new lha(khaVar, looper));
    }

    public void h(Context context, int i, e eVar, boolean z, Handler handler, c6c c6cVar, long j, ArrayList arrayList) {
        Handler handler2;
        Class cls;
        String str;
        int i2;
        arrayList.add(new wd6(context, i(), eVar, j, z, handler, c6cVar, 50));
        if (i == 0) {
            return;
        }
        int size = arrayList.size();
        if (i == 2) {
            size--;
        }
        try {
            try {
                handler2 = handler;
                cls = Handler.class;
                try {
                    i2 = size + 1;
                    try {
                        arrayList.add(size, (w) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, c6c.class, Integer.TYPE).newInstance(Long.valueOf(j), handler2, c6cVar, 50));
                        str = "DefaultRenderersFactory";
                        try {
                            op5.f(str, "Loaded LibvpxVideoRenderer.");
                        } catch (ClassNotFoundException unused) {
                            size = i2;
                            i2 = size;
                        }
                    } catch (ClassNotFoundException unused2) {
                        str = "DefaultRenderersFactory";
                    }
                } catch (ClassNotFoundException unused3) {
                    str = "DefaultRenderersFactory";
                    i2 = size;
                    arrayList.add(i2, (w) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, cls, c6c.class, Integer.TYPE).newInstance(Long.valueOf(j), handler2, c6cVar, 50));
                    op5.f(str, "Loaded Libgav1VideoRenderer.");
                }
            } catch (ClassNotFoundException unused4) {
                handler2 = handler;
                cls = Handler.class;
            }
            try {
                arrayList.add(i2, (w) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, cls, c6c.class, Integer.TYPE).newInstance(Long.valueOf(j), handler2, c6cVar, 50));
                op5.f(str, "Loaded Libgav1VideoRenderer.");
            } catch (ClassNotFoundException unused5) {
            } catch (Exception e) {
                throw new RuntimeException("Error instantiating AV1 extension", e);
            }
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating VP9 extension", e2);
        }
    }

    public c.b i() {
        return this.b;
    }

    public y32 j(boolean z) {
        this.e = z;
        return this;
    }
}
