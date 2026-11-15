package com.transsion.retrofit.reponse;

import android.text.TextUtils;
import defpackage.gu8;
import java.net.ConnectException;
import java.net.SocketTimeoutException;

public class ResponseUtil {
    public static final String CODE_ERROR_DEFAULT = "1010";
    public static final String CODE_NO_NETWORK = "404";
    public static final String CODE_SUCESS = "200";
    public static final String CODE_TIME_OUT = "408";
    public static final String MSG_ERROR = "net_error";
    public static final String MSG_TOAST_ERROR = "net_error";

    public static class State {
        public boolean isSucess = true;
        public String code = ResponseUtil.CODE_SUCESS;
        public String errMsg = "net_error";
        public String toastMsg = "net_error";
    }

    public static <T extends BaseResponse> State checkResult(gu8<T> gu8Var) {
        State state = new State();
        if (gu8Var == null) {
            state.isSucess = false;
            state.errMsg = "net_error";
            state.code = CODE_ERROR_DEFAULT;
            return state;
        }
        if (!gu8Var.e()) {
            state.isSucess = false;
            state.errMsg = gu8Var.f();
            state.toastMsg = gu8Var.f();
            state.code = gu8Var.b() + "";
            return state;
        }
        if (gu8Var.a() == null) {
            state.isSucess = false;
            state.errMsg = "net_error";
            state.code = CODE_ERROR_DEFAULT;
            return state;
        }
        if (!((BaseResponse) gu8Var.a()).isSuccess()) {
            state.isSucess = false;
            if (TextUtils.isEmpty(((BaseResponse) gu8Var.a()).getMsg())) {
                state.errMsg = "net_error";
            } else {
                state.errMsg = ((BaseResponse) gu8Var.a()).getMsg();
                state.toastMsg = ((BaseResponse) gu8Var.a()).getMsg();
            }
            state.code = ((BaseResponse) gu8Var.a()).getCode() + "";
        }
        return state;
    }

    public static boolean isNoNetWork(String str) {
        return CODE_NO_NETWORK.equals(str);
    }

    public static boolean isSucess(String str) {
        return CODE_SUCESS.equals(str);
    }

    public static boolean isTimeOut(String str) {
        return CODE_TIME_OUT.equals(str);
    }

    public static State checkResult(Throwable th) {
        State state = new State();
        state.isSucess = false;
        state.code = CODE_ERROR_DEFAULT;
        state.errMsg = "net_error";
        if (th == null) {
            return state;
        }
        if (th instanceof SocketTimeoutException) {
            state.code = CODE_TIME_OUT;
        } else if (th instanceof ConnectException) {
            state.code = CODE_NO_NETWORK;
        }
        return state;
    }
}
