package com.transsion.hubsdk.aosp.internal.app;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.transsion.hubsdk.api.internal.app.TranAssistUtilsManager;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.internal.app.ITranAssistUtilsAdapter;

public class TranAospAssistUtilsService implements ITranAssistUtilsAdapter {
    private static final String TAG = "TranAospAssistUtilsService";
    private static Class<?> sClassName = TranDoorMan.getClass("com.android.internal.app.AssistUtils");
    private Context mContext = TranHubSdkManager.getContext();

    @Override
    public boolean showSessionForActiveService(Bundle bundle, int i, TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, IBinder iBinder) {
        return showSessionForActiveServiceExt(bundle, i, iTranVoiceInteractionSessionShowCallback, iBinder);
    }

    @Override
    public boolean showSessionForActiveServiceExt(Bundle bundle, int i, final TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, IBinder iBinder) {
        return new TranAospAssistUtilsExt(this.mContext).showSessionForActiveService(bundle, i, new TranAospAssistUtilsExt.ITranVoiceInteractionSessionShowCallback() {
            @Override
            public void onFailed() {
                TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback2 = iTranVoiceInteractionSessionShowCallback;
                if (iTranVoiceInteractionSessionShowCallback2 != null) {
                    iTranVoiceInteractionSessionShowCallback2.onFailed();
                }
            }

            @Override
            public void onShown() {
                TranAssistUtilsManager.ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback2 = iTranVoiceInteractionSessionShowCallback;
                if (iTranVoiceInteractionSessionShowCallback2 != null) {
                    iTranVoiceInteractionSessionShowCallback2.onShown();
                }
            }
        }, iBinder);
    }
}
