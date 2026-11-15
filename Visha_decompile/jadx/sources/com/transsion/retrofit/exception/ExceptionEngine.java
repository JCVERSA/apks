package com.transsion.retrofit.exception;

import com.google.gson.JsonParseException;
import java.net.ConnectException;
import java.text.ParseException;
import org.json.JSONException;
import retrofit2.HttpException;

public class ExceptionEngine {
    private static final int BAD_GATEWAY = 502;
    private static final int FORBIDDEN = 403;
    private static final int GATEWAY_TIMEOUT = 504;
    private static final int INTERNAL_SERVER_ERROR = 500;
    private static final int NOT_FOUND = 404;
    private static final int REQUEST_TIMEOUT = 408;
    private static final int SERVICE_UNAVAILABLE = 503;
    private static final int UNAUTHORIZED = 401;

    public static ApiException handleException(Throwable th) {
        if (th instanceof HttpException) {
            ApiException apiException = new ApiException(th, 1003);
            ((HttpException) th).code();
            apiException.setDisplayMessage("网络错误");
            return apiException;
        }
        if (th instanceof ServerException) {
            ServerException serverException = (ServerException) th;
            ApiException apiException2 = new ApiException(serverException, serverException.getCode());
            apiException2.setDisplayMessage(serverException.getMsg());
            return apiException2;
        }
        if ((th instanceof JsonParseException) || (th instanceof JSONException) || (th instanceof ParseException)) {
            ApiException apiException3 = new ApiException(th, 1001);
            apiException3.setDisplayMessage("解析错误");
            return apiException3;
        }
        if (th instanceof ConnectException) {
            ApiException apiException4 = new ApiException(th, 1002);
            apiException4.setDisplayMessage("连接失败");
            return apiException4;
        }
        ApiException apiException5 = new ApiException(th, 1000);
        apiException5.setDisplayMessage(th.getMessage());
        return apiException5;
    }
}
