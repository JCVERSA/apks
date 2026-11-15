package com.hunantv.media.global;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.utils.Size;
import com.hunantv.media.utils.NumericUtil;
import java.util.ArrayList;

public class MgtvPlayerCapabilities {
    private static AlphaCapabilities sAlphaCapabilities;
    public static ExDef sExDef = new ExDef();

    public static class AlphaCapabilities {
        private Size h264MaxSize;
        private Size h265MaxSize;

        public AlphaCapabilities(ExDef exDef) {
            if (exDef != null) {
                try {
                    this.h264MaxSize = Size.parseSize(exDef.h264.sdr.max_def);
                    this.h265MaxSize = Size.parseSize(exDef.h265.sdr.max_def);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        public Size getH264MaxSize() {
            return this.h264MaxSize;
        }

        public Size getH265MaxSize() {
            return this.h265MaxSize;
        }
    }

    public static class ExDef {
        public H264 h264;
        public H265 h265;
        public String sceen_fps;
        public String sceen_size;
        public String screen_hdr_type;
        public String support = "1";
        public String support_wanos;

        public static class H264 {
            public String support = "0";
            Sdr sdr = new Sdr();
            Hdr hdr = new Hdr();

            public String toString() {
                return "H264{support='" + this.support + "', sdr=" + this.sdr + ", hdr=" + this.hdr + '}';
            }
        }

        public static class H265 {
            public String support = "0";
            Sdr sdr = new Sdr();
            Hdr hdr = new Hdr();

            public String toString() {
                return "H265{support='" + this.support + "', sdr=" + this.sdr + ", hdr=" + this.hdr + '}';
            }
        }

        public static class Hdr {
            public String support = "0";
            public String bit_depth = "10";
            public String max_def = "0x0";
            public String max_def_fps = "0";

            public String toString() {
                return "Hdr{support='" + this.support + "', bit_depth='" + this.bit_depth + "', max_def='" + this.max_def + "', max_def_fps='" + this.max_def_fps + "'}";
            }
        }

        public static class Sdr {
            public String max_def = "0x0";
            public String max_def_fps = "0";

            public String toString() {
                return "Sdr{max_def='" + this.max_def + "', max_def_fps='" + this.max_def_fps + "'}";
            }
        }

        public String toString() {
            return "ExDef{support='" + this.support + "', sceen_size='" + this.sceen_size + "', sceen_fps='" + this.sceen_fps + "', screen_hdr_type='" + this.screen_hdr_type + "', support_wanos='" + this.support_wanos + "', h264=" + this.h264 + ", h265=" + this.h265 + '}';
        }
    }

    public static synchronized void fillScreenInfo(Context context) {
        if (context == null) {
            return;
        }
        try {
            ExDef exDef = sExDef;
            exDef.sceen_size = "0x0";
            exDef.sceen_fps = "0";
            exDef.screen_hdr_type = "0";
            exDef.support_wanos = NetPlayConfig.isWanosAudioInnerEnable() ? "1" : "0";
            try {
                Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay.getRealMetrics(displayMetrics);
                int i = displayMetrics.widthPixels;
                int i2 = displayMetrics.heightPixels;
                int refreshRate = (int) defaultDisplay.getRefreshRate();
                sExDef.sceen_size = i + "x" + i2;
                sExDef.sceen_fps = refreshRate + "";
                int[] supportedHdrTypes = defaultDisplay.getHdrCapabilities().getSupportedHdrTypes();
                if (supportedHdrTypes != null) {
                    for (int i3 : supportedHdrTypes) {
                        if (i3 == 2 || i3 == 4) {
                            sExDef.screen_hdr_type = "1";
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static int getAVC1080PMaxFps() {
        ArrayList<MediaCodecHelp.CodecPerformance> decoderPerformanceList = MediaCodecHelp.getDecoderPerformanceList();
        if (decoderPerformanceList != null) {
            for (int i = 0; i < decoderPerformanceList.size(); i++) {
                if (decoderPerformanceList.get(i).mimeType.equals(MediaCodecHelp.AMIME_VIDEO_AVC)) {
                    return NumericUtil.parseInt(decoderPerformanceList.get(i).max_fps_1080p);
                }
            }
        }
        return 0;
    }

    public static int getAVC4KMaxFps() {
        ArrayList<MediaCodecHelp.CodecPerformance> decoderPerformanceList = MediaCodecHelp.getDecoderPerformanceList();
        if (decoderPerformanceList != null) {
            for (int i = 0; i < decoderPerformanceList.size(); i++) {
                if (decoderPerformanceList.get(i).mimeType.equals(MediaCodecHelp.AMIME_VIDEO_AVC)) {
                    return NumericUtil.parseInt(decoderPerformanceList.get(i).max_fps_4k);
                }
            }
        }
        return 0;
    }

    public static synchronized AlphaCapabilities getAlphaCapabilities(Context context) {
        try {
            if (sAlphaCapabilities == null) {
                sAlphaCapabilities = new AlphaCapabilities(getExDef(context));
            }
        } catch (Throwable th) {
            throw th;
        }
        return sAlphaCapabilities;
    }

    public static synchronized ExDef getExDef(Context context) {
        try {
            sExDef.support = NetPlayConfig.isExDefEnable() ? "1" : "0";
            ExDef exDef = sExDef;
            if (exDef.sceen_size == null || exDef.sceen_fps == null || exDef.screen_hdr_type == null) {
                fillScreenInfo(context);
            }
            ExDef exDef2 = sExDef;
            if (exDef2.h264 == null) {
                exDef2.h264 = getH264Info();
            }
            ExDef exDef3 = sExDef;
            if (exDef3.h265 == null) {
                exDef3.h265 = getH265Info();
            }
            DebugLog.i("MgtvCore", "sExDef: " + sExDef.toString());
        } catch (Throwable th) {
            throw th;
        }
        return sExDef;
    }

    public static synchronized ExDef.H264 getH264Info() {
        ExDef.H264 h264;
        try {
            h264 = new ExDef.H264();
            ArrayList<MediaCodecHelp.CodecPerformance> decoderPerformanceList = MediaCodecHelp.getDecoderPerformanceList();
            for (int i = 0; i < decoderPerformanceList.size(); i++) {
                if (decoderPerformanceList.get(i).mimeType.equals(MediaCodecHelp.AMIME_VIDEO_AVC)) {
                    h264.support = "1";
                    h264.sdr.max_def = decoderPerformanceList.get(i).max_def;
                    h264.sdr.max_def_fps = decoderPerformanceList.get(i).max_def_fps;
                    h264.hdr.support = (decoderPerformanceList.get(i).hdr_support && NetPlayConfig.isHdrOpen()) ? "1" : "0";
                    if ("1".equals(h264.hdr.support)) {
                        h264.hdr.max_def = decoderPerformanceList.get(i).max_def;
                        h264.hdr.max_def_fps = decoderPerformanceList.get(i).max_def_fps;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return h264;
    }

    public static synchronized ExDef.H265 getH265Info() {
        ExDef.H265 h265;
        try {
            h265 = new ExDef.H265();
            ArrayList<MediaCodecHelp.CodecPerformance> decoderPerformanceList = MediaCodecHelp.getDecoderPerformanceList();
            for (int i = 0; i < decoderPerformanceList.size(); i++) {
                if (decoderPerformanceList.get(i).mimeType.equals(MediaCodecHelp.AMIME_VIDEO_HEVC)) {
                    h265.support = "1";
                    h265.sdr.max_def = decoderPerformanceList.get(i).max_def;
                    h265.sdr.max_def_fps = decoderPerformanceList.get(i).max_def_fps;
                    h265.hdr.support = (decoderPerformanceList.get(i).hdr_support && NetPlayConfig.isHdrOpen()) ? "1" : "0";
                    if ("1".equals(h265.hdr.support)) {
                        h265.hdr.max_def = decoderPerformanceList.get(i).max_def;
                        h265.hdr.max_def_fps = decoderPerformanceList.get(i).max_def_fps;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return h265;
    }

    public static int getHEVC1080PMaxFps() {
        ArrayList<MediaCodecHelp.CodecPerformance> decoderPerformanceList = MediaCodecHelp.getDecoderPerformanceList();
        if (decoderPerformanceList != null) {
            for (int i = 0; i < decoderPerformanceList.size(); i++) {
                if (decoderPerformanceList.get(i).mimeType.equals(MediaCodecHelp.AMIME_VIDEO_HEVC)) {
                    return NumericUtil.parseInt(decoderPerformanceList.get(i).max_fps_1080p);
                }
            }
        }
        return 0;
    }

    public static int getHEVC4KMaxFps() {
        ArrayList<MediaCodecHelp.CodecPerformance> decoderPerformanceList = MediaCodecHelp.getDecoderPerformanceList();
        if (decoderPerformanceList != null) {
            for (int i = 0; i < decoderPerformanceList.size(); i++) {
                if (decoderPerformanceList.get(i).mimeType.equals(MediaCodecHelp.AMIME_VIDEO_HEVC)) {
                    return NumericUtil.parseInt(decoderPerformanceList.get(i).max_fps_4k);
                }
            }
        }
        return 0;
    }
}
