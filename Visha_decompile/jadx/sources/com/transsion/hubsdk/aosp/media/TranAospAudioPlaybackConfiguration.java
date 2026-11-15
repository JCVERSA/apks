package com.transsion.hubsdk.aosp.media;

import android.media.AudioPlaybackConfiguration;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.media.ITranAudioPlaybackConfigurationAdapter;

public class TranAospAudioPlaybackConfiguration implements ITranAudioPlaybackConfigurationAdapter {
    @Override
    public int getClientUid(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return ((Integer) TranDoorMan.invokeMethod(TranDoorMan.getMethod(audioPlaybackConfiguration.getClass(), "getClientUid", new Class[0]), audioPlaybackConfiguration, new Object[0])).intValue();
    }

    @Override
    public int getPlayerInterfaceId(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return ((Integer) TranDoorMan.invokeMethod(TranDoorMan.getMethod(audioPlaybackConfiguration.getClass(), "getPlayerInterfaceId", new Class[0]), null, new Object[0])).intValue();
    }

    @Override
    public int getPlayerState(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return ((Integer) TranDoorMan.invokeMethod(TranDoorMan.getMethod(audioPlaybackConfiguration.getClass(), "getPlayerState", new Class[0]), audioPlaybackConfiguration, new Object[0])).intValue();
    }

    @Override
    public int getPlayerType(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return ((Integer) TranDoorMan.invokeMethod(TranDoorMan.getMethod(audioPlaybackConfiguration.getClass(), "getPlayerType", new Class[0]), audioPlaybackConfiguration, new Object[0])).intValue();
    }

    @Override
    public boolean isActive(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return ((Boolean) TranDoorMan.invokeMethod(TranDoorMan.getMethod(audioPlaybackConfiguration.getClass(), "isActive", new Class[0]), audioPlaybackConfiguration, new Object[0])).booleanValue();
    }

    @Override
    public String toLogFriendlyPlayerType(int i) {
        return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(TranDoorMan.getClass("android.media.AudioPlaybackConfiguration"), "toLogFriendlyPlayerType", Integer.TYPE), null, Integer.valueOf(i));
    }
}
