package com.transsion.apiinvoke.invoke;

public class ApiMethodException extends RuntimeException {
    public static final int API_CLASS_NOT_FOUND = 2;
    public static final int API_INSTANCE_API_OBJ_ERROR = 4;
    public static final int API_INVOKE_METHOD_ERROR = 5;
    public static final int API_NOT_REGISTER = 3;
    public static final int METHOD_ERROR_UNKNOW = -1;
    public static final int METHOD_INVOKE_TYPE_ERROR = 1;
    public static final int METHOD_NOT_FOUND = 0;

    public ApiMethodException(int i, String str) {
        super("InvokeException code " + i + " errorMsg " + str);
    }

    public static ApiMethodException apiNotRegister(String str) {
        return new ApiMethodException(3, " api not register error " + str);
    }

    public static ApiMethodException instanceApiObjectError(String str, String str2) {
        return new ApiMethodException(4, " api not register error " + str + " className " + str2);
    }

    public static ApiMethodException invokeMethodError(String str, String str2) {
        return new ApiMethodException(4, " api invoke api error " + str + " method " + str2);
    }

    public static ApiMethodException onApiClassNotFound(String str) {
        return new ApiMethodException(2, " invoke api class not found " + str);
    }

    public static ApiMethodException onErrorUnKnow(String str) {
        return new ApiMethodException(-1, " invoke error " + str);
    }

    public static ApiMethodException onMethodInvokeTypeError(String str) {
        return new ApiMethodException(1, " invoke method type error " + str);
    }

    public static ApiMethodException onMethodNotFound(String str) {
        return new ApiMethodException(0, " invoke method not found " + str);
    }
}
