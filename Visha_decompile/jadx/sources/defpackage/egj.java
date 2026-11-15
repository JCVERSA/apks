package defpackage;

import android.media.AudioFormat;
import android.media.AudioTrack;
import com.google.android.gms.internal.ads.m7;
import com.google.android.gms.internal.ads.zzfxb;
import java.util.Objects;
import java.util.Set;

public final class egj {
    public static final egj d;
    public final int a;
    public final int b;
    public final zzfxb c;

    static {
        egj egjVar;
        if (kfh.a >= 33) {
            m7 m7Var = new m7();
            for (int i = 1; i <= 10; i++) {
                m7Var.g(Integer.valueOf(kfh.D(i)));
            }
            egjVar = new egj(2, m7Var.j());
        } else {
            egjVar = new egj(2, 10);
        }
        d = egjVar;
    }

    public egj(int i, int i2) {
        this.a = i;
        this.b = i2;
        this.c = null;
    }

    public final int a(int i, hvg hvgVar) {
        if (this.c != null) {
            return this.b;
        }
        if (kfh.a < 29) {
            Integer num = (Integer) ggj.e.getOrDefault(Integer.valueOf(this.a), 0);
            num.getClass();
            return num.intValue();
        }
        int i2 = this.a;
        for (int i3 = 10; i3 > 0; i3--) {
            int iD = kfh.D(i3);
            if (iD != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i2).setSampleRate(i).setChannelMask(iD).build(), hvgVar.a().a)) {
                return i3;
            }
        }
        return 0;
    }

    public final boolean b(int i) {
        zzfxb zzfxbVar = this.c;
        if (zzfxbVar == null) {
            return i <= this.b;
        }
        int iD = kfh.D(i);
        if (iD == 0) {
            return false;
        }
        return zzfxbVar.contains(Integer.valueOf(iD));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof egj)) {
            return false;
        }
        egj egjVar = (egj) obj;
        return this.a == egjVar.a && this.b == egjVar.b && Objects.equals(this.c, egjVar.c);
    }

    public final int hashCode() {
        zzfxb zzfxbVar = this.c;
        return (((this.a * 31) + this.b) * 31) + (zzfxbVar == null ? 0 : zzfxbVar.hashCode());
    }

    public final String toString() {
        return "AudioProfile[format=" + this.a + ", maxChannelCount=" + this.b + ", channelMasks=" + String.valueOf(this.c) + "]";
    }

    public egj(int i, Set set) {
        this.a = i;
        zzfxb zzfxbVarZzl = zzfxb.zzl(set);
        this.c = zzfxbVarZzl;
        x5i it = zzfxbVarZzl.iterator();
        int iMax = 0;
        while (it.hasNext()) {
            iMax = Math.max(iMax, Integer.bitCount(((Integer) it.next()).intValue()));
        }
        this.b = iMax;
    }
}
