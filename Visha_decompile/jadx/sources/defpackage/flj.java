package defpackage;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.p7;
import com.google.android.gms.internal.ads.zzii;
import com.google.android.gms.internal.ads.zzs;
import com.google.android.gms.internal.ads.zzsy;
import com.google.android.gms.internal.ads.zztc;
import com.google.android.gms.internal.ads.zztn;
import com.hunantv.imgo.net.entity.AuthInfo;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import org.greenrobot.greendao.generator.Schema;
import org.mozilla.classfile.ByteCode;

public abstract class flj extends a1j {
    public static final byte[] A0 = {0, 0, 1, 103, 66, -64, ByteCode.T_LONG, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};
    public final ArrayDeque A;
    public final ejj B;
    public erj C;
    public erj D;
    public w9j E;
    public MediaCrypto F;
    public long G;
    public float H;
    public float I;
    public rkj J;
    public erj K;
    public MediaFormat L;
    public boolean M;
    public float N;
    public ArrayDeque O;
    public zztc P;
    public tkj Q;
    public int R;
    public boolean S;
    public boolean T;
    public boolean U;
    public boolean V;
    public boolean W;
    public long X;
    public long Y;
    public int Z;
    public int a0;
    public ByteBuffer b0;
    public boolean c0;
    public boolean d0;
    public boolean e0;
    public boolean f0;
    public boolean g0;
    public boolean h0;
    public int i0;
    public int j0;
    public int k0;
    public boolean l0;
    public boolean m0;
    public boolean n0;
    public long o0;
    public long p0;
    public boolean q0;
    public boolean r0;
    public final pkj s;
    public boolean s0;
    public final hlj t;
    public d1j t0;
    public final float u;
    public dlj u0;
    public final xzi v;
    public long v0;
    public final xzi w;
    public boolean w0;
    public final xzi x;
    public boolean x0;
    public final ikj y;
    public pjj y0;
    public final MediaCodec.BufferInfo z;
    public pjj z0;

    public flj(int i, pkj pkjVar, hlj hljVar, boolean z, float f) {
        super(i);
        this.s = pkjVar;
        hljVar.getClass();
        this.t = hljVar;
        this.u = f;
        this.v = new xzi(0, 0);
        this.w = new xzi(0, 0);
        this.x = new xzi(2, 0);
        ikj ikjVar = new ikj();
        this.y = ikjVar;
        this.z = new MediaCodec.BufferInfo();
        this.H = 1.0f;
        this.I = 1.0f;
        this.G = C.TIME_UNSET;
        this.A = new ArrayDeque();
        this.u0 = dlj.e;
        ikjVar.j(0);
        ikjVar.d.order(ByteOrder.nativeOrder());
        this.B = new ejj();
        this.N = -1.0f;
        this.R = 0;
        this.i0 = 0;
        this.Z = -1;
        this.a0 = -1;
        this.Y = C.TIME_UNSET;
        this.o0 = C.TIME_UNSET;
        this.p0 = C.TIME_UNSET;
        this.v0 = C.TIME_UNSET;
        this.X = C.TIME_UNSET;
        this.j0 = 0;
        this.k0 = 0;
        this.t0 = new d1j();
    }

    public static boolean b0(erj erjVar) {
        return erjVar.L == 0;
    }

    private final void e0() {
        pjj pjjVar = this.z0;
        pjjVar.getClass();
        this.y0 = pjjVar;
        this.j0 = 0;
        this.k0 = 0;
    }

    private final void z0() {
        this.Z = -1;
        this.w.d = null;
    }

    public abstract void A0();

    public abstract void B0();

    public abstract boolean C0(long j, long j2, rkj rkjVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, erj erjVar);

    public boolean D0(erj erjVar) {
        return false;
    }

    public final float E0() {
        return this.H;
    }

    public int F0(xzi xziVar) {
        return 0;
    }

    public final long G0() {
        return this.u0.c;
    }

    @Override
    public void H() {
        this.C = null;
        d0(dlj.e);
        this.A.clear();
        V();
    }

    public final long H0() {
        return this.u0.b;
    }

    @Override
    public void I(boolean z, boolean z2) {
        this.t0 = new d1j();
    }

    @Override
    public void J(long j, boolean z) {
        this.q0 = false;
        this.r0 = false;
        if (this.e0) {
            this.y.b();
            this.x.b();
            this.f0 = false;
            this.B.b();
        } else {
            U();
        }
        dbh dbhVar = this.u0.d;
        if (dbhVar.a() > 0) {
            this.s0 = true;
        }
        dbhVar.e();
        this.A.clear();
    }

    public final w9j J0() {
        return this.E;
    }

    public abstract float K(float f, erj erjVar, erj[] erjVarArr);

    public final rkj K0() {
        return this.J;
    }

    public zzsy L(Throwable th, tkj tkjVar) {
        return new zzsy(th, tkjVar);
    }

    public final tkj M() {
        return this.Q;
    }

    public final void N() {
        this.x0 = true;
    }

