package com.cloud.tmc.kernel.bridge;

import com.google.gson.JsonObject;

public interface RenderBridge {
    void sendToRender(RenderCallContext renderCallContext, SendToRenderCallback sendToRenderCallback);

    void setGlobalObject(String str, JsonObject jsonObject);

    SendToRenderCallback takeCallback(String str);
}
