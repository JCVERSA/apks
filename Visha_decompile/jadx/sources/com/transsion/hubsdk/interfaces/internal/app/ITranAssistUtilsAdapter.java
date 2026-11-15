package com.transsion.hubsdk.interfaces.internal.app;

import android.os.Bundle;
import android.os.IBinder;
import com.transsion.hubsdk.api.internal.app.TranAssistUtilsManager;

public interface ITranAssistUtilsAdapter {
    boolean showSessionForActiveService(Bundle bundle, int i, TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, IBinder iBinder);

    boolean showSessionForActiveServiceExt(Bundle bundle, int i, TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, IBinder iBinder);
}
