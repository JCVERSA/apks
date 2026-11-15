package com.cloud.tmc.kernel.extension;

import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.BridgeResponse;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonObject;
import java.util.HashMap;

public class DefaultBridgeCallback implements BridgeCallback {
    private static final String TAG = "TmcEngine:DefaultBridgeCallback";
    private final boolean isSticky;
    private final BridgeResponseHelper responseHelper;

    public DefaultBridgeCallback(BridgeResponseHelper bridgeResponseHelper) {
        this(bridgeResponseHelper, false);
    }

    @Override
    public void close(JsonObject jsonObject) {
        if (this.isSticky) {
            this.responseHelper.sendBridgeResultCloseKept(jsonObject);
        }
    }

    @Override
    public String getCallbackId() {
        return this.responseHelper.getCallbackId();
    }

    public BridgeResponseHelper getResponseHelper() {
        return this.responseHelper;
    }

    public boolean isSticky() {
        return this.isSticky;
    }

    @Override
    public void sendBridgeResponse(BridgeResponse bridgeResponse) {
        if (bridgeResponse == null) {
            bridgeResponse = BridgeResponse.SUCCESS;
        }
        if (bridgeResponse instanceof BridgeResponse.Error) {
            BridgeResponse.Error error = (BridgeResponse.Error) bridgeResponse;
            this.responseHelper.sendError(error.getErrorCode(), error.getErrorMessage());
            return;
        }
        JsonObject jsonObject = bridgeResponse.get();
        if (this.isSticky) {
            this.responseHelper.sendBridgeResultWithCallbackKept(jsonObject);
        } else {
            this.responseHelper.sendBridgeResult(jsonObject);
        }
    }

    @Override
    public void sendFailMapResponse() {
        sendFailResponse(new HashMap<>());
    }

    @Override
    public void sendFailResponse() {
        sendFailResponse(new JsonObject());
    }

    @Override
    public void sendJSONResponse(JsonObject jsonObject, boolean z10) {
        if (z10) {
            this.responseHelper.sendBridgeResultWithCallbackKept(jsonObject);
        } else {
            this.responseHelper.sendBridgeResult(jsonObject);
        }
    }

    @Override
    public void sendMapResponse(HashMap<String, Object> map) {
        if (this.isSticky) {
            this.responseHelper.sendBridgeMapResultWithCallbackKept(map);
        } else {
            this.responseHelper.sendBridgeMapResult(map);
        }
    }

    @Override
    public void sendSuccessMapResponse() {
        sendSuccessResponse(new HashMap<>());
    }

    @Override
    public void sendSuccessResponse() {
        sendSuccessResponse(new JsonObject());
    }

    public DefaultBridgeCallback(BridgeResponseHelper bridgeResponseHelper, boolean z10) {
        this.isSticky = z10;
        this.responseHelper = bridgeResponseHelper;
    }

    @Override
    public void sendFailResponse(JsonObject jsonObject) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "false");
        sendJSONResponse(jsonObject);
    }

    @Override
    public void sendSuccessResponse(JsonObject jsonObject) {
        if (jsonObject == null) {
            jsonObject = new JsonObject();
        }
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "true");
        sendJSONResponse(jsonObject);
    }

    @Override
    public void close() {
        close(new JsonObject());
    }

    @Override
    public void sendJSONResponse(JsonObject jsonObject) {
        if (this.isSticky) {
            this.responseHelper.sendBridgeResultWithCallbackKept(jsonObject);
        } else {
            this.responseHelper.sendBridgeResult(jsonObject);
        }
    }

    @Override
    public void sendFailResponse(HashMap<String, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "false");
        sendMapResponse(map);
    }

    @Override
    public void sendSuccessResponse(HashMap<String, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        map.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "true");
        sendMapResponse(map);
    }
}
