package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.OpusUtil;
import com.google.android.gms.internal.ads.zzfww;
import java.util.Arrays;
import java.util.List;

public final class ige extends mge {
    public static final byte[] o = {79, 112, 117, 115, 72, 101, 97, 100};
    public static final byte[] p = {79, 112, 117, 115, 84, 97, 103, 115};
    public boolean n;

    public static boolean j(u4h u4hVar) {
        return k(u4hVar, o);
    }

    public static boolean k(u4h u4hVar, byte[] bArr) {
        if (u4hVar.u() < 8) {
            return false;
        }
        int iW = u4hVar.w();
        byte[] bArr2 = new byte[8];
        u4hVar.h(bArr2, 0, 8);
        u4hVar.l(iW);
        return Arrays.equals(bArr2, bArr);
    }

    @Override
    public final long a(u4h u4hVar) {
        return f(x9e.d(u4hVar.n()));
    }

    @Override
    public final void b(boolean z) {
        super.b(z);
        if (z) {
            this.n = false;
        }
    }

    @Override
    public final boolean c(u4h u4hVar, long j, jge jgeVar) {
        if (k(u4hVar, o)) {
            byte[] bArrCopyOf = Arrays.copyOf(u4hVar.n(), u4hVar.x());
            int i = bArrCopyOf[9] & 255;
            List listE = x9e.e(bArrCopyOf);
            if (jgeVar.a == null) {
                gpj gpjVar = new gpj();
                gpjVar.e(MimeTypes.AUDIO_OGG);
                gpjVar.E("audio/opus");
                gpjVar.b(i);
                gpjVar.F(OpusUtil.SAMPLE_RATE);
                gpjVar.p(listE);
                jgeVar.a = gpjVar.K();
                return true;
            }
        } else {
            if (!k(u4hVar, p)) {
                n7g.b(jgeVar.a);
                return false;
            }
            n7g.b(jgeVar.a);
            if (!this.n) {
                this.n = true;
                u4hVar.m(8);
                hre hreVarB = xae.b(zzfww.zzm(xae.c(u4hVar, false, false).a));
                if (hreVarB != null) {
                    gpj gpjVarB = jgeVar.a.b();
                    gpjVarB.w(hreVarB.d(jgeVar.a.l));
                    jgeVar.a = gpjVarB.K();
                }
            }
        }
        return true;
    }
}
