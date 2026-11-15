package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import defpackage.y45;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class hv0 extends mv0 implements fv0 {
    private static final iv0 S0 = nm1.d();
    private final Context H0;
    private final vh.a I0;
    private final wh J0;
    private int K0;
    private boolean L0;

    @Nullable
    private jc0 M0;
    private long N0;
    private boolean O0;
    private boolean P0;
    private boolean Q0;

    @Nullable
    private yo1.a R0;

    public final class a implements wh.c {
        public final void a(Exception exc) {
            et0.a("MediaCodecAudioRenderer", "Audio sink error", exc);
            hv0.this.I0.b(exc);
        }

        public final void b() {
            yo1.a aVar = hv0.this.R0;
            if (aVar != null) {
                aVar.a();
            }
        }

        public final void c() {
            hv0.this.P0 = true;
        }

        private a() {
        }

        public final void a() {
            yo1.a aVar = hv0.this.R0;
            if (aVar != null) {
                aVar.b();
            }
        }

        public final void a(long j) {
            hv0.this.I0.b(j);
        }

        public final void a(boolean z) {
            hv0.this.I0.b(z);
        }

        public final void a(int i, long j, long j2) {
            hv0.this.I0.b(i, j, j2);
        }
    }

    public hv0(Context context, f00 f00Var, ov0 ov0Var, @Nullable Handler handler, @Nullable vh vhVar, hz hzVar) {
        super(1, f00Var, ov0Var, 44100.0f);
        this.H0 = context.getApplicationContext();
        this.J0 = hzVar;
        this.I0 = new vh.a(handler, vhVar);
        hzVar.a(new a());
    }

    @Override
    public final void L() {
        this.J0.g();
    }

    @Override
    public final void O() throws m60 {
        try {
            this.J0.d();
        } catch (wh.e e) {
            throw a(5002, e.d, e, e.c);
        }
    }

    @Override
    public final ty a(kv0 kv0Var, jc0 jc0Var, jc0 jc0Var2) {
        ty tyVarA = kv0Var.a(jc0Var, jc0Var2);
        int i = tyVarA.e;
        if (a(jc0Var2, kv0Var) > this.K0) {
            i |= 64;
        }
        int i2 = i;
        return new ty(kv0Var.a, jc0Var, jc0Var2, i2 != 0 ? 0 : tyVarA.d, i2);
    }

    @Override
    public final void b(ry ryVar) {
        if (!this.O0 || ryVar.e()) {
            return;
        }
        if (Math.abs(ryVar.f - this.N0) > 500000) {
            this.N0 = ryVar.f;
        }
        this.O0 = false;
    }

    @Override
    public final boolean d() {
        return this.J0.e() || super.d();
    }

    @Override
    public final String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override
    public final bi1 getPlaybackParameters() {
        return this.J0.getPlaybackParameters();
    }

    @Override
    @Nullable
    public final fv0 l() {
        return this;
    }

    @Override
    public final void u() {
        this.Q0 = true;
        try {
            this.J0.flush();
            try {
                super.u();
            } finally {
                this.I0.a(this.B0);
            }
        } catch (Throwable th) {
            try {
                super.u();
                throw th;
            } finally {
                this.I0.a(this.B0);
            }
        }
    }

    @Override
    public final void v() {
        try {
            super.v();
        } finally {
            if (this.Q0) {
                this.Q0 = false;
                this.J0.b();
            }
        }
    }

    @Override
    public final void w() {
        this.J0.play();
    }

    @Override
    public final void x() {
        long jA = this.J0.a(a());
        if (jA != Long.MIN_VALUE) {
            if (!this.P0) {
                jA = Math.max(this.N0, jA);
            }
            this.N0 = jA;
            this.P0 = false;
        }
        this.J0.pause();
    }

    @Override
    public final long o() {
        if (getState() == 2) {
            long jA = this.J0.a(a());
            if (jA != Long.MIN_VALUE) {
                if (!this.P0) {
                    jA = Math.max(this.N0, jA);
                }
                this.N0 = jA;
                this.P0 = false;
            }
        }
        return this.N0;
    }

    @Override
    public final boolean b(jc0 jc0Var) {
        return this.J0.a(jc0Var);
    }

    @Override
    public final float a(float f, jc0[] jc0VarArr) {
        int iMax = -1;
        for (jc0 jc0Var : jc0VarArr) {
            int i = jc0Var.A;
            if (i != -1) {
                iMax = Math.max(iMax, i);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return iMax * f;
    }

    private static kk0 a(ov0 ov0Var, jc0 jc0Var, boolean z, wh whVar) throws sv0.b {
        String str = jc0Var.m;
        if (str == null) {
            return kk0.h();
        }
        if (whVar.a(jc0Var)) {
            List<kv0> listA = sv0.a("audio/raw", false, false);
            kv0 kv0Var = listA.isEmpty() ? null : listA.get(0);
            if (kv0Var != null) {
                return kk0.a(kv0Var);
            }
        }
        List<kv0> listA2 = ov0Var.a(str, z, false);
        String strA = sv0.a(jc0Var);
        if (strA == null) {
            return kk0.a((Collection) listA2);
        }
        List<kv0> listA3 = ov0Var.a(strA, z, false);
        int i = kk0.d;
        return new kk0.a().b((List) listA2).b((List) listA3).a();
    }

    @Override
    public final ArrayList a(ov0 ov0Var, jc0 jc0Var, boolean z) throws sv0.b {
        return sv0.a(a(ov0Var, jc0Var, z, this.J0), jc0Var);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006b  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d8  */
    @Override
    public final gv0.a a(kv0 kv0Var, jc0 jc0Var, @Nullable MediaCrypto mediaCrypto, float f) {
        boolean z;
        jc0[] jc0VarArrS = s();
        int iA = a(jc0Var, kv0Var);
        if (jc0VarArrS.length != 1) {
            for (jc0 jc0Var2 : jc0VarArrS) {
                if (kv0Var.a(jc0Var, jc0Var2).d != 0) {
                    iA = Math.max(iA, a(jc0Var2, kv0Var));
                }
            }
        }
        this.K0 = iA;
        String str = kv0Var.a;
        int i = f92.a;
        if (i < 24) {
            iv0 iv0Var = S0;
            if (iv0Var.d().equals(str) && iv0Var.f().equals(f92.c)) {
                String str2 = f92.b;
                if (str2.startsWith(iv0Var.h()) || str2.startsWith(iv0Var.b()) || str2.startsWith(iv0Var.c())) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        this.L0 = z;
        String str3 = kv0Var.c;
        int i2 = this.K0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str3);
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_CHANNEL_COUNT, jc0Var.z);
        mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_SAMPLE_RATE, jc0Var.A);
        List<byte[]> list = jc0Var.o;
        for (int i3 = 0; i3 < list.size(); i3++) {
            mediaFormat.setByteBuffer(oe.a("csd-", i3), ByteBuffer.wrap(list.get(i3)));
        }
        iw0.a(mediaFormat, com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_INPUT_SIZE, i2);
        if (i >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                if (i == 23) {
                    iv0 iv0Var2 = S0;
                    String strG = iv0Var2.g();
                    String str4 = f92.d;
                    if (!strG.equals(str4) && !iv0Var2.a().equals(str4)) {
                        mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, f);
                    }
                } else {
                    mediaFormat.setFloat(com.hunantv.media.player.subtitle.MediaFormat.KEY_OPERATING_RATE, f);
                }
            }
        }
        if (i <= 28 && MimeTypes.AUDIO_AC4.equals(jc0Var.m)) {
            S0.getClass();
            byte[] bArrDecode = Base64.decode("YWM0LWlzLXN5bmM=", 0);
            y45.i(bArrDecode, "decode(...)");
            mediaFormat.setInteger(new String(bArrDecode, defpackage.qv0.b), 1);
        }
        if (i >= 24) {
            if (this.J0.b(new jc0.a().e("audio/raw").c(jc0Var.z).l(jc0Var.A).i(4).a()) == 2) {
                mediaFormat.setInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PCM_ENCODING, 4);
            }
        }
        if (i >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        this.M0 = (!"audio/raw".equals(kv0Var.b) || "audio/raw".equals(jc0Var.m)) ? null : jc0Var;
        return gv0.a.a(kv0Var, mediaFormat, jc0Var, mediaCrypto);
    }

    @Override
    public final void a(int i, @Nullable Object obj) throws m60 {
        if (i == 2) {
            this.J0.setVolume(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            this.J0.a((ph) obj);
            return;
        }
        if (i != 6) {
            switch (i) {
                case 9:
                    this.J0.b(((Boolean) obj).booleanValue());
                    break;
                case 10:
                    this.J0.a(((Integer) obj).intValue());
                    break;
                case 11:
                    this.R0 = (yo1.a) obj;
                    break;
            }
            return;
        }
        this.J0.a((ji) obj);
    }

    @Override
    public final boolean a() {
        return super.a() && this.J0.a();
    }

    @Override
    public final void a(Exception exc) {
        et0.a("MediaCodecAudioRenderer", "Audio codec error", exc);
        this.I0.a(exc);
    }

    @Override
    public final void a(String str, long j, long j2) {
        this.I0.a(str, j, j2);
    }

    @Override
    public final void a(String str) {
        this.I0.a(str);
    }

    @Override
    public final void a(boolean z, boolean z2) throws m60 {
        super.a(z, z2);
        this.I0.b(this.B0);
        if (p().a) {
            this.J0.c();
        } else {
            this.J0.f();
        }
        this.J0.a(r());
    }

    @Override
    @Nullable
    public final ty a(kc0 kc0Var) throws m60 {
        ty tyVarA = super.a(kc0Var);
        this.I0.a(kc0Var.b, tyVarA);
        return tyVarA;
    }

    @Override
    public final void a(jc0 jc0Var, @Nullable MediaFormat mediaFormat) throws m60 {
        int iB;
        int i;
        jc0 jc0Var2 = this.M0;
        int[] iArr = null;
        if (jc0Var2 != null) {
            jc0Var = jc0Var2;
        } else if (E() != null) {
            if ("audio/raw".equals(jc0Var.m)) {
                iB = jc0Var.B;
            } else if (f92.a >= 24 && mediaFormat.containsKey(com.hunantv.media.player.subtitle.MediaFormat.KEY_PCM_ENCODING)) {
                iB = mediaFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_PCM_ENCODING);
            } else {
                iB = mediaFormat.containsKey("v-bits-per-sample") ? f92.b(mediaFormat.getInteger("v-bits-per-sample")) : 2;
            }
            jc0 jc0VarA = new jc0.a().e("audio/raw").i(iB).d(jc0Var.C).e(jc0Var.D).c(mediaFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_CHANNEL_COUNT)).l(mediaFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_SAMPLE_RATE)).a();
            if (this.L0 && jc0VarA.z == 6 && (i = jc0Var.z) < 6) {
                iArr = new int[i];
                for (int i2 = 0; i2 < jc0Var.z; i2++) {
                    iArr[i2] = i2;
                }
            }
            jc0Var = jc0VarA;
        }
        try {
            this.J0.a(jc0Var, iArr);
        } catch (wh.a e) {
            throw a(e, e.b, 5001);
        }
    }

    @Override
    public final void a(long j, boolean z) throws m60 {
        super.a(j, z);
        this.J0.flush();
        this.N0 = j;
        this.O0 = true;
        this.P0 = true;
    }

    @Override
    public final boolean a(long j, long j2, @Nullable gv0 gv0Var, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, jc0 jc0Var) throws m60 {
        byteBuffer.getClass();
        if (this.M0 != null && (i2 & 2) != 0) {
            gv0Var.getClass();
            gv0Var.a(false, i);
            return true;
        }
        if (z) {
            if (gv0Var != null) {
                gv0Var.a(false, i);
            }
            this.B0.f += i3;
            this.J0.g();
            return true;
        }
        try {
            if (!this.J0.a(byteBuffer, j3, i3)) {
                return false;
            }
            if (gv0Var != null) {
                gv0Var.a(false, i);
            }
            this.B0.e += i3;
            return true;
        } catch (wh.b e) {
            throw a(5001, e.d, e, e.c);
        } catch (wh.e e2) {
            throw a(5002, jc0Var, e2, e2.c);
        }
    }

    @Override
    public final void a(bi1 bi1Var) {
        this.J0.a(bi1Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004c, code lost:
    
        if ((r4.isEmpty() ? null : r4.get(0)) != null) goto L30;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(ov0 ov0Var, jc0 jc0Var) throws sv0.b {
        boolean z;
        if (!w01.d(jc0Var.m)) {
            return zo1.a(0, 0, 0);
        }
        int i = f92.a >= 21 ? 32 : 0;
        int i2 = jc0Var.F;
        boolean z2 = true;
        boolean z3 = i2 != 0;
        boolean z4 = i2 == 0 || i2 == 2;
        int i3 = 8;
        if (z4 && this.J0.a(jc0Var)) {
            if (z3) {
                List<kv0> listA = sv0.a("audio/raw", false, false);
            }
            return zo1.a(4, 8, i);
        }
        if ("audio/raw".equals(jc0Var.m) && !this.J0.a(jc0Var)) {
            return zo1.a(1, 0, 0);
        }
        if (!this.J0.a(new jc0.a().e("audio/raw").c(jc0Var.z).l(jc0Var.A).i(2).a())) {
            return zo1.a(1, 0, 0);
        }
        kk0 kk0VarA = a(ov0Var, jc0Var, false, this.J0);
        if (kk0VarA.isEmpty()) {
            return zo1.a(1, 0, 0);
        }
        if (!z4) {
            return zo1.a(2, 0, 0);
        }
        kv0 kv0Var = (kv0) kk0VarA.get(0);
        boolean zA = kv0Var.a(jc0Var);
        if (!zA) {
            int i4 = 1;
            while (true) {
                if (i4 >= kk0VarA.size()) {
                    z = true;
                    z2 = zA;
                    break;
                }
                kv0 kv0Var2 = (kv0) kk0VarA.get(i4);
                if (kv0Var2.a(jc0Var)) {
                    z = false;
                    kv0Var = kv0Var2;
                    break;
                }
                i4++;
            }
        } else {
            z = true;
            z2 = zA;
            break;
        }
        int i5 = z2 ? 4 : 3;
        if (z2 && kv0Var.b(jc0Var)) {
            i3 = 16;
        }
        return i5 | i3 | i | (kv0Var.g ? 64 : 0) | (z ? 128 : 0);
    }

    private int a(jc0 jc0Var, kv0 kv0Var) {
        int i;
        if (!S0.e().equals(kv0Var.a) || (i = f92.a) >= 24 || (i == 23 && f92.d(this.H0))) {
            return jc0Var.n;
        }
        return -1;
    }
}
