package com.mgtv.downloader.net;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mgtv.irouting.okhttp.HttpDnsException;
import com.mgtv.task.h;
import com.mgtv.task.http.HttpFormatException;
import com.mgtv.task.http.HttpResponseObject;
import com.mgtv.task.http.HttpTraceObject;
import com.mgtv.task.http.c;
import java.net.SocketTimeoutException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public abstract class ImgoHttpCallBack<T> extends c<T> {
    private static final Executor a;
    private static final h b;

    public enum ErrorType {
        HTTP_ERROR,
        PARSE_ERROR,
        BUSINESS_ERROR
    }

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() {
            @Override
            public Thread newThread(@NonNull Runnable runnable) {
                return new Thread(runnable, "ImgoHttpCallBack_report");
            }
        });
        a = executorServiceNewSingleThreadExecutor;
        b = new h(executorServiceNewSingleThreadExecutor, false);
    }

    public ErrorType b() {
        if (e().getHttpStatus() != 200) {
            return ErrorType.HTTP_ERROR;
        }
        return e().getException() instanceof HttpFormatException ? ErrorType.PARSE_ERROR : ErrorType.BUSINESS_ERROR;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public void a(HttpResponseObject httpResponseObject, Object obj, Throwable th) {
        super.a(httpResponseObject, obj, th);
        HttpTraceObject httpTraceObject = (HttpTraceObject) obj;
        if (httpTraceObject.getException() == null && httpTraceObject.getHttpStatus() == 200) {
            return;
        }
        a(httpTraceObject);
    }

    private void a(HttpTraceObject httpTraceObject) {
        Exception exception = httpTraceObject.getException();
        httpTraceObject.getHttpStatus();
        String response = httpTraceObject.getResponse();
        if (exception == null || (exception instanceof SocketTimeoutException) || !(exception instanceof HttpDnsException.HttpFormatException)) {
            return;
        }
        TextUtils.isEmpty(response);
    }
}
