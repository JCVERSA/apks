package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;

public class o implements b4 {

    private final Context f11974a;

    private final androidx.media3.exoplayer.mediacodec.k f11975b;

    private boolean f11978e;

    private boolean f11980g;

    private boolean f11981h;

    private boolean f11982i;

    private boolean f11983j;

    private int f11976c = 0;

    private long f11977d = 5000;

    private androidx.media3.exoplayer.mediacodec.h0 f11979f = androidx.media3.exoplayer.mediacodec.h0.f11899a;

    private long f11984k = C.TIME_UNSET;

    public o(Context context) {
        this.f11974a = context;
        this.f11975b = new androidx.media3.exoplayer.mediacodec.k(context);
    }

    @Override
    public w3 a(w3 w3Var, Handler handler, androidx.media3.exoplayer.video.i0 i0Var, androidx.media3.exoplayer.audio.x xVar, h2.h hVar, d2.b bVar) {
        if (w3Var.getTrackType() == 2) {
            return i(w3Var, this.f11974a, this.f11976c, this.f11979f, this.f11978e, handler, i0Var, this.f11977d);
        }
        return null;
    }

    @Override
    public w3[] b(Handler handler, androidx.media3.exoplayer.video.i0 i0Var, androidx.media3.exoplayer.audio.x xVar, h2.h hVar, d2.b bVar) {
        ArrayList arrayList = new ArrayList();
        k(this.f11974a, this.f11976c, this.f11979f, this.f11978e, handler, i0Var, this.f11977d, arrayList);
        AudioSink audioSinkD = d(this.f11974a, this.f11980g, this.f11981h);
        if (audioSinkD != null) {
            c(this.f11974a, this.f11976c, this.f11979f, this.f11978e, audioSinkD, handler, xVar, arrayList);
        }
        j(this.f11974a, hVar, handler.getLooper(), this.f11976c, arrayList);
        g(this.f11974a, bVar, handler.getLooper(), this.f11976c, arrayList);
        e(this.f11974a, this.f11976c, arrayList);
        f(arrayList);
        h(this.f11974a, handler, this.f11976c, arrayList);
        return (w3[]) arrayList.toArray(new w3[0]);
    }

