package defpackage;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.gms.internal.ads.zzaz;
import com.google.android.gms.internal.ads.zzba;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzgs;
import com.google.android.gms.internal.ads.zzgv;
import com.google.android.gms.internal.ads.zzgw;
import com.google.android.gms.internal.ads.zzgx;
import com.google.android.gms.internal.ads.zzhf;
import com.google.android.gms.internal.ads.zzii;
import com.google.android.gms.internal.ads.zzqb;
import com.google.android.gms.internal.ads.zzqe;
import com.google.android.gms.internal.ads.zzrq;
import com.google.android.gms.internal.ads.zzrr;
import com.google.android.gms.internal.ads.zzs;
import com.google.android.gms.internal.ads.zzsb;
import com.google.android.gms.internal.ads.zzsy;
import com.google.android.gms.internal.ads.zztc;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;

public final class lfj implements taj, nfj {
    public int A;
    public boolean B;
    public final Context b;
    public final pfj d;
    public final PlaybackSession e;
    public String k;
    public PlaybackMetrics.Builder l;
    public int m;
    public zzba p;
    public jfj q;
    public jfj r;
    public jfj s;
    public erj t;
    public erj u;
    public erj v;
    public boolean w;
    public boolean x;
    public int y;
    public int z;
    public final Executor c = q8g.a();
    public final e4f g = new e4f();
    public final y2f h = new y2f();
    public final HashMap j = new HashMap();
    public final HashMap i = new HashMap();
    public final long f = SystemClock.elapsedRealtime();
    public int n = 0;
    public int o = 0;

    public lfj(Context context, PlaybackSession playbackSession) {
        this.b = context.getApplicationContext();
        this.e = playbackSession;
        cfj cfjVar = new cfj(cfj.h);
        this.d = cfjVar;
        cfjVar.a(this);
    }

    public static int A(int i) {
        switch (kfh.G(i)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case 6004:
                return 25;
            case 6005:
                return 26;
            default:
                return 27;
        }
    }

