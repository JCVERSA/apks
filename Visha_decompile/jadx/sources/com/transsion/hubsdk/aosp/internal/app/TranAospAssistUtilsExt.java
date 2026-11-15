package com.transsion.hubsdk.aosp.internal.app;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.internal.app.AssistUtils;
import com.android.internal.app.IVoiceInteractionSessionShowCallback;
import com.transsion.hubsdk.common.util.TranSdkLog;

public class TranAospAssistUtilsExt {
    private static final String TAG = "TranAospAssistUtilsExt";
    private Context mContext;

    public interface ITranVoiceInteractionSessionShowCallback {
        void onFailed();

        void onShown();
    }

    public static class TranAospVoiceInteractionSessionShowCallback extends IVoiceInteractionSessionShowCallback.Stub {
        public ITranVoiceInteractionSessionShowCallback mCallback;

        public TranAospVoiceInteractionSessionShowCallback(ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback) {
            this.mCallback = iTranVoiceInteractionSessionShowCallback;
        }

        public void onFailed() throws RemoteException {
            ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback = this.mCallback;
            if (iTranVoiceInteractionSessionShowCallback != null) {
                iTranVoiceInteractionSessionShowCallback.onFailed();
            }
        }

        public void onShown() throws RemoteException {
            ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback = this.mCallback;
            if (iTranVoiceInteractionSessionShowCallback != null) {
                iTranVoiceInteractionSessionShowCallback.onShown();
            }
        }
    }

    public TranAospAssistUtilsExt(Context context) {
        this.mContext = context;
    }

    public boolean showSessionForActiveService(Bundle bundle, int i, ITranVoiceInteractionSessionShowCallback iTranVoiceInteractionSessionShowCallback, IBinder iBinder) {
        try {
            return new AssistUtils(this.mContext).showSessionForActiveService(bundle, i, new TranAospVoiceInteractionSessionShowCallback(iTranVoiceInteractionSessionShowCallback), iBinder);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "showSessionForActiveService fail " + e);
            return false;
        }
    }
}
