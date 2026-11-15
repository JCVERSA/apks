package defpackage;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzfww;
import com.google.android.gms.internal.ads.zzii;
import com.google.android.gms.internal.ads.zzqa;
import com.google.android.gms.internal.ads.zzqb;
import com.google.android.gms.internal.ads.zzqe;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Objects;

public final class djj extends flj implements b8j {
    public final Context B0;
    public final chj C0;
    public final phj D0;
    public final nkj E0;
    public int F0;
    public boolean G0;
    public boolean H0;
    public erj I0;
    public erj J0;
    public long K0;
    public boolean L0;
    public boolean M0;
    public boolean N0;
    public int O0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public djj(Context context, pkj pkjVar, hlj hljVar, boolean z, Handler handler, dhj dhjVar, phj phjVar) {
        super(1, pkjVar, hljVar, false, 44100.0f);
        cjj cjjVar = null;
        nkj nkjVar = kfh.a >= 35 ? new nkj(mkj.a) : null;
        this.B0 = context.getApplicationContext();
        this.D0 = phjVar;
        this.E0 = nkjVar;
        this.O0 = -1000;
        this.C0 = new chj(handler, dhjVar);
        phjVar.m(new bjj(this, cjjVar));
    }

    public static List M0(hlj hljVar, erj erjVar, boolean z, phj phjVar) {
        tkj tkjVarA;
        if (erjVar.o == null) {
            return zzfww.zzn();
        }
        return (!phjVar.h(erjVar) || (tkjVarA = qlj.a()) == null) ? qlj.e(hljVar, erjVar, false, false) : zzfww.zzo(tkjVarA);
    }

    @Override
    public final void A0() {
        this.D0.zzg();
    }

    @Override
    public final void B0() throws zzii {
        try {
            this.D0.zzj();
        } catch (zzqe e) {
            throw z(e, e.zzc, e.zzb, true != W() ? 5002 : 5003);
        }
    }

    @Override
    public final boolean C0(long j, long j2, rkj rkjVar, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, erj erjVar) throws zzii {
        byteBuffer.getClass();
        if (this.J0 != null && (i2 & 2) != 0) {
            rkjVar.getClass();
            rkjVar.h(i, false);
            return true;
        }
        if (z) {
            if (rkjVar != null) {
                rkjVar.h(i, false);
            }
            this.t0.f += i3;
            this.D0.zzg();
            return true;
        }
        try {
            if (!this.D0.g(byteBuffer, j3, i3)) {
                return false;
            }
            if (rkjVar != null) {
                rkjVar.h(i, false);
            }
            this.t0.e += i3;
            return true;
        } catch (zzqb e) {
            erj erjVar2 = this.I0;
            if (W()) {
                F();
            }
            throw z(e, erjVar2, e.zzb, 5001);
        } catch (zzqe e2) {
            if (W()) {
                F();
            }
            throw z(e2, erjVar, e2.zzb, 5002);
        }
    }

    @Override
    public final boolean D0(erj erjVar) {
        F();
        return this.D0.h(erjVar);
    }

    @Override
    public final void H() {
        this.M0 = true;
        this.I0 = null;
        try {
            this.D0.zzf();
            super.H();
        } catch (Throwable th) {
            super.H();
            throw th;
        } finally {
            this.C0.s(this.t0);
        }
    }

    @Override
    public final void I(boolean z, boolean z2) {
        super.I(z, z2);
        this.C0.t(this.t0);
        F();
        phj phjVar = this.D0;
        phjVar.o(G());
        phjVar.k(D());
    }

    @Override
    public final void J(long j, boolean z) {
        super.J(j, z);
        this.D0.zzf();
        this.K0 = j;
        this.N0 = false;
        this.L0 = true;
    }

