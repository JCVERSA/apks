package m2;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.u;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

final class g implements a {

    public final r f66239a;

    public g(r rVar) {
        this.f66239a = rVar;
    }

    private static String a(int i10) {
        switch (i10) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return MimeTypes.VIDEO_MP4V;
            case 826496577:
            case 828601953:
            case 875967048:
                return MimeTypes.VIDEO_H264;
            case 842289229:
                return "video/mp42";
            case 859066445:
                return "video/mp43";
            case 1196444237:
            case 1735420525:
                return "video/mjpeg";
            default:
                return null;
        }
    }

    private static String b(int i10) {
        if (i10 == 1) {
            return MimeTypes.AUDIO_RAW;
        }
        if (i10 == 85) {
            return MimeTypes.AUDIO_MPEG;
        }
        if (i10 == 255) {
            return MimeTypes.AUDIO_AAC;
        }
        if (i10 == 8192) {
            return MimeTypes.AUDIO_AC3;
        }
        if (i10 != 8193) {
            return null;
        }
        return MimeTypes.AUDIO_DTS;
    }

    private static a c(j0 j0Var) {
        j0Var.X(4);
        int iU = j0Var.u();
        int iU2 = j0Var.u();
        j0Var.X(4);
        int iU3 = j0Var.u();
        String strA = a(iU3);
        if (strA != null) {
            r.b bVar = new r.b();
            bVar.B0(iU).d0(iU2).u0(strA);
            return new g(bVar.N());
        }
        u.h("StreamFormatChunk", "Ignoring track with unsupported compression " + iU3);
        return null;
    }

    public static a d(int i10, j0 j0Var) {
        if (i10 == 2) {
            return c(j0Var);
        }
        if (i10 == 1) {
            return e(j0Var);
        }
        u.h("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + a1.t0(i10));
        return null;
    }

    private static a e(j0 j0Var) {
        int iZ = j0Var.z();
        String strB = b(iZ);
        if (strB == null) {
            u.h("StreamFormatChunk", "Ignoring track with unsupported format tag " + iZ);
            return null;
        }
        int iZ2 = j0Var.z();
        int iU = j0Var.u();
        j0Var.X(6);
        int iI0 = a1.i0(j0Var.z());
        int iZ3 = j0Var.a() > 0 ? j0Var.z() : 0;
        r.b bVar = new r.b();
        bVar.u0(strB).R(iZ2).v0(iU);
        if (strB.equals(MimeTypes.AUDIO_RAW) && iI0 != 0) {
            bVar.o0(iI0);
        }
        if (strB.equals(MimeTypes.AUDIO_AAC) && iZ3 > 0) {
            byte[] bArr = new byte[iZ3];
            j0Var.l(bArr, 0, iZ3);
            bVar.g0(ImmutableList.of(bArr));
        }
        return new g(bVar.N());
    }

    @Override
    public int getType() {
        return 1718776947;
    }
}
