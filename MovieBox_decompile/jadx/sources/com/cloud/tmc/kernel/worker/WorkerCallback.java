package com.cloud.tmc.kernel.worker;

import com.google.gson.JsonObject;

public interface WorkerCallback {
    void onCallBack(JsonObject jsonObject);
}
