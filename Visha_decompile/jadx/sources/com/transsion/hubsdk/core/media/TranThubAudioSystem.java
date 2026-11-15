package com.transsion.hubsdk.core.media;

import android.os.RemoteException;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.interfaces.media.ITranAudioSystemAdapter;
import com.transsion.hubsdk.media.ITranAudioSystem;

public class TranThubAudioSystem implements ITranAudioSystemAdapter {
    private static final String TAG = "TranThubAudioSystem";
    private static ITranAudioSystem sAudioSystem;

    public TranThubAudioSystem() {
        sAudioSystem = ITranAudioSystem.Stub.asInterface(TranServiceManager.getServiceIBinder("audio_system"));
    }

    @Override
    public int getForceUse(int i) {
        try {
            return sAudioSystem.getForceUse(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public String getOutputDeviceName(int i) {
        try {
            return sAudioSystem.getOutputDeviceName(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public boolean isSourceActive(int i) {
        try {
            return sAudioSystem.isSourceActive(i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public int newAudioSessionId() {
        try {
            return sAudioSystem.newAudioSessionId();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int setForceUse(int i, int i2) {
        try {
            return sAudioSystem.setForceUse(i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }
}
