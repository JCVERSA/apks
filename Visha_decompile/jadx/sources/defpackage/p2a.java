package defpackage;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.text.cea.Cea608Decoder;
import com.google.android.exoplayer2.k;
import org.mozilla.classfile.ByteCode;

public interface p2a {
    public static final p2a a = new a();

    public class a implements p2a {
        @Override
        public boolean a(k kVar) {
            String str = kVar.m;
            return "text/vtt".equals(str) || MimeTypes.TEXT_SSA.equals(str) || MimeTypes.APPLICATION_TTML.equals(str) || MimeTypes.APPLICATION_MP4VTT.equals(str) || "application/x-subrip".equals(str) || MimeTypes.APPLICATION_TX3G.equals(str) || MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_MP4CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || MimeTypes.APPLICATION_DVBSUBS.equals(str) || MimeTypes.APPLICATION_PGS.equals(str) || "text/x-exoplayer-cues".equals(str);
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @Override
        public o2a b(k kVar) {
            String str = kVar.m;
            if (str != null) {
                byte b = -1;
                switch (str.hashCode()) {
                    case -1351681404:
                        if (str.equals(MimeTypes.APPLICATION_DVBSUBS)) {
                            b = 0;
                        }
                        break;
                    case -1248334819:
                        if (str.equals(MimeTypes.APPLICATION_PGS)) {
                            b = 1;
                        }
                        break;
                    case -1026075066:
                        if (str.equals(MimeTypes.APPLICATION_MP4VTT)) {
                            b = 2;
                        }
                        break;
                    case -1004728940:
                        if (str.equals("text/vtt")) {
                            b = 3;
                        }
                        break;
                    case 691401887:
                        if (str.equals(MimeTypes.APPLICATION_TX3G)) {
                            b = 4;
                        }
                        break;
                    case 822864842:
                        if (str.equals(MimeTypes.TEXT_SSA)) {
                            b = 5;
                        }
                        break;
                    case 930165504:
                        if (str.equals(MimeTypes.APPLICATION_MP4CEA608)) {
                            b = 6;
                        }
                        break;
                    case 1201784583:
                        if (str.equals("text/x-exoplayer-cues")) {
                            b = 7;
                        }
                        break;
                    case 1566015601:
                        if (str.equals(MimeTypes.APPLICATION_CEA608)) {
                            b = 8;
                        }
                        break;
                    case 1566016562:
                        if (str.equals(MimeTypes.APPLICATION_CEA708)) {
                            b = 9;
                        }
                        break;
                    case 1668750253:
                        if (str.equals("application/x-subrip")) {
                            b = 10;
                        }
                        break;
                    case 1693976202:
                        if (str.equals(MimeTypes.APPLICATION_TTML)) {
                            b = ByteCode.T_LONG;
                        }
                        break;
                }
                switch (b) {
                    case 0:
                        return new z33(kVar.o);
                    case 1:
                        return new y08();
                    case 2:
                        return new rr6();
                    case 3:
                        return new ajc();
                    case 4:
                        return new bbb(kVar.o);
                    case 5:
                        return new sv9(kVar.o);
                    case 6:
                    case 8:
                        return new cs0(str, kVar.E, Cea608Decoder.MIN_DATA_CHANNEL_TIMEOUT_MS);
                    case 7:
                        return new ri3();
                    case 9:
                        return new es0(kVar.E, kVar.o);
                    case 10:
                        return new v1a();
                    case 11:
                        return new tab();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(k kVar);

    o2a b(k kVar);
}
