package defpackage;

import android.util.Pair;
import androidx.media3.extractor.WavUtil;
import com.google.android.gms.internal.ads.zzaz;

public abstract class ole {
    public static Pair a(d9e d9eVar) throws zzaz {
        d9eVar.zzj();
        nle nleVarD = d(1684108385, d9eVar, new u4h(8));
        d9eVar.f(8);
        return Pair.create(Long.valueOf(d9eVar.zzf()), Long.valueOf(nleVarD.b));
    }

    public static mle b(d9e d9eVar) {
        byte[] bArr;
        u4h u4hVar = new u4h(16);
        long j = d(WavUtil.FMT_FOURCC, d9eVar, u4hVar).b;
        n7g.f(j >= 16);
        d9eVar.i(u4hVar.n(), 0, 16);
        u4hVar.l(0);
        int iE = u4hVar.E();
        int iE2 = u4hVar.E();
        int iD = u4hVar.D();
        int iD2 = u4hVar.D();
        int iE3 = u4hVar.E();
        int iE4 = u4hVar.E();
        int i = ((int) j) - 16;
        if (i > 0) {
            byte[] bArr2 = new byte[i];
            d9eVar.i(bArr2, 0, i);
            bArr = bArr2;
        } else {
            bArr = kfh.c;
        }
        d9eVar.f((int) (d9eVar.zze() - d9eVar.zzf()));
        return new mle(iE, iE2, iD, iD2, iE3, iE4, bArr);
    }

    public static boolean c(d9e d9eVar) {
        u4h u4hVar = new u4h(8);
        int i = nle.a(d9eVar, u4hVar).a;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        d9eVar.i(u4hVar.n(), 0, 4);
        u4hVar.l(0);
        int iA = u4hVar.A();
        if (iA == 1463899717) {
            return true;
        }
        zrg.c("WavHeaderReader", "Unsupported form type: " + iA);
        return false;
    }

    public static nle d(int i, d9e d9eVar, u4h u4hVar) throws zzaz {
        nle nleVarA = nle.a(d9eVar, u4hVar);
        while (true) {
            int i2 = nleVarA.a;
            if (i2 == i) {
                return nleVarA;
            }
            zrg.f("WavHeaderReader", "Ignoring unknown WAV chunk: " + i2);
            long j = nleVarA.b;
            long j2 = 8 + j;
            if ((1 & j) != 0) {
                j2 = 9 + j;
            }
            if (j2 > 2147483647L) {
                throw zzaz.zzc("Chunk is too large (~2GB+) to skip; id: " + i2);
            }
            d9eVar.f((int) j2);
            nleVarA = nle.a(d9eVar, u4hVar);
        }
    }
}
