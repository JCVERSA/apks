package com.transsion.hubsdk.api.media;

import android.media.AudioPlaybackConfiguration;
import com.transsion.hubsdk.aosp.media.TranAospAudioPlaybackConfiguration;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.media.TranThubAudioPlaybackConfiguration;
import com.transsion.hubsdk.interfaces.media.ITranAudioPlaybackConfigurationAdapter;

public class TranAudioPlaybackConfiguration {
    public static final int PLAYER_STATE_STARTED = 2;
    private static TranAospAudioPlaybackConfiguration sAospService;
    private static TranThubAudioPlaybackConfiguration sThubService;

    public static ITranAudioPlaybackConfigurationAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubAudioPlaybackConfiguration tranThubAudioPlaybackConfiguration = sThubService;
            if (tranThubAudioPlaybackConfiguration != null) {
                return tranThubAudioPlaybackConfiguration;
            }
            TranThubAudioPlaybackConfiguration tranThubAudioPlaybackConfiguration2 = new TranThubAudioPlaybackConfiguration();
            sThubService = tranThubAudioPlaybackConfiguration2;
            return tranThubAudioPlaybackConfiguration2;
        }
        TranAospAudioPlaybackConfiguration tranAospAudioPlaybackConfiguration = sAospService;
        if (tranAospAudioPlaybackConfiguration != null) {
            return tranAospAudioPlaybackConfiguration;
        }
        TranAospAudioPlaybackConfiguration tranAospAudioPlaybackConfiguration2 = new TranAospAudioPlaybackConfiguration();
        sAospService = tranAospAudioPlaybackConfiguration2;
        return tranAospAudioPlaybackConfiguration2;
    }

    public static String toLogFriendlyPlayerType(int i) {
        return getService(TranVersion.Core.VERSION_33151).toLogFriendlyPlayerType(i);
    }

    public int getClientUid(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return getService(TranVersion.Core.VERSION_33131).getClientUid(audioPlaybackConfiguration);
    }

    public int getPlayerInterfaceId(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return getService(TranVersion.Core.VERSION_33151).getPlayerInterfaceId(audioPlaybackConfiguration);
    }

    public int getPlayerState(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return getService(TranVersion.Core.VERSION_33151).getPlayerState(audioPlaybackConfiguration);
    }

    public int getPlayerType(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return getService(TranVersion.Core.VERSION_33151).getPlayerType(audioPlaybackConfiguration);
    }

    public boolean isActive(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        return getService(TranVersion.Core.VERSION_33131).isActive(audioPlaybackConfiguration);
    }
}
