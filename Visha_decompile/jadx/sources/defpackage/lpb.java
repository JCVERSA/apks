package defpackage;

import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.media.MediaMetadataRetriever;
import android.media.MediaMuxer;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.media3.common.MimeTypes;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.playercommon.R;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.ToastUtils;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;

public class lpb {
    public static final String n = "lpb";
    public ii1 a;
    public double b;
    public volatile boolean c;
    public volatile boolean d;
    public MediaCodec.BufferInfo e;
    public MediaExtractor f;
    public int g;
    public ByteBuffer h;
    public int i;
    public MediaMuxer k;
    public HashMap l;
    public int j = -1;
    public long m = 1000000;

    public static int a(int i, int i2, int i3, int i4) {
        if (i2 == 0 || i == 0 || i4 == 0 || i3 == 0) {
            return -1;
        }
        int i5 = i * i2;
        int i6 = i3 * i4;
        if (i5 > i6) {
            return 1;
        }
        return i5 < i6 ? -1 : 0;
    }

    public static int[] b(String str) {
        String lowerCase = str.toLowerCase();
        lowerCase.hashCode();
        switch (lowerCase) {
            case "2k":
                return new int[]{2560, 1440};
            case "4k":
                return new int[]{4096, 2176};
            case "8k":
                return new int[]{8192, 4320};
            case "240p":
                return new int[]{426, 240};
            case "360p":
                return new int[]{640, TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL};
            case "480p":
                return new int[]{854, 480};
            case "720p":
                return new int[]{1280, 720};
            case "1080p":
                return new int[]{1920, 1080};
            default:
                return new int[]{0, 0};
        }
    }

    public static int f(String str) {
        try {
            return Integer.parseInt(str.replaceAll("[^0-9]", ""));
        } catch (Exception unused) {
            return 0;
        }
    }

    public static boolean g() {
        if (!ConvertingTaskManager.j().h()) {
            return false;
        }
        ToastUtils.s(R.string.converting_reached_max_tip);
        return true;
    }

    public static boolean h(MediaItem mediaItem) {
        if (!i(mediaItem)) {
            ToastUtils.s(R.string.trans_mp3_error1);
            return true;
        }
        if (ConvertingTaskManager.j().o(mediaItem)) {
            ToastUtils.s(R.string.have_in_converting_list);
            return true;
        }
        if (ConvertingTaskManager.j().p(mediaItem) || !ConvertingTaskManager.j().q()) {
            return false;
        }
        ToastUtils.s(R.string.reached_convert_max_num);
        return true;
    }

    public static boolean i(MediaItem mediaItem) {
        if (mediaItem == null) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        if (pp3.j()) {
            return !mediaItem.isYoutubeUrl;
        }
        arrayList.add(MimeTypes.VIDEO_MP4);
        arrayList.add(MimeTypes.VIDEO_WEBM);
        arrayList.add("video/3gpp");
        return arrayList.contains(mediaItem.mineType) && !mediaItem.isYoutubeUrl;
    }

