package com.transsion.hubsdk.api.media;

import android.media.AudioRecordingConfiguration;
import com.transsion.hubsdk.aosp.media.TranAospAudioRecordingConfiguration;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.media.TranThubAudioRecordingConfiguration;
import com.transsion.hubsdk.interfaces.media.ITranAudioRecordingConfigurationAdapter;

public class TranAudioRecordingConfiguration {
    private static final String TAG = "TranAudioRecordingConfiguration";
    private static TranAospAudioRecordingConfiguration sAospService;
    private static TranThubAudioRecordingConfiguration sThubService;

    public static ITranAudioRecordingConfigurationAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubAudioRecordingConfiguration tranThubAudioRecordingConfiguration = sThubService;
            if (tranThubAudioRecordingConfiguration != null) {
                return tranThubAudioRecordingConfiguration;
            }
            TranThubAudioRecordingConfiguration tranThubAudioRecordingConfiguration2 = new TranThubAudioRecordingConfiguration();
            sThubService = tranThubAudioRecordingConfiguration2;
            return tranThubAudioRecordingConfiguration2;
        }
        TranAospAudioRecordingConfiguration tranAospAudioRecordingConfiguration = sAospService;
        if (tranAospAudioRecordingConfiguration != null) {
            return tranAospAudioRecordingConfiguration;
        }
        TranAospAudioRecordingConfiguration tranAospAudioRecordingConfiguration2 = new TranAospAudioRecordingConfiguration();
        sAospService = tranAospAudioRecordingConfiguration2;
        return tranAospAudioRecordingConfiguration2;
    }

    public static String toLogFriendlyString(AudioRecordingConfiguration audioRecordingConfiguration) {
        return getService(TranVersion.Core.VERSION_33151).toLogFriendlyString(audioRecordingConfiguration);
    }

    public String getClientPackageName(AudioRecordingConfiguration audioRecordingConfiguration) {
        return getService(TranVersion.Core.VERSION_33131).getClientPackageName(audioRecordingConfiguration);
    }
}
