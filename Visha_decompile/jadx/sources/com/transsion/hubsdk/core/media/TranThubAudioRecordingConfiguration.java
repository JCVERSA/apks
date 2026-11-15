package com.transsion.hubsdk.core.media;

import android.media.AudioRecordingConfiguration;
import com.transsion.hubsdk.interfaces.media.ITranAudioRecordingConfigurationAdapter;
import com.transsion.hubsdk.media.TranAudioRecordingConfiguration;

public class TranThubAudioRecordingConfiguration implements ITranAudioRecordingConfigurationAdapter {
    private static final String TAG = "TranThubAudioRecordingConfiguration";
    private TranAudioRecordingConfiguration mService = new TranAudioRecordingConfiguration();

    @Override
    public String getClientPackageName(AudioRecordingConfiguration audioRecordingConfiguration) {
        return this.mService.getClientPackageName(audioRecordingConfiguration);
    }

    @Override
    public String toLogFriendlyString(AudioRecordingConfiguration audioRecordingConfiguration) {
        return TranAudioRecordingConfiguration.toLogFriendlyString(audioRecordingConfiguration);
    }
}
