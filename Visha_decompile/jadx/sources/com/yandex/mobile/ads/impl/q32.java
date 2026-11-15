package com.yandex.mobile.ads.impl;

import androidx.media3.common.MimeTypes;
import org.mozilla.classfile.ByteCode;

public interface q32 {
    public static final q32 a = new a();

    public class a implements q32 {
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final o32 a(jc0 jc0Var) {
            String str = jc0Var.m;
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
                        return new u40(jc0Var.o);
                    case 1:
                        return new wg1();
                    case 2:
                        return new c21();
                    case 3:
                        return new dk2();
                    case 4:
                        return new x72(jc0Var.o);
                    case 5:
                        return new f22(jc0Var.o);
                    case 6:
                    case 8:
                        return new zn(str, jc0Var.E);
                    case 7:
                        return new j70();
                    case 9:
                        return new ao(jc0Var.E, jc0Var.o);
                    case 10:
                        return new l32();
                    case 11:
                        return new r72();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }

        public final boolean b(jc0 jc0Var) {
            String str = jc0Var.m;
            return "text/vtt".equals(str) || MimeTypes.TEXT_SSA.equals(str) || MimeTypes.APPLICATION_TTML.equals(str) || MimeTypes.APPLICATION_MP4VTT.equals(str) || "application/x-subrip".equals(str) || MimeTypes.APPLICATION_TX3G.equals(str) || MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_MP4CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str) || MimeTypes.APPLICATION_DVBSUBS.equals(str) || MimeTypes.APPLICATION_PGS.equals(str) || "text/x-exoplayer-cues".equals(str);
        }
    }
}
