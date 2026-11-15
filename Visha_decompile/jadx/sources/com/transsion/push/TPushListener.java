package com.transsion.push;

import com.transsion.push.bean.PushMessage;

public interface TPushListener {
    void onClickException(long j, String str);

    void onMessageReceive(long j, String str, int i);

    void onNotificationShow(long j, String str);

    void onPushReceive(long j, PushMessage pushMessage, int i);

    void onSdkInitSuccess(String str, String str2);
}
