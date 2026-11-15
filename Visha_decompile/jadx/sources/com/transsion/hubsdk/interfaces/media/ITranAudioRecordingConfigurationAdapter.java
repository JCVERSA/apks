package com.transsion.hubsdk.interfaces.media;

import android.media.AudioRecordingConfiguration;

public interface ITranAudioRecordingConfigurationAdapter {
    String getClientPackageName(AudioRecordingConfiguration audioRecordingConfiguration);

    String toLogFriendlyString(AudioRecordingConfiguration audioRecordingConfiguration);
}
