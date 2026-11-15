package com.transsion.liblan;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Nullable;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.TranAbstractLANEvent;
import com.transsion.liblan.util.HWDecoderUtil;
import java.util.ArrayList;
import java.util.List;

public class TranLibLAN extends LANObject<ITranLibLAN.EventTran> implements ITranLibLAN {
    private static final String TAG = "LAN/TranLibLAN";
    private static boolean sLoaded = false;
    final Context mAppContext;

    public static class EventTran extends TranAbstractLANEvent {
        public EventTran(int i) {
            super(i);
        }
    }

    public TranLibLAN(Context context, List<String> list) {
        this.mAppContext = context.getApplicationContext();
        loadLibraries();
        list = list == null ? new ArrayList<>() : list;
        boolean z = true;
        boolean z2 = true;
        for (String str : list) {
            z = str.startsWith("--aout=") ? false : z;
            z2 = str.startsWith("--android-display-chroma") ? false : z2;
            if (!z && !z2) {
                break;
            }
        }
        if (z || z2) {
            if (z) {
                if (HWDecoderUtil.getAudioOutputFromDevice() == HWDecoderUtil.AudioOutput.OPENSLES) {
                    list.add("--aout=opensles");
                } else {
                    list.add("--aout=android_audiotrack");
                }
            }
            if (z2) {
                list.add("--android-display-chroma");
                list.add("RV16");
            }
        }
        nativeNew((String[]) list.toArray(new String[list.size()]), context.getDir("vlc", 0).getAbsolutePath());
    }

    public static native String changeset();

    public static native String compiler();

    public static synchronized void loadLibraries() {
        if (sLoaded) {
            return;
        }
        sLoaded = true;
        try {
            System.loadLibrary("c++_shared");
            System.loadLibrary("lan");
            System.loadLibrary("lanjni");
        } catch (SecurityException e) {
            Log.e(TAG, "Encountered a security issue when loading lanjni library: " + e);
            System.exit(1);
        } catch (UnsatisfiedLinkError e2) {
            Log.e(TAG, "Can't load lanjni library: " + e2);
            System.exit(1);
        }
    }

    public static native int majorLibVersion();

    private native void nativeNew(String[] strArr, String str);

    private native void nativeRelease();

    private native void nativeSetUserAgent(String str, String str2);

    public static native String version();

    @Override
    public Context getAppContext() {
        return this.mAppContext;
    }

    @Override
    public long getInstance() {
        return super.getInstance();
    }

    @Override
    public ITranLibLAN getTranLibLAN() {
        return super.getTranLibLAN();
    }

    @Override
    public boolean isReleased() {
        return super.isReleased();
    }

    @Override
    public ITranLibLAN.EventTran onEventNative(int i, long j, long j2, float f, @Nullable String str) {
        return null;
    }

    @Override
    public void onReleaseNativeItem() {
        nativeRelease();
    }

    public void setUserAgent(String str, String str2) {
        nativeSetUserAgent(str, str2);
    }

    public TranLibLAN(Context context) {
        this(context, null);
    }
}
