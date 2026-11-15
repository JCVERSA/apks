package com.transsion.push.service;

import android.content.Intent;
import com.transsion.push.utils.PushLogUtils;

public class PushJobIntentService extends JobIntentService {
    @Override
    public void e(Intent intent) {
        PushServiceHelper.g(intent);
    }

    @Override
    public void onCreate() {
        super.onCreate();
        PushLogUtils.LOG.g("PushJobIntentService---------->onCreate");
    }

    @Override
    public void onDestroy() {
        PushLogUtils.LOG.g("PushJobIntentService---------->onDestroy");
        super.onDestroy();
    }
}
