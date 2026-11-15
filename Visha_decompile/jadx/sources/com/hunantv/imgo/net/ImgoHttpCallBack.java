package com.hunantv.imgo.net;

import android.text.TextUtils;
import com.mgtv.task.h;
import com.mgtv.task.http.HttpFormatException;
import com.mgtv.task.http.HttpParams;
import com.mgtv.task.http.HttpResponseObject;
import com.mgtv.task.http.HttpTraceObject;
import com.mgtv.task.m;
import java.net.SocketTimeoutException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import org.apache.commons.text.lookup.StringLookupFactory;

public abstract class ImgoHttpCallBack<T> extends com.mgtv.task.http.c<T> {
    public static final String a = a.h() + "/info";
    private static final Executor b;
    private static final h c;

    public enum ErrorType {
        HTTP_ERROR,
        PARSE_ERROR,
        BUSINESS_ERROR
    }

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() {
            @Override
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "ImgoHttpCallBack_report");
            }
        });
        b = executorServiceNewSingleThreadExecutor;
        c = new h(executorServiceNewSingleThreadExecutor, false);
    }

    public ErrorType a_() {
        HttpTraceObject httpTraceObjectE = e();
        if (httpTraceObjectE.getHttpStatus() != 200) {
            return ErrorType.HTTP_ERROR;
        }
        Exception exception = httpTraceObjectE.getException();
        httpTraceObjectE.getResponse();
        return exception instanceof HttpFormatException ? ErrorType.PARSE_ERROR : ErrorType.BUSINESS_ERROR;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public void a(HttpResponseObject httpResponseObject, Object obj, Throwable th) {
        super.a(httpResponseObject, obj, th);
        HttpTraceObject httpTraceObject = (HttpTraceObject) obj;
        if (th instanceof Exception) {
            httpTraceObject.setException((Exception) th);
        }
        if (httpTraceObject.getException() == null && httpTraceObject.getHttpStatus() == 200) {
            return;
        }
        a(httpTraceObject);
    }

    private void a(HttpTraceObject httpTraceObject) {
        String str;
        String str2;
        String str3;
        Exception exception = httpTraceObject.getException();
        int httpStatus = httpTraceObject.getHttpStatus();
        String response = httpTraceObject.getResponse();
        if (exception != null) {
            if (exception instanceof SocketTimeoutException) {
                str3 = "01.100-2";
                str2 = "http request timeout";
            } else if (exception instanceof HttpFormatException) {
                if (TextUtils.isEmpty(response)) {
                    str3 = ImgoErrorStatisticsData.A_NULL;
                } else {
                    str3 = ImgoErrorStatisticsData.A_JSON;
                }
                str2 = "http request success but parse json failured";
            } else {
                str = "01.100" + httpStatus;
            }
            ImgoErrorStatisticsData.a aVarA = new ImgoErrorStatisticsData.a().b(str3).a(str2);
            aVarA.a("url", httpTraceObject.getFinalUrl()).a("statusCode", httpStatus).a("response", response).a(exception);
            aVarA.a(StringLookupFactory.KEY_DNS, NetworkStateManager.a().b());
            a(aVarA.a());
        }
        str = "01.100" + httpStatus;
        String str4 = str;
        str2 = "http request failured";
        str3 = str4;
        ImgoErrorStatisticsData.a aVarA2 = new ImgoErrorStatisticsData.a().b(str3).a(str2);
        aVarA2.a("url", httpTraceObject.getFinalUrl()).a("statusCode", httpStatus).a("response", response).a(exception);
        aVarA2.a(StringLookupFactory.KEY_DNS, NetworkStateManager.a().b());
        a(aVarA2.a());
    }

    private void a(ImgoErrorStatisticsData imgoErrorStatisticsData) {
        String str = a;
        HttpParams httpParams = new HttpParams();
        httpParams.put("data", com.mgtv.json.a.a(imgoErrorStatisticsData, (Class<? extends ImgoErrorStatisticsData>) ImgoErrorStatisticsData.class));
        new m(null, c, null).a((com.mgtv.task.http.retry.c) null).a(true).c(0).a(str, httpParams, new com.mgtv.task.http.c<String>() {
            @Override
            public void b(String str2) {
            }

            @Override
            public void a(String str2) {
            }
        });
    }
}
