package com.transsion.retrofit.callback;

import androidx.annotation.NonNull;
import com.transsion.retrofit.cache.CacheCallback;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.retrofit.reponse.ResponseUtil;
import defpackage.gu8;
import defpackage.jq0;

public abstract class CallbackWithState<T extends BaseResponse> implements CacheCallback<T> {
    protected RequestCallback.Param mParam;
    protected long timeStamp;

    public CallbackWithState(RequestCallback.Param param) {
        this.mParam = param;
    }

    public abstract void onFailture(ResponseUtil.State state);

    @Override
    public void onFailure(@NonNull jq0<T> jq0Var, Throwable th) {
        RequestCallback.Param param = this.mParam;
        if (param == null || !param.isDestroy()) {
            onFailture(ResponseUtil.checkResult(th));
        }
    }

    @Override
    public void onGetCache(jq0<T> jq0Var, gu8<T> gu8Var) {
    }

    @Override
    public void onResponse(@NonNull jq0<T> jq0Var, @NonNull gu8<T> gu8Var) {
        RequestCallback.Param param = this.mParam;
        if (param == null || !param.isDestroy()) {
            ResponseUtil.State stateCheckResult = ResponseUtil.checkResult(gu8Var);
            if (stateCheckResult.isSucess) {
                onSuccess(gu8Var);
            } else {
                onFailture(stateCheckResult);
            }
        }
    }

    public abstract void onSuccess(gu8<T> gu8Var);

    public CallbackWithState(RequestCallback.Param param, long j) {
        this.mParam = param;
        this.timeStamp = j;
    }

    public CallbackWithState() {
    }
}
