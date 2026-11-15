package com.cloud.tmc.kernel.worker;

import com.google.gson.JsonObject;

public interface SendToWorkerCallback {
    void onCallBack(JsonObject jsonObject);
}