    protected void c(Context context, int i10, androidx.media3.exoplayer.mediacodec.h0 h0Var, boolean z10, AudioSink audioSink, Handler handler, androidx.media3.exoplayer.audio.x xVar, ArrayList arrayList) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        arrayList.add(new androidx.media3.exoplayer.audio.a1(context, m(), h0Var, z10, handler, xVar, audioSink));
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
                    arrayList.add(size, (w3) Class.forName("androidx.media3.decoder.midi.MidiRenderer").getConstructor(Context.class, Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(context, handler, xVar, audioSink));
                    androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded MidiRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i11;
                    i11 = size;
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                try {
                    i12 = i11 + 1;
                    try {
                        arrayList.add(i11, (w3) Class.forName("androidx.media3.decoder.opus.LibopusAudioRenderer").getConstructor(Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(handler, xVar, audioSink));
                        androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded LibopusAudioRenderer.");
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
                            arrayList.add(i12, (w3) Class.forName("androidx.media3.decoder.flac.LibflacAudioRenderer").getConstructor(Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(handler, xVar, audioSink));
                            androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded LibflacAudioRenderer.");
                        } catch (ClassNotFoundException unused5) {
                            i12 = i13;
                            i13 = i12;
                        }
                    } catch (ClassNotFoundException unused6) {
                    }
                    try {
                        try {
                            i14 = i13 + 1;
                            try {
                                arrayList.add(i13, (w3) Class.forName("androidx.media3.decoder.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(handler, xVar, audioSink));
                                androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded FfmpegAudioRenderer.");
                            } catch (ClassNotFoundException unused7) {
                                i13 = i14;
                                i14 = i13;
                            }
                        } catch (ClassNotFoundException unused8) {
                        }
                        try {
                            try {
                                i15 = i14 + 1;
                                try {
                                    arrayList.add(i14, (w3) Class.forName("androidx.media3.decoder.iamf.LibiamfAudioRenderer").getConstructor(Context.class, Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(context, handler, xVar, audioSink));
                                    androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded LibiamfAudioRenderer.");
                                } catch (ClassNotFoundException unused9) {
                                    i14 = i15;
                                    i15 = i14;
                                }
                            } catch (ClassNotFoundException unused10) {
                            }
                            try {
                                arrayList.add(i15, (w3) Class.forName("androidx.media3.decoder.mpegh.MpeghAudioRenderer").getConstructor(Handler.class, androidx.media3.exoplayer.audio.x.class, AudioSink.class).newInstance(handler, xVar, audioSink));
                                androidx.media3.common.util.u.f("DefaultRenderersFactory", "Loaded MpeghAudioRenderer.");
                            } catch (ClassNotFoundException unused11) {
                            } catch (Exception e10) {
                                throw new IllegalStateException("Error instantiating MPEG-H extension", e10);
                            }
                        } catch (Exception e11) {
                            throw new IllegalStateException("Error instantiating IAMF extension", e11);
                        }
                    } catch (Exception e12) {
                        throw new IllegalStateException("Error instantiating FFmpeg extension", e12);
                    }
                } catch (Exception e13) {
                    throw new IllegalStateException("Error instantiating FLAC extension", e13);
                }
            } catch (Exception e14) {
                throw new IllegalStateException("Error instantiating Opus extension", e14);
            }
        } catch (Exception e15) {
            throw new IllegalStateException("Error instantiating MIDI extension", e15);
        }
    }

    protected AudioSink d(Context context, boolean z10, boolean z11) {
        return new DefaultAudioSink.g(context).o(z10).n(z11).j();
    }

    protected void e(Context context, int i10, ArrayList arrayList) {
        arrayList.add(new j2.b());
    }

    protected void f(ArrayList arrayList) {
        arrayList.add(new c2.e(n(), null));
    }

    protected void g(Context context, d2.b bVar, Looper looper, int i10, ArrayList arrayList) {
        arrayList.add(new d2.c(bVar, looper));
        arrayList.add(new d2.c(bVar, looper));
    }

    protected w3 i(w3 w3Var, Context context, int i10, androidx.media3.exoplayer.mediacodec.h0 h0Var, boolean z10, Handler handler, androidx.media3.exoplayer.video.i0 i0Var, long j10) {
        if (this.f11982i && w3Var.getClass() == androidx.media3.exoplayer.video.j.class) {
            return new androidx.media3.exoplayer.video.j.d(context).q(m()).v(h0Var).p(j10).r(z10).s(handler).t(i0Var).u(50).o(this.f11983j).n(this.f11984k).m();
        }
        return null;
    }

    protected void j(Context context, h2.h hVar, Looper looper, int i10, ArrayList arrayList) {
        arrayList.add(new h2.i(hVar, looper));
    }

    protected void k(Context context, int i10, androidx.media3.exoplayer.mediacodec.h0 h0Var, boolean z10, Handler handler, androidx.media3.exoplayer.video.i0 i0Var, long j10, ArrayList arrayList) {
        String str;
        int i11;
        arrayList.add(new androidx.media3.exoplayer.video.j.d(context).q(m()).v(h0Var).p(j10).r(z10).s(handler).t(i0Var).u(50).o(this.f11983j).n(this.f11984k).m());
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
                    arrayList.add(size, (w3) Class.forName("androidx.media3.decoder.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, androidx.media3.exoplayer.video.i0.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, i0Var, 50));
                    str = "DefaultRenderersFactory";
                    try {
                        androidx.media3.common.util.u.f(str, "Loaded LibvpxVideoRenderer.");
                    } catch (ClassNotFoundException unused) {
                        size = i11;
                        i11 = size;
                    }
                } catch (ClassNotFoundException unused2) {
                    str = "DefaultRenderersFactory";
                }
            } catch (Exception e10) {
                throw new IllegalStateException("Error instantiating VP9 extension", e10);
            }
        } catch (ClassNotFoundException unused3) {
            str = "DefaultRenderersFactory";
        }
        try {
            try {
                int i12 = androidx.media3.decoder.av1.c.f10633c0;
                int i13 = i11 + 1;
                try {
                    arrayList.add(i11, (w3) androidx.media3.decoder.av1.c.class.getConstructor(Long.TYPE, Handler.class, androidx.media3.exoplayer.video.i0.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, i0Var, 50));
                    androidx.media3.common.util.u.f(str, "Loaded Libgav1VideoRenderer.");
                } catch (ClassNotFoundException unused4) {
                }
                i11 = i13;
            } catch (Exception e11) {
                throw new IllegalStateException("Error instantiating AV1 extension", e11);
            }
        } catch (ClassNotFoundException unused5) {
        }
        try {
            arrayList.add(i11, (w3) Class.forName("androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer").getConstructor(Long.TYPE, Handler.class, androidx.media3.exoplayer.video.i0.class, Integer.TYPE).newInstance(Long.valueOf(j10), handler, i0Var, 50));
            androidx.media3.common.util.u.f(str, "Loaded FfmpegVideoRenderer.");
        } catch (ClassNotFoundException unused6) {
        } catch (Exception e12) {
            throw new IllegalStateException("Error instantiating FFmpeg extension", e12);
        }
    }

    public final o l() {
        this.f11975b.b();
        return this;
    }

    protected androidx.media3.exoplayer.mediacodec.t.b m() {
        return this.f11975b;
    }

    protected c2.c.a n() {
        return c2.c.a.f16385a;
    }

    public final o o(boolean z10) {
        this.f11978e = z10;
        return this;
    }

    public final o p(int i10) {
        this.f11976c = i10;
        return this;
    }

    protected void h(Context context, Handler handler, int i10, ArrayList arrayList) {
    }
}
