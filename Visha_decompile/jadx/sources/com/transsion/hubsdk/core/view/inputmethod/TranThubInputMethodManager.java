package com.transsion.hubsdk.core.view.inputmethod;

import android.content.Context;
import android.os.RemoteException;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import com.android.internal.annotations.VisibleForTesting;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.common.bp.TranTimeOutOrExceptionExecute;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.inputmethod.ITranInputMethodManagerAdapter;
import com.transsion.hubsdk.view.inputmethod.ITranGlobalWritingListener;
import com.transsion.hubsdk.view.inputmethod.ITranInputMethodManager;
import java.lang.reflect.Field;
import java.util.List;

public class TranThubInputMethodManager implements ITranInputMethodManagerAdapter {
    private static final String TAG = "TranThubInputMethodManager";
    private ITranInputMethodManager mService = ITranInputMethodManager.Stub.asInterface(TranServiceManager.getServiceIBinder("input_method_service"));

    public class TranGlobalWritingListener extends ITranGlobalWritingListener.Stub {
        private com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener mListener;

        public TranGlobalWritingListener(com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener iTranGlobalWritingListener) {
            this.mListener = iTranGlobalWritingListener;
        }

        public void onHandwritingStart() throws RemoteException {
            com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener iTranGlobalWritingListener = this.mListener;
            if (iTranGlobalWritingListener != null) {
                iTranGlobalWritingListener.onHandwritingStart();
            }
        }

        public void onStylusHandwritingMotionEvent(MotionEvent motionEvent, boolean z) throws RemoteException {
            com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener iTranGlobalWritingListener = this.mListener;
            if (iTranGlobalWritingListener != null) {
                iTranGlobalWritingListener.onStylusHandwritingMotionEvent(motionEvent, z);
            }
        }
    }

    public Object lambda$commitConnectKeyAndText$0(KeyEvent keyEvent, String str) throws RemoteException {
        ITranInputMethodManager iTranInputMethodManager = this.mService;
        if (iTranInputMethodManager == null) {
            return null;
        }
        iTranInputMethodManager.commitConnectKeyAndText(keyEvent, str);
        return null;
    }

    public Object lambda$hideAllInputMethod$4(int i, int i2) throws RemoteException {
        ITranInputMethodManager iTranInputMethodManager = this.mService;
        if (iTranInputMethodManager == null) {
            return null;
        }
        iTranInputMethodManager.hideAllInputMethod(i, i2);
        return null;
    }

    public Object lambda$registerGlobalWritingListener$1(com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener iTranGlobalWritingListener) throws RemoteException {
        ITranInputMethodManager iTranInputMethodManager = this.mService;
        if (iTranInputMethodManager == null) {
            return null;
        }
        iTranInputMethodManager.registerGlobalWritingListener(new TranGlobalWritingListener(iTranGlobalWritingListener));
        return null;
    }

    public Object lambda$switchTranInputMethod$3(boolean z) throws RemoteException {
        ITranInputMethodManager iTranInputMethodManager = this.mService;
        if (iTranInputMethodManager == null) {
            return null;
        }
        iTranInputMethodManager.switchTranInputMethod(z);
        return null;
    }

    public Object lambda$unregisterGlobalWritingListener$2(com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener iTranGlobalWritingListener) throws RemoteException {
        ITranInputMethodManager iTranInputMethodManager = this.mService;
        if (iTranInputMethodManager == null) {
            return null;
        }
        iTranInputMethodManager.unregisterGlobalWritingListener(new TranGlobalWritingListener(iTranGlobalWritingListener));
        return null;
    }

    @Override
    public void commitConnectKeyAndText(final KeyEvent keyEvent, final String str) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$commitConnectKeyAndText$0(keyEvent, str);
            }
        }, "input_method_service");
        TranSdkLog.d(TAG, "commitConnectKeyAndText sucess");
    }

    @Override
    public void freeSoftInputViewsLeaks(Context context, Window window) {
        InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
        if (inputMethodManager == null) {
            return;
        }
        String[] strArr = {"mLastSrvView", "mCurRootView", "mServedView", "mNextServedView"};
        for (int i = 0; i < 4; i++) {
            try {
                Field declaredField = InputMethodManager.class.getDeclaredField(strArr[i]);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                Object obj = declaredField.get(inputMethodManager);
                if ((obj instanceof View) && ((View) obj).getRootView() == window.getDecorView().getRootView()) {
                    declaredField.set(inputMethodManager, null);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override
    public void hideAllInputMethod(final int i, final int i2) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$hideAllInputMethod$4(i, i2);
            }
        }, "input_method_service");
    }

    @Override
    public void hideSoftInputMethodByPrivilegeUser() {
        ITranInputMethodManager iTranInputMethodManager = this.mService;
        if (iTranInputMethodManager != null) {
            try {
                iTranInputMethodManager.hideSoftInputMethodByPrivilegeUser();
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "hideSoftInputMethodByPrivilegeUser fail " + e);
            }
        }
    }

    @Override
    public void registerGlobalWritingListener(final com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener iTranGlobalWritingListener) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$registerGlobalWritingListener$1(iTranGlobalWritingListener);
            }
        }, "input_method_service");
        TranSdkLog.d(TAG, "registerGlobalWritingListener sucess");
    }

    @VisibleForTesting
    public void setService(ITranInputMethodManager iTranInputMethodManager) {
        this.mService = iTranInputMethodManager;
    }

    @Override
    public void switchTranInputMethod(final boolean z) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$switchTranInputMethod$3(z);
            }
        }, "input_method_service");
        TranSdkLog.d(TAG, "switchTranInputMethod sucess");
    }

    @Override
    public void unregisterGlobalWritingListener(final com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener iTranGlobalWritingListener) {
        new TranTimeOutOrExceptionExecute().timeOutAndExceptionRun(new TranTimeOutOrExceptionExecute.TimeOutAndExceptionRunnable() {
            @Override
            public final Object run() {
                return this.a.lambda$unregisterGlobalWritingListener$2(iTranGlobalWritingListener);
            }
        }, "input_method_service");
        TranSdkLog.d(TAG, "unregisterGlobalWritingListener sucess");
    }

    @Override
    public void updateSecurityInputBlackList(List<String> list) {
        ITranInputMethodManager iTranInputMethodManager = this.mService;
        if (iTranInputMethodManager != null) {
            try {
                iTranInputMethodManager.updateSecurityInputBlackList(list);
            } catch (RemoteException e) {
                TranSdkLog.e(TAG, "updateSecurityInputBlackList fail " + e);
            }
        }
    }
}
