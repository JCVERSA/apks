package com.transsion.cloud_drive.base.network.response;

import androidx.core.app.NotificationCompat;
import com.transsion.cloud_drive.base.exceptions.NoContentException;
import com.transsion.cloud_drive.base.network.RequestErrorCode;
import defpackage.gu8;
import defpackage.jq0;
import defpackage.lq0;
import defpackage.oq5;
import defpackage.u15;
import defpackage.y45;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00040\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\b\u0010\tJ)\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00042\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/cloud_drive/base/network/response/ApiResponseCallAdapter;", "Llq0;", "Lcom/transsion/cloud_drive/base/network/response/BaseResult;", "Ljava/lang/reflect/Type;", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "resultType", MethodDecl.initName, "(Ljava/lang/reflect/Type;)V", "responseType", "()Ljava/lang/reflect/Type;", "Ljq0;", NotificationCompat.CATEGORY_CALL, "adapt", "(Ljq0;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Ljava/lang/reflect/Type;", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiResponseCallAdapter implements lq0 {
    private final Type resultType;

    public ApiResponseCallAdapter(Type type) {
        y45.j(type, "resultType");
        this.resultType = type;
    }

    @Override
    public Object adapt(jq0 jq0Var) {
        return adapt((jq0<BaseResult<Type>>) jq0Var);
    }

    @Override
    public Type responseType() {
        return new ParameterizedType() {
            @Override
            public Type[] getActualTypeArguments() {
                return new Type[]{ApiResponseCallAdapter.this.resultType};
            }

            @Override
            public Type getOwnerType() {
                return null;
            }

            @Override
            public Type getRawType() {
                return BaseResult.class;
            }
        };
    }

    @Override
    public ApiResponse<Type> adapt(jq0<BaseResult<Type>> call) throws NoContentException {
        ApiResponse<Type> exception;
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        try {
            gu8 gu8VarExecute = call.execute();
            y45.i(gu8VarExecute, "execute(...)");
            ApiResponse.Companion companion = ApiResponse.INSTANCE;
            u15 http_success_code_range = ApiResponseExtensionKt.getHTTP_SUCCESS_CODE_RANGE();
            try {
                int iB = http_success_code_range.b();
                int iC = http_success_code_range.c();
                int iB2 = gu8VarExecute.b();
                if (iB <= iB2 && iB2 <= iC) {
                    BaseResult baseResult = (BaseResult) gu8VarExecute.a();
                    if (baseResult == null) {
                        throw new NoContentException(gu8VarExecute.b(), null, 2, null);
                    }
                    y45.g(baseResult);
                    return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
                }
                exception = new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8VarExecute.b() + "  http_message:" + gu8VarExecute.f());
                return exception;
            } catch (Exception e) {
                exception = new ApiResponse.Failure.Exception(e);
            }
        } catch (Exception e2) {
            oq5.a.b("ApiResponseCallAdapter", "http request error:", e2);
            return ApiResponse.INSTANCE.exception(e2);
        }
    }
}
