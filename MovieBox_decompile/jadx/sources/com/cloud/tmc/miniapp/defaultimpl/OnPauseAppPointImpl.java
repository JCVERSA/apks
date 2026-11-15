package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.audio.recording.RecorderClient;
import com.cloud.tmc.integration.model.AudioRecordCache;
import com.cloud.tmc.integration.point.OnPauseAppPoint;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.ScreenUtils;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.log.TmcLogger;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

public final class OnPauseAppPointImpl implements OnPauseAppPoint {
    public static final OooO00o Companion = new OooO00o();

    public static final class OooO00o {
    }

    @Override
    public void onFinalized() {
        TmcLogger.d("OnPauseAppPointImpl", "onFinalized");
    }

    @Override
    public void onInitialized() {
        TmcLogger.d("OnPauseAppPointImpl", "onInitialized");
    }

    @Override
    public void onPause(App app, ExtensionManager extensionManager) {
        HashMap<String, RecorderClient> recorderClientCache;
        RecorderClient recorderClient;
        Intrinsics.h(app, "app");
        try {
            AudioRecordCache audioRecordCache = (AudioRecordCache) app.getData(AudioRecordCache.class);
            if (audioRecordCache != null && (recorderClientCache = audioRecordCache.getRecorderClientCache()) != null && (recorderClient = recorderClientCache.get(app.getAppId())) != null && !recorderClient.isStopped() && (!recorderClient.isRecording() || !recorderClient.isPaused())) {
                recorderClient.pauseRecording();
            }
            ScreenUtils.INSTANCE.release();
        } catch (Throwable th2) {
            TmcLogger.e("OnPauseAppPointImpl", th2);
        }
    }
}
