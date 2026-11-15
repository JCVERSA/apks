package com.transsion.hubsdk.aosp.media;

import android.media.AudioRecordingConfiguration;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.media.ITranAudioRecordingConfigurationAdapter;

public class TranAospAudioRecordingConfiguration implements ITranAudioRecordingConfigurationAdapter {
    @Override
    public String getClientPackageName(AudioRecordingConfiguration audioRecordingConfiguration) {
        return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(audioRecordingConfiguration.getClass(), "getClientPackageName", new Class[0]), audioRecordingConfiguration, new Object[0]);
    }

    @Override
    public String toLogFriendlyString(AudioRecordingConfiguration audioRecordingConfiguration) {
        return (String) TranDoorMan.invokeMethod(TranDoorMan.getMethod(audioRecordingConfiguration.getClass(), "toLogFriendlyString", new Class[0]), null, new Object[0]);
    }
}
