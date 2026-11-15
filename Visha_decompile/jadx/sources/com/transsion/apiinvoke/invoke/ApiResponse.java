package com.transsion.apiinvoke.invoke;

import java.io.Serializable;

public class ApiResponse implements Serializable {
    private static final long serialVersionUID = 2204200404948651466L;
    public String errorMsg;
    public int resultCode;
    private TypeValuePair resultData;

    public ApiResponse(int i) {
        this(i, "success");
    }

    public static ApiResponse channelConnectFault(String str) {
        return new ApiResponse(413, "Api channel connect fault : channel " + str);
    }

    public static ApiResponse channelNameIsNull(String str) {
        return new ApiResponse(RspCode.ERROR_CHANNEL_NOT_REGISTER, "Api channel name is null  apiName" + str);
    }

    public static ApiResponse channelNotConnect(String str) {
        return new ApiResponse(301, "Api channel not connect : channel " + str);
    }

    public static ApiResponse channelNotFound(String str, String str2) {
        return new ApiResponse(RspCode.ERROR_CHANNEL_NOT_REGISTER, "Api channel not found : channel " + str + " apiName " + str2);
    }

    public static ApiResponse connectSuccess(String str) {
        ApiResponse apiResponse = new ApiResponse(200);
        apiResponse.resultData = TypeValuePair.createNoNull(str);
        return apiResponse;
    }

    public static ApiResponse empty(int i) {
        return new ApiResponse(403);
    }

    public static ApiResponse invalidPublishToRemote(String str) {
        return new ApiResponse(RspCode.ERROR_INVALID_PUBLISH_TO_REMOTE, "Api channel name is null  apiName" + str);
    }

    public static ApiResponse invokeError(String str, Object[] objArr) {
        StringBuilder sb = new StringBuilder();
        if (objArr != null) {
            for (Object obj : objArr) {
                sb.append(obj);
                sb.append(", ");
            }
        }
        return new ApiResponse(401, "Api invoke target error apiName : apiMethod : " + str + "\n args " + ((Object) sb));
    }

    public static ApiResponse invokeRemoteError(String str, String str2) {
        return new ApiResponse(407, "client invoke remote error : apiName " + str + " apiMethod " + str2);
    }

    public static ApiResponse knowError(String str, String str2) {
        return new ApiResponse(400, "know error for : apiName " + str + " apiMethod " + str2);
    }

    public static ApiResponse onClassNotFound(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("Api service class not found : ");
        if (str == null) {
            str = "";
        }
        sb.append(str);
        return new ApiResponse(406, sb.toString());
    }

    public static ApiResponse onError(int i, String str) {
        return new ApiResponse(403, str);
    }

    public static ApiResponse onException(ApiInvokeException apiInvokeException) {
        return new ApiResponse(apiInvokeException.getCode(), apiInvokeException.getMessage());
    }

    public static ApiResponse onInterceptorDined(String str) {
        return new ApiResponse(503, "interceptor dined for " + str);
    }

    public static ApiResponse onPublishPermissionDenied(String str, String str2) {
        return new ApiResponse(501, "publish target permission denied : apiName " + str + " apiMethod " + str2);
    }

    public static ApiResponse onRequestPermissionDenied(String str, String str2) {
        return new ApiResponse(500, "request target permission denied : apiName " + str + " apiMethod " + str2);
    }

    public static ApiResponse onRequestRemotePrevent(String str, String str2) {
        return new ApiResponse(502, "request target permission denied : apiName " + str + " apiMethod " + str2);
    }

    public static ApiResponse onServiceMethodNotFound(String str, String str2) {
        return new ApiResponse(402, str + " no such method for " + str2);
    }

    public static ApiResponse onServiceNotValid(String str) {
        return new ApiResponse(405, str + " is not a service handle");
    }

    public static ApiResponse publishRemoteChannelNotFount(String str, String str2) {
        return new ApiResponse(RspCode.ERROR_SERVICE_REMOTE_NOT_FOUND, "publish remote error : channel " + str + " apiName " + str2);
    }

    public static ApiResponse publishRemoteError(String str, String str2) {
        return new ApiResponse(RspCode.ERROR_SERVICE_PUBLISH_REMOTE, "publish remote error : channel " + str + " apiName " + str2);
    }

    public static ApiResponse serviceConnectFault(String str) {
        return new ApiResponse(403, "Api service connect fault : " + str);
    }

    public static ApiResponse serviceNotFound(String str) {
        return new ApiResponse(404, "Api service not Registered : " + str);
    }

    public static ApiResponse success(Object obj) {
        ApiResponse apiResponse = new ApiResponse(0);
        if (obj == null) {
            apiResponse.resultData = TypeValuePair.empty();
        } else {
            apiResponse.resultData = TypeValuePair.createNoNull(obj);
        }
        return apiResponse;
    }

    public ApiResponse applyMsg(String str) {
        this.errorMsg += "\n" + str;
        return this;
    }

    public <T> T content() {
        TypeValuePair typeValuePair = this.resultData;
        if (typeValuePair != null) {
            return (T) typeValuePair.getValue();
        }
        return null;
    }

    public TypeValuePair getResultData() {
        return this.resultData;
    }

    public boolean isSuccess() {
        return this.resultCode == 0;
    }

    public ApiResponse(int i, String str) {
        this.resultCode = i;
        this.errorMsg = str;
    }

    public static ApiResponse knowError(String str, String str2, Throwable th) {
        return new ApiResponse(400, "know error for : apiName " + str + " apiMethod " + str2 + "\n" + th.getMessage());
    }

    public ApiResponse(int i, String str, TypeValuePair typeValuePair) {
        this.resultCode = i;
        this.errorMsg = str;
        this.resultData = typeValuePair;
    }
}
