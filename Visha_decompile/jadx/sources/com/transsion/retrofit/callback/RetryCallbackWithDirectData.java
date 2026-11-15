package com.transsion.retrofit.callback;

import androidx.annotation.NonNull;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.retrofit.reponse.ResponseUtil;
import defpackage.gu8;
import defpackage.jq0;
import defpackage.tq0;
import java.util.Timer;
import java.util.TimerTask;

public class RetryCallbackWithDirectData<T extends BaseResponse> implements tq0 {
    private static final String TAG = "RetryCallbackWithDirectData";
    private jq0<T> mCall;
    private int mCurrentRetryCount;
    private final RequestCallback.OnRequestDataListener mListener;
    private int mRetryCount;
    private long mRetryInterval;
    private Timer timer = new Timer();
    private boolean isExecuting = true;

    public RetryCallbackWithDirectData(jq0<T> jq0Var, int i, long j, RequestCallback.OnRequestDataListener onRequestDataListener) {
        this.mListener = onRequestDataListener;
        this.mCall = jq0Var;
        this.mRetryCount = i;
        this.mRetryInterval = j;
    }

    public void cancelCall() {
        synchronized (this) {
            try {
                if (this.isExecuting) {
                    this.mCall.cancel();
                } else {
                    this.timer.cancel();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int getCurrentRetryCount() {
        return this.mCurrentRetryCount;
    }

    @Override
    public final void onFailure(@NonNull jq0<T> jq0Var, @NonNull Throwable th) {
        this.isExecuting = false;
        int i = this.mCurrentRetryCount;
        if (i >= this.mRetryCount) {
            onRequestFail(jq0Var, th);
        } else {
            this.mCurrentRetryCount = i + 1;
            retryRequest(jq0Var);
        }
    }

    public void onRequestFail(jq0 jq0Var, Throwable th) {
        ResponseUtil.State stateCheckResult = ResponseUtil.checkResult(th);
        RequestCallback.OnRequestDataListener onRequestDataListener = this.mListener;
        if (onRequestDataListener != null) {
            onRequestDataListener.returnDataFailed(stateCheckResult.code, stateCheckResult.errMsg);
        }
    }

    public void onRequestResponse(jq0<T> jq0Var, gu8<T> gu8Var) {
        RequestCallback.OnRequestDataListener onRequestDataListener;
        if (ResponseUtil.checkResult(gu8Var).isSucess && gu8Var != null && gu8Var.a() != null && ((BaseResponse) gu8Var.a()).getData() != null && (onRequestDataListener = this.mListener) != null) {
            onRequestDataListener.returnDataSuccess(((BaseResponse) gu8Var.a()).getData());
            return;
        }
        int i = this.mCurrentRetryCount;
        if (i >= this.mRetryCount) {
            onRequestFail(jq0Var, new Throwable("onResponse_but_not_successful_and_try_out_limited"));
        } else {
            this.mCurrentRetryCount = i + 1;
            retryRequest(jq0Var);
        }
    }

    @Override
    public final void onResponse(@NonNull jq0<T> jq0Var, @NonNull gu8<T> gu8Var) {
        int i;
        this.isExecuting = false;
        if (!gu8Var.e() && (i = this.mCurrentRetryCount) < this.mRetryCount) {
            this.mCurrentRetryCount = i + 1;
            retryRequest(jq0Var);
        } else if (this.mCurrentRetryCount >= this.mRetryCount) {
            onRequestFail(jq0Var, new Throwable("onResponse_but_not_successful_and_try_out_limited"));
        } else {
            onRequestResponse(jq0Var, gu8Var);
        }
    }

    public void onStartRetry() {
        LogUtils.j(TAG, "onStartRetry");
    }

    public void retryRequest(final jq0<T> jq0Var) {
        onStartRetry();
        this.timer.schedule(new TimerTask() {
            @Override
            public void run() {
                synchronized (RetryCallbackWithDirectData.this) {
                    RetryCallbackWithDirectData.this.mCall = jq0Var.clone();
                    RetryCallbackWithDirectData.this.mCall.enqueue(RetryCallbackWithDirectData.this);
                    RetryCallbackWithDirectData.this.isExecuting = true;
                }
            }
        }, this.mRetryInterval);
    }
}
