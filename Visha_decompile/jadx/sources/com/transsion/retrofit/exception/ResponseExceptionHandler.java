package com.transsion.retrofit.exception;

import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.gu8;
import defpackage.mc7;
import defpackage.t74;

public class ResponseExceptionHandler {

    public static class HttpResultFunc<T> implements t74 {
        @Override
        public mc7<T> apply(Throwable th) throws Exception {
            return mc7.s(ExceptionEngine.handleException(th));
        }
    }

    public static class ServerResultFunc<T extends BaseResponse> implements t74 {
        private static final String TAG = "visha_response_handler";

        @Override
        public T apply(gu8<T> gu8Var) throws Exception {
            if (gu8Var == null) {
                throw new ServerException(1005, "");
            }
            if (!gu8Var.e()) {
                throw new ServerException(gu8Var.b(), gu8Var.f());
            }
            if (gu8Var.a() == null) {
                throw new ServerException(1004, "");
            }
            T t = (T) gu8Var.a();
            if (t.getCode() == 0) {
                return t;
            }
            throw new ServerException(t.getCode(), t.getMessage());
        }
    }
}
