package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.ClientException;
import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.model.OSSResult;
import com.alibaba.sdk.android.oss.network.ExecutionContext;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class OSSAsyncTask<T extends OSSResult> {
    private volatile boolean canceled;
    private ExecutionContext context;
    private Future<T> future;

    public static OSSAsyncTask wrapRequestTask(Future future, ExecutionContext executionContext) {
        OSSAsyncTask oSSAsyncTask = new OSSAsyncTask();
        oSSAsyncTask.future = future;
        oSSAsyncTask.context = executionContext;
        return oSSAsyncTask;
    }

    public void cancel() {
        this.canceled = true;
        ExecutionContext executionContext = this.context;
        if (executionContext != null) {
            executionContext.getCancellationHandler().cancel();
        }
    }

    public T getResult() throws ServiceException, ClientException {
        try {
            return this.future.get();
        } catch (InterruptedException e10) {
            throw new ClientException(" InterruptedException and message : " + e10.getMessage(), e10);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof ClientException) {
                throw ((ClientException) cause);
            }
            if (cause instanceof ServiceException) {
                throw ((ServiceException) cause);
            }
            cause.printStackTrace();
            throw new ClientException("Unexpected exception!" + cause.getMessage());
        }
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public boolean isCompleted() {
        return this.future.isDone();
    }

    public void waitUntilFinished() {
        try {
            this.future.get();
        } catch (Exception unused) {
        }
    }
}
