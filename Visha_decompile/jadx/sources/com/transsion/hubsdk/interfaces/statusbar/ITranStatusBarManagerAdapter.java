package com.transsion.hubsdk.interfaces.statusbar;

import com.transsion.hubsdk.api.app.ITranStatusBar;

public interface ITranStatusBarManagerAdapter {
    void autoStartFullIntent(String str, boolean z, String str2);

    void collapsePanels();

    void customGesturesEnable(String str, boolean z);

    void customHeadsUp(String str, boolean z, String str2);

    void customNotificationStyle(String str, boolean z);

    void customPanelEnable(String str, boolean z);

    void disable(int i);

    void disable2(int i);

    void enableAction(String str, String str2, boolean z);

    void enableActionWithUrl(String str, String str2, boolean z, String str3);

    void expandNotificationsPanel();

    void expandSettingsPanel();

    void onDestoryCallback(String str);

    void registerTranStatusBar(ITranStatusBar iTranStatusBar);

    void setIcon(String str, int i, int i2, String str2);

    void setIconVisibility(String str, boolean z);

    void showPinningEscapeToast();

    void updateCloseHeadsUp(String str, boolean z, String str2);
}
