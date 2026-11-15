package io.github.anilbeesetti.nextlib.media3ext.ffdecoder;

import androidx.media3.common.u;
import androidx.media3.common.util.q;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;

public abstract class FfmpegLibrary {

    private static final q f62286a;

    private static String f62287b;

    private static int f62288c;

    class a extends q {
        a(String... strArr) {
            super(strArr);
        }

        @Override
        protected void b(String str) {
            System.loadLibrary(str);
        }
    }

    static {
        u.a("media3.decoder.ffmpeg");
        f62286a = new a("media3ext");
        f62288c = -1;
    }

    static String a(String str) {
        str.hashCode();
        switch (str) {
            case "audio/eac3-joc":
            case "audio/eac3":
                return "eac3";
            case "video/hevc":
                return "hevc";
            case "video/mpeg":
                return "mpegvideo";
            case "audio/amr-wb":
                return "amrwb";
            case "audio/vnd.dts":
            case "audio/vnd.dts.hd":
                return "dca";
            case "audio/vorbis":
                return "vorbis";
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "audio/mpeg":
                return "mp3";
            case "audio/mp4a-latm":
                return RecorderConstants.FORMAT_AAC;
            case "video/mpeg2":
                return "mpeg2video";
            case "audio/ac3":
                return "ac3";
            case "video/avc":
                return "h264";
            case "audio/3gpp":
                return "amrnb";
            case "audio/alac":
                return "alac";
            case "audio/flac":
                return "flac";
            case "audio/opus":
                return "opus";
            case "audio/true-hd":
                return "truehd";
            case "video/x-vnd.on2.vp8":
                return "libvpx";
            case "video/x-vnd.on2.vp9":
                return "libvpx-vp9";
            case "audio/g711-alaw":
                return "pcm_alaw";
            case "audio/g711-mlaw":
                return "pcm_mulaw";
            default:
                return null;
        }
    }

    public static int b() {
        if (!d()) {
            return -1;
        }
        if (f62288c == -1) {
            f62288c = ffmpegGetInputBufferPaddingSize();
        }
        return f62288c;
    }

    public static String c() {
        if (!d()) {
            return null;
        }
        if (f62287b == null) {
            f62287b = ffmpegGetVersion();
        }
        return f62287b;
    }

    public static boolean d() {
        return f62286a.a();
    }

    public static boolean e(String str) {
        String strA;
        if (!d() || (strA = a(str)) == null) {
            return false;
        }
        if (ffmpegHasDecoder(strA)) {
            return true;
        }
        androidx.media3.common.util.u.h("FfmpegLibrary", "No " + strA + " decoder available. Check the FFmpeg build configuration.");
        return false;
    }

    private static native int ffmpegGetInputBufferPaddingSize();

    private static native String ffmpegGetVersion();

    private static native boolean ffmpegHasDecoder(String str);
}