    /* JADX WARN: Code duplicated, block: B:277:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:284:0x04be  */
    /* JADX WARN: Code duplicated, block: B:311:0x0514  */
    /* JADX WARN: Code duplicated, block: B:357:0x05e2 A[Catch: zztc -> 0x05e5, TryCatch #5 {zztc -> 0x05e5, blocks: (B:355:0x05c7, B:357:0x05e2, B:361:0x05ed, B:364:0x05f4, B:365:0x05f6, B:360:0x05e7, B:367:0x05fa, B:368:0x05fb, B:371:0x0604, B:372:0x0605, B:373:0x0612, B:375:0x0616), top: B:389:0x005a }] */
    /* JADX WARN: Code duplicated, block: B:360:0x05e7 A[Catch: zztc -> 0x05e5, TryCatch #5 {zztc -> 0x05e5, blocks: (B:355:0x05c7, B:357:0x05e2, B:361:0x05ed, B:364:0x05f4, B:365:0x05f6, B:360:0x05e7, B:367:0x05fa, B:368:0x05fb, B:371:0x0604, B:372:0x0605, B:373:0x0612, B:375:0x0616), top: B:389:0x005a }] */
    /* JADX WARN: Code duplicated, block: B:363:0x05f3  */
    /* JADX WARN: Code duplicated, block: B:416:0x05f4 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v16, types: [clj, qkj] */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.util.ArrayDeque] */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r10v43 */
    /* JADX WARN: Type inference failed for: r10v44 */
    /* JADX WARN: Type inference failed for: r10v5, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [java.util.ArrayDeque] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v17 */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v19 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v20, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v27 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v29 */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v10 */
    /* JADX WARN: Type inference failed for: r19v11 */
    /* JADX WARN: Type inference failed for: r19v12 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Type inference failed for: r19v8 */
    /* JADX WARN: Type inference failed for: r19v9 */
    /* JADX WARN: Type inference failed for: r20v0 */
    /* JADX WARN: Type inference failed for: r20v1 */
    /* JADX WARN: Type inference failed for: r20v10 */
    /* JADX WARN: Type inference failed for: r20v11 */
    /* JADX WARN: Type inference failed for: r20v12 */
    /* JADX WARN: Type inference failed for: r20v13 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Type inference failed for: r20v5 */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7 */
    /* JADX WARN: Type inference failed for: r20v8 */
    /* JADX WARN: Type inference failed for: r20v9 */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v11 */
    /* JADX WARN: Type inference failed for: r21v12 */
    /* JADX WARN: Type inference failed for: r21v13 */
    /* JADX WARN: Type inference failed for: r21v14 */
    /* JADX WARN: Type inference failed for: r21v15 */
    /* JADX WARN: Type inference failed for: r21v16 */
    /* JADX WARN: Type inference failed for: r21v17 */
    /* JADX WARN: Type inference failed for: r21v18 */
    /* JADX WARN: Type inference failed for: r21v19 */
    /* JADX WARN: Type inference failed for: r21v20 */
    /* JADX WARN: Type inference failed for: r21v21 */
    /* JADX WARN: Type inference failed for: r21v22 */
    /* JADX WARN: Type inference failed for: r21v23 */
    /* JADX WARN: Type inference failed for: r21v24 */
    /* JADX WARN: Type inference failed for: r21v25 */
    /* JADX WARN: Type inference failed for: r21v26 */
    /* JADX WARN: Type inference failed for: r21v27 */
    /* JADX WARN: Type inference failed for: r21v28 */
    /* JADX WARN: Type inference failed for: r21v29 */
    /* JADX WARN: Type inference failed for: r21v30 */
    /* JADX WARN: Type inference failed for: r21v31 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Type inference failed for: r28v0, types: [a1j, flj] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.ArrayDeque] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v78 */
    /* JADX WARN: Type inference failed for: r6v1, types: [erj] */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.media.MediaCrypto, elj] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r9v12, types: [rkj] */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [erj] */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    /* JADX WARN: Type inference failed for: r9v33 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v37 */
    /* JADX WARN: Type inference failed for: r9v38 */
    /* JADX WARN: Type inference failed for: r9v39 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v40 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    public final void O() throws zzii {
        erj erjVar;
        ?? r14;
        ?? r13;
        ?? r6;
        ?? r4;
        tkj tkjVar;
        ?? A;
        ?? r10;
        ?? r21;
        zztc zztcVar;
        zztc zztcVar2;
        ?? r19;
        ?? r20;
        ?? r22;
        tkj tkjVar2;
        ?? r15;
        ?? r23;
        ?? r24;
        ?? r110;
        ?? r16;
        ?? r25;
        ?? r26;
        okj okjVar;
        String str;
        int i;
        ?? r27;
        ?? r111;
        int i2;
        boolean z;
        LogSessionId logSessionIdA;
        String str2 = "MediaCodecRenderer";
        if (this.J != null || this.e0 || (erjVar = this.C) == null) {
            return;
        }
        if (X(erjVar)) {
            o0();
            String str3 = erjVar.o;
            if ("audio/mp4a-latm".equals(str3) || "audio/mpeg".equals(str3) || "audio/opus".equals(str3)) {
                this.y.p(32);
            } else {
                this.y.p(1);
            }
            this.e0 = true;
            return;
        }
        pjj pjjVar = this.z0;
        this.y0 = pjjVar;
        if (pjjVar != null) {
            n7g.f(true);
            pjj pjjVar2 = this.y0;
            boolean z2 = xjj.a;
            pjjVar2.a();
        }
        try {
            erj erjVar2 = this.C;
            ?? r7 = 0;
            try {
                if (erjVar2 == null) {
                    throw null;
                }
                if (this.O == null) {
                    try {
                        List listR0 = r0(this.t, erjVar2, false);
                        listR0.isEmpty();
                        this.O = new ArrayDeque();
                        if (!listR0.isEmpty()) {
                            this.O.add((tkj) listR0.get(0));
                        }
                        this.P = null;
                    } catch (zztn e) {
                        throw new zztc(erjVar2, (Throwable) e, false, -49998);
                    }
                }
                if (this.O.isEmpty()) {
                    throw new zztc(erjVar2, (Throwable) null, false, -49999);
                }
                ArrayDeque arrayDeque = this.O;
                if (arrayDeque == null) {
                    r4 = arrayDeque;
                    r6 = erjVar2;
                    r13 = str2;
                    r14 = erjVar;
                    throw null;
                }
                while (true) {
                    r4 = arrayDeque;
                    r6 = erjVar2;
                    r13 = str2;
                    r14 = erjVar;
                    if (this.J != null) {
                        this.O = r7;
                        return;
                    }
                    tkj tkjVar3 = (tkj) r4.peekFirst();
                    if (tkjVar3 == null) {
                        throw r7;
                    }
                    Y(r6);
                    if (!a0(tkjVar3)) {
                        return;
                    }
                    try {
                        erj erjVar3 = this.C;
                        if (erjVar3 == null) {
                            throw r7;
                        }
                        String str4 = tkjVar3.a;
                        int i3 = kfh.a;
                        float fK = K(this.I, erjVar3, w());
                        if (fK <= this.u) {
                            fK = -1.0f;
                        }
                        long jZzb = D().zzb();
                        okj okjVarQ0 = q0(tkjVar3, erjVar3, r7, fK);
                        ?? cljVar = 31;
                        A = A;
                        if (kfh.a >= 31) {
                            logSessionIdA = G().a();
                            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                                A = A;
                                cljVar = logSessionIdA;
                                MediaFormat mediaFormat = okjVarQ0.b;
                                String stringId = logSessionIdA.getStringId();
                                mediaFormat.setString("log-session-id", stringId);
                                A = "log-session-id";
                                cljVar = stringId;
                            }
                        }
                        try {
                            A = A;
                            cljVar = logSessionIdA;
                            Trace.beginSection("createCodec:" + str4);
                            A = this.s.a(okjVarQ0);
                            this.J = A;
                            cljVar = new clj(this, r7);
                            A.c(cljVar);
                            Trace.endSection();
                            long jZzb2 = D().zzb();
                            if (tkjVar3.e(erjVar3)) {
                                okjVar = okjVarQ0;
                                r111 = r4;
                                r27 = r6;
                                r21 = r14;
                                tkjVar2 = tkjVar3;
                                r14 = r13;
                            } else {
                                try {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("id=");
                                    sb.append(erjVar3.a);
                                    sb.append(", mimeType=");
                                    sb.append(erjVar3.o);
                                    String str5 = erjVar3.n;
                                    if (str5 != null) {
                                        ?? r112 = r4;
                                        try {
                                            sb.append(", container=");
                                            sb.append(str5);
                                            r19 = r112;
                                        } catch (Exception e2) {
                                            e = e2;
                                            tkjVar = tkjVar3;
                                            A = r6;
                                            r21 = r14;
                                            r10 = 0;
                                            r14 = r13;
                                            r13 = r112;
                                            zrg.g(r14, "Failed to initialize decoder: ".concat(tkjVar.a), e);
                                            r13.removeFirst();
                                            zztcVar = new zztc((erj) A, (Throwable) e, false, tkjVar);
                                            v0(zztcVar);
                                            zztcVar2 = this.P;
                                            if (zztcVar2 == null) {
                                                this.P = zztcVar;
                                            } else {
                                                this.P = zztc.zza(zztcVar2, zztcVar);
                                            }
                                            if (!r13.isEmpty()) {
                                                throw this.P;
                                            }
                                            r6 = A;
                                            r7 = r10;
                                            r4 = r13;
                                            r13 = r14;
                                            r14 = r21;
                                        }
                                    } else {
                                        r19 = r4;
                                    }
                                    try {
                                        int i4 = erjVar3.j;
                                        if (i4 != -1) {
                                            sb.append(", bitrate=");
                                            sb.append(i4);
                                        }
                                        String str6 = erjVar3.k;
                                        if (str6 != null) {
                                            sb.append(", codecs=");
                                            sb.append(str6);
                                        }
                                        zzs zzsVar = erjVar3.s;
                                        if (zzsVar != null) {
                                            try {
                                                LinkedHashSet linkedHashSet = new LinkedHashSet();
                                                r25 = r6;
                                                r26 = r14;
                                                int i5 = 0;
                                                while (i5 < zzsVar.zzb) {
                                                    try {
                                                        UUID uuid = zzsVar.zza(i5).zza;
                                                        zzs zzsVar2 = zzsVar;
                                                        if (uuid.equals(eui.b)) {
                                                            linkedHashSet.add(C.CENC_TYPE_cenc);
                                                        } else if (uuid.equals(eui.c)) {
                                                            linkedHashSet.add("clearkey");
                                                        } else if (uuid.equals(eui.e)) {
                                                            linkedHashSet.add("playready");
                                                        } else if (uuid.equals(eui.d)) {
                                                            linkedHashSet.add("widevine");
                                                        } else {
                                                            if (uuid.equals(eui.a)) {
                                                                linkedHashSet.add("universal");
                                                            } else {
                                                                linkedHashSet.add("unknown (" + uuid.toString() + ")");
                                                            }
                                                            i5++;
                                                            zzsVar = zzsVar2;
                                                            okjVarQ0 = okjVarQ0;
                                                        }
                                                        i5++;
                                                        zzsVar = zzsVar2;
                                                        okjVarQ0 = okjVarQ0;
                                                    } catch (Exception e3) {
                                                        e = e3;
                                                        tkjVar = tkjVar3;
                                                        r16 = r13;
                                                        r110 = r19;
                                                        r24 = r25;
                                                        r23 = r26;
                                                        r13 = r110;
                                                        A = r24;
                                                        r10 = 0;
                                                        r14 = r16;
                                                        r21 = r23;
                                                        zrg.g(r14, "Failed to initialize decoder: ".concat(tkjVar.a), e);
                                                        r13.removeFirst();
                                                        zztcVar = new zztc((erj) A, (Throwable) e, false, tkjVar);
                                                        v0(zztcVar);
                                                        zztcVar2 = this.P;
                                                        if (zztcVar2 == null) {
                                                            this.P = zztcVar;
                                                        } else {
                                                            this.P = zztc.zza(zztcVar2, zztcVar);
                                                        }
                                                        if (!r13.isEmpty()) {
                                                            throw this.P;
                                                        }
                                                        r6 = A;
                                                        r7 = r10;
                                                        r4 = r13;
                                                        r13 = r14;
                                                        r14 = r21;
                                                    }
                                                }
                                                okjVar = okjVarQ0;
                                                sb.append(", drm=[");
                                                o2i.b(sb, linkedHashSet, StringUtils.COMMA);
                                                sb.append(']');
                                                r20 = r25;
                                                r22 = r26;
                                            } catch (Exception e4) {
                                                e = e4;
                                                r25 = r6;
                                                r26 = r14;
                                            }
                                        } else {
                                            okjVar = okjVarQ0;
                                            r20 = r6;
                                            r22 = r14;
                                        }
                                        try {
                                            int i6 = erjVar3.v;
                                            if (i6 != -1 && (i = erjVar3.w) != -1) {
                                                sb.append(", res=");
                                                sb.append(i6);
                                                sb.append("x");
                                                sb.append(i);
                                            }
                                            float f = erjVar3.z;
                                            double d = f;
                                            int i7 = j6i.a;
                                            tkjVar2 = tkjVar3;
                                            r15 = r13;
                                            try {
                                                if (Math.copySign(d - 1.0d, 1.0d) > 0.001d && d != 1.0d) {
                                                    try {
                                                        if (!Double.isNaN(d) || !Double.isNaN(1.0d)) {
                                                            sb.append(", par=");
                                                            sb.append(String.format(Locale.US, "%.3f", Float.valueOf(f)));
                                                        }
                                                    } catch (Exception e5) {
                                                        e = e5;
                                                        tkjVar = tkjVar2;
                                                        r16 = r15;
                                                        r110 = r19;
                                                        r24 = r20;
                                                        r23 = r22;
                                                        r13 = r110;
                                                        A = r24;
                                                        r10 = 0;
                                                        r14 = r16;
                                                        r21 = r23;
                                                        zrg.g(r14, "Failed to initialize decoder: ".concat(tkjVar.a), e);
                                                        r13.removeFirst();
                                                        zztcVar = new zztc((erj) A, (Throwable) e, false, tkjVar);
                                                        v0(zztcVar);
                                                        zztcVar2 = this.P;
                                                        if (zztcVar2 == null) {
                                                            this.P = zztcVar;
                                                        } else {
                                                            this.P = zztc.zza(zztcVar2, zztcVar);
                                                        }
                                                        if (!r13.isEmpty()) {
                                                            throw this.P;
                                                        }
                                                        r6 = A;
                                                        r7 = r10;
                                                        r4 = r13;
                                                        r13 = r14;
                                                        r14 = r21;
                                                    }
                                                }
                                                h6j h6jVar = erjVar3.C;
                                                if (h6jVar != null && (h6jVar.e() || h6jVar.f())) {
                                                    sb.append(", color=");
                                                    sb.append(h6jVar.d());
                                                }
                                                float f2 = erjVar3.x;
                                                if (f2 != -1.0f) {
                                                    sb.append(", fps=");
                                                    sb.append(f2);
                                                }
                                                int i8 = erjVar3.D;
                                                if (i8 != -1) {
                                                    sb.append(", maxSubLayers=");
                                                    sb.append(i8);
                                                }
                                                int i9 = erjVar3.E;
                                                if (i9 != -1) {
                                                    sb.append(", channels=");
                                                    sb.append(i9);
                                                }
                                                int i10 = erjVar3.F;
                                                if (i10 != -1) {
                                                    sb.append(", sample_rate=");
                                                    sb.append(i10);
                                                }
                                                String str7 = erjVar3.d;
                                                if (str7 != null) {
                                                    sb.append(", language=");
                                                    sb.append(str7);
                                                }
                                                List list = erjVar3.c;
                                                if (!list.isEmpty()) {
                                                    sb.append(", labels=[");
                                                    o2i.b(sb, p7.b(list, new m2i() {
                                                        @Override
                                                        public final Object apply(Object obj) {
                                                            w6e w6eVar = (w6e) obj;
                                                            int i11 = erj.N;
                                                            return w6eVar.a + ": " + w6eVar.b;
                                                        }
                                                    }), StringUtils.COMMA);
                                                    sb.append("]");
                                                }
                                                int i11 = erjVar3.e;
                                                if (i11 != 0) {
                                                    sb.append(", selectionFlags=[");
                                                    ArrayList arrayList = new ArrayList();
                                                    if ((i11 & 1) != 0) {
                                                        arrayList.add(Schema.DEFAULT_NAME);
                                                    }
                                                    if ((i11 & 2) != 0) {
                                                        arrayList.add("forced");
                                                    }
                                                    o2i.b(sb, arrayList, StringUtils.COMMA);
                                                    sb.append("]");
                                                }
                                                int i12 = erjVar3.f;
                                                if (i12 != 0) {
                                                    try {
                                                        sb.append(", roleFlags=[");
                                                        ArrayList arrayList2 = new ArrayList();
                                                        if ((i12 & 1) != 0) {
                                                            arrayList2.add("main");
                                                        }
                                                        if ((i12 & 2) != 0) {
                                                            arrayList2.add("alt");
                                                        }
                                                        if ((i12 & 4) != 0) {
                                                            arrayList2.add("supplementary");
                                                        }
                                                        if ((i12 & 8) != 0) {
                                                            arrayList2.add("commentary");
                                                        }
                                                        if ((i12 & 16) != 0) {
                                                            arrayList2.add("dub");
                                                        }
                                                        if ((i12 & 32) != 0) {
                                                            arrayList2.add("emergency");
                                                        }
                                                        if ((i12 & 64) != 0) {
                                                            arrayList2.add("caption");
                                                        }
                                                        if ((i12 & 128) != 0) {
                                                            arrayList2.add(AuthInfo.Component.CODE_SUBTITLE);
                                                        }
                                                        if ((i12 & 256) != 0) {
                                                            arrayList2.add("sign");
                                                        }
                                                        if ((i12 & 512) != 0) {
                                                            arrayList2.add("describes-video");
                                                        }
                                                        if ((i12 & 1024) != 0) {
                                                            arrayList2.add("describes-music");
                                                        }
                                                        if ((i12 & 2048) != 0) {
                                                            arrayList2.add("enhanced-intelligibility");
                                                        }
                                                        if ((i12 & 4096) != 0) {
                                                            arrayList2.add("transcribes-dialog");
                                                        }
                                                        if ((i12 & 8192) != 0) {
                                                            arrayList2.add("easy-read");
                                                        }
                                                        if ((i12 & 16384) != 0) {
                                                            arrayList2.add("trick-play");
                                                        }
                                                        if ((i12 & 32768) != 0) {
                                                            arrayList2.add("auxiliary");
                                                        }
                                                        o2i.b(sb, arrayList2, StringUtils.COMMA);
                                                        sb.append("]");
                                                    } catch (Exception e6) {
                                                        e = e6;
                                                        tkjVar = tkjVar2;
                                                        r16 = r15;
                                                        r110 = r19;
                                                        r24 = r20;
                                                        r23 = r22;
                                                        r13 = r110;
                                                        A = r24;
                                                        r10 = 0;
                                                        r14 = r16;
                                                        r21 = r23;
                                                        zrg.g(r14, "Failed to initialize decoder: ".concat(tkjVar.a), e);
                                                        r13.removeFirst();
                                                        zztcVar = new zztc((erj) A, (Throwable) e, false, tkjVar);
                                                        v0(zztcVar);
                                                        zztcVar2 = this.P;
                                                        if (zztcVar2 == null) {
                                                            this.P = zztcVar;
                                                        } else {
                                                            this.P = zztc.zza(zztcVar2, zztcVar);
                                                        }
                                                        if (!r13.isEmpty()) {
                                                            throw this.P;
                                                        }
                                                        r6 = A;
                                                        r7 = r10;
                                                        r4 = r13;
                                                        r13 = r14;
                                                        r14 = r21;
                                                    }
                                                }
                                                if ((i12 & 32768) != 0) {
                                                    try {
                                                        sb.append(", auxiliaryTrackType=");
                                                        int i13 = erjVar3.g;
                                                        if (i13 == 0) {
                                                            str = "undefined";
                                                        } else if (i13 == 1) {
                                                            str = "original";
                                                        } else if (i13 == 2) {
                                                            str = "depth-linear";
                                                        } else if (i13 == 3) {
                                                            str = "depth-inverse";
                                                        } else {
                                                            if (i13 != 4) {
                                                                throw new IllegalStateException("Unsupported auxiliary track type");
                                                            }
                                                            str = "depth metadata";
                                                        }
                                                        sb.append(str);
                                                    } catch (Exception e7) {
                                                        e = e7;
                                                        tkjVar = tkjVar2;
                                                        r16 = r15;
                                                        r110 = r19;
                                                        r24 = r20;
                                                        r23 = r22;
                                                        r13 = r110;
                                                        A = r24;
                                                        r10 = 0;
                                                        r14 = r16;
                                                        r21 = r23;
                                                        zrg.g(r14, "Failed to initialize decoder: ".concat(tkjVar.a), e);
                                                        r13.removeFirst();
                                                        zztcVar = new zztc((erj) A, (Throwable) e, false, tkjVar);
                                                        v0(zztcVar);
                                                        zztcVar2 = this.P;
                                                        if (zztcVar2 == null) {
                                                            this.P = zztcVar;
                                                        } else {
                                                            this.P = zztc.zza(zztcVar2, zztcVar);
                                                        }
                                                        if (!r13.isEmpty()) {
                                                            throw this.P;
                                                        }
                                                        r6 = A;
                                                        r7 = r10;
                                                        r4 = r13;
                                                        r13 = r14;
                                                        r14 = r21;
                                                    }
                                                }
                                                zrg.f(r15, String.format(Locale.US, "Format exceeds selected codec's capabilities [%s, %s]", sb.toString(), str4));
                                                r14 = r15;
                                                r111 = r19;
                                                r27 = r20;
                                                r21 = r22;
                                            } catch (Exception e8) {
                                                e = e8;
                                                tkjVar = tkjVar2;
                                                r16 = r15;
                                                r110 = r19;
                                                r24 = r20;
                                                r23 = r22;
                                                r13 = r110;
                                                A = r24;
                                                r10 = 0;
                                                r14 = r16;
                                                r21 = r23;
                                                zrg.g(r14, "Failed to initialize decoder: ".concat(tkjVar.a), e);
                                                r13.removeFirst();
                                                zztcVar = new zztc((erj) A, (Throwable) e, false, tkjVar);
                                                v0(zztcVar);
                                                zztcVar2 = this.P;
                                                if (zztcVar2 == null) {
                                                    this.P = zztcVar;
                                                } else {
                                                    this.P = zztc.zza(zztcVar2, zztcVar);
                                                }
                                                if (!r13.isEmpty()) {
                                                    throw this.P;
                                                }
                                                r6 = A;
                                                r7 = r10;
                                                r4 = r13;
                                                r13 = r14;
                                                r14 = r21;
                                            }
                                        } catch (Exception e9) {
                                            e = e9;
                                            tkjVar2 = tkjVar3;
                                            r15 = r13;
                                        }
                                    } catch (Exception e10) {
                                        e = e10;
                                        r20 = r6;
                                        r22 = r14;
                                        tkjVar2 = tkjVar3;
                                        r15 = r13;
                                        tkjVar = tkjVar2;
                                        r16 = r15;
                                        r110 = r19;
                                        r24 = r20;
                                        r23 = r22;
                                        r13 = r110;
                                        A = r24;
                                        r10 = 0;
                                        r14 = r16;
                                        r21 = r23;
                                        zrg.g(r14, "Failed to initialize decoder: ".concat(tkjVar.a), e);
                                        r13.removeFirst();
                                        zztcVar = new zztc((erj) A, (Throwable) e, false, tkjVar);
                                        v0(zztcVar);
                                        zztcVar2 = this.P;
                                        if (zztcVar2 == null) {
                                            this.P = zztcVar;
                                        } else {
                                            this.P = zztc.zza(zztcVar2, zztcVar);
                                        }
                                        if (!r13.isEmpty()) {
                                            throw this.P;
                                        }
                                        r6 = A;
                                        r7 = r10;
                                        r4 = r13;
                                        r13 = r14;
                                        r14 = r21;
                                    }
                                } catch (Exception e11) {
                                    e = e11;
                                    r19 = r4;
                                }
                            }
                            this.Q = tkjVar2;
                            this.N = fK;
                            this.K = erjVar3;
                            int i14 = kfh.a;
                            if (i14 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str4)) {
                                String str8 = Build.MODEL;
                                if (str8.startsWith("SM-T585") || str8.startsWith("SM-A510") || str8.startsWith("SM-A520") || str8.startsWith("SM-J700")) {
                                    i2 = 2;
                                } else if (i14 < 24) {
                                    i2 = 0;
                                } else {
                                    i2 = 0;
                                }
                            } else if (i14 < 24 || !("OMX.Nvidia.h264.decode".equals(str4) || "OMX.Nvidia.h264.decode.secure".equals(str4))) {
                                i2 = 0;
                            } else {
                                String str9 = Build.DEVICE;
                                if ("flounder".equals(str9) || "flounder_lte".equals(str9) || "grouper".equals(str9) || "tilapia".equals(str9)) {
                                    i2 = 1;
                                } else {
                                    i2 = 0;
                                }
                            }
                            this.R = i2;
                            this.S = i14 == 29 && "c2.android.aac.decoder".equals(str4);
                            this.T = i14 <= 23 && "OMX.google.vorbis.decoder".equals(str4);
                            String str10 = tkjVar2.a;
                            if (i14 <= 25 && "OMX.rk.video_decoder.avc".equals(str10)) {
                                z = true;
                            } else if ((i14 > 29 || !("OMX.broadcom.video_decoder.tunnel".equals(str10) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str10) || "OMX.bcm.vdec.avc.tunnel".equals(str10) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str10) || "OMX.bcm.vdec.hevc.tunnel".equals(str10) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str10))) && !("Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && tkjVar2.f)) {
                                z = false;
                            } else {
                                z = true;
                            }
                            this.W = z;
                            if (this.J == null) {
                                throw null;
                            }
                            if (l() == 2) {
                                this.Y = D().zzb() + 1000;
                            }
                            try {
                                this.t0.a++;
                                long j = jZzb2 - jZzb;
                                r13 = r111;
                                tkjVar = tkjVar2;
                                A = r27;
                                cljVar = 0;
                                r10 = 0;
                                try {
                                    w0(str4, okjVar, jZzb2, j);
                                } catch (Exception e12) {
                                    e = e12;
                                    A = A;
                                    r10 = cljVar;
                                    r13 = r13;
                                    r14 = r14;
                                    r21 = r21;
                                }
                            } catch (Exception e13) {
                                e = e13;
                                tkjVar = tkjVar2;
                                r13 = r111;
                                A = r27;
                                r10 = 0;
                                r14 = r14;
                                r21 = r21;
                                zrg.g(r14, "Failed to initialize decoder: ".concat(tkjVar.a), e);
                                r13.removeFirst();
                                zztcVar = new zztc((erj) A, (Throwable) e, false, tkjVar);
                                v0(zztcVar);
                                zztcVar2 = this.P;
                                if (zztcVar2 == null) {
                                    this.P = zztcVar;
                                } else {
                                    this.P = zztc.zza(zztcVar2, zztcVar);
                                }
                                if (!r13.isEmpty()) {
                                    throw this.P;
                                }
                            }
                            r6 = A;
                            r7 = r10;
                            r4 = r13;
                            r13 = r14;
                            r14 = r21;
                        } catch (Throwable th) {
                            Trace.endSection();
                            throw th;
                        }
                    } catch (Exception e14) {
                        e = e14;
                        tkjVar = tkjVar3;
                        A = r6;
                        r10 = r7;
                        r21 = r14;
                        r14 = r13;
                        r13 = r4;
                    }
                }
            } catch (zztc e15) {
                e = e15;
                throw z(e, erjVar, false, 4001);
            }
        } catch (zztc e16) {
            e = e16;
            throw z(e, erjVar, false, 4001);
        }
    }

    public void P(long j) {
        this.v0 = j;
        while (true) {
            ArrayDeque arrayDeque = this.A;
            if (arrayDeque.isEmpty() || j < ((dlj) arrayDeque.peek()).a) {
                return;
            }
            dlj dljVar = (dlj) arrayDeque.poll();
            dljVar.getClass();
            d0(dljVar);
            A0();
        }
    }

    public void Q(xzi xziVar) {
    }

    public final void R() {
        try {
            rkj rkjVar = this.J;
            if (rkjVar != null) {
                rkjVar.zzm();
                this.t0.b++;
                tkj tkjVar = this.Q;
                if (tkjVar == null) {
                    throw null;
                }
                x0(tkjVar.a);
            }
            this.J = null;
            this.F = null;
            this.y0 = null;
            T();
        } catch (Throwable th) {
            this.J = null;
            this.F = null;
            this.y0 = null;
            T();
            throw th;
        }
    }

    public void S() {
        z0();
        c0();
        this.Y = C.TIME_UNSET;
        this.m0 = false;
        this.X = C.TIME_UNSET;
        this.l0 = false;
        this.U = false;
        this.V = false;
        this.c0 = false;
        this.d0 = false;
        this.o0 = C.TIME_UNSET;
        this.p0 = C.TIME_UNSET;
        this.v0 = C.TIME_UNSET;
        this.j0 = 0;
        this.k0 = 0;
        this.i0 = this.h0 ? 1 : 0;
    }

    public final void T() {
        S();
        this.O = null;
        this.Q = null;
        this.K = null;
        this.L = null;
        this.M = false;
        this.n0 = false;
        this.N = -1.0f;
        this.R = 0;
        this.S = false;
        this.T = false;
        this.W = false;
        this.h0 = false;
        this.i0 = 0;
    }

    public final boolean U() throws zzii {
        boolean zV = V();
        if (zV) {
            O();
        }
        return zV;
    }

    public final boolean V() {
        if (this.J == null) {
            return false;
        }
        int i = this.k0;
        if (i == 3 || ((this.S && !this.n0) || (this.T && this.m0))) {
            R();
            return true;
        }
        if (i == 2) {
            int i2 = kfh.a;
            try {
                e0();
            } catch (zzii e) {
                zrg.g("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e);
                R();
                return true;
            }
        }
        s0();
        return false;
    }

    public final boolean W() {
        return this.e0;
    }

    public final boolean X(erj erjVar) {
        return this.z0 == null && D0(erjVar);
    }

    public boolean Y(erj erjVar) {
        return true;
    }

    public boolean Z(xzi xziVar) {
        return false;
    }

    public boolean a0(tkj tkjVar) {
        return true;
    }

    public final void c0() {
        this.a0 = -1;
        this.b0 = null;
    }

    @Override
    public void d(float f, float f2) throws zzii {
        this.H = f;
        this.I = f2;
        k0(this.K);
    }

    public final void d0(dlj dljVar) {
        this.u0 = dljVar;
        if (dljVar.c != C.TIME_UNSET) {
            this.w0 = true;
        }
    }

    @Override
    public void e(int i, Object obj) {
        if (i == 11) {
            w9j w9jVar = (w9j) obj;
            w9jVar.getClass();
            this.E = w9jVar;
        }
    }

    @Override
    public boolean f() {
        return this.r0;
    }

    public final boolean f0() {
        if (this.l0) {
            this.j0 = 1;
            if (this.T) {
                this.k0 = 3;
                return false;
            }
            this.k0 = 2;
        } else {
            e0();
        }
        return true;
    }

    @Override
    public final int g(erj erjVar) throws zzii {
        try {
            return l0(this.t, erjVar);
        } catch (zztn e) {
            throw z(e, erjVar, false, 4002);
        }
    }

    public final boolean g0() {
        return this.a0 >= 0;
    }

    public final boolean h0(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        erj erjVar = this.D;
        if (erjVar == null || !Objects.equals(erjVar.o, "audio/opus")) {
            return true;
        }
        return !x9e.f(j, j2);
    }

    public final boolean i0(int i) throws zzii {
        p7j p7jVarE = E();
        xzi xziVar = this.v;
        xziVar.b();
        int iY = y(p7jVarE, xziVar, i | 4);
        if (iY == -5) {
            n0(p7jVarE);
            return true;
        }
        if (iY != -4 || !xziVar.f()) {
            return false;
        }
        this.q0 = true;
        t0();
        return false;
    }

    public final boolean j0(long j) {
        return this.G == C.TIME_UNSET || D().zzb() - j < this.G;
    }

    public final boolean k0(erj erjVar) throws zzii {
        int i = kfh.a;
        if (this.J != null && this.k0 != 3 && l() != 0) {
            float f = this.I;
            erjVar.getClass();
            float fK = K(f, erjVar, w());
            float f2 = this.N;
            if (f2 != fK) {
                if (fK == -1.0f) {
                    p0();
                    return false;
                }
                if (f2 != -1.0f || fK > this.u) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, fK);
                    rkj rkjVar = this.J;
                    rkjVar.getClass();
                    rkjVar.zzq(bundle);
                    this.N = fK;
                }
            }
        }
        return true;
    }

    public abstract int l0(hlj hljVar, erj erjVar);

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 15841. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override
    public void m(long r27, long r29) {
        /*
            Method dump skipped, instruction units count: 1584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.flj.m(long, long):void");
    }

    public abstract g1j m0(tkj tkjVar, erj erjVar, erj erjVar2);

    /* JADX WARN: Code duplicated, block: B:31:0x0070  */
    public g1j n0(p7j p7jVar) {
        int i;
        boolean z = true;
        this.s0 = true;
        erj erjVarK = p7jVar.a;
        erjVarK.getClass();
        String str = erjVarK.o;
        if (str == null) {
            throw z(new IllegalArgumentException("Sample MIME type is null."), erjVarK, false, 4005);
        }
        if (str.equals(MimeTypes.VIDEO_AV1) && !erjVarK.r.isEmpty()) {
            gpj gpjVarB = erjVarK.b();
            gpjVarB.p(null);
            erjVarK = gpjVarB.K();
        }
        erj erjVar = erjVarK;
        this.z0 = p7jVar.b;
        this.C = erjVar;
        if (this.e0) {
            this.g0 = true;
            return null;
        }
        rkj rkjVar = this.J;
        if (rkjVar == null) {
            this.O = null;
            O();
            return null;
        }
        tkj tkjVar = this.Q;
        tkjVar.getClass();
        erj erjVar2 = this.K;
        erjVar2.getClass();
        pjj pjjVar = this.y0;
        pjj pjjVar2 = this.z0;
        if (pjjVar != pjjVar2) {
            p0();
            return new g1j(tkjVar.a, erjVar2, erjVar, 0, 128);
        }
        boolean z2 = pjjVar2 != pjjVar;
        if (z2) {
            int i2 = kfh.a;
        }
        g1j g1jVarM0 = m0(tkjVar, erjVar2, erjVar);
        int i3 = g1jVarM0.d;
        if (i3 != 0) {
            i = 2;
            if (i3 != 1) {
                if (i3 != 2) {
                    if (k0(erjVar)) {
                        this.K = erjVar;
                        if (!z2 || f0()) {
                        }
                    } else {
                        i = 16;
                    }
                } else if (k0(erjVar)) {
                    this.h0 = true;
                    this.i0 = 1;
                    int i4 = this.R;
                    if (i4 != 2 && (i4 != 1 || erjVar.v != erjVar2.v || erjVar.w != erjVar2.w)) {
                        z = false;
                    }
                    this.U = z;
                    this.K = erjVar;
                    if (!z2 || f0()) {
                    }
                } else {
                    i = 16;
                }
            } else if (k0(erjVar)) {
                this.K = erjVar;
                if (z2) {
                    if (f0()) {
                    }
                } else if (this.l0) {
                    this.j0 = 1;
                    if (this.T) {
                        this.k0 = 3;
                    } else {
                        this.k0 = 1;
                    }
                }
            } else {
                i = 16;
            }
            return (i3 != 0 || (this.J == rkjVar && this.k0 != 3)) ? g1jVarM0 : new g1j(tkjVar.a, erjVar2, erjVar, 0, i);
        }
        p0();
        i = 0;
        if (i3 != 0) {
        }
    }

    public final void o0() {
        this.g0 = false;
        this.y.b();
        this.x.b();
        this.f0 = false;
        this.e0 = false;
        this.B.b();
    }

    public final void p0() throws zzii {
        if (this.l0) {
            this.j0 = 1;
            this.k0 = 3;
        } else {
            R();
            O();
        }
    }

    public abstract okj q0(tkj tkjVar, erj erjVar, MediaCrypto mediaCrypto, float f);

    @Override
    public void r() {
        try {
            o0();
            R();
        } finally {
            this.z0 = null;
        }
    }

    public abstract List r0(hlj hljVar, erj erjVar, boolean z);

    public final void s0() {
        try {
            rkj rkjVar = this.J;
            n7g.b(rkjVar);
            rkjVar.zzj();
        } finally {
            S();
        }
    }

    public final void t0() throws zzii {
        int i = this.k0;
        if (i == 1) {
            s0();
            return;
        }
        if (i == 2) {
            s0();
            e0();
        } else if (i != 3) {
            this.r0 = true;
            B0();
        } else {
            R();
            O();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
    
        if (r7 >= r5) goto L16;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void u(erj[] erjVarArr, long j, long j2, bnj bnjVar) {
        if (this.u0.c == C.TIME_UNSET) {
            d0(new dlj(C.TIME_UNSET, j, j2));
            if (this.x0) {
                A0();
                return;
            }
            return;
        }
        ArrayDeque arrayDeque = this.A;
        if (arrayDeque.isEmpty()) {
            long j3 = this.o0;
            if (j3 != C.TIME_UNSET) {
                long j4 = this.v0;
                if (j4 != C.TIME_UNSET) {
                }
            }
            d0(new dlj(C.TIME_UNSET, j, j2));
            if (this.u0.c != C.TIME_UNSET) {
                A0();
                return;
            }
            return;
        }
        arrayDeque.add(new dlj(this.o0, j, j2));
    }

    public abstract void u0(xzi xziVar);

    public abstract void v0(Exception exc);

    public abstract void w0(String str, okj okjVar, long j, long j2);

    public abstract void x0(String str);

    public abstract void y0(erj erjVar, MediaFormat mediaFormat);

    @Override
    public boolean zzX() {
        if (this.C == null) {
            return false;
        }
        if (v() || g0()) {
            return true;
        }
        return this.Y != C.TIME_UNSET && D().zzb() < this.Y;
    }

    @Override
    public final int zze() {
        return 8;
    }
}
