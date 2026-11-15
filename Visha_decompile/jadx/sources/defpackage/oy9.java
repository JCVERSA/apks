package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.avi.AviExtractor;
import com.google.android.exoplayer2.k;
import com.google.common.collect.ImmutableList;

public final class oy9 implements s30 {
    public final k a;

    public oy9(k kVar) {
        this.a = kVar;
    }

    public static String a(int i) {
        switch (i) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return "video/mp4v-es";
            case 826496577:
            case 828601953:
            case 875967048:
                return "video/avc";
            case 842289229:
                return MimeTypes.VIDEO_MP42;
            case 859066445:
                return MimeTypes.VIDEO_MP43;
            case 1196444237:
            case 1735420525:
                return MimeTypes.VIDEO_MJPEG;
            default:
                return null;
        }
    }

    public static String b(int i) {
        if (i == 1) {
            return "audio/raw";
        }
        if (i == 85) {
            return "audio/mpeg";
        }
        if (i == 255) {
            return "audio/mp4a-latm";
        }
        if (i == 8192) {
            return "audio/ac3";
        }
        if (i != 8193) {
            return null;
        }
        return MimeTypes.AUDIO_DTS;
    }

    public static s30 c(qw7 qw7Var) {
        qw7Var.P(4);
        int iP = qw7Var.p();
        int iP2 = qw7Var.p();
        qw7Var.P(4);
        int iP3 = qw7Var.p();
        String strA = a(iP3);
        if (strA != null) {
            k.b bVar = new k.b();
            bVar.j0(iP).Q(iP2).e0(strA);
            return new oy9(bVar.E());
        }
        op5.i("StreamFormatChunk", "Ignoring track with unsupported compression " + iP3);
        return null;
    }

    public static s30 d(int i, qw7 qw7Var) {
        if (i == 2) {
            return c(qw7Var);
        }
        if (i == 1) {
            return e(qw7Var);
        }
        op5.i("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + blb.e0(i));
        return null;
    }

    public static s30 e(qw7 qw7Var) {
        int iU = qw7Var.u();
        String strB = b(iU);
        if (strB == null) {
            op5.i("StreamFormatChunk", "Ignoring track with unsupported format tag " + iU);
            return null;
        }
        int iU2 = qw7Var.u();
        int iP = qw7Var.p();
        qw7Var.P(6);
        int iV = blb.V(qw7Var.I());
        int iU3 = qw7Var.u();
        byte[] bArr = new byte[iU3];
        qw7Var.j(bArr, 0, iU3);
        k.b bVar = new k.b();
        bVar.e0(strB).H(iU2).f0(iP);
        if ("audio/raw".equals(strB) && iV != 0) {
            bVar.Y(iV);
        }
        if ("audio/mp4a-latm".equals(strB) && iU3 > 0) {
            bVar.T(ImmutableList.of(bArr));
        }
        return new oy9(bVar.E());
    }

    @Override
    public int getType() {
        return AviExtractor.FOURCC_strf;
    }
}
