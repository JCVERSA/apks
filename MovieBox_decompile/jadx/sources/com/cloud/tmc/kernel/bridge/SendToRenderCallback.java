package com.cloud.tmc.kernel.bridge;

import com.google.gson.JsonObject;

public interface SendToRenderCallback {
    void onCallBack(JsonObject jsonObject);
}
