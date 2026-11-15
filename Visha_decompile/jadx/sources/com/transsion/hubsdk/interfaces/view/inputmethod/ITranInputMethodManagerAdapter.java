package com.transsion.hubsdk.interfaces.view.inputmethod;

import android.content.Context;
import android.view.KeyEvent;
import android.view.Window;
import com.transsion.hubsdk.api.view.inputmethod.ITranGlobalWritingListener;
import java.util.List;

public interface ITranInputMethodManagerAdapter {
    void commitConnectKeyAndText(KeyEvent keyEvent, String str);

    void freeSoftInputViewsLeaks(Context context, Window window);

    void hideAllInputMethod(int i, int i2);

    void hideSoftInputMethodByPrivilegeUser();

    void registerGlobalWritingListener(ITranGlobalWritingListener iTranGlobalWritingListener);

    void switchTranInputMethod(boolean z);

    void unregisterGlobalWritingListener(ITranGlobalWritingListener iTranGlobalWritingListener);

    void updateSecurityInputBlackList(List<String> list);
}
