package com.transsion.hubsdk.api.internal.app;

import android.os.Bundle;
import android.os.IBinder;
import com.transsion.hubsdk.aosp.internal.app.TranAospAssistUtilsService;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.internal.app.TranThubAssistUtilsService;
import com.transsion.hubsdk.interfaces.internal.app.ITranAssistUtilsAdapter;

public class TranAssistUtilsManager {
    private static final String TAG = "TranAssistUtilsManager";
    private TranAospAssistUtilsService mAospService;
    private TranThubAssistUtilsService mThubService;

    public interface ITranVoiceInteractionSessionShowCallback {
        void onFailed();

        void onShown();
    }

    public ITranAssistUtilsAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubAssistUtilsService tranThubAssistUtilsService = this.mThubService;
            if (tranThubAssistUtilsService != null) {
                return tranThubAssistUtilsService;
            }
            TranThubAssistUtilsService tranThubAssistUtilsService2 = new TranThubAssistUtilsService();
            this.mThubService = tranThubAssistUtilsService2;
            return tranThubAssistUtilsService2;
        }
        TranAospAssistUtilsService tranAospAssistUtilsService = this.mAospService;
        if (tranAospAssistUtilsService != null) {
            return tranAospAssistUtilsService;
        }
        TranAospAssistUtilsService tranAospAssistUtilsService2 = new TranAospAssistUtilsService();
        this.mAospService = tranAospAssistUtilsService2;
        return tranAospAssistUtilsService2;
    }

    @Deprecated
    public boolean showSessionForActiveService(Bundle bundle, int i, ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, IBinder iBinder) {
        return showSessionForActiveServiceExt(bundle, i, iTranVoiceInteractionSessionShowCallback, iBinder);
    }

    public boolean showSessionForActiveServiceExt(Bundle bundle, int i, ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, IBinder iBinder) {
        return getService(TranVersion.Core.VERSION_33171).showSessionForActiveServiceExt(bundle, i, iTranVoiceInteractionSessionShowCallback, iBinder);
    }
}