    private final void B() {
        PlaybackMetrics.Builder builder = this.l;
        if (builder != null && this.B) {
            builder.setAudioUnderrunCount(this.A);
            this.l.setVideoFramesDropped(this.y);
            this.l.setVideoFramesPlayed(this.z);
            Long l = (Long) this.i.get(this.k);
            this.l.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = (Long) this.j.get(this.k);
            this.l.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.l.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            final PlaybackMetrics playbackMetricsBuild = this.l.build();
            this.c.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.e.reportPlaybackMetrics(playbackMetricsBuild);
                }
            });
        }
        this.l = null;
        this.k = null;
        this.A = 0;
        this.y = 0;
        this.z = 0;
        this.t = null;
        this.u = null;
        this.v = null;
        this.B = false;
    }

    public static lfj u(Context context) {
        MediaMetricsManager mediaMetricsManagerA = li6.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new lfj(context, mediaMetricsManagerA.createPlaybackSession());
    }

    public final void C(long j, erj erjVar, int i) {
        if (Objects.equals(this.u, erjVar)) {
            return;
        }
        int i2 = this.u == null ? 1 : 0;
        this.u = erjVar;
        r(0, j, erjVar, i2);
    }

    public final void D(long j, erj erjVar, int i) {
        if (Objects.equals(this.v, erjVar)) {
            return;
        }
        int i2 = this.v == null ? 1 : 0;
        this.v = erjVar;
        r(2, j, erjVar, i2);
    }

    @Override
    public final void a(raj rajVar, Object obj, long j) {
    }

    @Override
    public final void b(raj rajVar, v0f v0fVar, v0f v0fVar2, int i) {
        if (i == 1) {
            this.w = true;
            i = 1;
        }
        this.m = i;
    }

    @Override
    public final void c(raj rajVar, zzba zzbaVar) {
        this.p = zzbaVar;
    }

    @Override
    public final void d(raj rajVar, smj smjVar, xmj xmjVar, IOException iOException, boolean z) {
    }

    @Override
    public final void e(raj rajVar, d1j d1jVar) {
        this.y += d1jVar.g;
        this.z += d1jVar.e;
    }

    @Override
    public final void f(raj rajVar, String str) {
        bnj bnjVar = rajVar.d;
        if (bnjVar == null || !bnjVar.b()) {
            B();
            this.k = str;
            this.l = dj6.a().setPlayerName(MediaLibraryInfo.TAG).setPlayerVersion("1.6.0");
            p(rajVar.b, bnjVar);
        }
    }

    @Override
    public final void g(raj rajVar, zhf zhfVar) {
        jfj jfjVar = this.q;
        if (jfjVar != null) {
            erj erjVar = jfjVar.a;
            if (erjVar.w == -1) {
                gpj gpjVarB = erjVar.b();
                gpjVarB.J(zhfVar.a);
                gpjVarB.m(zhfVar.b);
                this.q = new jfj(gpjVarB.K(), 0, jfjVar.c);
            }
        }
    }

    @Override
    public final void h(raj rajVar, int i, long j) {
    }

    /* JADX WARN: Code duplicated, block: B:102:0x016f  */
    /* JADX WARN: Code duplicated, block: B:137:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:140:0x01f7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x01f9 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:145:0x0201  */
    /* JADX WARN: Code duplicated, block: B:146:0x020d  */
    /* JADX WARN: Code duplicated, block: B:148:0x0213  */
    /* JADX WARN: Code duplicated, block: B:149:0x0219  */
    /* JADX WARN: Code duplicated, block: B:151:0x021d  */
    /* JADX WARN: Code duplicated, block: B:152:0x0220  */
    /* JADX WARN: Code duplicated, block: B:154:0x0224  */
    /* JADX WARN: Code duplicated, block: B:155:0x022c  */
    /* JADX WARN: Code duplicated, block: B:157:0x0230  */
    /* JADX WARN: Code duplicated, block: B:158:0x0238  */
    /* JADX WARN: Code duplicated, block: B:160:0x023c  */
    /* JADX WARN: Code duplicated, block: B:161:0x0248  */
    /* JADX WARN: Code duplicated, block: B:171:0x0295  */
    /* JADX WARN: Code duplicated, block: B:173:0x029a  */
    /* JADX WARN: Code duplicated, block: B:175:0x029f  */
    @Override
    public final void i(l1f l1fVar, saj sajVar) {
        int i;
        int i2;
        int iA;
        int i3;
        int errorCode;
        int iH;
        zzs zzsVar;
        int i4;
        int i5;
        if (sajVar.b() == 0) {
            return;
        }
        for (int i6 = 0; i6 < sajVar.b(); i6++) {
            int iA2 = sajVar.a(i6);
            raj rajVarC = sajVar.c(iA2);
            if (iA2 == 0) {
                this.d.b(rajVarC);
            } else if (iA2 == 11) {
                this.d.f(rajVarC, this.m);
            } else {
                this.d.c(rajVarC);
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (sajVar.d(0)) {
            raj rajVarC2 = sajVar.c(0);
            if (this.l != null) {
                p(rajVarC2.b, rajVarC2.d);
            }
        }
        if (sajVar.d(2) && this.l != null) {
            zzfww zzfwwVarA = l1fVar.zzp().a();
            int size = zzfwwVarA.size();
            int i7 = 0;
            loop1: while (true) {
                if (i7 >= size) {
                    zzsVar = null;
                    break;
                }
                x9f x9fVar = (x9f) zzfwwVarA.get(i7);
                int i8 = 0;
                while (true) {
                    i5 = i7 + 1;
                    if (i8 < x9fVar.a) {
                        if (x9fVar.d(i8) && (zzsVar = x9fVar.b(i8).s) != null) {
                            break loop1;
                        } else {
                            i8++;
                        }
                    }
                }
                i7 = i5;
            }
            if (zzsVar != null) {
                PlaybackMetrics.Builder builder = this.l;
                int i9 = kfh.a;
                PlaybackMetrics.Builder builderA = bi6.a(builder);
                int i10 = 0;
                while (true) {
                    if (i10 >= zzsVar.zzb) {
                        i4 = 1;
                        break;
                    }
                    UUID uuid = zzsVar.zza(i10).zza;
                    if (uuid.equals(eui.d)) {
                        i4 = 3;
                        break;
                    } else if (uuid.equals(eui.e)) {
                        i4 = 2;
                        break;
                    } else {
                        if (uuid.equals(eui.c)) {
                            i4 = 6;
                            break;
                        }
                        i10++;
                    }
                }
                builderA.setDrmType(i4);
            }
        }
        if (sajVar.d(1011)) {
            this.A++;
        }
        zzba zzbaVar = this.p;
        if (zzbaVar != null) {
            Context context = this.b;
            int i11 = zzbaVar.zza;
            if (i11 == 1001) {
                i3 = 20;
            } else {
                zzii zziiVar = (zzii) zzbaVar;
                boolean z = zziiVar.zzc == 1;
                int i12 = zziiVar.zzg;
                Throwable cause = zzbaVar.getCause();
                cause.getClass();
                if (cause instanceof IOException) {
                    if (cause instanceof zzgx) {
                        iH = ((zzgx) cause).zzc;
                        i3 = 5;
                    } else if ((cause instanceof zzgw) || (cause instanceof zzaz)) {
                        iH = 0;
                        i3 = 11;
                    } else {
                        boolean z2 = cause instanceof zzgv;
                        if (z2 || (cause instanceof zzhf)) {
                            if (v2h.b(context).a() == 1) {
                                iH = 0;
                                i3 = 3;
                            } else {
                                Throwable cause2 = cause.getCause();
                                if (cause2 instanceof UnknownHostException) {
                                    iH = 0;
                                    i3 = 6;
                                } else if (cause2 instanceof SocketTimeoutException) {
                                    iH = 0;
                                    i3 = 7;
                                } else if (z2 && ((zzgv) cause).zzb == 1) {
                                    iH = 0;
                                    i3 = 4;
                                } else {
                                    iH = 0;
                                    i3 = 8;
                                }
                            }
                        } else if (i11 == 1002) {
                            i3 = 21;
                        } else if (cause instanceof zzrr) {
                            Throwable cause3 = cause.getCause();
                            cause3.getClass();
                            if (cause3 instanceof MediaDrm.MediaDrmStateException) {
                                errorCode = kfh.H(((MediaDrm.MediaDrmStateException) cause3).getDiagnosticInfo());
                                iA = A(errorCode);
                                int i13 = iA;
                                iH = errorCode;
                                i3 = i13;
                            } else {
                                int i14 = kfh.a;
                                if (cause3 instanceof MediaDrmResetException) {
                                    i3 = 27;
                                } else if (cause3 instanceof NotProvisionedException) {
                                    i3 = 24;
                                } else if (cause3 instanceof DeniedByServerException) {
                                    i3 = 29;
                                } else if (cause3 instanceof zzsb) {
                                    iH = 0;
                                    i3 = 23;
                                } else {
                                    i3 = cause3 instanceof zzrq ? 28 : 30;
                                }
                            }
                        } else if ((cause instanceof zzgs) && (cause.getCause() instanceof FileNotFoundException)) {
                            Throwable cause4 = cause.getCause();
                            cause4.getClass();
                            Throwable cause5 = cause4.getCause();
                            if ((cause5 instanceof ErrnoException) && ((ErrnoException) cause5).errno == OsConstants.EACCES) {
                                i3 = 32;
                            } else {
                                iH = 0;
                                i3 = 31;
                            }
                        } else {
                            iH = 0;
                            i3 = 9;
                        }
                    }
                } else if (z) {
                    i3 = 35;
                    if (i12 != 0 && i12 != 1) {
                        if (!z && i12 == 3) {
                            i3 = 15;
                        } else if (!z && i12 == 2) {
                            iH = 0;
                            i3 = 23;
                        } else if (cause instanceof zztc) {
                            iH = kfh.H(((zztc) cause).zzd);
                            i3 = 13;
                        } else {
                            iA = 14;
                            if (cause instanceof zzsy) {
                                errorCode = ((zzsy) cause).zza;
                            } else if (cause instanceof OutOfMemoryError) {
                                i3 = 14;
                            } else if (cause instanceof zzqb) {
                                errorCode = ((zzqb) cause).zza;
                                iA = 17;
                            } else if (cause instanceof zzqe) {
                                errorCode = ((zzqe) cause).zza;
                                iA = 18;
                            } else if (cause instanceof MediaCodec.CryptoException) {
                                errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                                iA = A(errorCode);
                            } else {
                                i3 = 22;
                            }
                            int i15 = iA;
                            iH = errorCode;
                            i3 = i15;
                        }
                    }
                } else if (!z) {
                    if (!z) {
                    }
                    if (cause instanceof zztc) {
                        iH = kfh.H(((zztc) cause).zzd);
                        i3 = 13;
                    } else {
                        iA = 14;
                        if (cause instanceof zzsy) {
                            errorCode = ((zzsy) cause).zza;
                        } else if (cause instanceof OutOfMemoryError) {
                            i3 = 14;
                        } else if (cause instanceof zzqb) {
                            errorCode = ((zzqb) cause).zza;
                            iA = 17;
                        } else if (cause instanceof zzqe) {
                            errorCode = ((zzqe) cause).zza;
                            iA = 18;
                        } else if (cause instanceof MediaCodec.CryptoException) {
                            errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                            iA = A(errorCode);
                        } else {
                            i3 = 22;
                        }
                        int i16 = iA;
                        iH = errorCode;
                        i3 = i16;
                    }
                } else {
                    if (!z) {
                    }
                    if (cause instanceof zztc) {
                        iH = kfh.H(((zztc) cause).zzd);
                        i3 = 13;
                    } else {
                        iA = 14;
                        if (cause instanceof zzsy) {
                            errorCode = ((zzsy) cause).zza;
                        } else if (cause instanceof OutOfMemoryError) {
                            i3 = 14;
                        } else if (cause instanceof zzqb) {
                            errorCode = ((zzqb) cause).zza;
                            iA = 17;
                        } else if (cause instanceof zzqe) {
                            errorCode = ((zzqe) cause).zza;
                            iA = 18;
                        } else if (cause instanceof MediaCodec.CryptoException) {
                            errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                            iA = A(errorCode);
                        } else {
                            i3 = 22;
                        }
                        int i17 = iA;
                        iH = errorCode;
                        i3 = i17;
                    }
                }
                final PlaybackErrorEvent playbackErrorEventBuild = ej6.a().setTimeSinceCreatedMillis(jElapsedRealtime - this.f).setErrorCode(i3).setSubErrorCode(iH).setException(zzbaVar).build();
                this.c.execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.zza.e.reportPlaybackErrorEvent(playbackErrorEventBuild);
                    }
                });
                this.B = true;
                this.p = null;
            }
            iH = 0;
            final PlaybackErrorEvent playbackErrorEventBuild2 = ej6.a().setTimeSinceCreatedMillis(jElapsedRealtime - this.f).setErrorCode(i3).setSubErrorCode(iH).setException(zzbaVar).build();
            this.c.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.e.reportPlaybackErrorEvent(playbackErrorEventBuild2);
                }
            });
            this.B = true;
            this.p = null;
        }
        if (sajVar.d(2)) {
            naf nafVarZzp = l1fVar.zzp();
            boolean zB = nafVarZzp.b(2);
            boolean zB2 = nafVarZzp.b(1);
            boolean zB3 = nafVarZzp.b(3);
            if (zB || zB2) {
                if (!zB) {
                    q(jElapsedRealtime, null, 0);
                }
                if (!zB2) {
                    C(jElapsedRealtime, null, 0);
                }
                if (!zB3) {
                    D(jElapsedRealtime, null, 0);
                }
            } else if (zB3) {
                zB3 = true;
                if (!zB) {
                    q(jElapsedRealtime, null, 0);
                }
                if (!zB2) {
                    C(jElapsedRealtime, null, 0);
                }
                if (!zB3) {
                    D(jElapsedRealtime, null, 0);
                }
            }
        }
        if (s(this.q)) {
            erj erjVar = this.q.a;
            if (erjVar.w != -1) {
                q(jElapsedRealtime, erjVar, 0);
                this.q = null;
            }
        }
        if (s(this.r)) {
            C(jElapsedRealtime, this.r.a, 0);
            this.r = null;
        }
        if (s(this.s)) {
            D(jElapsedRealtime, this.s.a, 0);
            this.s = null;
        }
        switch (v2h.b(this.b).a()) {
            case 0:
                i = 0;
                break;
            case 1:
                i = 9;
                break;
            case 2:
                i = 2;
                break;
            case 3:
                i = 4;
                break;
            case 4:
                i = 5;
                break;
            case 5:
                i = 6;
                break;
            case 6:
            case 8:
            default:
                i = 1;
                break;
            case 7:
                i = 3;
                break;
            case 9:
                i = 8;
                break;
            case 10:
                i = 7;
                break;
        }
        if (i != this.o) {
            this.o = i;
            final NetworkEvent networkEventBuild = bj6.a().setNetworkType(i).setTimeSinceCreatedMillis(jElapsedRealtime - this.f).build();
            this.c.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.e.reportNetworkEvent(networkEventBuild);
                }
            });
        }
        if (l1fVar.zzg() != 2) {
            this.w = false;
        }
        if (((maj) l1fVar).i() == null) {
            this.x = false;
        } else if (sajVar.d(10)) {
            this.x = true;
        }
        int iZzg = l1fVar.zzg();
        if (this.w) {
            i2 = 5;
        } else if (this.x) {
            i2 = 13;
        } else {
            i2 = 4;
            if (iZzg == 4) {
                i2 = 11;
            } else if (iZzg == 2) {
                int i18 = this.n;
                if (i18 == 0 || i18 == 2 || i18 == 12) {
                    i2 = 2;
                } else if (l1fVar.zzv()) {
                    i2 = l1fVar.zzh() != 0 ? 10 : 6;
                } else {
                    i2 = 7;
                }
            } else if (iZzg != 3) {
                i2 = (iZzg != 1 || this.n == 0) ? this.n : 12;
            } else if (l1fVar.zzv()) {
                i2 = l1fVar.zzh() != 0 ? 9 : 3;
            }
        }
        if (this.n != i2) {
            this.n = i2;
            this.B = true;
            final PlaybackStateEvent playbackStateEventBuild = fj6.a().setState(this.n).setTimeSinceCreatedMillis(jElapsedRealtime - this.f).build();
            this.c.execute(new Runnable() {
                @Override
                public final void run() {
                    this.zza.e.reportPlaybackStateEvent(playbackStateEventBuild);
                }
            });
        }
        if (sajVar.d(AnalyticsListener.EVENT_PLAYER_RELEASED)) {
            this.d.d(sajVar.c(AnalyticsListener.EVENT_PLAYER_RELEASED));
        }
    }

    @Override
    public final void j(raj rajVar, String str, boolean z) {
        bnj bnjVar = rajVar.d;
        if ((bnjVar == null || !bnjVar.b()) && str.equals(this.k)) {
            B();
        }
        this.i.remove(str);
        this.j.remove(str);
    }

    @Override
    public final void k(raj rajVar, erj erjVar, g1j g1jVar) {
    }

    @Override
    public final void l(raj rajVar, xmj xmjVar) {
        bnj bnjVar = rajVar.d;
        if (bnjVar == null) {
            return;
        }
        erj erjVar = xmjVar.b;
        erjVar.getClass();
        jfj jfjVar = new jfj(erjVar, 0, this.d.e(rajVar.b, bnjVar));
        int i = xmjVar.a;
        if (i != 0) {
            if (i == 1) {
                this.r = jfjVar;
                return;
            } else if (i != 2) {
                if (i != 3) {
                    return;
                }
                this.s = jfjVar;
                return;
            }
        }
        this.q = jfjVar;
    }

    @Override
    public final void m(raj rajVar, erj erjVar, g1j g1jVar) {
    }

    @Override
    public final void n(raj rajVar, int i, long j, long j2) {
        bnj bnjVar = rajVar.d;
        if (bnjVar != null) {
            String strE = this.d.e(rajVar.b, bnjVar);
            HashMap map = this.j;
            Long l = (Long) map.get(strE);
            HashMap map2 = this.i;
            Long l2 = (Long) map2.get(strE);
            map.put(strE, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            map2.put(strE, Long.valueOf((l2 != null ? l2.longValue() : 0L) + ((long) i)));
        }
    }

    @Override
    public final void o(raj rajVar, int i) {
    }

    public final void p(w4f w4fVar, bnj bnjVar) {
        int iA;
        PlaybackMetrics.Builder builder = this.l;
        if (bnjVar == null || (iA = w4fVar.a(bnjVar.a)) == -1) {
            return;
        }
        y2f y2fVar = this.h;
        int i = 0;
        w4fVar.d(iA, y2fVar, false);
        e4f e4fVar = this.g;
        w4fVar.e(y2fVar.c, e4fVar, 0L);
        xge xgeVar = e4fVar.c.b;
        if (xgeVar != null) {
            int iJ = kfh.J(xgeVar.a);
            if (iJ == 0) {
                i = 3;
            } else if (iJ != 1) {
                i = iJ != 2 ? 1 : 4;
            } else {
                i = 5;
            }
        }
        builder.setStreamType(i);
        long j = e4fVar.l;
        if (j != C.TIME_UNSET && !e4fVar.j && !e4fVar.h && !e4fVar.b()) {
            builder.setMediaDurationMillis(kfh.Q(j));
        }
        builder.setPlaybackType(true != e4fVar.b() ? 1 : 2);
        this.B = true;
    }

    public final void q(long j, erj erjVar, int i) {
        if (Objects.equals(this.t, erjVar)) {
            return;
        }
        int i2 = this.t == null ? 1 : 0;
        this.t = erjVar;
        r(1, j, erjVar, i2);
    }

    public final void r(int i, long j, erj erjVar, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis = aj6.a(i).setTimeSinceCreatedMillis(j - this.f);
        if (erjVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            timeSinceCreatedMillis.setTrackChangeReason(i2 != 1 ? 1 : 2);
            String str = erjVar.n;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = erjVar.o;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = erjVar.k;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i3 = erjVar.j;
            if (i3 != -1) {
                timeSinceCreatedMillis.setBitrate(i3);
            }
            int i4 = erjVar.v;
            if (i4 != -1) {
                timeSinceCreatedMillis.setWidth(i4);
            }
            int i5 = erjVar.w;
            if (i5 != -1) {
                timeSinceCreatedMillis.setHeight(i5);
            }
            int i6 = erjVar.E;
            if (i6 != -1) {
                timeSinceCreatedMillis.setChannelCount(i6);
            }
            int i7 = erjVar.F;
            if (i7 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i7);
            }
            String str4 = erjVar.d;
            if (str4 != null) {
                int i8 = kfh.a;
                String[] strArrSplit = str4.split("-", -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = erjVar.x;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.B = true;
        final TrackChangeEvent trackChangeEventBuild = timeSinceCreatedMillis.build();
        this.c.execute(new Runnable() {
            @Override
            public final void run() {
                this.zza.e.reportTrackChangeEvent(trackChangeEventBuild);
            }
        });
    }

    public final boolean s(jfj jfjVar) {
        if (jfjVar != null) {
            return jfjVar.c.equals(this.d.zze());
        }
        return false;
    }

    public final LogSessionId t() {
        return this.e.getSessionId();
    }
}
