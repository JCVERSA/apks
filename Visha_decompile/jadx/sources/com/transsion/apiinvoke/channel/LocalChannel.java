package com.transsion.apiinvoke.channel;

import com.transsion.apiinvoke.IApiService;
import com.transsion.apiinvoke.channel.LocalChannel;
import com.transsion.apiinvoke.common.router.APIClassEntity;
import com.transsion.apiinvoke.common.router.ApiRouterManager;
import com.transsion.apiinvoke.common.router.ChannelEntity;
import com.transsion.apiinvoke.invoke.ApiInvokeException;
import com.transsion.apiinvoke.invoke.ApiRequest;
import com.transsion.apiinvoke.invoke.ApiResponse;
import com.transsion.apiinvoke.invoke.InvokeChain;
import com.transsion.apiinvoke.invoke.SimpleApiInterface;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.invoke.api.ApiInterface;
import com.transsion.apiinvoke.invoke.api.ApiPublisher;
import com.transsion.apiinvoke.invoke.api.IApiServiceImpl;
import com.transsion.apiinvoke.invoke.api.InvokeChannel;
import com.transsion.apiinvoke.invoke.connect.ChannelServiceManager;
import com.transsion.apiinvoke.subscribe.Publisher;
import com.transsion.apiinvoke.subscribe.SubscribeManager;
import java.io.Serializable;

public class LocalChannel implements InvokeChannel {
    private final LocalInvokeHandle mApiInterface;
    private final ChannelEntity mChannel;
    private final ChannelServiceManager serviceManager = new ChannelServiceManager();

    public static class APIServiceImplProxy implements IApiServiceImpl {
        private IApiService mApiService;
        private SimpleApiInterface mInterface;

        @Override
        public ApiInterface getApiInterface() {
            return this.mInterface;
        }

        @Override
        public ApiPublisher getApiPublisher(Publisher.Host host) {
            return LocalChannel.getLocalApiPublisher(host);
        }

        private APIServiceImplProxy(IApiService iApiService) {
            this.mApiService = iApiService;
            this.mInterface = new SimpleApiInterface(iApiService);
        }
    }

    public static class ApiCallbackWrapper implements ApiCallback {
        private ApiCallback mCallback;
        private ApiRequest mRequest;

        public ApiCallbackWrapper(ApiRequest apiRequest, ApiCallback apiCallback) {
            this.mRequest = apiRequest;
            this.mCallback = apiCallback;
        }

        @Override
        public void response(ApiResponse apiResponse) {
            ApiCallback apiCallback = this.mCallback;
            if (apiCallback != null) {
                apiCallback.response(apiResponse);
            }
        }
    }

    public static class LocalInvokeHandle implements ApiInterface, ApiPublisher {
        private String channel;
        private ChannelServiceManager serviceManager;

        private IApiServiceImpl getApiServiceImpl(IApiService iApiService) {
            return iApiService instanceof IApiServiceImpl ? (IApiServiceImpl) iApiService : new APIServiceImplProxy(iApiService);
        }

        @Override
        public ApiResponse apiInvoke(ApiRequest apiRequest, InvokeChain invokeChain) {
            try {
                String apiName = apiRequest.getApiName();
                IApiService connectApi = this.serviceManager.getConnectApi(apiName);
                if (connectApi == null) {
                    connectApi = connectToApiService(apiName);
                }
                if (connectApi == null) {
                    throw new ApiInvokeException(408, "service is NULL" + apiName);
                }
                ApiInterface apiInterface = getApiServiceImpl(connectApi).getApiInterface();
                if (apiInterface != null) {
                    return apiInterface.apiInvoke(apiRequest, invokeChain);
                }
                throw new ApiInvokeException(404, "service is NULL" + apiName);
            } catch (ApiInvokeException e) {
                return ApiResponse.onException(e);
            }
        }

