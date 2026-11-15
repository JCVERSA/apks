package defpackage;

import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzafl;
import com.google.android.gms.internal.ads.zzaz;

public final class ybe extends xbe {
    public final u4h b;
    public final u4h c;
    public int d;
    public boolean e;
    public boolean f;
    public int g;

    public ybe(rae raeVar) {
        super(raeVar);
        this.b = new u4h(jzh.a);
        this.c = new u4h(4);
    }

    @Override
    public final boolean a(u4h u4hVar) throws zzafl {
        int iG = u4hVar.G();
        int i = iG >> 4;
        int i2 = iG & 15;
        if (i2 == 7) {
            this.g = i;
            return i != 5;
        }
        throw new zzafl("Video format not supported: " + i2);
    }

    @Override
    public final boolean b(u4h u4hVar, long j) throws zzaz {
        int i;
        int iG = u4hVar.G();
        long jB = u4hVar.B();
        if (iG == 0) {
            if (!this.e) {
                u4h u4hVar2 = new u4h(new byte[u4hVar.u()]);
                u4hVar.h(u4hVar2.n(), 0, u4hVar.u());
                b8e b8eVarA = b8e.a(u4hVar2);
                this.d = b8eVarA.b;
                gpj gpjVar = new gpj();
                gpjVar.e(MimeTypes.VIDEO_FLV);
                gpjVar.E("video/avc");
                gpjVar.c(b8eVarA.l);
                gpjVar.J(b8eVarA.c);
                gpjVar.m(b8eVarA.d);
                gpjVar.z(b8eVarA.k);
                gpjVar.p(b8eVarA.a);
                this.a.f(gpjVar.K());
                this.e = true;
                return false;
            }
        } else if (iG == 1 && this.e) {
            int i2 = this.g == 1 ? 1 : 0;
            if (this.f) {
                i = i2;
            } else if (i2 != 0) {
                i = 1;
            }
            u4h u4hVar3 = this.c;
            byte[] bArrN = u4hVar3.n();
            bArrN[0] = 0;
            bArrN[1] = 0;
            bArrN[2] = 0;
            int i3 = 4 - this.d;
            int i4 = 0;
            while (u4hVar.u() > 0) {
                u4hVar.h(u4hVar3.n(), i3, this.d);
                u4hVar3.l(0);
                u4h u4hVar4 = this.b;
                int iJ = u4hVar3.J();
                u4hVar4.l(0);
                rae raeVar = this.a;
                raeVar.d(u4hVar4, 4);
                raeVar.d(u4hVar, iJ);
                i4 = i4 + 4 + iJ;
            }
            this.a.g(j + (jB * 1000), i, i4, 0, null);
            this.f = true;
            return true;
        }
        return false;
    }
}
