package com.transsion.apiinvoke.invoke;

import com.transsion.apiinvoke.IApiService;
import com.transsion.apiinvoke.common.annotation.RouterMethod;
import com.transsion.apiinvoke.invoke.api.ApiCallback;
import com.transsion.apiinvoke.invoke.api.ApiInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public class SimpleApiInterface implements ApiInterface {
    private Class<?> mApiClazz;
    private final Object mApiObject;

    public SimpleApiInterface(IApiService iApiService) {
        this.mApiClazz = iApiService.getClass();
        this.mApiObject = iApiService;
    }

    public static Method getApiMethod(Class<?> cls, String str, TypeValuePair[] typeValuePairArr) {
        Method method = null;
        if (cls == null) {
            return null;
        }
        Method[] methods = cls.getMethods();
        if (methods != null && methods.length != 0) {
            int length = typeValuePairArr != null ? typeValuePairArr.length : 0;
            int length2 = 0;
            for (Method method2 : methods) {
                RouterMethod routerMethod = (RouterMethod) method2.getAnnotation(RouterMethod.class);
                if (routerMethod != null && routerMethod.methodName().equals(str)) {
                    Class<?>[] parameterTypes = method2.getParameterTypes();
                    if (parameterTypes.length == length) {
                        return method2;
                    }
                    if (parameterTypes.length >= length2) {
                        length2 = parameterTypes.length;
                        method = method2;
                    }
                }
            }
        }
        return method;
    }

    @Override
    public ApiResponse apiInvoke(ApiRequest apiRequest, InvokeChain invokeChain) {
        String apiName = apiRequest.getApiName();
        String apiMethod = apiRequest.getApiMethod();
        TypeValuePair[] requestParameter = apiRequest.getRequestParameter();
        Class<?> cls = this.mApiClazz;
        if (cls == null) {
            throw ApiMethodException.onApiClassNotFound(apiName);
        }
        Method apiMethod2 = getApiMethod(cls, apiMethod, requestParameter);
        if (apiMethod2 == null) {
            throw ApiMethodException.onMethodNotFound(apiMethod);
        }
        try {
            return ApiResponse.success((Modifier.isStatic(apiMethod2.getModifiers()) ? new APIInvokeImpl(null, apiMethod2, requestParameter, invokeChain) : new APIInvokeImpl(this.mApiObject, apiMethod2, requestParameter, invokeChain)).invoke());
        } catch (IllegalAccessException | RuntimeException | InvocationTargetException e) {
            e.printStackTrace();
            throw ApiMethodException.invokeMethodError(apiName, this.mApiClazz.getName());
        }
    }

    @Override
    public void apiInvokeAsync(ApiRequest apiRequest, InvokeChain invokeChain, ApiCallback apiCallback) throws ApiMethodException {
        String apiMethod = apiRequest.getApiMethod();
        TypeValuePair[] requestParameter = apiRequest.getRequestParameter();
        if (this.mApiClazz == null && apiCallback != null) {
            apiCallback.response(ApiResponse.onClassNotFound(apiRequest.getApiName()));
        }
        Method apiMethod2 = getApiMethod(this.mApiClazz, apiMethod, requestParameter);
        if (apiMethod2 == null) {
            if (apiCallback != null) {
                apiCallback.response(ApiResponse.onServiceMethodNotFound(this.mApiClazz.getName(), apiMethod));
                return;
            }
            return;
        }
        try {
            (Modifier.isStatic(apiMethod2.getModifiers()) ? new APIInvokeImpl(null, apiMethod2, requestParameter, invokeChain) : new APIInvokeImpl(this.mApiObject, apiMethod2, requestParameter, invokeChain)).invokeAsync(apiCallback);
        } catch (IllegalAccessException | RuntimeException | InvocationTargetException e) {
            e.printStackTrace();
            if (apiCallback != null) {
                apiCallback.response(ApiResponse.invokeError(apiMethod, requestParameter));
            }
        }
    }

    public SimpleApiInterface(Object obj, String str) {
        this.mApiObject = obj;
        try {
            this.mApiClazz = Class.forName(str);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