    public boolean c(String str, String str2, String str3, int i, int i2, boolean z, boolean z2) {
        boolean z3;
        int integer;
        MediaExtractor mediaExtractor = new MediaExtractor();
        this.f = mediaExtractor;
        this.i = i2;
        try {
            mediaExtractor.setDataSource(str2);
            int trackCount = this.f.getTrackCount();
            File file = new File(BaseConstant.i);
            if (!file.exists()) {
                file.mkdirs();
            }
            if ("video/3gpp".equals(str)) {
                this.k = new MediaMuxer(str3, 2);
            } else if (MimeTypes.VIDEO_WEBM.equals(str)) {
                this.k = new MediaMuxer(str3, 1);
            } else {
                this.k = new MediaMuxer(str3, 0);
            }
            this.l = new HashMap(trackCount);
            int i3 = -1;
            boolean z4 = false;
            for (int i4 = 0; i4 < trackCount; i4++) {
                MediaFormat trackFormat = this.f.getTrackFormat(i4);
                String string = trackFormat.getString("mime");
                if (string.startsWith("audio/") && z) {
                    z4 = true;
                    z3 = true;
                } else {
                    z3 = string.startsWith("video/") && z2;
                }
                if (z3) {
                    this.f.selectTrack(i4);
                    try {
                        this.l.put(Integer.valueOf(i4), Integer.valueOf(this.k.addTrack(trackFormat)));
                        if (trackFormat.containsKey(com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_INPUT_SIZE) && (integer = trackFormat.getInteger(com.hunantv.media.player.subtitle.MediaFormat.KEY_MAX_INPUT_SIZE)) > i3) {
                            i3 = integer;
                        }
                    } catch (Exception e) {
                        Log.e("VideoConvertUtils", e.getMessage());
                        e(e);
                        return false;
                    }
                }
            }
            Log.d("VideoConvertUtils", "convertVideo isHasAudio:" + z4);
            if (!z4 && z) {
                e(new RuntimeException("Source not contain audio!"));
                return false;
            }
            if (i3 < 0) {
                i3 = 1048576;
            }
            int i5 = i3;
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                try {
                    mediaMetadataRetriever.setDataSource(str2);
                    String strExtractMetadata = mediaMetadataRetriever.extractMetadata(9);
                    if (!TextUtils.isEmpty(strExtractMetadata)) {
                        this.m = Long.valueOf(strExtractMetadata).longValue() * 1000;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                try {
                    mediaMetadataRetriever.close();
                } catch (Exception unused) {
                }
                if (i > 0) {
                    this.f.seekTo(i * 1000, 2);
                }
                this.h = ByteBuffer.allocate(i5);
                this.e = new MediaCodec.BufferInfo();
                return d(true);
            } catch (Throwable th) {
                try {
                    mediaMetadataRetriever.close();
                } catch (Exception unused2) {
                }
                throw th;
            }
        } catch (IOException e3) {
            Log.e("VideoConvertUtils", e3.getMessage());
            e(e3);
            return false;
        }
    }

    public boolean d(boolean z) {
        try {
            if (z) {
                try {
                    this.k.start();
                } catch (IllegalStateException e) {
                    Log.e("VideoConvertUtils", "The source video file is malformed");
                    e(e);
                    if (!this.d) {
                        this.k.release();
                    }
                    return false;
                } catch (Exception e2) {
                    Log.e("VideoConvertUtils", e2.getMessage());
                    e(e2);
                    if (!this.d) {
                        this.k.release();
                    }
                    return false;
                }
            }
            int trackCount = this.f.getTrackCount();
            if (this.l == null) {
                this.l = new HashMap(trackCount);
            }
            while (!this.d && !this.c) {
                MediaCodec.BufferInfo bufferInfo = this.e;
                int i = this.g;
                bufferInfo.offset = i;
                bufferInfo.size = this.f.readSampleData(this.h, i);
                MediaCodec.BufferInfo bufferInfo2 = this.e;
                if (bufferInfo2.size >= 0) {
                    bufferInfo2.presentationTimeUs = this.f.getSampleTime();
                    int i2 = this.i;
                    if (i2 > 0 && this.e.presentationTimeUs > i2 * 1000) {
                        Log.d("VideoConvertUtils", "The current sample is over the trim end time.");
                        break;
                    }
                    if (Build.VERSION.SDK_INT >= 30 || this.e.presentationTimeUs >= 0) {
                        this.e.flags = this.f.getSampleFlags();
                        int sampleTrackIndex = this.f.getSampleTrackIndex();
                        this.j = sampleTrackIndex;
                        this.k.writeSampleData(((Integer) this.l.get(Integer.valueOf(sampleTrackIndex))).intValue(), this.h, this.e);
                    }
                    this.f.advance();
                    ii1 ii1Var = this.a;
                    if (ii1Var != null) {
                        double d = this.e.presentationTimeUs / this.m;
                        double d2 = this.b;
                        if (d > d2) {
                            this.b = d;
                        } else {
                            d = d2;
                        }
                        this.b = d;
                        ii1Var.onExportProgress(d);
                    }
                } else {
                    Log.d("VideoConvertUtils", "Saw input EOS. " + this.f.getSampleTime());
                    this.e.size = 0;
                    break;
                }
            }
            if (!this.d) {
                this.k.stop();
            }
            if (!this.d) {
                this.k.release();
            }
            if (this.a == null || this.d || !this.c) {
                return !this.d;
            }
            this.a.onExportCanceled();
            return false;
        } catch (Throwable th) {
            if (!this.d) {
                this.k.release();
            }
            throw th;
        }
    }

    public final void e(Throwable th) {
        ii1 ii1Var = this.a;
        if (ii1Var != null) {
            ii1Var.onExportFailed(th);
        }
        h16.d("vd_vmore_tomp3_statue", "status", th.getMessage());
    }

    public void j(ii1 ii1Var) {
        this.a = ii1Var;
    }

    public void k() {
        this.d = false;
        this.c = true;
        try {
            j(null);
            HashMap map = this.l;
            if (map != null) {
                map.clear();
                this.l = null;
            }
            ByteBuffer byteBuffer = this.h;
            if (byteBuffer != null) {
                byteBuffer.clear();
                this.h = null;
            }
            MediaMuxer mediaMuxer = this.k;
            if (mediaMuxer != null) {
                mediaMuxer.release();
                this.k = null;
            }
        } catch (Exception e) {
            Log.e(n, "stopConvert failed:" + e.getMessage());
        }
    }
}
