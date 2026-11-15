package h3;

import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Objects;

public final class h implements s.a {
    @Override
    public boolean a(androidx.media3.common.r rVar) {
        String str = rVar.f9849o;
        return Objects.equals(str, MimeTypes.TEXT_SSA) || Objects.equals(str, MimeTypes.TEXT_VTT) || Objects.equals(str, MimeTypes.APPLICATION_MP4VTT) || Objects.equals(str, MimeTypes.APPLICATION_SUBRIP) || Objects.equals(str, MimeTypes.APPLICATION_TX3G) || Objects.equals(str, MimeTypes.APPLICATION_PGS) || Objects.equals(str, MimeTypes.APPLICATION_VOBSUB) || Objects.equals(str, MimeTypes.APPLICATION_DVBSUBS) || Objects.equals(str, MimeTypes.APPLICATION_TTML);
    }

    @Override
    public int b(androidx.media3.common.r rVar) {
        String str = rVar.f9849o;
        if (str != null) {
            switch (str) {
                case "application/dvbsubs":
                case "application/pgs":
                case "application/x-mp4-vtt":
                    return 2;
                case "text/vtt":
                    return 1;
                case "application/x-quicktime-tx3g":
                    return 2;
                case "text/x-ssa":
                    return 1;
                case "application/vobsub":
                    return 2;
                case "application/x-subrip":
                case "application/ttml+xml":
                    return 1;
            }
        }
        throw new IllegalArgumentException("Unsupported MIME type: " + str);
    }

    @Override
    public s c(androidx.media3.common.r rVar) {
        String str = rVar.f9849o;
        if (str != null) {
            switch (str) {
                case "application/dvbsubs":
                    return new j3.a(rVar.f9852r);
                case "application/pgs":
                    return new k3.a();
                case "application/x-mp4-vtt":
                    return new q3.a();
                case "text/vtt":
                    return new q3.g();
                case "application/x-quicktime-tx3g":
                    return new o3.a(rVar.f9852r);
                case "text/x-ssa":
                    return new l3.b(rVar.f9852r);
                case "application/vobsub":
                    return new p3.a(rVar.f9852r);
                case "application/x-subrip":
                    return new m3.a();
                case "application/ttml+xml":
                    return new n3.d();
            }
        }
        throw new IllegalArgumentException("Unsupported MIME type: " + str);
    }
}
