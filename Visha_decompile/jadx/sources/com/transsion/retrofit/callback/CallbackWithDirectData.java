package com.transsion.retrofit.callback;

import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.retrofit.reponse.ResponseUtil;
import defpackage.gu8;

public class CallbackWithDirectData<T extends BaseResponse> extends CallbackWithState<T> {
    private final RequestCallback.OnRequestDataListener mListener;

    public CallbackWithDirectData(RequestCallback.OnRequestDataListener onRequestDataListener) {
        this.mListener = onRequestDataListener;
    }

    @Override
    public void onFailture(ResponseUtil.State state) {
        RequestCallback.OnRequestDataListener onRequestDataListener = this.mListener;
        if (onRequestDataListener != null) {
            onRequestDataListener.returnDataFailed(state.code, state.toastMsg);
        }
    }

    @Override
    public void onSuccess(gu8<T> gu8Var) {
        RequestCallback.OnRequestDataListener onRequestDataListener = this.mListener;
        if (onRequestDataListener != null) {
            onRequestDataListener.returnDataSuccess(((BaseResponse) gu8Var.a()).getData());
        }
    }

    public CallbackWithDirectData(RequestCallback.OnRequestDataListener onRequestDataListener, RequestCallback.Param param) {
        this.mListener = onRequestDataListener;
        this.mParam = param;
    }
}
