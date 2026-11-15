package com.transsion.hubsdk.interfaces.app;

import android.app.Activity;
import com.transsion.hubsdk.common.exception.TranThubIncompatibleException;

public interface ITranActivityAdapter {
    String getReferrer(Activity activity);

    @Deprecated
    void sceneHappen(int i, String str, String str2, String str3, boolean z) throws TranThubIncompatibleException;

    void setupAlert(Object obj);
}
