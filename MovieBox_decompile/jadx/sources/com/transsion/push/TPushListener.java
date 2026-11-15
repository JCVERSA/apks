package com.transsion.push;

import com.transsion.push.bean.PushMessage;

public interface TPushListener {
    void onClickException(long j10, String str);

    void onMessageReceive(long j10, String str, int i10);

    void onNotificationShow(long j10, String str);

    void onPushReceive(long j10, PushMessage pushMessage, int i10);

    void onSdkInitSuccess(String str, String str2);
}
