package com.transsion.hubsdk.aosp.internal.widget;

import com.android.internal.widget.NotificationExpandButton;
import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.interfaces.internal.widget.ITranNotificationExpandButtonAdapter;
import java.lang.reflect.Method;

public class TranAospNotificationExpandButton implements ITranNotificationExpandButtonAdapter {
    @Override
    public void setExpandedVisibility(Object obj, boolean z) {
        NotificationExpandButton notificationExpandButton;
        Method method;
        if (!(obj instanceof NotificationExpandButton) || (notificationExpandButton = (NotificationExpandButton) obj) == null || (method = TranDoorMan.getMethod(notificationExpandButton.getClass(), "setExpandedVisibility", Boolean.TYPE)) == null) {
            return;
        }
        TranDoorMan.invokeMethod(method, notificationExpandButton, Boolean.valueOf(z));
    }
}
