package com.transsion.hubsdk.aosp.media;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.RemoteException;
import android.util.ArrayMap;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.os.audio.IAudioModeChangeListener;
import defpackage.ur1;
import java.lang.reflect.Method;

public class TranAospAudioManagerExt {
    private AudioManager mAudioManager;
    private Context mContext;
    private final ArrayMap<ITranAospVolumeGroupChangedCallback, AospVolumeGroupChangedCallbackExt> mObserver = new ArrayMap<>();

    public class AospAudioModeChangeListenerExt extends IAudioModeChangeListener.Stub {
        ITranAospAudioModeChangeCallbackExt callback;

        public AospAudioModeChangeListenerExt(ITranAospAudioModeChangeCallbackExt iTranAospAudioModeChangeCallbackExt) {
            this.callback = iTranAospAudioModeChangeCallbackExt;
        }

        public void onAudioModeChange(int i, String str) throws RemoteException {
            ITranAospAudioModeChangeCallbackExt iTranAospAudioModeChangeCallbackExt = this.callback;
            if (iTranAospAudioModeChangeCallbackExt != null) {
                iTranAospAudioModeChangeCallbackExt.onAudioModeChange(i, str);
            }
        }
    }

    public class AospVolumeGroupChangedCallbackExt extends AudioManager.VolumeGroupCallback {
        ITranAospVolumeGroupChangedCallback mCallback;

        public AospVolumeGroupChangedCallbackExt(ITranAospVolumeGroupChangedCallback iTranAospVolumeGroupChangedCallback) {
            this.mCallback = iTranAospVolumeGroupChangedCallback;
        }

        public void onAudioVolumeGroupChanged(int i, int i2) {
            ITranAospVolumeGroupChangedCallback iTranAospVolumeGroupChangedCallback = this.mCallback;
            if (iTranAospVolumeGroupChangedCallback != null) {
                iTranAospVolumeGroupChangedCallback.onAudioVolumeGroupChanged(i, i2);
            }
        }
    }

    public interface ITranAospAudioModeChangeCallbackExt {
        void onAudioModeChange(int i, String str);
    }

    public interface ITranAospVolumeGroupChangedCallback {
        void onAudioVolumeGroupChanged(int i, int i2);
    }

    public TranAospAudioManagerExt(Context context) {
        this.mContext = context;
    }

    public void registerAudioModeChangeListeners(String str, ITranAospAudioModeChangeCallbackExt iTranAospAudioModeChangeCallbackExt) {
        Method method;
        try {
            Class<?> cls = Class.forName("com.transsion.os.audio.IAudioModeChangeListener$Stub");
            Class cls2 = TranDoorMan.getClass("com.transsion.os.audio.AudioModeHelper");
            if (cls2 == null) {
                return;
            }
            AospAudioModeChangeListenerExt aospAudioModeChangeListenerExt = new AospAudioModeChangeListenerExt(iTranAospAudioModeChangeCallbackExt);
            this.mContext.createPackageContext(str, 3);
            Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls2, "getInstance", new Class[0]), null, new Object[0]);
            if (objInvokeMethod == null || (method = TranDoorMan.getMethod(cls2, "registerAudioModeChangeListeners", cls, Context.class)) == null) {
                return;
            }
            TranDoorMan.invokeMethod(method, objInvokeMethod, aospAudioModeChangeListenerExt, this.mContext);
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException e) {
            TranSdkLog.e("TranAospAudioManagerExt", "registerAudioModeChangeListeners error: " + e);
        }
    }

    public void registerVolumeGroupCallback(ITranAospVolumeGroupChangedCallback iTranAospVolumeGroupChangedCallback) {
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        }
        AospVolumeGroupChangedCallbackExt aospVolumeGroupChangedCallbackExt = new AospVolumeGroupChangedCallbackExt(iTranAospVolumeGroupChangedCallback);
        this.mObserver.put(iTranAospVolumeGroupChangedCallback, aospVolumeGroupChangedCallbackExt);
        this.mAudioManager.registerVolumeGroupCallback(new ur1(), aospVolumeGroupChangedCallbackExt);
    }

    public void unregisterAudioModeChangeListeners(String str) {
        Method method;
        Class cls = TranDoorMan.getClass("com.transsion.os.audio.AudioModeHelper");
        if (cls == null) {
            return;
        }
        try {
            this.mContext.createPackageContext(str, 3);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        Object objInvokeMethod = TranDoorMan.invokeMethod(TranDoorMan.getMethod(cls, "getInstance", new Class[0]), null, new Object[0]);
        if (objInvokeMethod == null || (method = TranDoorMan.getMethod(cls, "unregisterAudioModeChangeListeners", Context.class)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, objInvokeMethod, this.mContext);
    }

    public void unregisterVolumeGroupCallback(ITranAospVolumeGroupChangedCallback iTranAospVolumeGroupChangedCallback) {
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        }
        AospVolumeGroupChangedCallbackExt aospVolumeGroupChangedCallbackExt = this.mObserver.get(iTranAospVolumeGroupChangedCallback);
        if (aospVolumeGroupChangedCallbackExt != null) {
            this.mAudioManager.unregisterVolumeGroupCallback(aospVolumeGroupChangedCallbackExt);
        }
        this.mObserver.remove(iTranAospVolumeGroupChangedCallback);
    }
}
