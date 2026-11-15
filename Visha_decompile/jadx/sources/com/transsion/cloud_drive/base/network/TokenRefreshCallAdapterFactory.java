package com.transsion.cloud_drive.base.network;

import androidx.core.app.NotificationCompat;
import com.transsion.cloud_drive.base.network.response.ApiResponse;
import com.transsion.cloud_drive.base.network.response.ApiResponseCallAdapterFactory;
import defpackage.dl0;
import defpackage.jq0;
import defpackage.lq0;
import defpackage.npa;
import defpackage.oq5;
import defpackage.ru8;
import defpackage.y45;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;

public final class TokenRefreshCallAdapterFactory extends lq0.a {
    public final npa a;
    public final String b;
    public final ApiResponseCallAdapterFactory c;

    public static final class TokenRefreshCallAdapter implements lq0 {
        public final lq0 a;
        public final npa b;
        public final String c;

        public TokenRefreshCallAdapter(lq0 lq0Var, npa npaVar) {
            y45.j(lq0Var, "delegate");
            y45.j(npaVar, "tokenRefresher");
            this.a = lq0Var;
            this.b = npaVar;
            this.c = "TokenRefreshCallAdapter";
        }

        @Override
        public ApiResponse adapt(jq0 jq0Var) {
            y45.j(jq0Var, NotificationCompat.CATEGORY_CALL);
            Object objAdapt = this.a.adapt(jq0Var);
            y45.i(objAdapt, "element");
            ApiResponse apiResponse = (ApiResponse) objAdapt;
            if ((apiResponse instanceof ApiResponse.Failure.Error) && ((ApiResponse.Failure.Error) apiResponse).getErrorCode() == 403) {
                oq5 oq5Var = oq5.a;
                oq5Var.j(this.c, "Received code 403 in ApiResponse, attempting to refresh token...");
                if (((Boolean) dl0.b(null, new TokenRefreshCallAdapterFactory$TokenRefreshCallAdapter$adapt$1$refreshSuccess$1(this, null), 1, null)).booleanValue()) {
                    oq5Var.d(this.c, "Token refreshed successfully, retrying API call...");
                    objAdapt = this.a.adapt(jq0Var.clone());
                } else {
                    oq5Var.b(this.c, "Token refresh failed, returning 403 response");
                }
            }
            y45.i(objAdapt, "element");
            return (ApiResponse) objAdapt;
        }

        @Override
        public Type responseType() {
            Type typeResponseType = this.a.responseType();
            y45.i(typeResponseType, "responseType(...)");
            return typeResponseType;
        }
    }

    public TokenRefreshCallAdapterFactory(npa npaVar) {
        y45.j(npaVar, "tokenRefresher");
        this.a = npaVar;
        this.b = "TokenRefreshCallAdapterFactory";
        this.c = ApiResponseCallAdapterFactory.INSTANCE.create();
    }

    @Override
    public lq0 get(Type type, Annotation[] annotationArr, ru8 ru8Var) {
        y45.j(type, "returnType");
        y45.j(annotationArr, "annotations");
        y45.j(ru8Var, "retrofit");
        lq0 lq0Var = this.c.get(type, annotationArr, ru8Var);
        if (lq0Var == null) {
            return null;
        }
        return new TokenRefreshCallAdapter(lq0Var, this.a);
    }
}