        @Override
        public void apiInvokeAsync(ApiRequest apiRequest, InvokeChain invokeChain, ApiCallback apiCallback) {
            ApiCallbackWrapper apiCallbackWrapper = new ApiCallbackWrapper(apiRequest, apiCallback);
            try {
                String apiName = apiRequest.getApiName();
                IApiService connectApi = this.serviceManager.getConnectApi(apiName);
                if (connectApi == null) {
                    connectApi = connectToApiService(apiName);
                }
                if (connectApi == null) {
                    throw new ApiInvokeException(408, "service is NULL" + apiName);
                }
                ApiInterface apiInterface = getApiServiceImpl(connectApi).getApiInterface();
                if (apiInterface != null) {
                    apiInterface.apiInvokeAsync(apiRequest, invokeChain, apiCallbackWrapper);
                    return;
                }
                throw new ApiInvokeException(404, "service is NULL" + apiName);
            } catch (ApiInvokeException e) {
                apiCallbackWrapper.response(ApiResponse.onException(e));
            }
        }

        public IApiService connectToApiService(String str) {
            APIClassEntity apiEntity = ApiRouterManager.getApiEntity(str);
            if (apiEntity == null) {
                throw new ApiInvokeException(404, "api not registered " + str);
            }
            Class cls = apiEntity.serviceClass;
            if (cls == null) {
                new ApiInvokeException(406, "not found entity.apiHandle");
            }
            if (IApiService.class.isAssignableFrom(cls)) {
                return this.serviceManager.connect(cls);
            }
            throw new ApiInvokeException(405, "not a valid IApiService");
        }

        @Override
        public void publishData(Publisher publisher, InvokeChain invokeChain, Serializable serializable) {
            Publisher.Host host = publisher.host;
            if (host == null) {
                return;
            }
            try {
                ApiPublisher localApiPublisher = LocalChannel.getLocalApiPublisher(host);
                if (localApiPublisher != null) {
                    localApiPublisher.publishData(publisher, invokeChain, serializable);
                }
            } catch (Exception unused) {
                throw new ApiInvokeException(413, "publish error");
            }
        }

        private LocalInvokeHandle(String str) {
            this.serviceManager = new ChannelServiceManager();
            this.channel = str;
        }
    }

    public LocalChannel(ChannelEntity channelEntity) {
        this.mChannel = channelEntity;
        this.mApiInterface = new LocalInvokeHandle(channelEntity.channelName);
    }

    public static ApiPublisher<Serializable> getLocalApiPublisher(Publisher.Host host) {
        return SubscribeManager.getInstance(host);
    }

    public static void lambda$invokeApiAsync$0(ApiCallback apiCallback, ApiResponse apiResponse) {
        if (apiCallback != null) {
            apiCallback.response(apiResponse);
        }
    }

    @Override
    public void connectChannel() {
    }

    @Override
    public void disconnectChannel() {
    }

    @Override
    public ApiInterface getApiInterface() {
        return this.mApiInterface;
    }

    @Override
    public ApiPublisher getApiPublisher(Publisher.Host host) {
        return this.mApiInterface;
    }

    public ChannelServiceManager getServiceManager() {
        return this.serviceManager;
    }

    @Override
    public ApiResponse invokeApi(ApiRequest apiRequest, InvokeChain invokeChain) {
        ApiInterface apiInterface = getApiInterface();
        return apiInterface == null ? ApiResponse.channelNotConnect(this.mChannel.channelName) : apiInterface.apiInvoke(apiRequest, invokeChain);
    }

    @Override
    public void invokeApiAsync(ApiRequest apiRequest, InvokeChain invokeChain, final ApiCallback apiCallback) {
        ApiInterface apiInterface = getApiInterface();
        if (apiInterface != null) {
            apiInterface.apiInvokeAsync(apiRequest, invokeChain, new ApiCallback() {
                @Override
                public final void response(ApiResponse apiResponse) {
                    LocalChannel.lambda$invokeApiAsync$0(apiCallback, apiResponse);
                }
            });
        } else if (apiCallback != null) {
            apiCallback.response(ApiResponse.channelNotConnect(this.mChannel.channelName));
        }
    }

    @Override
    public boolean isInChannel(String str) {
        ChannelEntity channelEntity = this.mChannel;
        return channelEntity != null && channelEntity.isInChannel(str);
    }
}
