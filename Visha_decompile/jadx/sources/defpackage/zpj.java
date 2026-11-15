package defpackage;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import com.google.android.gms.internal.ads.zzfyh;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Objects;

public final class zpj extends oqj implements Comparable {
    public final int f;
    public final boolean g;
    public final String h;
    public final hqj i;
    public final boolean j;
    public final int k;
    public final int l;
    public final int m;
    public final boolean n;
    public final int o;
    public final int p;
    public final boolean q;
    public final int r;
    public final int s;
    public final int t;
    public final int u;
    public final boolean v;
    public final boolean w;
    public final boolean x;

    /* JADX WARN: Code duplicated, block: B:26:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a9  */
    public zpj(int i, n5f n5fVar, int i2, hqj hqjVar, int i3, boolean z, w2i w2iVar, int i4) {
        int i5;
        int iM;
        byte b;
        boolean z2;
        int iM2;
        boolean z3;
        super(i, n5fVar, i2);
        this.i = hqjVar;
        int i6 = 1;
        int i7 = true != hqjVar.O ? 16 : 24;
        this.h = rqj.p(this.e.d);
        this.j = y9j.a(i3, false);
        int i8 = 0;
        while (true) {
            i5 = Integer.MAX_VALUE;
            if (i8 >= hqjVar.p.size()) {
                iM = 0;
                i8 = Integer.MAX_VALUE;
                break;
            } else {
                iM = rqj.m(this.e, (String) hqjVar.p.get(i8), false);
                if (iM > 0) {
                    break;
                } else {
                    i8++;
                }
            }
        }
        this.l = i8;
        this.k = iM;
        this.m = rqj.l(this.e.f, 0);
        erj erjVar = this.e;
        int i9 = erjVar.f;
        this.n = i9 == 0 || (i9 & 1) != 0;
        this.q = 1 == (erjVar.e & 1);
        String str = erjVar.o;
        if (str != null) {
            int iHashCode = str.hashCode();
            if (iHashCode != -2123537834) {
                if (iHashCode != 187078297) {
                    if (iHashCode == 1504698186 && str.equals(MimeTypes.AUDIO_IAMF)) {
                        b = 2;
                    } else {
                        b = -1;
                    }
                } else if (str.equals(MimeTypes.AUDIO_AC4)) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (str.equals(MimeTypes.AUDIO_E_AC3_JOC)) {
                b = 0;
            } else {
                b = -1;
            }
            if (b == 0 || b == 1 || b == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        this.x = z2;
        int i10 = erjVar.E;
        this.r = i10;
        this.s = erjVar.F;
        int i11 = erjVar.j;
        this.t = i11;
        this.g = (i11 == -1 || i11 <= hqjVar.s) && (i10 == -1 || i10 <= hqjVar.r) && w2iVar.zza(erjVar);
        int i12 = kfh.a;
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] strArrSplit = kfh.a >= 24 ? configuration.getLocales().toLanguageTags().split(StringUtils.COMMA, -1) : new String[]{configuration.locale.toLanguageTag()};
        for (int i13 = 0; i13 < strArrSplit.length; i13++) {
            strArrSplit[i13] = kfh.e(strArrSplit[i13]);
        }
        int i14 = 0;
        while (true) {
            if (i14 >= strArrSplit.length) {
                iM2 = 0;
                i14 = Integer.MAX_VALUE;
                break;
            } else {
                iM2 = rqj.m(this.e, strArrSplit[i14], false);
                if (iM2 > 0) {
                    break;
                } else {
                    i14++;
                }
            }
        }
        this.o = i14;
        this.p = iM2;
        for (int i15 = 0; i15 < hqjVar.t.size(); i15++) {
            String str2 = this.e.o;
            if (str2 != null && str2.equals(hqjVar.t.get(i15))) {
                i5 = i15;
                break;
            }
        }
        this.u = i5;
        this.v = (i3 & RendererCapabilities.DECODER_SUPPORT_MASK) == 128;
        this.w = (i3 & 64) == 64;
        hqj hqjVar2 = this.i;
        if (y9j.a(i3, hqjVar2.Q) && ((z3 = this.g) || hqjVar2.J)) {
            int i16 = hqjVar2.u.a;
            if (y9j.a(i3, false) && z3 && this.e.j != -1 && ((hqjVar2.S || !z) && (i3 & i7) != 0)) {
                i6 = 2;
            }
        } else {
            i6 = 0;
        }
        this.f = i6;
    }

    @Override
    public final int a() {
        return this.f;
    }

    @Override
    public final boolean b(oqj oqjVar) {
        String str;
        int i;
        zpj zpjVar = (zpj) oqjVar;
        boolean z = this.i.M;
        erj erjVar = this.e;
        int i2 = erjVar.E;
        if (i2 == -1) {
            return false;
        }
        erj erjVar2 = zpjVar.e;
        return i2 == erjVar2.E && (str = erjVar.o) != null && TextUtils.equals(str, erjVar2.o) && (i = erjVar.F) != -1 && i == erjVar2.F && this.v == zpjVar.v && this.w == zpjVar.w;
    }

    @Override
    public final int compareTo(zpj zpjVar) {
        boolean z = this.g;
        zzfyh zzfyhVarZza = (z && this.j) ? rqj.i : rqj.i.zza();
        f4i f4iVarC = f4i.i().d(this.j, zpjVar.j).c(Integer.valueOf(this.l), Integer.valueOf(zpjVar.l), zzfyh.zzc().zza()).b(this.k, zpjVar.k).b(this.m, zpjVar.m).d(this.q, zpjVar.q).d(this.n, zpjVar.n).c(Integer.valueOf(this.o), Integer.valueOf(zpjVar.o), zzfyh.zzc().zza()).b(this.p, zpjVar.p).d(z, zpjVar.g).c(Integer.valueOf(this.u), Integer.valueOf(zpjVar.u), zzfyh.zzc().zza());
        boolean z2 = this.i.B;
        f4i f4iVarC2 = f4iVarC.d(this.v, zpjVar.v).d(this.w, zpjVar.w).d(this.x, zpjVar.x).c(Integer.valueOf(this.r), Integer.valueOf(zpjVar.r), zzfyhVarZza).c(Integer.valueOf(this.s), Integer.valueOf(zpjVar.s), zzfyhVarZza);
        if (Objects.equals(this.h, zpjVar.h)) {
            f4iVarC2 = f4iVarC2.c(Integer.valueOf(this.t), Integer.valueOf(zpjVar.t), zzfyhVarZza);
        }
        return f4iVarC2.a();
    }
}
