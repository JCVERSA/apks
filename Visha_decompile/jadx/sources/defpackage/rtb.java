package defpackage;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.provider.Settings;
import android.util.Log;
import android.view.Window;
import android.view.WindowManager;
import androidx.media3.common.C;
import com.blankj.utilcode.util.Utils;
import com.transsion.magicvideo.data.VideoOpStatus;
import com.transsion.magicvideo.widgets.VideoPlayerMediaView;

public abstract class rtb {
    public static int a = -1;
    public static float b = 1.0f / e();
    public static float c = 1.0f;
    public static float d = 0.5f;
    public static int e = 1;

    public static class a {
        public final int a;
        public final int b;
        public final float c;

        public a(int i, int i2, float f) {
            this.a = i;
            this.b = i2;
            this.c = f;
        }
    }

    public static void a(VideoPlayerMediaView videoPlayerMediaView, boolean z) {
        Log.d("VideoMediaPlayerUtils", "autoPlayPauseOrResume");
        jxb jxbVarF = f(videoPlayerMediaView);
        if (jxbVarF == null) {
            return;
        }
        jxbVarF.e(z);
    }

    public static final float b(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    public static final int c(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    public static final long d(long j, long j2, long j3) {
        return Math.min(Math.max(j, j2), j3);
    }

    public static int e() {
        if (a == -1) {
            try {
                a = maa.b("persist.vendor.bl.max", 255);
            } catch (Exception e2) {
                Log.e("VideoMediaPlayerUtils", "getMaxBriValue " + e2);
                a = 255;
            }
        }
        return a;
    }

    public static jxb f(VideoPlayerMediaView videoPlayerMediaView) {
        if (videoPlayerMediaView == null) {
            return null;
        }
        return videoPlayerMediaView.getPlayer();
    }

    public static int g() {
        int i = e;
        if (i > 0) {
            return i;
        }
        return 1;
    }

    public static float h(Context context) {
        try {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getAttributes().screenBrightness;
            }
            return 0.0f;
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.w("VideoMediaPlayerUtils", "set screen brightness fail", e2);
            return 0.0f;
        }
    }

    public static float i() {
        return j().c;
    }

    public static a j() {
        AudioManager audioManager = (AudioManager) Utils.a().getSystemService("audio");
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        return new a(streamMaxVolume, streamVolume, streamMaxVolume == 0 ? 0.0f : streamVolume / streamMaxVolume);
    }

    public static void k(Context context, VideoOpStatus videoOpStatus) {
        float f = VideoOpStatus.defScreenBrightness;
        try {
            videoOpStatus.mInitLightValue = Settings.System.getInt(context.getContentResolver(), "screen_brightness");
            if (f <= 0.0f || pp3.b) {
                videoOpStatus.mScreenBrightness = videoOpStatus.lightInt2Float();
            } else {
                videoOpStatus.mScreenBrightness = f;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void l(VideoPlayerMediaView videoPlayerMediaView) {
        jxb jxbVarF = f(videoPlayerMediaView);
        if (jxbVarF == null) {
            return;
        }
        jxbVarF.h(true);
    }

    public static void m(int i) {
        if (i > 0) {
            e = i;
        }
    }

    public static float n(Context context) {
        try {
            if (!(context instanceof Activity)) {
                return 0.0f;
            }
            Window window = ((Activity) context).getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.screenBrightness = -1.0f;
            window.setAttributes(attributes);
            return attributes.screenBrightness;
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.w("VideoMediaPlayerUtils", "set screen brightness fail", e2);
            return 0.0f;
        }
    }

    public static void o(VideoPlayerMediaView videoPlayerMediaView, long j) {
        jxb jxbVarF = f(videoPlayerMediaView);
        if (jxbVarF == null) {
            return;
        }
        jxbVarF.f(j);
    }

    public static void p(VideoPlayerMediaView videoPlayerMediaView, int i) {
        if (videoPlayerMediaView == null) {
            return;
        }
        videoPlayerMediaView.setResizeMode(i);
    }

    public static float q(Context context, VideoOpStatus videoOpStatus, float f, boolean z) {
        try {
            if (!(context instanceof Activity)) {
                return 0.0f;
            }
            Window window = ((Activity) context).getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (z) {
                f += videoOpStatus.mScreenBrightness;
            }
            attributes.screenBrightness = b(f, b, c);
            window.setAttributes(attributes);
            return attributes.screenBrightness;
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.w("VideoMediaPlayerUtils", "set screen brightness fail", e2);
            return 0.0f;
        }
    }

    public static void r(VideoPlayerMediaView videoPlayerMediaView, boolean z, boolean z2) {
        jxb jxbVarF = f(videoPlayerMediaView);
        if (jxbVarF == null) {
            return;
        }
        if (!z) {
            jxbVarF.b(true);
            return;
        }
        if (z2 && ((z2 && jxbVarF.getVideoDuration() == jxbVarF.c()) || jxbVarF.a() == 6)) {
            jxbVarF.f(0L);
        }
        jxbVarF.i();
    }

    public static void s(Context context, long j, long j2, VideoOpStatus videoOpStatus) {
        videoOpStatus.mTimePosition = j;
        if (C.TIME_UNSET == j) {
            videoOpStatus.mTimePosition = 0L;
        }
        videoOpStatus.mDuration = j2;
        if (C.TIME_UNSET == j2) {
            videoOpStatus.mDuration = 0L;
        }
        AudioManager audioManager = (AudioManager) Utils.a().getSystemService("audio");
        videoOpStatus.mMusicMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamVolume = audioManager.getStreamVolume(3);
        videoOpStatus.mMusicVolume = streamVolume;
        videoOpStatus.mAudioVolume = (streamVolume * 1.0f) / videoOpStatus.mMusicMaxVolume;
        if (videoOpStatus.mInitLightValue <= 0) {
            k(context, videoOpStatus);
            return;
        }
        float fH = h(context);
        videoOpStatus.mScreenBrightness = fH;
        if (fH < 0.0f) {
            k(context, videoOpStatus);
        }
    }
}
