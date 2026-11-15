package da;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public interface k {

    public static final k f58971a = new a();

    class a implements k {
        a() {
        }

        @Override
        public boolean a(p1 p1Var) {
            String str = p1Var.f24901l;
            return MimeTypes.TEXT_VTT.equals(str) || MimeTypes.TEXT_SSA.equals(str) || MimeTypes.APPLICATION_TTML.equals(str) || MimeTypes.APPLICATION_MP4VTT.equals(str) || MimeTypes.APPLICATION_SUBRIP.equals(str) || MimeTypes.APPLICATION_TX3G.equals(str) || MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_MP4CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || MimeTypes.APPLICATION_DVBSUBS.equals(str) || MimeTypes.APPLICATION_PGS.equals(str) || "text/x-exoplayer-cues".equals(str);
        }

        @Override
        public j b(p1 p1Var) {
            String str = p1Var.f24901l;
            if (str != null) {
                switch (str) {
                    case "application/dvbsubs":
                        return new fa.a(p1Var.f24903n);
                    case "application/pgs":
                        return new ga.a();
                    case "application/x-mp4-vtt":
                        return new ma.a();
                    case "text/vtt":
                        return new ma.h();
                    case "application/x-quicktime-tx3g":
                        return new la.a(p1Var.f24903n);
                    case "text/x-ssa":
                        return new ia.a(p1Var.f24903n);
                    case "application/x-mp4-cea-608":
                    case "application/cea-608":
                        return new ea.a(str, p1Var.D, 16000L);
                    case "text/x-exoplayer-cues":
                        return new g();
                    case "application/cea-708":
                        return new ea.c(p1Var.D, p1Var.f24903n);
                    case "application/x-subrip":
                        return new ja.a();
                    case "application/ttml+xml":
                        return new ka.c();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(p1 p1Var);

    j b(p1 p1Var);
}
