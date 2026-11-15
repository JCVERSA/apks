package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

public interface c {

    public static final c f24778a = new a();

    class a implements c {
        a() {
        }

        @Override
        public boolean a(p1 p1Var) {
            String str = p1Var.f24901l;
            return MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override
        public b b(p1 p1Var) {
            String str = p1Var.f24901l;
            if (str != null) {
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new u9.a();
                    case "application/x-icy":
                        return new com.google.android.exoplayer2.metadata.icy.a();
                    case "application/id3":
                        return new com.google.android.exoplayer2.metadata.id3.b();
                    case "application/x-emsg":
                        return new com.google.android.exoplayer2.metadata.emsg.a();
                    case "application/x-scte35":
                        return new com.google.android.exoplayer2.metadata.scte35.a();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(p1 p1Var);

    b b(p1 p1Var);
}
