package com.transsion.hubsdk.interfaces.media;

import android.media.AudioPlaybackConfiguration;

public interface ITranAudioPlaybackConfigurationAdapter {
    int getClientUid(AudioPlaybackConfiguration audioPlaybackConfiguration);

    int getPlayerInterfaceId(AudioPlaybackConfiguration audioPlaybackConfiguration);

    int getPlayerState(AudioPlaybackConfiguration audioPlaybackConfiguration);

    int getPlayerType(AudioPlaybackConfiguration audioPlaybackConfiguration);

    boolean isActive(AudioPlaybackConfiguration audioPlaybackConfiguration);

    String toLogFriendlyPlayerType(int i);
}
