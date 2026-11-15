package com.transsion.apiinvoke.invoke;

import com.transsion.apiinvoke.invoke.api.ApiCallback;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class APIInvokeImpl {
    private final Object apiObject;
    private final InvokeChain invokeChain;
    private final Method method;
    private final TypeValuePair[] parameters;

    public static class TypeValueMatcher {
        private final boolean apiWithCallback;
        private final TypeValuePair[] pairs;
        private final Class<?>[] typeClass;

        private Object mappingResult(Class<?> cls, Object obj) throws NumberFormatException {
            if (obj == null) {
                return null;
            }
            if (cls.isInstance(obj)) {
                return obj;
            }
            if (cls.equals(String.class)) {
                return obj.toString();
            }
            if (obj instanceof String) {
                if (cls.equals(Long.class) || cls.equals(Long.TYPE)) {
                    return Long.valueOf((String) obj);
                }
                if (cls.equals(Integer.class) || cls.equals(Integer.TYPE)) {
                    return Integer.valueOf((String) obj);
                }
                if (cls.equals(Short.class) || cls.equals(Short.TYPE)) {
                    return Short.valueOf((String) obj);
                }
                if (cls.equals(Double.class) || cls.equals(Double.TYPE)) {
                    return Double.valueOf((String) obj);
                }
                if (cls.equals(Byte.class) || cls.equals(Byte.TYPE)) {
                    return Byte.valueOf((String) obj);
                }
            }
            return obj;
        }

        public Object getParameterAt(int i) {
            TypeValuePair typeValuePair;
            TypeValuePair[] typeValuePairArr = this.pairs;
            if (i >= typeValuePairArr.length || (typeValuePair = typeValuePairArr[i]) == null || typeValuePair.getValue() == null) {
                return null;
            }
            Class<?> cls = this.typeClass[i];
            Object value = this.pairs[i].getValue();
            if (cls.equals(this.pairs[i].getValueType())) {
                if (!cls.isArray()) {
                    return mappingResult(cls, value);
                }
                Class<?> componentType = cls.getComponentType();
                int length = Array.getLength(this.pairs[i].getValue());
                Object objNewInstance = Array.newInstance(componentType, length);
                if (length == 0) {
                    return objNewInstance;
                }
                for (int i2 = 0; i2 < length; i2++) {
                    Array.set(objNewInstance, i2, mappingResult(componentType, Array.get(value, i2)));
                }
                return objNewInstance;
            }
            if (cls.isInstance(value)) {
                return cls.cast(value);
            }
            if (i != this.typeClass.length - 1 || !cls.isArray()) {
                try {
                    Object value2 = this.pairs[i].getValue();
                    return value2.getClass().isArray() ? mappingResult(cls, Array.get(value2, i)) : mappingResult(cls, value2);
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                    return value;
                }
            }
            Object objNewInstance2 = Array.newInstance(cls.getComponentType(), this.pairs.length - i);
            int i3 = i;
            while (true) {
                TypeValuePair[] typeValuePairArr2 = this.pairs;
                if (i3 >= typeValuePairArr2.length) {
                    return objNewInstance2;
                }
                Array.set(objNewInstance2, i3 - i, typeValuePairArr2[i3].getValue());
                i3++;
            }
        }

        public boolean isApiWithCallback() {
            return this.apiWithCallback;
        }

        public int parameterCount() {
            return this.typeClass.length;
        }

        private TypeValueMatcher(Class<?>[] clsArr, TypeValuePair[] typeValuePairArr) {
            this.typeClass = clsArr;
            this.pairs = typeValuePairArr;
            this.apiWithCallback = APIInvokeImpl.apiWithCallback(clsArr);
        }
    }

    public APIInvokeImpl(Object obj, Method method, TypeValuePair[] typeValuePairArr) {
        this(obj, method, typeValuePairArr, null);
    }

    public static boolean apiWithCallback(Class<?>[] clsArr) {
        if (clsArr.length == 0) {
            return false;
        }
        Class<?> cls = clsArr[clsArr.length - 1];
        return ApiCallback.class.getName().equals(cls.getName()) || ApiCallback.class.isAssignableFrom(cls);
    }

    private static boolean apiWithChannelChain(Class<?>[] clsArr) {
        if (clsArr.length == 0) {
            return false;
        }
        Class<?> cls = clsArr[0];
        return InvokeChain.class.getName().equals(cls.getName()) || InvokeChain.class.isAssignableFrom(cls);
    }

    private static final boolean apiWithDynamicParameters(Class<?>[] clsArr) {
        if (clsArr.length == 0) {
            return false;
        }
        return clsArr[clsArr.length - 1].isArray();
    }

    private Object methodInvoke(Object obj, Method method) throws IllegalAccessException, InvocationTargetException {
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes.length == 0) {
            return method.invoke(obj, null);
        }
        boolean zApiWithChannelChain = apiWithChannelChain(parameterTypes);
        if (apiWithCallback(parameterTypes)) {
            return zApiWithChannelChain ? methodInvokeWithChainAndCallback(obj, method, parameterTypes, this.invokeChain, null) : methodInvokeWithCallBack(obj, method, parameterTypes, null);
        }
        return zApiWithChannelChain ? methodInvokeWithChain(obj, method, parameterTypes, this.invokeChain) : methodInvokeWithOutCallBack(obj, method, parameterTypes);
    }

    private final Object methodInvokeWithCallBack(Object obj, Method method, Class<?>[] clsArr, ApiCallback apiCallback) throws IllegalAccessException, InvocationTargetException {
        TypeValueMatcher typeValueMatcher = new TypeValueMatcher(clsArr, this.parameters);
        switch (clsArr.length) {
            case 0:
            case 1:
                return method.invoke(obj, apiCallback);
            case 2:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), apiCallback);
            case 3:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), apiCallback);
            case 4:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), apiCallback);
            case 5:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), apiCallback);
            case 6:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), typeValueMatcher.getParameterAt(4), apiCallback);
            case 7:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), typeValueMatcher.getParameterAt(4), typeValueMatcher.getParameterAt(5), apiCallback);
            default:
                throw new IllegalAccessException("parameter size more then 6 ");
        }
    }

    private final Object methodInvokeWithChain(Object obj, Method method, Class<?>[] clsArr, InvokeChain invokeChain) throws IllegalAccessException, InvocationTargetException {
        TypeValueMatcher typeValueMatcher = new TypeValueMatcher(clsArr, this.parameters);
        switch (clsArr.length) {
            case 0:
            case 1:
                return method.invoke(obj, invokeChain);
            case 2:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0));
            case 3:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1));
            case 4:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2));
            case 5:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3));
            case 6:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), typeValueMatcher.getParameterAt(4));
            case 7:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), typeValueMatcher.getParameterAt(4), typeValueMatcher.getParameterAt(5));
            default:
                throw new IllegalAccessException("parameter size more then 6 ");
        }
    }

    private Object methodInvokeWithChainAndCallback(Object obj, Method method, Class<?>[] clsArr, InvokeChain invokeChain, ApiCallback apiCallback) throws IllegalAccessException, InvocationTargetException {
        TypeValueMatcher typeValueMatcher = new TypeValueMatcher(clsArr, this.parameters);
        switch (clsArr.length) {
            case 0:
            case 1:
            case 2:
                return method.invoke(obj, invokeChain, apiCallback);
            case 3:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), apiCallback);
            case 4:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), apiCallback);
            case 5:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), apiCallback);
            case 6:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), apiCallback);
            case 7:
                return method.invoke(obj, invokeChain, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), typeValueMatcher.getParameterAt(4), apiCallback);
            default:
                throw new IllegalAccessException("parameter size more then 6 ");
        }
    }

    private final Object methodInvokeWithOutCallBack(Object obj, Method method, Class<?>[] clsArr) throws IllegalAccessException, InvocationTargetException {
        TypeValueMatcher typeValueMatcher = new TypeValueMatcher(clsArr, this.parameters);
        switch (clsArr.length) {
            case 0:
                return method.invoke(obj, null);
            case 1:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0));
            case 2:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1));
            case 3:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2));
            case 4:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3));
            case 5:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), typeValueMatcher.getParameterAt(4));
            case 6:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), typeValueMatcher.getParameterAt(4), typeValueMatcher.getParameterAt(5));
            case 7:
                return method.invoke(obj, typeValueMatcher.getParameterAt(0), typeValueMatcher.getParameterAt(1), typeValueMatcher.getParameterAt(2), typeValueMatcher.getParameterAt(3), typeValueMatcher.getParameterAt(4), typeValueMatcher.getParameterAt(5), typeValueMatcher.getParameterAt(6));
            default:
                throw new IllegalAccessException("parameter size more then 6 ");
        }
    }

    public <T> T getParameterAt(Class<T> cls, int i) {
        T t;
        TypeValuePair[] typeValuePairArr = this.parameters;
        if (i < typeValuePairArr.length && (t = (T) typeValuePairArr[i].getValue()) != null) {
            return t;
        }
        return null;
    }

    public Class[] getValueTypeClass() {
        int length = this.parameters.length;
        Class[] clsArr = new Class[length];
        for (int i = 0; i < length; i++) {
            clsArr[i] = this.parameters[i].getValueType();
        }
        return clsArr;
    }

    public Object invoke() throws ApiMethodException, IllegalAccessException, InvocationTargetException {
        Object obj = this.apiObject;
        if (obj != null) {
            return methodInvoke(obj, this.method);
        }
        throw ApiMethodException.onMethodInvokeTypeError(this.method.getName());
    }

    public void invokeAsync(ApiCallback apiCallback) throws IllegalAccessException, RuntimeException, InvocationTargetException {
        Class<?>[] parameterTypes = this.method.getParameterTypes();
        boolean zApiWithCallback = apiWithCallback(parameterTypes);
        boolean zApiWithChannelChain = apiWithChannelChain(parameterTypes);
        if (zApiWithCallback) {
            if (zApiWithChannelChain) {
                methodInvokeWithChainAndCallback(this.apiObject, this.method, parameterTypes, this.invokeChain, apiCallback);
                return;
            } else {
                methodInvokeWithCallBack(this.apiObject, this.method, parameterTypes, apiCallback);
                return;
            }
        }
        Object objMethodInvokeWithChain = zApiWithChannelChain ? methodInvokeWithChain(this.apiObject, this.method, parameterTypes, this.invokeChain) : methodInvokeWithOutCallBack(this.apiObject, this.method, parameterTypes);
        if (apiCallback != null) {
            apiCallback.response(ApiResponse.success(objMethodInvokeWithChain));
        }
    }

    public APIInvokeImpl(Object obj, Method method, TypeValuePair[] typeValuePairArr, InvokeChain invokeChain) {
        this.apiObject = obj;
        this.method = method;
        this.parameters = typeValuePairArr;
        this.invokeChain = invokeChain;
    }

    private final Object methodInvoke(Object obj, Method method, Class<?>[] clsArr, ApiCallback apiCallback, InvokeChain invokeChain) throws IllegalAccessException, InvocationTargetException {
        if (clsArr.length == 0) {
            return method.invoke(obj, null);
        }
        boolean zApiWithCallback = apiWithCallback(clsArr);
        boolean zApiWithChannelChain = apiWithChannelChain(clsArr);
        if (zApiWithCallback && zApiWithChannelChain) {
            return methodInvokeWithChainAndCallback(obj, method, clsArr, invokeChain, apiCallback);
        }
        if (zApiWithCallback) {
            return methodInvokeWithCallBack(obj, method, clsArr, apiCallback);
        }
        if (zApiWithChannelChain) {
            return methodInvokeWithChain(obj, method, clsArr, invokeChain);
        }
        return methodInvokeWithOutCallBack(obj, method, clsArr);
    }
}
