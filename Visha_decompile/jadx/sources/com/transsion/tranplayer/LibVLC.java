package com.transsion.tranplayer;

import android.content.Context;
import android.util.Log;
import com.transsion.tranplayer.util.HWDecoderUtil;
import java.util.ArrayList;

public class LibVLC extends VLCObject<Event> {
    private static final String TAG = "VLC/LibVLC";
    private static boolean ffmpegLoadOK = false;
    private static boolean sLoaded = false;
    final Context mAppContext;

    public static class Event extends VLCEvent {
        public Event(int i) {
            super(i);
        }
    }

    public LibVLC(Context context, ArrayList<String> arrayList) {
        this.mAppContext = context.getApplicationContext();
        loadLibraries();
        arrayList = arrayList == null ? new ArrayList<>() : arrayList;
        boolean z = true;
        boolean z2 = true;
        for (String str : arrayList) {
            z = str.startsWith("--aout=") ? false : z;
            z2 = str.startsWith("--android-display-chroma") ? false : z2;
            if (!z && !z2) {
                break;
            }
        }
        if (z || z2) {
            if (z) {
                if (HWDecoderUtil.getAudioOutputFromDevice() == HWDecoderUtil.AudioOutput.OPENSLES) {
                    arrayList.add("--aout=opensles");
                } else {
                    arrayList.add("--aout=android_audiotrack");
                }
            }
            if (z2) {
                arrayList.add("--android-display-chroma");
                arrayList.add("RV16");
            }
        }
        if (ffmpegLoadOK) {
            arrayList.add("--ffmpegloadOK");
        }
        nativeNew((String[]) arrayList.toArray(new String[arrayList.size()]), context.getDir("vlc", 0).getAbsolutePath());
    }

    public static synchronized void loadLibraries() {
        if (sLoaded) {
            ffmpegLoadOK = true;
            return;
        }
        sLoaded = true;
        try {
            System.loadLibrary("vlcffmpeg");
            System.loadLibrary("vlc");
            System.loadLibrary("vlcjni");
        } catch (SecurityException e) {
            Log.e(TAG, "Encountered a security issue when loading vlcjni library: " + e);
            System.exit(1);
        } catch (UnsatisfiedLinkError e2) {
            Log.e(TAG, "Can't load vlcjni library: " + e2);
            System.exit(1);
        }
    }

    private native void nativeNew(String[] strArr, String str);

    private native void nativeRelease();

    private native void nativeSetUserAgent(String str, String str2);

    public native String changeset();

    public native String compiler();

    public boolean getFFmpegLoadState() {
        return ffmpegLoadOK;
    }

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    @Override
    public Event onEventNative(int i, long j, long j2, long j3, long j4, float f, String str) {
        return null;
    }

    @Override
    public void onReleaseNative() {
        nativeRelease();
    }

    @Override
    public void setPinPVideoMode(boolean z) {
        super.setPinPVideoMode(z);
    }

    public void setUserAgent(String str, String str2) {
        nativeSetUserAgent(str, str2);
    }

    public native String version();

    public LibVLC(Context context) {
        this(context, null);
    }
}
