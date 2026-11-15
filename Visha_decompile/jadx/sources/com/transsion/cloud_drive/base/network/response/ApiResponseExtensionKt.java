package com.transsion.cloud_drive.base.network.response;

import com.transsion.cloud_drive.base.exceptions.NoContentException;
import com.transsion.cloud_drive.base.network.RequestErrorCode;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.c74;
import defpackage.e74;
import defpackage.gu8;
import defpackage.j05;
import defpackage.nt1;
import defpackage.u15;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001aE\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u001a\b\u0004\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u00040\u0003H\u0080\bø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u001aR\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012*\b\u0004\u0010\u0006\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u00040\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nH\u0080H¢\u0006\u0004\b\r\u0010\u000e\u001aI\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0000*\u00020\u000f2\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u001a\b\u0004\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u00040\u0003H\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001aV\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0000*\u00020\u000f2\b\b\u0002\u0010\u0002\u001a\u00020\u00012*\b\u0004\u0010\u0006\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00050\u00040\u000b\u0012\u0006\u0012\u0004\u0018\u00010\f0\nH\u0080H¢\u0006\u0004\b\u0012\u0010\u0013\u001aE\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00072\u001a\b\u0004\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0014\u0012\u0004\u0012\u00020\u00150\nH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u001a?\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00072\u0014\b\u0004\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00150\nH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0018\u001a?\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00072\u0014\b\u0004\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00150\nH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u0018\"\u0017\u0010\u001d\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006!"}, d2 = {"T", "Lu15;", "successCodeRange", "Lkotlin/Function0;", "Lgu8;", "Lcom/transsion/cloud_drive/base/network/response/BaseResult;", "f", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "apiResponseOf", "(Lu15;Lc74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lkotlin/Function1;", "Lwh1;", "", "suspendApiResponseOf", "(Lu15;Le74;Lwh1;)Ljava/lang/Object;", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;", "responseOf", "(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Lc74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "suspendResponseOf", "(Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Companion;Lu15;Le74;Lwh1;)Ljava/lang/Object;", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Success;", "Lzfb;", "onResult", "onSuccess", "(Lcom/transsion/cloud_drive/base/network/response/ApiResponse;Le74;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Error;", "onError", "Lcom/transsion/cloud_drive/base/network/response/ApiResponse$Failure$Exception;", "onException", "HTTP_SUCCESS_CODE_RANGE", "Lu15;", "getHTTP_SUCCESS_CODE_RANGE", "()Lu15;", "cloud-drive-base_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ApiResponseExtensionKt {
    private static final u15 HTTP_SUCCESS_CODE_RANGE = new u15(200, MediaPlayer.Event.VideoCodecInfo);

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 176)
    @nt1(c = "com.transsion.cloud_drive.base.network.response.ApiResponseExtensionKt", f = "ApiResponseExtension.kt", l = {38}, m = "suspendApiResponseOf")
    public static final class AnonymousClass1<T> extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ApiResponseExtensionKt.suspendApiResponseOf(null, null, this);
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 176)
    @nt1(c = "com.transsion.cloud_drive.base.network.response.ApiResponseExtensionKt", f = "ApiResponseExtension.kt", l = {79}, m = "suspendResponseOf")
    public static final class C23741<T> extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        public C23741(wh1<? super C23741> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ApiResponseExtensionKt.suspendResponseOf(null, null, null, this);
        }
    }

    public static final <T> ApiResponse<T> apiResponseOf(u15 u15Var, c74 c74Var) throws NoContentException {
        y45.j(u15Var, "successCodeRange");
        y45.j(c74Var, "f");
        try {
            gu8 gu8Var = (gu8) c74Var.invoke();
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult != null) {
                    return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
                }
                throw new NoContentException(gu8Var.b(), null, 2, null);
            }
            return new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
        } catch (Exception e) {
            return new ApiResponse.Failure.Exception(e);
        }
    }

    public static ApiResponse apiResponseOf$default(u15 u15Var, c74 c74Var, int i, Object obj) throws NoContentException {
        if ((i & 1) != 0) {
            u15Var = getHTTP_SUCCESS_CODE_RANGE();
        }
        y45.j(u15Var, "successCodeRange");
        y45.j(c74Var, "f");
        try {
            gu8 gu8Var = (gu8) c74Var.invoke();
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult != null) {
                    return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
                }
                throw new NoContentException(gu8Var.b(), null, 2, null);
            }
            return new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
        } catch (Exception e) {
            return new ApiResponse.Failure.Exception(e);
        }
    }

    public static final u15 getHTTP_SUCCESS_CODE_RANGE() {
        return HTTP_SUCCESS_CODE_RANGE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> ApiResponse<T> onError(ApiResponse<? extends T> apiResponse, e74 e74Var) {
        y45.j(apiResponse, "<this>");
        y45.j(e74Var, "onResult");
        if (apiResponse instanceof ApiResponse.Failure.Error) {
            e74Var.invoke(apiResponse);
        }
        return apiResponse;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> ApiResponse<T> onException(ApiResponse<? extends T> apiResponse, e74 e74Var) {
        y45.j(apiResponse, "<this>");
        y45.j(e74Var, "onResult");
        if (apiResponse instanceof ApiResponse.Failure.Exception) {
            e74Var.invoke(apiResponse);
        }
        return apiResponse;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> ApiResponse<T> onSuccess(ApiResponse<? extends T> apiResponse, e74 e74Var) {
        y45.j(apiResponse, "<this>");
        y45.j(e74Var, "onResult");
        if (apiResponse instanceof ApiResponse.Success) {
            e74Var.invoke(apiResponse);
        }
        return apiResponse;
    }

    public static final <T> ApiResponse<T> responseOf(ApiResponse.Companion companion, u15 u15Var, c74 c74Var) throws NoContentException {
        ApiResponse<T> exception;
        y45.j(companion, "<this>");
        y45.j(u15Var, "successCodeRange");
        y45.j(c74Var, "f");
        try {
            gu8 gu8Var = (gu8) c74Var.invoke();
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult == null) {
                    throw new NoContentException(gu8Var.b(), null, 2, null);
                }
                y45.g(baseResult);
                return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
            }
            exception = new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
            return exception;
        } catch (Exception e) {
            exception = new ApiResponse.Failure.Exception(e);
        }
    }

    public static ApiResponse responseOf$default(ApiResponse.Companion companion, u15 u15Var, c74 c74Var, int i, Object obj) throws NoContentException {
        ApiResponse exception;
        if ((i & 1) != 0) {
            u15Var = getHTTP_SUCCESS_CODE_RANGE();
        }
        y45.j(companion, "<this>");
        y45.j(u15Var, "successCodeRange");
        y45.j(c74Var, "f");
        try {
            gu8 gu8Var = (gu8) c74Var.invoke();
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult == null) {
                    throw new NoContentException(gu8Var.b(), null, 2, null);
                }
                y45.g(baseResult);
                return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
            }
            exception = new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
            return exception;
        } catch (Exception e) {
            exception = new ApiResponse.Failure.Exception(e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object suspendApiResponseOf(u15 u15Var, e74 e74Var, wh1<? super ApiResponse<? extends T>> wh1Var) throws NoContentException {
        AnonymousClass1 anonymousClass1;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(wh1Var);
        }
        Object objInvoke = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            c.b(objInvoke);
            anonymousClass1.L$0 = u15Var;
            anonymousClass1.label = 1;
            objInvoke = e74Var.invoke(anonymousClass1);
            if (objInvoke == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            u15Var = (u15) anonymousClass1.L$0;
            c.b(objInvoke);
        }
        gu8 gu8Var = (gu8) objInvoke;
        try {
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult == null) {
                    throw new NoContentException(gu8Var.b(), null, 2, null);
                }
                y45.g(baseResult);
                return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
            }
            return new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
        } catch (Exception e) {
            return new ApiResponse.Failure.Exception(e);
        }
    }

    private static final <T> Object suspendApiResponseOf$$forInline(u15 u15Var, e74 e74Var, wh1<? super ApiResponse<? extends T>> wh1Var) throws NoContentException {
        gu8 gu8Var = (gu8) e74Var.invoke(wh1Var);
        try {
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult == null) {
                    throw new NoContentException(gu8Var.b(), null, 2, null);
                }
                y45.g(baseResult);
                return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
            }
            return new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
        } catch (Exception e) {
            return new ApiResponse.Failure.Exception(e);
        }
    }

    public static Object suspendApiResponseOf$default(u15 u15Var, e74 e74Var, wh1 wh1Var, int i, Object obj) throws NoContentException {
        if ((i & 1) != 0) {
            u15Var = getHTTP_SUCCESS_CODE_RANGE();
        }
        j05.c(0);
        Object objInvoke = e74Var.invoke(wh1Var);
        j05.c(1);
        gu8 gu8Var = (gu8) objInvoke;
        try {
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult == null) {
                    throw new NoContentException(gu8Var.b(), null, 2, null);
                }
                y45.g(baseResult);
                return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
            }
            return new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
        } catch (Exception e) {
            return new ApiResponse.Failure.Exception(e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final <T> Object suspendResponseOf(ApiResponse.Companion companion, u15 u15Var, e74 e74Var, wh1<? super ApiResponse<? extends T>> wh1Var) throws NoContentException {
        C23741 c23741;
        if (wh1Var instanceof C23741) {
            c23741 = (C23741) wh1Var;
            int i = c23741.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c23741.label = i - Integer.MIN_VALUE;
            } else {
                c23741 = new C23741(wh1Var);
            }
        } else {
            c23741 = new C23741(wh1Var);
        }
        Object objInvoke = c23741.result;
        Object objF = z45.f();
        int i2 = c23741.label;
        if (i2 == 0) {
            c.b(objInvoke);
            c23741.L$0 = u15Var;
            c23741.label = 1;
            objInvoke = e74Var.invoke(c23741);
            if (objInvoke == objF) {
                return objF;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            u15Var = (u15) c23741.L$0;
            c.b(objInvoke);
        }
        gu8 gu8Var = (gu8) objInvoke;
        try {
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult == null) {
                    throw new NoContentException(gu8Var.b(), null, 2, null);
                }
                y45.g(baseResult);
                return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
            }
            return new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
        } catch (Exception e) {
            return new ApiResponse.Failure.Exception(e);
        }
    }

    private static final <T> Object suspendResponseOf$$forInline(ApiResponse.Companion companion, u15 u15Var, e74 e74Var, wh1<? super ApiResponse<? extends T>> wh1Var) throws NoContentException {
        Object exception;
        gu8 gu8Var = (gu8) e74Var.invoke(wh1Var);
        try {
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult == null) {
                    throw new NoContentException(gu8Var.b(), null, 2, null);
                }
                y45.g(baseResult);
                return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
            }
            exception = new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
            return exception;
        } catch (Exception e) {
            exception = new ApiResponse.Failure.Exception(e);
        }
    }

    public static Object suspendResponseOf$default(ApiResponse.Companion companion, u15 u15Var, e74 e74Var, wh1 wh1Var, int i, Object obj) throws NoContentException {
        if ((i & 1) != 0) {
            u15Var = getHTTP_SUCCESS_CODE_RANGE();
        }
        j05.c(0);
        Object objInvoke = e74Var.invoke(wh1Var);
        j05.c(1);
        gu8 gu8Var = (gu8) objInvoke;
        try {
            int iB = u15Var.b();
            int iC = u15Var.c();
            int iB2 = gu8Var.b();
            if (iB <= iB2 && iB2 <= iC) {
                BaseResult baseResult = (BaseResult) gu8Var.a();
                if (baseResult == null) {
                    throw new NoContentException(gu8Var.b(), null, 2, null);
                }
                y45.g(baseResult);
                return baseResult.getCode() == RequestErrorCode.SUCCESS.getCode() ? new ApiResponse.Success(baseResult.getData()) : new ApiResponse.Failure.Error(baseResult.getCode(), baseResult.getMessage());
            }
            return new ApiResponse.Failure.Error(RequestErrorCode.HTTP_ERROR.getCode(), "http_status:" + gu8Var.b() + "  http_message:" + gu8Var.f());
        } catch (Exception e) {
            return new ApiResponse.Failure.Exception(e);
        }
    }
}
