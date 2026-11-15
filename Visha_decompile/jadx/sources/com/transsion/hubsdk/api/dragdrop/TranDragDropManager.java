package com.transsion.hubsdk.api.dragdrop;

import android.content.Context;
import com.transsion.hubsdk.aosp.dragdrop.TranAospDragDropManager;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.dragdrop.TranThubDragDropManager;
import com.transsion.hubsdk.interfaces.dragdrop.ITranDragDropManagerAdapter;

public class TranDragDropManager {
    public static final String ACTION_DRAG_STATE = "tran.intent.action.DRAG_STATE";
    public static final int DRAG_FLAG_UPDATE = 268435456;
    public static final int DRAG_STATE_ACCEPTABLE = 1;
    public static final int DRAG_STATE_APP_INNER = 4;
    public static final int DRAG_STATE_DROP_ERROR = 16;
    public static final int DRAG_STATE_ENDED = 3;
    public static final int DRAG_STATE_UNACCEPTABLE = 2;
    public static final int DRAG_STATE_UNKNOWN = 0;
    public static final String TAG = "os.dragdrop";
    public static final int VALUE_DRAGDROP_OFF = 0;
    public static final int VALUE_DRAGDROP_ON = 1;
    private TranAospDragDropManager mAospService;
    private final Context mContext;
    private Object mDragStateListener;
    private TranThubDragDropManager mThubService;

    public interface DrawShadowCallback {
        void onUpdateDrawShadow(String str, int i);
    }

    public TranDragDropManager(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        this.mContext = context.getApplicationContext();
    }

    public float[] getDragDropLocation() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidX()) {
            return getService(TranVersion.Core.VERSION_33511).getDragDropLocation();
        }
        TranSdkLog.i("os.dragdrop", "getDragDropLocation: not supported");
        return null;
    }

    public String getDragDropPkg() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidX()) {
            return getService(TranVersion.Core.VERSION_33511).getDragDropPkg();
        }
        TranSdkLog.i("os.dragdrop", "getDragDropPkg: not supported");
        return null;
    }

    public int getDragDropStatus() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidX()) {
            return getService(TranVersion.Core.VERSION_33511).getDragDropStatus(this.mContext);
        }
        TranSdkLog.i("os.dragdrop", "getDragDropStatus: not supported");
        return 0;
    }

    public ITranDragDropManagerAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            TranThubDragDropManager tranThubDragDropManager = this.mThubService;
            if (tranThubDragDropManager != null) {
                return tranThubDragDropManager;
            }
            TranThubDragDropManager tranThubDragDropManager2 = new TranThubDragDropManager(this.mContext);
            this.mThubService = tranThubDragDropManager2;
            return tranThubDragDropManager2;
        }
        TranSdkLog.i(TranDragDropManager.class.getSimpleName(), "TranAospDragDropManager");
        TranAospDragDropManager tranAospDragDropManager = this.mAospService;
        if (tranAospDragDropManager != null) {
            return tranAospDragDropManager;
        }
        TranAospDragDropManager tranAospDragDropManager2 = new TranAospDragDropManager(this.mContext);
        this.mAospService = tranAospDragDropManager2;
        return tranAospDragDropManager2;
    }

    public boolean isDragDropStatus() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidX()) {
            return getService(TranVersion.Core.VERSION_33511).isDragDropStatus(this.mContext);
        }
        TranSdkLog.i("os.dragdrop", "isDragDropStatus: not supported");
        return false;
    }

    public boolean isSupportedDragDrop() throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidX()) {
            return getService(TranVersion.Core.VERSION_33511).isSupportedDragDrop();
        }
        TranSdkLog.i("os.dragdrop", "isSupportedDragDrop: not supported");
        return false;
    }

    public boolean isSupportedUpdateClipData(int i) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidX()) {
            return getService(TranVersion.Core.VERSION_33511).isSupportedUpdateClipData(i);
        }
        TranSdkLog.i("os.dragdrop", "isSupportedUpdateClipData: not supported");
        return false;
    }

    public void registerDragStateListener(DrawShadowCallback drawShadowCallback) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidX()) {
            this.mDragStateListener = getService(TranVersion.Core.VERSION_33511).createDragStateListener(this.mContext, drawShadowCallback);
        } else {
            TranSdkLog.i("os.dragdrop", "registerDragStateListener: not supported");
        }
    }

    public void setDragDropStatus(int i) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidX()) {
            getService(TranVersion.Core.VERSION_33511).setDragDropStatus(this.mContext, i);
        } else {
            TranSdkLog.i("os.dragdrop", "setDragDropStatus: not supported");
        }
    }

    public void setDragStateListener(DrawShadowCallback drawShadowCallback) throws TranThubIncompatibleException {
        if (TranThubVersionUtil.isRecentAndroidX()) {
            getService(TranVersion.Core.VERSION_33511).setDragStateListener(this.mDragStateListener, drawShadowCallback);
        } else {
            TranSdkLog.i("os.dragdrop", "setDragStateListener: not supported");
        }
    }

    public void registerDragStateListener(boolean z) throws TranThubIncompatibleException {
        if (!TranThubVersionUtil.isRecentAndroidX()) {
            TranSdkLog.i("os.dragdrop", "registerDragStateListener(boolean): not supported");
        } else {
            this.mDragStateListener = getService(TranVersion.Core.VERSION_33511).createDragStateListener(this.mContext, z);
        }
    }
}