    @Override
    public final float K(float f, erj erjVar, erj[] erjVarArr) {
        int iMax = -1;
        for (erj erjVar2 : erjVarArr) {
            int i = erjVar2.F;
            if (i != -1) {
                iMax = Math.max(iMax, i);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return iMax * f;
    }

    public final int L0(tkj tkjVar, erj erjVar) {
        int i;
        if (!"OMX.google.raw.decoder".equals(tkjVar.a) || (i = kfh.a) >= 24 || (i == 23 && kfh.n(this.B0))) {
            return erjVar.p;
        }
        return -1;
    }

    @Override
    public final void e(int i, Object obj) {
        nkj nkjVar;
        if (i == 2) {
            phj phjVar = this.D0;
            obj.getClass();
            phjVar.n(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            hvg hvgVar = (hvg) obj;
            phj phjVar2 = this.D0;
            hvgVar.getClass();
            phjVar2.p(hvgVar);
            return;
        }
        if (i == 6) {
            klh klhVar = (klh) obj;
            phj phjVar3 = this.D0;
            klhVar.getClass();
            phjVar3.e(klhVar);
            return;
        }
        if (i == 12) {
            int i2 = kfh.a;
            this.D0.l((AudioDeviceInfo) obj);
            return;
        }
        if (i == 16) {
            obj.getClass();
            this.O0 = ((Integer) obj).intValue();
            rkj rkjVarK0 = K0();
            if (rkjVarK0 == null || kfh.a < 35) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("importance", Math.max(0, -this.O0));
            rkjVarK0.zzq(bundle);
            return;
        }
        if (i == 9) {
            phj phjVar4 = this.D0;
            obj.getClass();
            phjVar4.zzv(((Boolean) obj).booleanValue());
        } else {
            if (i != 10) {
                super.e(i, obj);
                return;
            }
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            this.D0.c(iIntValue);
            if (kfh.a < 35 || (nkjVar = this.E0) == null) {
                return;
            }
            nkjVar.d(iIntValue);
        }
    }

    public final void e0() {
        long jD = this.D0.d(f());
        if (jD != Long.MIN_VALUE) {
            if (!this.L0) {
                jD = Math.max(this.K0, jD);
            }
            this.K0 = jD;
            this.L0 = false;
        }
    }

    @Override
    public final boolean f() {
        return super.f() && this.D0.zzz();
    }

    @Override
    public final void h(vwe vweVar) {
        this.D0.f(vweVar);
    }

    @Override
    public final int l0(hlj hljVar, erj erjVar) {
        int i;
        boolean z;
        String str = erjVar.o;
        if (!bue.h(str)) {
            return 128;
        }
        int i2 = erjVar.L;
        boolean zB0 = flj.b0(erjVar);
        int i3 = 1;
        if (!zB0 || (i2 != 0 && qlj.a() == null)) {
            i = 0;
        } else {
            phj phjVar = this.D0;
            ygj ygjVarI = phjVar.i(erjVar);
            if (ygjVarI.a) {
                i = true != ygjVarI.b ? 512 : 1536;
                if (ygjVarI.c) {
                    i |= 2048;
                }
            } else {
                i = 0;
            }
            if (phjVar.h(erjVar)) {
                return i | 172;
            }
        }
        if (!"audio/raw".equals(str) || this.D0.h(erjVar)) {
            phj phjVar2 = this.D0;
            if (phjVar2.h(kfh.a(2, erjVar.E, erjVar.F))) {
                List listM0 = M0(hljVar, erjVar, false, phjVar2);
                if (!listM0.isEmpty()) {
                    if (zB0) {
                        tkj tkjVar = (tkj) listM0.get(0);
                        boolean zE = tkjVar.e(erjVar);
                        if (!zE) {
                            int i4 = 1;
                            while (true) {
                                if (i4 >= listM0.size()) {
                                    z = true;
                                    break;
                                }
                                tkj tkjVar2 = (tkj) listM0.get(i4);
                                if (tkjVar2.e(erjVar)) {
                                    tkjVar = tkjVar2;
                                    z = false;
                                    zE = true;
                                    break;
                                }
                                i4++;
                            }
                        } else {
                            z = true;
                            break;
                        }
                        int i5 = true != zE ? 3 : 4;
                        int i6 = 8;
                        if (zE && tkjVar.f(erjVar)) {
                            i6 = 16;
                        }
                        return i5 | i6 | 32 | (true != tkjVar.g ? 0 : 64) | (true != z ? 0 : 128) | i;
                    }
                    i3 = 2;
                }
            }
        }
        return i3 | 128;
    }

    @Override
    public final g1j m0(tkj tkjVar, erj erjVar, erj erjVar2) {
        int i;
        int i2;
        g1j g1jVarB = tkjVar.b(erjVar, erjVar2);
        int i3 = g1jVarB.e;
        if (X(erjVar2)) {
            i3 |= 32768;
        }
        if (L0(tkjVar, erjVar2) > this.F0) {
            i3 |= 64;
        }
        String str = tkjVar.a;
        if (i3 != 0) {
            i2 = 0;
            i = i3;
        } else {
            i = 0;
            i2 = g1jVarB.d;
        }
        return new g1j(str, erjVar, erjVar2, i2, i);
    }

    @Override
    public final g1j n0(p7j p7jVar) {
        erj erjVar = p7jVar.a;
        erjVar.getClass();
        this.I0 = erjVar;
        g1j g1jVarN0 = super.n0(p7jVar);
        this.C0.u(erjVar, g1jVarN0);
        return g1jVarN0;
    }

    @Override
    public final void p() {
        nkj nkjVar;
        this.D0.zzk();
        if (kfh.a < 35 || (nkjVar = this.E0) == null) {
            return;
        }
        nkjVar.b();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005e  */
    /* JADX WARN: Code duplicated, block: B:43:0x00cd  */
    @Override
    public final okj q0(tkj tkjVar, erj erjVar, MediaCrypto mediaCrypto, float f) {
        boolean z;
        erj[] erjVarArrW = w();
        int length = erjVarArrW.length;
        int iL0 = L0(tkjVar, erjVar);
        if (length != 1) {
            for (erj erjVar2 : erjVarArrW) {
                if (tkjVar.b(erjVar, erjVar2).d != 0) {
                    iL0 = Math.max(iL0, L0(tkjVar, erjVar2));
                }
            }
        }
        this.F0 = iL0;
        String str = tkjVar.a;
        int i = kfh.a;
        if (i < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(Build.MANUFACTURER)) {
            String str2 = Build.DEVICE;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        this.G0 = z;
        this.H0 = str.equals("OMX.google.opus.decoder") || str.equals("c2.android.opus.decoder") || str.equals("OMX.google.vorbis.decoder") || str.equals("c2.android.vorbis.decoder");
        String str3 = tkjVar.c;
        int i2 = this.F0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str3);
        int i3 = erjVar.E;
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_CHANNEL_COUNT, i3);
        int i4 = erjVar.F;
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_SAMPLE_RATE, i4);
        mvg.b(mediaFormat, erjVar.r);
        mvg.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_INPUT_SIZE, i2);
        mediaFormat.setInteger("priority", 0);
        if (f != -1.0f) {
            if (i == 23) {
                String str4 = Build.MODEL;
                if (!"ZTE B2017G".equals(str4) && !"AXON 7 mini".equals(str4)) {
                    mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, f);
                }
            } else {
                mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, f);
            }
        }
        if (i <= 28 && MimeTypes.AUDIO_AC4.equals(erjVar.o)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i >= 24 && this.D0.a(kfh.a(4, i3, i4)) == 2) {
            mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PCM_ENCODING, 4);
        }
        if (i >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (i >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.O0));
        }
        this.J0 = (!"audio/raw".equals(tkjVar.b) || "audio/raw".equals(erjVar.o)) ? null : erjVar;
        return okj.a(tkjVar, mediaFormat, erjVar, null, this.E0);
    }

    @Override
    public final void r() {
        this.N0 = false;
        try {
            super.r();
            if (this.M0) {
            }
        } finally {
            if (this.M0) {
                this.M0 = false;
                this.D0.zzl();
            }
        }
    }

    @Override
    public final List r0(hlj hljVar, erj erjVar, boolean z) {
        return qlj.f(M0(hljVar, erjVar, false, this.D0), erjVar);
    }

    @Override
    public final void s() {
        this.D0.zzi();
    }

    @Override
    public final void t() {
        e0();
        this.D0.zzh();
    }

    @Override
    public final void u0(xzi xziVar) {
        erj erjVar;
        if (kfh.a < 29 || (erjVar = xziVar.b) == null || !Objects.equals(erjVar.o, "audio/opus") || !W()) {
            return;
        }
        ByteBuffer byteBuffer = xziVar.g;
        byteBuffer.getClass();
        erj erjVar2 = xziVar.b;
        erjVar2.getClass();
        int i = erjVar2.H;
        if (byteBuffer.remaining() == 8) {
            this.D0.b(i, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / C.NANOS_PER_SECOND));
        }
    }

    @Override
    public final void v0(Exception exc) {
        zrg.d("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.C0.m(exc);
    }

    @Override
    public final void w0(String str, okj okjVar, long j, long j2) {
        this.C0.q(str, j, j2);
    }

    @Override
    public final void x0(String str) {
        this.C0.r(str);
    }

    @Override
    public final void y0(erj erjVar, MediaFormat mediaFormat) throws zzii {
        int I;
        int i;
        erj erjVar2 = this.J0;
        int[] iArr = null;
        if (erjVar2 != null) {
            erjVar = erjVar2;
        } else if (K0() != null) {
            mediaFormat.getClass();
            if ("audio/raw".equals(erjVar.o)) {
                I = erjVar.G;
            } else if (kfh.a < 24 || !mediaFormat.containsKey(com.hunantv.media.player.subtitle.MediaFormat.KEY_PCM_ENCODING)) {
                I = mediaFormat.containsKey("v-bits-per-sample") ? kfh.I(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            } else {
                I = mediaFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PCM_ENCODING);
            }
            gpj gpjVar = new gpj();
            gpjVar.E("audio/raw");
            gpjVar.x(I);
            gpjVar.i(erjVar.H);
            gpjVar.j(erjVar.I);
            gpjVar.w(erjVar.l);
            gpjVar.o(erjVar.a);
            gpjVar.q(erjVar.b);
            gpjVar.r(erjVar.c);
            gpjVar.s(erjVar.d);
            gpjVar.G(erjVar.e);
            gpjVar.C(erjVar.f);
            gpjVar.b(mediaFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_CHANNEL_COUNT));
            gpjVar.F(mediaFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_SAMPLE_RATE));
            erj erjVarK = gpjVar.K();
            if (this.G0 && erjVarK.E == 6 && (i = erjVar.E) < 6) {
                iArr = new int[i];
                for (int i2 = 0; i2 < i; i2++) {
                    iArr[i2] = i2;
                }
            } else if (this.H0) {
                int i3 = erjVarK.E;
                if (i3 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i3 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i3 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i3 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i3 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
            }
            erjVar = erjVarK;
        }
        try {
            if (kfh.a >= 29 && W()) {
                F();
            }
            this.D0.j(erjVar, 0, iArr);
        } catch (zzqa e) {
            throw z(e, e.zza, false, 5001);
        }
    }

    public final void z0() {
        this.L0 = true;
    }

    @Override
    public final String zzU() {
        return "MediaCodecAudioRenderer";
    }

    @Override
    public final boolean zzX() {
        return this.D0.zzy() || super.zzX();
    }

    @Override
    public final long zza() {
        if (l() == 2) {
            e0();
        }
        return this.K0;
    }

    @Override
    public final vwe zzc() {
        return this.D0.zzc();
    }

    @Override
    public final boolean zzj() {
        boolean z = this.N0;
        this.N0 = false;
        return z;
    }

    @Override
    public final b8j zzl() {
        return this;
    }
}
