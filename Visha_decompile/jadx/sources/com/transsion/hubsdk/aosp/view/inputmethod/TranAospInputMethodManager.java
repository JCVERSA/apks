package com.transsion.hubsdk.aosp.view.inputmethod;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener;
import com.transsion.hubsdk.common.init.TranHubSdkManager;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.interfaces.view.inputmethod.ITranInputMethodManagerAdapter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

public class TranAospInputMethodManager implements ITranInputMethodManagerAdapter {
    private static final String TAG = "TranAospInputMethodManager";
    private static Class<?> sClassName = TranDoorMan.getClass("android.view.inputmethod.InputMethodManager");
    private Context mContext;
    private InputMethodManager mImm;

    public TranAospInputMethodManager() {
        Context context = TranHubSdkManager.getContext();
        this.mContext = context;
        this.mImm = (InputMethodManager) context.getSystemService("input_method");
    }

    @Override
    public void commitConnectKeyAndText(KeyEvent keyEvent, String str) {
        TranDoorMan.invokeMethod(TranDoorMan.getMethod(this.mImm.getClass(), "commitConnectKeyAndText", KeyEvent.class, String.class), this.mImm, keyEvent, str);
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
    public void hideAllInputMethod(int i, int i2) {
        TranSdkLog.w(TAG, "AOSP does not support hideAllInputMethod");
    }

    @Override
    public void hideSoftInputMethodByPrivilegeUser() {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "hideSoftInputMethodByPrivilegeUser", new Class[0]);
            method.setAccessible(true);
            method.invoke(this.mImm, null);
        } catch (IllegalAccessException | InvocationTargetException e) {
            TranSdkLog.e(TAG, "hideSoftInputMethodByPrivilegeUser fail " + e);
        }
    }

    @Override
    public void registerGlobalWritingListener(ITranGlobalWritingListener iTranGlobalWritingListener) {
    }

    @Override
    public void switchTranInputMethod(boolean z) {
    }

    @Override
    public void unregisterGlobalWritingListener(ITranGlobalWritingListener iTranGlobalWritingListener) {
    }

    @Override
    public void updateSecurityInputBlackList(List<String> list) {
        try {
            Method method = TranDoorMan.getMethod(sClassName, "updateSecurityInputBlackList", List.class);
            method.setAccessible(true);
            method.invoke(this.mImm, list);
        } catch (IllegalAccessException | InvocationTargetException e) {
            TranSdkLog.e(TAG, "updateSecurityInputBlackList fail " + e);
        }
    }
}
