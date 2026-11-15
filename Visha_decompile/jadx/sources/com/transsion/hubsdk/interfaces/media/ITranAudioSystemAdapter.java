package com.transsion.hubsdk.interfaces.media;

public interface ITranAudioSystemAdapter {
    int getForceUse(int i);

    String getOutputDeviceName(int i);

    boolean isSourceActive(int i);

    int newAudioSessionId();

    int setForceUse(int i, int i2);
}
