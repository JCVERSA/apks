package com.transsion.apiinvoke.invoke.connect;

import com.transsion.apiinvoke.IApiService;
import com.transsion.apiinvoke.common.annotation.RouterApi;
import com.transsion.apiinvoke.invoke.ApiInvokeException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class ChannelServiceManager {
    private final Map<String, IApiService> mDynamicServiceInstance = new ConcurrentHashMap();
    private final Map<String, IApiService> mApiServiceMap = new ConcurrentHashMap();
    private final Map<String, APIConnection> mApiConnected = new ConcurrentHashMap();

    private synchronized void connectApiService(String str, IApiService iApiService) {
        try {
            APIConnection aPIConnection = this.mApiConnected.get(str);
            if (aPIConnection == null) {
                APIConnection aPIConnection2 = new APIConnection(iApiService);
                aPIConnection2.connectServer();
                this.mApiConnected.put(str, aPIConnection2);
            } else if (aPIConnection.getConnectState() != ConnectState.connected) {
                if (aPIConnection.getConnectState() == ConnectState.connecting) {
                } else {
                    aPIConnection.connectServer();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private <T extends IApiService> T serviceCreate(Class<T> cls, RouterApi routerApi) throws ApiInvokeException {
        T t;
        int iConstructorType = routerApi.constructorType();
        try {
            t = (T) this.mDynamicServiceInstance.get(routerApi.apiName());
            if (t == null) {
                t = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (t != null) {
            return t;
        }
        if (1 == iConstructorType) {
            try {
                return cls.newInstance();
            } catch (Exception e2) {
                e2.printStackTrace();
                throw new ApiInvokeException(408, "service new instance error...");
            }
        }
        try {
            return (T) cls.getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e3) {
            e3.printStackTrace();
            throw new ApiInvokeException(408, "service getInstance error...");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.transsion.apiinvoke.IApiService] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.transsion.apiinvoke.invoke.connect.ChannelServiceManager] */
    public <T extends IApiService> IApiService connect(Class<T> cls) {
        ?? r3;
        RouterApi[] routerApiArr = (RouterApi[]) cls.getAnnotationsByType(RouterApi.class);
        if (routerApiArr.length == 0) {
            throw new ApiInvokeException(405, "service not a valid RouterApi...");
        }
        RouterApi routerApi = routerApiArr[0];
        String strApiName = routerApi.apiName();
        synchronized (this.mApiServiceMap) {
            try {
                IApiService iApiService = this.mApiServiceMap.get(strApiName);
                r3 = iApiService;
                if (iApiService == null) {
                    Object objServiceCreate = serviceCreate(cls, routerApi);
                    if (objServiceCreate instanceof APIConnection) {
                        ((APIConnection) objServiceCreate).connectServer();
                    }
                    this.mApiServiceMap.put(routerApi.apiName(), (IApiService) objServiceCreate);
                    r3 = objServiceCreate;
                }
                connectApiService(strApiName, r3);
            } catch (Throwable th) {
                throw th;
            }
        }
        return r3;
    }

    public synchronized IApiService getConnectApi(String str) {
        return this.mApiServiceMap.get(str);
    }

    public void registerService(String str, IApiService iApiService) {
        this.mDynamicServiceInstance.put(str, iApiService);
    }

    public void unRegisterService(String str) {
        this.mDynamicServiceInstance.remove(str);
    }
}
