package defpackage;

import androidx.media3.common.MimeTypes;
import com.google.android.exoplayer2.k;

public interface do6 {
    public static final do6 a = new a();

    public class a implements do6 {
        @Override
        public boolean a(k kVar) {
            String str = kVar.m;
            return MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || MimeTypes.APPLICATION_ICY.equals(str) || MimeTypes.APPLICATION_AIT.equals(str);
        }

        @Override
        public co6 b(k kVar) {
            String str = kVar.m;
            if (str != null) {
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new re();
                    case "application/x-icy":
                        return new ix4();
                    case "application/id3":
                        return new lx4();
                    case "application/x-emsg":
                        return new ce3();
                    case "application/x-scte35":
                        return new fv9();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(k kVar);

    co6 b(k kVar);
}
