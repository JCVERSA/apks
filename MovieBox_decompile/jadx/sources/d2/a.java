package d2;

import androidx.media3.common.r;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import y2.h;

public interface a {

    public static final a f58835a = new C0700a();

    class C0700a implements a {
        C0700a() {
        }

        @Override
        public boolean a(r rVar) {
            String str = rVar.f9849o;
            return MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override
        public t2.a b(r rVar) {
            String str = rVar.f9849o;
            if (str != null) {
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new u2.b();
                    case "application/x-icy":
                        return new x2.a();
                    case "application/id3":
                        return new h();
                    case "application/x-emsg":
                        return new v2.b();
                    case "application/x-scte35":
                        return new a3.c();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(r rVar);

    t2.a b(r rVar);
}
