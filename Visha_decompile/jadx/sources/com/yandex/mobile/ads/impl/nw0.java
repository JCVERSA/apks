package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.media.DeniedByServerException;
import android.media.MediaCodec;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import defpackage.aj6;
import defpackage.bj6;
import defpackage.dj6;
import defpackage.ej6;
import defpackage.fj6;
import defpackage.li6;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.UUID;

@RequiresApi(31)
public final class nw0 implements ld, ei1 {
    private boolean A;
    private final Context a;
    private final k00 b;
    private final PlaybackSession c;

    @Nullable
    private String i;

    @Nullable
    private PlaybackMetrics.Builder j;
    private int k;

    @Nullable
    private yh1 n;

    @Nullable
    private b o;

    @Nullable
    private b p;

    @Nullable
    private b q;

    @Nullable
    private jc0 r;

    @Nullable
    private jc0 s;

    @Nullable
    private jc0 t;
    private boolean u;
    private int v;
    private boolean w;
    private int x;
    private int y;
    private int z;
    private final i52.d e = new i52.d();
    private final i52.b f = new i52.b();
    private final HashMap<String, Long> h = new HashMap<>();
    private final HashMap<String, Long> g = new HashMap<>();
    private final long d = SystemClock.elapsedRealtime();
    private int l = 0;
    private int m = 0;

    public static final class a {
        public final int a;
        public final int b;

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public static final class b {
        public final jc0 a;
        public final int b;
        public final String c;

        public b(jc0 jc0Var, int i, String str) {
            this.a = jc0Var;
            this.b = i;
            this.c = str;
        }
    }

    private nw0(Context context, PlaybackSession playbackSession) {
        this.a = context.getApplicationContext();
        this.c = playbackSession;
        k00 k00Var = new k00();
        this.b = k00Var;
        k00Var.a(this);
    }

    @Nullable
    public static nw0 a(Context context) {
        MediaMetricsManager mediaMetricsManagerA = li6.a(context.getSystemService("media_metrics"));
        if (mediaMetricsManagerA == null) {
            return null;
        }
        return new nw0(context, mediaMetricsManagerA.createPlaybackSession());
    }

    public final LogSessionId b() {
        return this.c.getSessionId();
    }

    public final void b(ld.a aVar, String str) {
        vw0.b bVar = aVar.d;
        if ((bVar == null || !bVar.a()) && str.equals(this.i)) {
            a();
        }
        this.g.remove(str);
        this.h.remove(str);
    }

    private void a() {
        PlaybackMetrics.Builder builder = this.j;
        if (builder != null && this.A) {
            builder.setAudioUnderrunCount(this.z);
            this.j.setVideoFramesDropped(this.x);
            this.j.setVideoFramesPlayed(this.y);
            Long l = this.g.get(this.i);
            this.j.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = this.h.get(this.i);
            this.j.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.j.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            this.c.reportPlaybackMetrics(this.j.build());
        }
        this.j = null;
        this.i = null;
        this.z = 0;
        this.x = 0;
        this.y = 0;
        this.r = null;
        this.s = null;
        this.t = null;
        this.A = false;
    }

    private void a(i52 i52Var, @Nullable vw0.b bVar) {
        int iA;
        PlaybackMetrics.Builder builder = this.j;
        if (bVar == null || (iA = i52Var.a(bVar.a)) == -1) {
            return;
        }
        int i = 0;
        i52Var.a(iA, this.f, false);
        i52Var.a(this.f.d, this.e, 0L);
        jw0.g gVar = this.e.d.c;
        if (gVar != null) {
            int iA2 = f92.a(gVar.a, gVar.b);
            if (iA2 == 0) {
                i = 3;
            } else if (iA2 != 1) {
                i = iA2 != 2 ? 1 : 4;
            } else {
                i = 5;
            }
        }
        builder.setStreamType(i);
        i52.d dVar = this.e;
        if (dVar.o != C.TIME_UNSET && !dVar.m && !dVar.j && !dVar.a()) {
            builder.setMediaDurationMillis(f92.b(this.e.o));
        }
        builder.setPlaybackType(this.e.a() ? 2 : 1);
        this.A = true;
    }

