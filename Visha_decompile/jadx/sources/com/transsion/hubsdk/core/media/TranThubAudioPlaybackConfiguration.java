package com.transsion.hubsdk.core.media;

import android.media.AudioPlaybackConfiguration;
import com.transsion.hubsdk.interfaces.media.ITranAudioPlaybackConfigurationAdapter;
import com.transsion.hubsdk.media.TranAudioPlaybackConfiguration;

public class TranThubAudioPlaybackConfiguration implements ITranAudioPlaybackConfigurationAdapter {
    private static final String TAG = "TranThubAudioPlaybackConfiguration";
    private TranAudioPlaybackConfiguration mService = new TranAudioPlaybackConfiguration();

    @Override
    public int getClientUid(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return this.mService.getClientUid(audioPlaybackConfiguration);
    }

    @Override
    public int getPlayerInterfaceId(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return this.mService.getPlayerInterfaceId(audioPlaybackConfiguration);
    }

    @Override
    public int getPlayerState(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return this.mService.getPlayerState(audioPlaybackConfiguration);
    }

    @Override
    public int getPlayerType(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return this.mService.getPlayerType(audioPlaybackConfiguration);
    }

    @Override
    public boolean isActive(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return this.mService.isActive(audioPlaybackConfiguration);
    }

    @Override
    public String toLogFriendlyPlayerType(int i) {
        return TranAudioPlaybackConfiguration.toLogFriendlyPlayerType(i);
    }
}
