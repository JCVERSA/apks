package com.transsion.magicvideo.data;

import android.content.Context;
import android.provider.Settings;
import defpackage.rtb;
import defpackage.yy5;

public class VideoOpStatus {
    public static final int MUSIC_TYPE = 3;
    public static final int RESIZE_MODE_FILL = 3;
    public static final int RESIZE_MODE_FIT = 0;
    public static final int RESIZE_MODE_FIXED_HEIGHT = 2;
    public static final int RESIZE_MODE_FIXED_WIDTH = 1;
    public static final int RESIZE_MODE_ZOOM = 4;
    public static float defScreenBrightness = -1.0f;
    public float mAudioVolume;
    public long mDuration;
    public int mInitMusicVolume;
    public long mMovePosition;
    public int mMusicMaxVolume;
    public int mMusicVolume;
    public boolean mPlayWhenReady;
    public int mPlaybackState;
    public float mScreenBrightness;
    public long mTimePosition;
    public float mCurrentScale = 1.0f;
    public float mBeginScale = 1.0f;
    public int mInitLightValue = -1;

    public static void initDefBrightness(Context context) {
        try {
            defScreenBrightness = (Settings.System.getInt(context.getContentResolver(), "screen_brightness") * 1.0f) / rtb.e();
        } catch (Settings.SettingNotFoundException e) {
            yy5.b(e.getMessage());
        }
    }

    public void initMusicVolumeForDrag() {
        this.mInitMusicVolume = this.mMusicVolume;
    }

    public float lightInt2Float() {
        return (this.mInitLightValue * 1.0f) / rtb.e();
    }

    public long newPosition() {
        return this.mTimePosition;
    }

    public VideoOpStatus touchDown() {
        return this;
    }
}