    public final void a(ld.a aVar, int i, long j) {
        vw0.b bVar = aVar.d;
        if (bVar != null) {
            String strA = this.b.a(aVar.b, bVar);
            Long l = this.h.get(strA);
            Long l2 = this.g.get(strA);
            this.h.put(strA, Long.valueOf((l == null ? 0L : l.longValue()) + j));
            this.g.put(strA, Long.valueOf((l2 != null ? l2.longValue() : 0L) + ((long) i)));
        }
    }

    public final void a(ld.a aVar, lw0 lw0Var) {
        if (aVar.d == null) {
            return;
        }
        jc0 jc0Var = lw0Var.c;
        jc0Var.getClass();
        int i = lw0Var.d;
        k00 k00Var = this.b;
        i52 i52Var = aVar.b;
        vw0.b bVar = aVar.d;
        bVar.getClass();
        b bVar2 = new b(jc0Var, i, k00Var.a(i52Var, bVar));
        int i2 = lw0Var.b;
        if (i2 != 0) {
            if (i2 == 1) {
                this.p = bVar2;
                return;
            } else if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                this.q = bVar2;
                return;
            }
        }
        this.o = bVar2;
    }

    /* JADX WARN: Code duplicated, block: B:113:0x0191  */
    /* JADX WARN: Code duplicated, block: B:114:0x0194  */
    /* JADX WARN: Code duplicated, block: B:115:0x0197  */
    /* JADX WARN: Code duplicated, block: B:226:0x0368  */
    /* JADX WARN: Code duplicated, block: B:231:0x0377  */
    /* JADX WARN: Code duplicated, block: B:232:0x037a  */
    /* JADX WARN: Code duplicated, block: B:233:0x037d  */
    /* JADX WARN: Code duplicated, block: B:234:0x0380  */
    public final void a(hi1 hi1Var, ld.b bVar) {
        int i;
        boolean z;
        int i2;
        int i3;
        int i4;
        a aVar;
        a aVar2;
        a aVar3;
        int i5;
        a aVar4;
        a aVar5;
        char c;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        f40 f40Var;
        int i12;
        if (bVar.a() == 0) {
            return;
        }
        for (int i13 = 0; i13 < bVar.a(); i13++) {
            int iB = bVar.b(i13);
            ld.a aVarC = bVar.c(iB);
            if (iB == 0) {
                this.b.d(aVarC);
            } else if (iB == 11) {
                this.b.a(aVarC, this.k);
            } else {
                this.b.c(aVarC);
            }
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (bVar.a(0)) {
            ld.a aVarC2 = bVar.c(0);
            if (this.j != null) {
                a(aVarC2.b, aVarC2.d);
            }
        }
        if (bVar.a(2) && this.j != null) {
            j82<b72.a> j82VarListIterator = hi1Var.getCurrentTracks().a().listIterator(0);
            loop1: while (true) {
                if (!j82VarListIterator.hasNext()) {
                    f40Var = null;
                    break;
                }
                b72.a next = j82VarListIterator.next();
                for (int i14 = 0; i14 < next.b; i14++) {
                    if (next.b(i14) && (f40Var = next.a(i14).p) != null) {
                        break loop1;
                    }
                }
            }
            if (f40Var != null) {
                PlaybackMetrics.Builder builder = this.j;
                int i15 = f92.a;
                int i16 = 0;
                while (true) {
                    if (i16 >= f40Var.e) {
                        i12 = 1;
                        break;
                    }
                    UUID uuid = f40Var.a(i16).c;
                    if (uuid.equals(rm.d)) {
                        i12 = 3;
                        break;
                    } else if (uuid.equals(rm.e)) {
                        i12 = 2;
                        break;
                    } else {
                        if (uuid.equals(rm.c)) {
                            i12 = 6;
                            break;
                        }
                        i16++;
                    }
                }
                builder.setDrmType(i12);
            }
        }
        if (bVar.a(1011)) {
            this.z++;
        }
        yh1 yh1Var = this.n;
        int i17 = 5;
        if (yh1Var == null) {
            i6 = 1;
            i3 = 8;
            i4 = 7;
            i2 = 9;
        } else {
            Context context = this.a;
            boolean z2 = this.v == 4;
            if (yh1Var.b == 1001) {
                aVar5 = new a(20, 0);
            } else {
                if (yh1Var instanceof m60) {
                    m60 m60Var = (m60) yh1Var;
                    z = m60Var.d == 1;
                    i = m60Var.h;
                } else {
                    i = 0;
                    z = false;
                }
                Throwable cause = yh1Var.getCause();
                cause.getClass();
                char c2 = 6004;
                int i18 = 27;
                if (!(cause instanceof IOException)) {
                    int i19 = 24;
                    i2 = 9;
                    if (z && (i == 0 || i == 1)) {
                        aVar3 = new a(35, 0);
                    } else if (z && i == 3) {
                        aVar3 = new a(15, 0);
                    } else if (z && i == 2) {
                        aVar3 = new a(23, 0);
                    } else {
                        if (cause instanceof mv0.b) {
                            aVar2 = new a(13, f92.a(((mv0.b) cause).e));
                        } else if (cause instanceof jv0) {
                            aVar2 = new a(14, f92.a(((jv0) cause).b));
                        } else if (cause instanceof OutOfMemoryError) {
                            aVar2 = new a(14, 0);
                        } else if (cause instanceof wh.b) {
                            aVar2 = new a(17, ((wh.b) cause).b);
                        } else if (cause instanceof wh.e) {
                            aVar2 = new a(18, ((wh.e) cause).b);
                        } else if (f92.a >= 16 && (cause instanceof MediaCodec.CryptoException)) {
                            int errorCode = ((MediaCodec.CryptoException) cause).getErrorCode();
                            if (errorCode == 2 || errorCode == 4) {
                                i3 = 8;
                                i4 = 7;
                            } else {
                                if (errorCode != 10) {
                                    i4 = 7;
                                    i3 = 8;
                                    if (errorCode != 7) {
                                        if (errorCode != 8) {
                                            switch (errorCode) {
                                                case 15:
                                                    c2 = 6003;
                                                    break;
                                                case 16:
                                                case 18:
                                                    break;
                                                case 17:
                                                case 19:
                                                case 20:
                                                case 21:
                                                case 22:
                                                    break;
                                                default:
                                                    switch (errorCode) {
                                                        case 24:
                                                        case 25:
                                                        case 26:
                                                        case 27:
                                                        case 28:
                                                            c2 = 6002;
                                                            break;
                                                        default:
                                                            c2 = 6006;
                                                            break;
                                                    }
                                                    break;
                                            }
                                        } else {
                                            c2 = 6003;
                                        }
                                    }
                                } else {
                                    i3 = 8;
                                    i4 = 7;
                                }
                                switch (c2) {
                                    case 6002:
                                        break;
                                    case 6003:
                                        i19 = 28;
                                        break;
                                    case 6004:
                                        i19 = 25;
                                        break;
                                    case 6005:
                                        i19 = 26;
                                        break;
                                    default:
                                        i19 = 27;
                                        break;
                                }
                                aVar = new a(i19, errorCode);
                            }
                            c2 = 6005;
                            switch (c2) {
                                case 6002:
                                    break;
                                case 6003:
                                    i19 = 28;
                                    break;
                                case 6004:
                                    i19 = 25;
                                    break;
                                case 6005:
                                    i19 = 26;
                                    break;
                                default:
                                    i19 = 27;
                                    break;
                            }
                            aVar = new a(i19, errorCode);
                        } else {
                            i3 = 8;
                            i4 = 7;
                            aVar = new a(22, 0);
                        }
                        aVar = aVar2;
                        i3 = 8;
                        i4 = 7;
                    }
                    aVar = aVar3;
                    i3 = 8;
                    i4 = 7;
                } else if (cause instanceof th0) {
                    aVar5 = new a(5, ((th0) cause).e);
                } else {
                    if (!(cause instanceof sh0) && !(cause instanceof eg1)) {
                        boolean z3 = cause instanceof rh0;
                        if (!z3 && !(cause instanceof z72.a)) {
                            if (yh1Var.b == 1002) {
                                aVar5 = new a(21, 0);
                            } else if (cause instanceof g40.a) {
                                Throwable cause2 = cause.getCause();
                                cause2.getClass();
                                int i20 = f92.a;
                                if (i20 >= 21 && (cause2 instanceof MediaDrm.MediaDrmStateException)) {
                                    int iA = f92.a(((MediaDrm.MediaDrmStateException) cause2).getDiagnosticInfo());
                                    if (iA == 2 || iA == 4) {
                                        c = 6005;
                                    } else if (iA == 10) {
                                        c = 6004;
                                    } else if (iA == 7) {
                                        c = 6005;
                                    } else if (iA != 8) {
                                        switch (iA) {
                                            case 15:
                                                c = 6003;
                                                break;
                                            case 16:
                                            case 18:
                                                c = 6005;
                                                break;
                                            case 17:
                                            case 19:
                                            case 20:
                                            case 21:
                                            case 22:
                                                c = 6004;
                                                break;
                                            default:
                                                switch (iA) {
                                                    case 24:
                                                    case 25:
                                                    case 26:
                                                    case 27:
                                                    case 28:
                                                        c = 6002;
                                                        break;
                                                    default:
                                                        c = 6006;
                                                        break;
                                                }
                                                break;
                                        }
                                    } else {
                                        c = 6003;
                                    }
                                    switch (c) {
                                        case 6002:
                                            i18 = 24;
                                            break;
                                        case 6003:
                                            i18 = 28;
                                            break;
                                        case 6004:
                                            i18 = 25;
                                            break;
                                        case 6005:
                                            i18 = 26;
                                            break;
                                    }
                                    aVar = new a(i18, iA);
                                } else if (i20 >= 23 && (cause2 instanceof MediaDrmResetException)) {
                                    aVar5 = new a(27, 0);
                                } else if (i20 >= 18 && (cause2 instanceof NotProvisionedException)) {
                                    aVar5 = new a(24, 0);
                                } else if (i20 >= 18 && (cause2 instanceof DeniedByServerException)) {
                                    aVar5 = new a(29, 0);
                                } else if (cause2 instanceof l82) {
                                    aVar5 = new a(23, 0);
                                } else if (cause2 instanceof sz.d) {
                                    aVar5 = new a(28, 0);
                                } else {
                                    aVar5 = new a(30, 0);
                                }
                                i3 = 8;
                                i4 = 7;
                                i2 = 9;
                            } else if ((cause instanceof hb0.c) && (cause.getCause() instanceof FileNotFoundException)) {
                                Throwable cause3 = cause.getCause();
                                cause3.getClass();
                                Throwable cause4 = cause3.getCause();
                                if (f92.a >= 21 && (cause4 instanceof ErrnoException) && ((ErrnoException) cause4).errno == OsConstants.EACCES) {
                                    aVar5 = new a(32, 0);
                                } else {
                                    aVar5 = new a(31, 0);
                                }
                            } else {
                                i5 = 9;
                                aVar4 = new a(9, 0);
                            }
                        } else {
                            i5 = 9;
                            if (ed1.a(context).a() == 1) {
                                aVar4 = new a(3, 0);
                            } else {
                                Throwable cause5 = cause.getCause();
                                if (cause5 instanceof UnknownHostException) {
                                    aVar3 = new a(6, 0);
                                } else if (cause5 instanceof SocketTimeoutException) {
                                    i2 = 9;
                                    aVar = new a(7, 0);
                                    i4 = 7;
                                    i3 = 8;
                                } else {
                                    if (z3 && ((rh0) cause).d == 1) {
                                        aVar3 = new a(4, 0);
                                    } else {
                                        i2 = 9;
                                        aVar = new a(8, 0);
                                        i3 = 8;
                                    }
                                    i4 = 7;
                                }
                            }
                        }
                        i2 = i5;
                        aVar = aVar4;
                        i3 = 8;
                        i4 = 7;
                    } else {
                        i5 = 9;
                        aVar3 = new a(z2 ? 10 : 11, 0);
                    }
                    i2 = i5;
                    aVar = aVar3;
                    i3 = 8;
                    i4 = 7;
                }
                this.c.reportPlaybackErrorEvent(ej6.a().setTimeSinceCreatedMillis(jElapsedRealtime - this.d).setErrorCode(aVar.a).setSubErrorCode(aVar.b).setException(yh1Var).build());
                i6 = 1;
                this.A = true;
                this.n = null;
            }
            aVar = aVar5;
            i3 = 8;
            i4 = 7;
            i2 = 9;
            this.c.reportPlaybackErrorEvent(ej6.a().setTimeSinceCreatedMillis(jElapsedRealtime - this.d).setErrorCode(aVar.a).setSubErrorCode(aVar.b).setException(yh1Var).build());
            i6 = 1;
            this.A = true;
            this.n = null;
        }
        if (bVar.a(2)) {
            b72 currentTracks = hi1Var.getCurrentTracks();
            boolean zA = currentTracks.a(2);
            boolean zA2 = currentTracks.a(i6);
            i9 = 3;
            boolean zA3 = currentTracks.a(3);
            if (zA || zA2 || zA3) {
                if (zA || f92.a(this.r, (Object) null)) {
                    i7 = i4;
                    i8 = 10;
                } else {
                    int i21 = this.r == null ? 1 : 0;
                    this.r = null;
                    i8 = 10;
                    i7 = 7;
                    a(1, jElapsedRealtime, null, i21);
                }
                if (!zA2 && !f92.a(this.s, (Object) null)) {
                    int i22 = this.s == null ? 1 : 0;
                    this.s = null;
                    a(0, jElapsedRealtime, null, i22);
                }
                if (!zA3 && !f92.a(this.t, (Object) null)) {
                    int i23 = this.t == null ? 1 : 0;
                    this.t = null;
                    a(2, jElapsedRealtime, null, i23);
                }
            } else {
                i3 = i3;
                i9 = 3;
                i17 = 5;
                i7 = i4;
                i8 = 10;
            }
        } else {
            i3 = i3;
            i17 = 5;
            i7 = i4;
            i8 = 10;
            i9 = 3;
        }
        b bVar2 = this.o;
        if (bVar2 != null && bVar2.c.equals(this.b.b())) {
            b bVar3 = this.o;
            jc0 jc0Var = bVar3.a;
            if (jc0Var.s != -1) {
                int i24 = bVar3.b;
                if (!f92.a(this.r, jc0Var)) {
                    int i25 = (this.r == null && i24 == 0) ? 1 : i24;
                    this.r = jc0Var;
                    a(1, jElapsedRealtime, jc0Var, i25);
                }
                this.o = null;
            }
        }
        b bVar4 = this.p;
        if (bVar4 != null && bVar4.c.equals(this.b.b())) {
            b bVar5 = this.p;
            jc0 jc0Var2 = bVar5.a;
            int i26 = bVar5.b;
            if (!f92.a(this.s, jc0Var2)) {
                int i27 = (this.s == null && i26 == 0) ? 1 : i26;
                this.s = jc0Var2;
                a(0, jElapsedRealtime, jc0Var2, i27);
            }
            this.p = null;
        }
        b bVar6 = this.q;
        if (bVar6 != null && bVar6.c.equals(this.b.b())) {
            b bVar7 = this.q;
            jc0 jc0Var3 = bVar7.a;
            int i28 = bVar7.b;
            if (!f92.a(this.t, jc0Var3)) {
                int i29 = (this.t == null && i28 == 0) ? 1 : i28;
                this.t = jc0Var3;
                a(2, jElapsedRealtime, jc0Var3, i29);
            }
            this.q = null;
        }
        switch (ed1.a(this.a).a()) {
            case 0:
                i10 = 0;
                break;
            case 1:
                i10 = i2;
                break;
            case 2:
                i10 = 2;
                break;
            case 3:
                i10 = 4;
                break;
            case 4:
                i10 = i17;
                break;
            case 5:
                i10 = 6;
                break;
            case 6:
            case 8:
            default:
                i10 = 1;
                break;
            case 7:
                i10 = i9;
                break;
            case 9:
                i10 = i3;
                break;
            case 10:
                i10 = i7;
                break;
        }
        if (i10 != this.m) {
            this.m = i10;
            this.c.reportNetworkEvent(bj6.a().setNetworkType(i10).setTimeSinceCreatedMillis(jElapsedRealtime - this.d).build());
        }
        if (hi1Var.getPlaybackState() != 2) {
            this.u = false;
        }
        if (hi1Var.a() == null) {
            this.w = false;
        } else if (bVar.a(i8)) {
            this.w = true;
        }
        int playbackState = hi1Var.getPlaybackState();
        if (this.u) {
            i11 = i17;
        } else if (this.w) {
            i11 = 13;
        } else if (playbackState == 4) {
            i11 = 11;
        } else if (playbackState == 2) {
            int i30 = this.l;
            if (i30 == 0 || i30 == 2) {
                i11 = 2;
            } else if (hi1Var.getPlayWhenReady()) {
                i11 = hi1Var.getPlaybackSuppressionReason() != 0 ? i8 : 6;
            } else {
                i11 = i7;
            }
        } else if (playbackState == i9) {
            if (hi1Var.getPlayWhenReady()) {
                i11 = hi1Var.getPlaybackSuppressionReason() != 0 ? i2 : i9;
            } else {
                i11 = 4;
            }
        } else {
            i11 = (playbackState != 1 || this.l == 0) ? this.l : 12;
        }
        if (this.l != i11) {
            this.l = i11;
            this.A = true;
            this.c.reportPlaybackStateEvent(fj6.a().setState(this.l).setTimeSinceCreatedMillis(jElapsedRealtime - this.d).build());
        }
        if (bVar.a(AnalyticsListener.EVENT_PLAYER_RELEASED)) {
            this.b.a(bVar.c(AnalyticsListener.EVENT_PLAYER_RELEASED));
        }
    }

    public final void a(lw0 lw0Var) {
        this.v = lw0Var.a;
    }

    public final void a(yh1 yh1Var) {
        this.n = yh1Var;
    }

    public final void a(int i) {
        if (i == 1) {
            this.u = true;
        }
        this.k = i;
    }

    public final void a(ld.a aVar, String str) {
        vw0.b bVar = aVar.d;
        if (bVar == null || !bVar.a()) {
            a();
            this.i = str;
            this.j = dj6.a().setPlayerName("ExoPlayerLib").setPlayerVersion("2.18.1");
            a(aVar.b, aVar.d);
        }
    }

    public final void a(py pyVar) {
        this.x += pyVar.g;
        this.y += pyVar.e;
    }

    public final void a(cg2 cg2Var) {
        b bVar = this.o;
        if (bVar != null) {
            jc0 jc0Var = bVar.a;
            if (jc0Var.s == -1) {
                this.o = new b(jc0Var.a().o(cg2Var.b).f(cg2Var.c).a(), bVar.b, bVar.c);
            }
        }
    }

    private void a(int i, long j, @Nullable jc0 jc0Var, int i2) {
        int i3;
        TrackChangeEvent.Builder timeSinceCreatedMillis = aj6.a(i).setTimeSinceCreatedMillis(j - this.d);
        if (jc0Var != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i2 != 1) {
                i3 = 3;
                if (i2 != 2) {
                    i3 = i2 != 3 ? 1 : 4;
                }
            } else {
                i3 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i3);
            String str = jc0Var.l;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = jc0Var.m;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = jc0Var.j;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i4 = jc0Var.i;
            if (i4 != -1) {
                timeSinceCreatedMillis.setBitrate(i4);
            }
            int i5 = jc0Var.r;
            if (i5 != -1) {
                timeSinceCreatedMillis.setWidth(i5);
            }
            int i6 = jc0Var.s;
            if (i6 != -1) {
                timeSinceCreatedMillis.setHeight(i6);
            }
            int i7 = jc0Var.z;
            if (i7 != -1) {
                timeSinceCreatedMillis.setChannelCount(i7);
            }
            int i8 = jc0Var.A;
            if (i8 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i8);
            }
            String str4 = jc0Var.d;
            if (str4 != null) {
                int i9 = f92.a;
                String[] strArrSplit = str4.split("-", -1);
                Pair pairCreate = Pair.create(strArrSplit[0], strArrSplit.length >= 2 ? strArrSplit[1] : null);
                timeSinceCreatedMillis.setLanguage((String) pairCreate.first);
                Object obj = pairCreate.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = jc0Var.t;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.A = true;
        this.c.reportTrackChangeEvent(timeSinceCreatedMillis.build());
    }
}
