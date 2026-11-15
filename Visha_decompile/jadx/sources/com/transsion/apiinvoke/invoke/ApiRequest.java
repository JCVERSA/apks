package com.transsion.apiinvoke.invoke;

import com.transsion.apiinvoke.channel.ApiChannel;
import com.transsion.apiinvoke.channel.LocalChannel;
import com.transsion.apiinvoke.common.ApiInvokeLog;
import com.transsion.apiinvoke.common.router.ApiRouterManager;
import com.transsion.apiinvoke.common.router.ChannelEntity;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.invoke.api.ApiPublisher;
import com.transsion.apiinvoke.invoke.api.InvokeChannel;
import com.transsion.apiinvoke.monitor.ApiInvokeMonitor;
import com.transsion.apiinvoke.subscribe.Publisher;
import com.transsion.apiinvoke.subscribe.SubscribeManager;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ApiRequest implements Serializable {
    private static final long serialVersionUID = -4375668187269167654L;
    private final Builder mBuilder;
    private final RouterUri mRouterUri;

    private static TypeValuePair createParameter(Object obj) {
        return obj == null ? TypeValuePair.empty() : TypeValuePair.createNoNull(obj);
    }

    private String foundRequestChannel() {
        ChannelEntity channelEntityFindChannel;
        String str = this.mBuilder.channel;
        if ((str != null && !"".equals(str)) || (channelEntityFindChannel = ApiRouterManager.findChannel(this.mBuilder.apiName)) == null) {
            return str;
        }
        String str2 = channelEntityFindChannel.channelName;
        this.mBuilder.channel = str2;
        return str2;
    }

    public void lambda$invokeAsync$0(ApiCallback apiCallback, ApiResponse apiResponse) {
        if (apiCallback != null) {
            apiCallback.response(apiResponse);
        }
        traceEnd(apiResponse, apiCallback);
    }

    private void traceEnd(ApiResponse apiResponse, ApiCallback apiCallback) {
        ApiInvokeMonitor.getInstance().traceEnd(this, apiResponse, apiCallback);
    }

    private void tracePublish(String str, Serializable serializable) {
        ApiInvokeMonitor.getInstance().tracePublish(this, str, serializable);
    }

    private void traceStart(boolean z) {
        ApiInvokeMonitor.getInstance().traceRequest(this, z);
    }

    public void clearRetryOnReConnect() {
        this.mBuilder.retryOnReConnect = false;
    }

    public void connect(ApiCallback apiCallback) {
        InvokeChannel invokeChannelFindRemoteChannel = ApiChannel.getInstance().findRemoteChannel(this.mBuilder.channel == null ? this.mBuilder.packageName : this.mBuilder.channel);
        if (invokeChannelFindRemoteChannel == null) {
            ApiResponse apiResponseChannelNotFound = ApiResponse.channelNotFound(getChannelName(), getApiName());
            if (apiCallback != null) {
                apiCallback.response(apiResponseChannelNotFound);
                return;
            }
            return;
        }
        invokeChannelFindRemoteChannel.connectChannel();
        if (apiCallback != null) {
            apiCallback.response(invokeChannelFindRemoteChannel.getApiInterface() != null ? ApiResponse.success(Boolean.TRUE) : ApiResponse.onError(-1, "connect failed"));
        }
    }

    public String getApiMethod() {
        return this.mRouterUri.getApiMethod();
    }

    public String getApiName() {
        return this.mRouterUri.getApiName();
    }

    public String getChannelName() {
        return this.mBuilder.channel;
    }

    public List<TypeValuePair> getParameters() {
        return this.mBuilder.parameters;
    }

    public TypeValuePair[] getRequestParameter() {
        if (this.mBuilder.parameters == null) {
            return null;
        }
        return (TypeValuePair[]) this.mBuilder.parameters.toArray(new TypeValuePair[this.mBuilder.parameters.size()]);
    }

    public String getRouterUri() {
        return this.mRouterUri.toString();
    }

    public TypeValuePair[] getTypeValues() {
        TypeValuePair[] requestParameter = getRequestParameter();
        if (requestParameter == null || requestParameter.length == 0) {
            return null;
        }
        return requestParameter;
    }

    public synchronized ApiResponse invoke() {
        traceStart(false);
        InvokeChannel channel = ApiChannel.getInstance().getChannel(this.mBuilder.channel, this.mBuilder.apiName);
        if (channel == null) {
            ApiResponse apiResponseChannelNotFound = ApiResponse.channelNotFound(getChannelName(), getApiName());
            traceEnd(apiResponseChannelNotFound, null);
            return apiResponseChannelNotFound;
        }
        ApiResponse apiResponseInvokeApi = channel.invokeApi(this, InvokeChain.obtain());
        traceEnd(apiResponseInvokeApi, null);
        return apiResponseInvokeApi;
    }

    public synchronized void invokeAsync(final ApiCallback apiCallback) {
        try {
            traceStart(true);
            InvokeChannel channel = ApiChannel.getInstance().getChannel(this.mBuilder.channel, this.mBuilder.apiName);
            if (channel != null) {
                channel.invokeApiAsync(this, InvokeChain.obtain(), new ApiCallback() {
                    @Override
                    public final void response(ApiResponse apiResponse) {
                        this.a.lambda$invokeAsync$0(apiCallback, apiResponse);
                    }
                });
                return;
            }
            ApiResponse apiResponseChannelNotFound = ApiResponse.channelNotFound(getChannelName(), getApiName());
            if (apiCallback != null) {
                apiCallback.response(apiResponseChannelNotFound);
            }
            traceEnd(apiResponseChannelNotFound, apiCallback);
        } catch (Throwable th) {
            throw th;
        }
    }

    public boolean keepLiving() {
        return this.mBuilder.keepLiving;
    }

    public long livingTime() {
        if (keepLiving()) {
            return -1L;
        }
        return this.mBuilder.livingTime;
    }

    public String packageName() {
        return this.mBuilder.packageName;
    }

    public synchronized boolean publishData(String str, Serializable serializable) {
        tracePublish(str, serializable);
        List<InvokeChannel> allChannel = ApiChannel.getInstance().getAllChannel(this.mBuilder.channel, this.mBuilder.apiName);
        if (allChannel.size() == 0) {
            ApiInvokeLog.logInfo("ApiRequest", "publishData, channels == 0, matcher = " + str);
            traceEnd(ApiResponse.channelNotConnect(this.mBuilder.channel), null);
            return false;
        }
        ApiInvokeLog.logInfo("ApiRequest", "channels size , " + allChannel.size());
        Publisher.Host host = new Publisher.Host(this.mBuilder.channel, this.mBuilder.apiName);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        synchronized (allChannel) {
            try {
                for (InvokeChannel invokeChannel : allChannel) {
                    if (invokeChannel instanceof LocalChannel) {
                        arrayList.add(invokeChannel);
                    } else {
                        arrayList2.add(invokeChannel);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        InvokeChain invokeChainObtain = InvokeChain.obtain();
        Iterator it = arrayList.iterator();
        ApiPublisher apiPublisher = null;
        while (it.hasNext()) {
            apiPublisher = ((InvokeChannel) it.next()).getApiPublisher(host);
            if (apiPublisher != null) {
                try {
                    apiPublisher.publishData(Publisher.create(host, str), invokeChainObtain, serializable);
                    ApiInvokeLog.logInfo("ApiRequest", "do publishData to local, matcher = " + str);
                } catch (Exception e) {
                    ApiInvokeLog.logError("ApiRequest", e.getMessage());
                }
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ApiPublisher apiPublisher2 = ((InvokeChannel) it2.next()).getApiPublisher(host);
            if (apiPublisher2 != null && apiPublisher2 != apiPublisher) {
                SubscribeManager.getInstance(host).publishToChannel(apiPublisher2, invokeChainObtain, str, serializable);
                ApiInvokeLog.logWarning("ApiRequest", "do publishData to remote " + str);
            }
        }
        traceEnd(ApiResponse.success(Boolean.TRUE), null);
        return true;
    }

    public boolean retryOnReConnect() {
        return this.mBuilder.retryOnReConnect;
    }

    public String toString() {
        return this.mRouterUri.toString();
    }

    private ApiRequest(Builder builder) {
        this.mBuilder = builder;
        this.mRouterUri = new RouterUri(builder.apiName, builder.apiMethod);
    }

    public static class Builder implements Serializable {
        private static final long serialVersionUID = -1297360453262066454L;
        private String apiMethod;
        private String apiName;
        private String channel;
        private boolean keepLiving = false;
        private long livingTime = 120000;
        private String packageName;
        private List<TypeValuePair> parameters;
        private boolean retryOnReConnect;

        public <T> Builder addParameter(T t) {
            TypeValuePair typeValuePairCreateTypeMapping = TypeValuePair.createTypeMapping(t);
            if (this.parameters == null) {
                this.parameters = new ArrayList();
            }
            Class<?> cls = t != null ? t.getClass() : null;
            if (cls == null || !cls.isArray() || Array.getLength(t) != 0) {
                this.parameters.add(typeValuePairCreateTypeMapping);
            }
            return this;
        }

        public Builder apiMethod(String str) {
            this.apiMethod = str;
            return this;
        }

        public Builder apiName(String str) {
            this.apiName = str;
            return this;
        }

        public ApiRequest build() {
            return new ApiRequest(this);
        }

        public Builder channel(String str) {
            this.channel = str;
            return this;
        }

        public Builder keepLiving(boolean z) {
            this.keepLiving = z;
            return this;
        }

        public Builder livingTime(long j) {
            this.livingTime = j;
            return this;
        }

        public Builder packageName(String str) {
            this.packageName = str;
            return this;
        }

        public Builder retryOnReConnect(boolean z) {
            this.retryOnReConnect = z;
            return this;
        }

        public Builder setParameters(TypeValuePair[] typeValuePairArr) {
            if (typeValuePairArr != null && typeValuePairArr.length != 0) {
                if (this.parameters == null) {
                    this.parameters = new ArrayList();
                }
                for (TypeValuePair typeValuePair : typeValuePairArr) {
                    this.parameters.add(typeValuePair);
                }
            }
            return this;
        }

        public <T> Builder addParameter(TypeValuePair<T> typeValuePair, TypeValuePair<T>... typeValuePairArr) {
            if (this.parameters == null) {
                this.parameters = new ArrayList();
            }
            this.parameters.add(typeValuePair);
            if (typeValuePairArr != null && typeValuePairArr.length > 0) {
                for (TypeValuePair<T> typeValuePair2 : typeValuePairArr) {
                    this.parameters.add(typeValuePair2);
                }
            }
            return this;
        }
    }
}
