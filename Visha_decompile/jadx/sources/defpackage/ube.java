package defpackage;

import androidx.media3.common.MimeTypes;
import com.google.android.gms.internal.ads.zzafl;
import java.util.Collections;

public final class ube extends xbe {
    public static final int[] e = {5512, 11025, 22050, 44100};
    public boolean b;
    public boolean c;
    public int d;

    public ube(rae raeVar) {
        super(raeVar);
    }

    @Override
    public final boolean a(u4h u4hVar) throws zzafl {
        if (this.b) {
            u4hVar.m(1);
        } else {
            int iG = u4hVar.G();
            int i = iG >> 4;
            this.d = i;
            if (i == 2) {
                int i2 = e[(iG >> 2) & 3];
                gpj gpjVar = new gpj();
                gpjVar.e(MimeTypes.VIDEO_FLV);
                gpjVar.E("audio/mpeg");
                gpjVar.b(1);
                gpjVar.F(i2);
                this.a.f(gpjVar.K());
                this.c = true;
            } else if (i == 7 || i == 8) {
                gpj gpjVar2 = new gpj();
                gpjVar2.e(MimeTypes.VIDEO_FLV);
                gpjVar2.E(i == 7 ? "audio/g711-alaw" : "audio/g711-mlaw");
                gpjVar2.b(1);
                gpjVar2.F(8000);
                this.a.f(gpjVar2.K());
                this.c = true;
            } else if (i != 10) {
                throw new zzafl("Audio format not supported: " + i);
            }
            this.b = true;
        }
        return true;
    }

    @Override
    public final boolean b(u4h u4hVar, long j) {
        if (this.d == 2) {
            int iU = u4hVar.u();
            rae raeVar = this.a;
            raeVar.d(u4hVar, iU);
            raeVar.g(j, 1, iU, 0, null);
            return true;
        }
        int iG = u4hVar.G();
        if (iG != 0 || this.c) {
            if (this.d == 10 && iG != 1) {
                return false;
            }
            int iU2 = u4hVar.u();
            rae raeVar2 = this.a;
            raeVar2.d(u4hVar, iU2);
            raeVar2.g(j, 1, iU2, 0, null);
            return true;
        }
        int iU3 = u4hVar.u();
        byte[] bArr = new byte[iU3];
        u4hVar.h(bArr, 0, iU3);
        n7e n7eVarA = p7e.a(bArr);
        gpj gpjVar = new gpj();
        gpjVar.e(MimeTypes.VIDEO_FLV);
        gpjVar.E("audio/mp4a-latm");
        gpjVar.c(n7eVarA.c);
        gpjVar.b(n7eVarA.b);
        gpjVar.F(n7eVarA.a);
        gpjVar.p(Collections.singletonList(bArr));
        this.a.f(gpjVar.K());
        this.c = true;
        return false;
    }
}
