package com.transsion.apiinvoke.monitor;

import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.TypeValuePair;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;
import java.util.List;

public class RecordItem implements Serializable {
    public static int RECORD_TYPE_PUBLISH = 1;
    public static int RECORD_TYPE_REQUEST = 0;
    private static final long serialVersionUID = -7834055377877863333L;
    public boolean async;
    public long coastTime;
    public String errorMsg;
    public ApiRequestItem mOriginData;
    public PublishRecordItem publishItem;
    public int recordType;
    public String result;
    public int resultCode;
    public long startTime;
    public boolean success = false;

    public static class ApiRequestItem implements Serializable {
        private static final long serialVersionUID = -1538198447979700449L;
        public String apiMethod;
        public String apiName;
        public String channel;
        public String packageName;
        public TypeValuePair[] parameters;
        public boolean retryOnReConnect;

        public String toString() {
            return "ApiRequestItem{channel='" + this.channel + "', apiName='" + this.apiName + "', apiMethod='" + this.apiMethod + "', packageName='" + this.packageName + "', retryOnReConnect=" + this.retryOnReConnect + '}';
        }

        private ApiRequestItem(ApiRequest apiRequest) {
            this.channel = apiRequest.getChannelName();
            this.apiName = apiRequest.getApiName();
            this.apiMethod = apiRequest.getApiMethod();
            this.packageName = apiRequest.packageName();
            TypeValuePair[] requestParameter = apiRequest.getRequestParameter();
            this.parameters = requestParameter;
            if (RecordItem.isAllPrimitiveParams(requestParameter)) {
                this.retryOnReConnect = apiRequest.retryOnReConnect();
            } else {
                this.parameters = null;
            }
        }
    }

    public static class PublishRecordItem implements Serializable {
        private static final long serialVersionUID = 979310069700442632L;
        public String matcher;
        public Serializable publishData;

        private PublishRecordItem(String str, Serializable serializable) {
            this.matcher = str;
            this.publishData = serializable;
        }
    }

    public static RecordItem createPublish(ApiRequest apiRequest, String str, Serializable serializable, long j) {
        RecordItem recordItem = new RecordItem();
        recordItem.mOriginData = new ApiRequestItem(apiRequest);
        recordItem.publishItem = new PublishRecordItem(str, serializable);
        recordItem.async = true;
        recordItem.recordType = RECORD_TYPE_PUBLISH;
        recordItem.startTime = j;
        return recordItem;
    }

    public static RecordItem createRequest(ApiRequest apiRequest, long j, boolean z) {
        RecordItem recordItem = new RecordItem();
        recordItem.mOriginData = new ApiRequestItem(apiRequest);
        recordItem.async = z;
        recordItem.recordType = RECORD_TYPE_REQUEST;
        recordItem.startTime = j;
        return recordItem;
    }

    public static boolean isAllPrimitiveParams(TypeValuePair[] typeValuePairArr) {
        if (typeValuePairArr != null && typeValuePairArr.length != 0) {
            for (TypeValuePair typeValuePair : typeValuePairArr) {
                if (!typeValuePair.isPrimitive() && !isCommonType(typeValuePair.getValueType())) {
                    return false;
                }
            }
        }
        return true;
    }

    private static boolean isAssignableFrom(Class cls, Class cls2) {
        if (cls == null || cls2 == null) {
            return false;
        }
        return cls2.isAssignableFrom(cls);
    }

    private static boolean isCommonType(Class<?> cls) {
        return isAssignableFrom(cls, HashMap.class) || isAssignableFrom(cls, LinkedHashMap.class) || isAssignableFrom(cls, Hashtable.class) || isAssignableFrom(cls, ArrayList.class) || isAssignableFrom(cls, List.class);
    }

    public void clearRetryOnReConnect() {
        ApiRequestItem apiRequestItem = this.mOriginData;
        if (apiRequestItem == null) {
            return;
        }
        apiRequestItem.retryOnReConnect = false;
    }

    public String getChannelName() {
        ApiRequestItem apiRequestItem = this.mOriginData;
        return apiRequestItem != null ? apiRequestItem.channel : "";
    }

    public TypeValuePair[] getRequestParameter() {
        ApiRequestItem apiRequestItem = this.mOriginData;
        return apiRequestItem != null ? apiRequestItem.parameters : new TypeValuePair[0];
    }

    public String getRouterUri() {
        if (this.mOriginData == null) {
            return "";
        }
        return this.mOriginData.apiName + ">" + this.mOriginData.apiMethod;
    }

    public void setResult(ApiResponse apiResponse, long j) {
        this.coastTime = j - this.startTime;
        if (apiResponse != null) {
            this.resultCode = apiResponse.resultCode;
            this.errorMsg = apiResponse.errorMsg;
            Object objContent = apiResponse.content();
            this.result = objContent != null ? objContent.toString() : "";
            this.success = apiResponse.isSuccess();
        }
    }

    public boolean shouldRetryOnReConnect() {
        ApiRequestItem apiRequestItem;
        return (this.success || (apiRequestItem = this.mOriginData) == null || !apiRequestItem.retryOnReConnect) ? false : true;
    }

    public boolean supportRetry() {
        ApiRequestItem apiRequestItem = this.mOriginData;
        return apiRequestItem != null && apiRequestItem.retryOnReConnect;
    }

    public String toString() {
        return "RecordItem{recordType='" + this.recordType + "', mOriginData='" + this.mOriginData + "', resultCode=" + this.resultCode + ", errorMsg='" + this.errorMsg + "', success=" + this.success + ", startTime=" + this.startTime + ", coastTime=" + this.coastTime + '}';
    }

    public ApiRequest createRequest() {
        return new ApiRequest.Builder().channel(this.mOriginData.channel).apiName(this.mOriginData.apiName).apiMethod(this.mOriginData.apiMethod).setParameters(this.mOriginData.parameters).retryOnReConnect(false).build();
    }
}
