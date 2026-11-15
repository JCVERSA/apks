package com.transsion.web.fragment;

import com.transsion.web.bean.ApiRequestData;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.j0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$request$1", f = "WebFragmentV2.kt", l = {322}, m = "invokeSuspend")
final class WebFragmentV2$addJsInterface$2$request$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $callbackId;
    final ApiRequestData $requestData;
    final String $url;
    int label;
    final WebFragmentV2 this$0;
    final WebFragmentV2$addJsInterface$2 this$1;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$request$1$1", f = "WebFragmentV2.kt", l = {Sdk$SDKError.Reason.AD_EXPIRED_VALUE, 308, Sdk$SDKError.Reason.JSON_PARAMS_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.AD_CLOSED_TEMPLATE_ERROR_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final ApiRequestData $requestData;
        final String $url;
        private Object L$0;
        int label;
        final WebFragmentV2 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ApiRequestData apiRequestData, WebFragmentV2 webFragmentV2, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$requestData = apiRequestData;
            this.this$0 = webFragmentV2;
            this.$url = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$requestData, this.this$0, this.$url, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Code duplicated, block: B:39:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:44:0x00ea  */
        /* JADX WARN: Code duplicated, block: B:46:0x00f4 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) throws IOException {
            kotlinx.coroutines.flow.b bVar;
            RequestBody requestBodyA;
            j0 j0Var;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                String upperCase = this.$requestData.getMethods().toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase, "toUpperCase(...)");
                if (Intrinsics.c(upperCase, "POST")) {
                    if (this.$requestData.getQueryParams() != null) {
                        mg.b.a aVar = mg.b.f66404a;
                        String strJ = com.blankj.utilcode.util.o.j(this.$requestData.getQueryParams());
                        Intrinsics.g(strJ, "toJson(...)");
                        requestBodyA = aVar.a(strJ);
                    } else {
                        requestBodyA = null;
                    }
                    kw.a aVarC1 = this.this$0.c1();
                    String str = this.$url;
                    Map<String, String> headers = this.$requestData.getHeaders();
                    if (headers == null) {
                        headers = new LinkedHashMap<>();
                    }
                    this.L$0 = bVar;
                    this.label = 1;
                    obj = aVarC1.a(str, headers, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                    j0Var = (j0) obj;
                    if (j0Var.e()) {
                        this.L$0 = null;
                        this.label = 4;
                        if (bVar.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 4;
                        if (bVar.emit(null, this) == objF) {
                            return objF;
                        }
                    }
                } else {
                    kw.a aVarC2 = this.this$0.c1();
                    String str2 = this.$url;
                    Map<String, String> headers2 = this.$requestData.getHeaders();
                    if (headers2 == null) {
                        headers2 = new LinkedHashMap<>();
                    }
                    Map<String, Object> queryParams = this.$requestData.getQueryParams();
                    if (queryParams == null) {
                        queryParams = new LinkedHashMap<>();
                    }
                    this.L$0 = bVar;
                    this.label = 2;
                    obj = aVarC2.b(str2, headers2, queryParams, this);
                    if (obj == objF) {
                        return objF;
                    }
                    j0Var = (j0) obj;
                    if (j0Var.e()) {
                        this.L$0 = null;
                        this.label = 4;
                        if (bVar.emit(null, this) == objF) {
                            return objF;
                        }
                    } else {
                        this.L$0 = null;
                        this.label = 4;
                        if (bVar.emit(null, this) == objF) {
                            return objF;
                        }
                    }
                }
            } else if (i10 == 1) {
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                j0Var = (j0) obj;
                if (j0Var.e()) {
                    this.L$0 = null;
                    this.label = 4;
                    if (bVar.emit(null, this) == objF) {
                        return objF;
                    }
                } else {
                    this.L$0 = null;
                    this.label = 4;
                    if (bVar.emit(null, this) == objF) {
                        return objF;
                    }
                }
            } else if (i10 == 2) {
                bVar = (kotlinx.coroutines.flow.b) this.L$0;
                ResultKt.b(obj);
                j0Var = (j0) obj;
                if (j0Var.e() || j0Var.a() == null) {
                    this.L$0 = null;
                    this.label = 4;
                    if (bVar.emit(null, this) == objF) {
                        return objF;
                    }
                } else {
                    Object objA = j0Var.a();
                    Intrinsics.e(objA);
                    String strString = ((ResponseBody) objA).string();
                    this.L$0 = null;
                    this.label = 3;
                    if (bVar.emit(strString, this) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i10 != 3 && i10 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0004*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlinx/coroutines/flow/b;", "", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$request$1$2", f = "WebFragmentV2.kt", l = {321}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        private Object L$0;
        Object L$1;
        int label;
        final WebFragmentV2$addJsInterface$2 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(WebFragmentV2$addJsInterface$2 webFragmentV2$addJsInterface$2, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = webFragmentV2$addJsInterface$2;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                Throwable th2 = (Throwable) this.L$1;
                wf.a.f74274a.c(this.this$0.getTAG(), "requestApiData, error :" + th2, true);
                this.L$0 = null;
                this.label = 1;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
            anonymousClass2.L$0 = bVar;
            anonymousClass2.L$1 = th2;
            return anonymousClass2.invokeSuspend(Unit.f64096a);
        }
    }

    static final class AnonymousClass3 implements kotlinx.coroutines.flow.b {

        final WebFragmentV2 f55901a;

        final String f55902b;

        final WebFragmentV2$addJsInterface$2 f55903c;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.web.fragment.WebFragmentV2$addJsInterface$2$request$1$3$1", f = "WebFragmentV2.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            int label;

            AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                return Unit.f64096a;
            }

            @Override
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        AnonymousClass3(WebFragmentV2 webFragmentV2, String str, WebFragmentV2$addJsInterface$2 webFragmentV2$addJsInterface$2) {
            this.f55901a = webFragmentV2;
            this.f55902b = str;
            this.f55903c = webFragmentV2$addJsInterface$2;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        public final Object emit(String str, Continuation continuation) {
            WebFragmentV2$addJsInterface$2$request$1$3$emit$1 webFragmentV2$addJsInterface$2$request$1$3$emit$1;
            if (continuation instanceof WebFragmentV2$addJsInterface$2$request$1$3$emit$1) {
                webFragmentV2$addJsInterface$2$request$1$3$emit$1 = (WebFragmentV2$addJsInterface$2$request$1$3$emit$1) continuation;
                int i10 = webFragmentV2$addJsInterface$2$request$1$3$emit$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    webFragmentV2$addJsInterface$2$request$1$3$emit$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    webFragmentV2$addJsInterface$2$request$1$3$emit$1 = new WebFragmentV2$addJsInterface$2$request$1$3$emit$1(this, continuation);
                }
            } else {
                webFragmentV2$addJsInterface$2$request$1$3$emit$1 = new WebFragmentV2$addJsInterface$2$request$1$3$emit$1(this, continuation);
            }
            Object obj = webFragmentV2$addJsInterface$2$request$1$3$emit$1.result;
            Object objF = IntrinsicsKt.f();
            int i11 = webFragmentV2$addJsInterface$2$request$1$3$emit$1.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                a2 a2VarC = y0.c();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
                webFragmentV2$addJsInterface$2$request$1$3$emit$1.L$0 = str;
                webFragmentV2$addJsInterface$2$request$1$3$emit$1.label = 1;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, webFragmentV2$addJsInterface$2$request$1$3$emit$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) webFragmentV2$addJsInterface$2$request$1$3$emit$1.L$0;
                ResultKt.b(obj);
            }
            if (str == null || str.length() == 0) {
                this.f55901a.k0().sendResponse("", this.f55902b);
            } else {
                wf.a.f74274a.c(this.f55903c.getTAG(), "requestApiData, success :" + str, true);
                this.f55901a.k0().sendResponse(str, this.f55902b);
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WebFragmentV2$addJsInterface$2$request$1(ApiRequestData apiRequestData, WebFragmentV2 webFragmentV2, String str, WebFragmentV2$addJsInterface$2 webFragmentV2$addJsInterface$2, String str2, Continuation<? super WebFragmentV2$addJsInterface$2$request$1> continuation) {
        super(2, continuation);
        this.$requestData = apiRequestData;
        this.this$0 = webFragmentV2;
        this.$url = str;
        this.this$1 = webFragmentV2$addJsInterface$2;
        this.$callbackId = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WebFragmentV2$addJsInterface$2$request$1(this.$requestData, this.this$0, this.$url, this.this$1, this.$callbackId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$requestData, this.this$0, this.$url, null)), new AnonymousClass2(this.this$1, null));
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$callbackId, this.this$1);
            this.label = 1;
            if (aVarE.a(anonymousClass3, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((WebFragmentV2$addJsInterface$2$request$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
