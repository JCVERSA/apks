package com.transsion.hubsdk.core.internal.widget;

import com.transsion.hubsdk.interfaces.internal.widget.ITranNotificationExpandButtonAdapter;
import com.transsion.hubsdk.internal.widget.TranNotificationExpandButton;

public class TranThubNotificationExpandButton implements ITranNotificationExpandButtonAdapter {
    private TranNotificationExpandButton mButton = new TranNotificationExpandButton();

    @Override
    public void setExpandedVisibility(Object obj, boolean z) {
        TranNotificationExpandButton tranNotificationExpandButton = this.mButton;
        if (tranNotificationExpandButton != null) {
            tranNotificationExpandButton.setExpandedVisibility(obj, z);
        }
    }
}
