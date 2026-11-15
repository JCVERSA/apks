package defpackage;

import androidx.media3.common.MimeTypes;
import java.util.Objects;

public final class rge implements vge {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0069  */
    @Override
    public final int a(erj erjVar) {
        String str = erjVar.o;
        if (str != null) {
            switch (str) {
                case "text/x-ssa":
                case "text/vtt":
                    return 1;
                case "application/x-mp4-vtt":
                    return 2;
                case "application/x-subrip":
                    return 1;
                case "application/x-quicktime-tx3g":
                case "application/pgs":
                case "application/vobsub":
                case "application/dvbsubs":
                    return 2;
                case "application/ttml+xml":
                    return 1;
            }
        }
        throw new IllegalArgumentException("Unsupported MIME type: ".concat(String.valueOf(str)));
    }

    @Override
    public final boolean b(erj erjVar) {
        String str = erjVar.o;
        return Objects.equals(str, MimeTypes.TEXT_SSA) || Objects.equals(str, "text/vtt") || Objects.equals(str, MimeTypes.APPLICATION_MP4VTT) || Objects.equals(str, "application/x-subrip") || Objects.equals(str, MimeTypes.APPLICATION_TX3G) || Objects.equals(str, MimeTypes.APPLICATION_PGS) || Objects.equals(str, MimeTypes.APPLICATION_VOBSUB) || Objects.equals(str, MimeTypes.APPLICATION_DVBSUBS) || Objects.equals(str, MimeTypes.APPLICATION_TTML);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0067  */
    @Override
    public final bhe c(erj erjVar) {
        String str = erjVar.o;
        if (str != null) {
            switch (str) {
                case "text/x-ssa":
                    return new rhe(erjVar.r);
                case "text/vtt":
                    return new xie();
                case "application/x-mp4-vtt":
                    return new nie();
                case "application/x-subrip":
                    return new vhe();
                case "application/x-quicktime-tx3g":
                    return new kie(erjVar.r);
                case "application/pgs":
                    return new phe();
                case "application/vobsub":
                    return new mie(erjVar.r);
                case "application/dvbsubs":
                    return new nhe(erjVar.r);
                case "application/ttml+xml":
                    return new fie();
            }
        }
        throw new IllegalArgumentException("Unsupported MIME type: ".concat(String.valueOf(str)));
    }
}
