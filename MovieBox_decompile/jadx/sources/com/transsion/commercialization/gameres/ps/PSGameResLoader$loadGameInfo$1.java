package com.transsion.commercialization.gameres.ps;

import android.content.Context;
import android.view.View;
import com.transsion.ad.ps.model.PsLinkDto;
import com.transsion.ad.ps.model.RecommendInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import okhttp3.RequestBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.commercialization.gameres.ps.PSGameResLoader$loadGameInfo$1", f = "PSGameResLoader.kt", l = {62}, m = "invokeSuspend")
@SourceDebugExtension
final class PSGameResLoader$loadGameInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<View, Unit> $callback;
    final Context $context;
    final String $itemId;
    final String $pageName;
    int label;
    final PSGameResLoader this$0;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/flow/b;", "", "Lcom/transsion/ad/ps/model/RecommendInfo;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.commercialization.gameres.ps.PSGameResLoader$loadGameInfo$1$3", f = "PSGameResLoader.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE, Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION_VALUE, 57}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final RequestBody $body;
        private Object L$0;
        int label;
        final PSGameResLoader this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(PSGameResLoader pSGameResLoader, RequestBody requestBody, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.this$0 = pSGameResLoader;
            this.$body = requestBody;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, this.$body, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            kotlinx.coroutines.flow.b bVar;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    bVar = (kotlinx.coroutines.flow.b) this.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2 && i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            bVar = (kotlinx.coroutines.flow.b) this.L$0;
            a aVarG = this.this$0.g();
            RequestBody requestBody = this.$body;
            String strF = this.this$0.f();
            this.L$0 = bVar;
            this.label = 1;
            obj = aVarG.a(requestBody, strF, this);
            if (obj == objF) {
                return objF;
            }
            PsLinkDto psLinkDto = (PsLinkDto) obj;
            if (psLinkDto.getCode() == 0) {
                List<RecommendInfo> data = psLinkDto.getData();
                this.L$0 = null;
                this.label = 2;
                if (bVar.emit(data, this) == objF) {
                    return objF;
                }
            } else {
                wf.a.f74274a.c("GameResLoader", "PSGameRes fail, code:" + psLinkDto.getCode() + ", msg:" + psLinkDto.getMsg(), true);
                this.L$0 = null;
                this.label = 3;
                if (bVar.emit(null, this) == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/b;", "", "Lcom/transsion/ad/ps/model/RecommendInfo;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.commercialization.gameres.ps.PSGameResLoader$loadGameInfo$1$4", f = "PSGameResLoader.kt", l = {61}, m = "invokeSuspend")
    static final class AnonymousClass4 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        private Object L$0;
        Object L$1;
        int label;

        AnonymousClass4(Continuation<? super AnonymousClass4> continuation) {
            super(3, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                Throwable th2 = (Throwable) this.L$1;
                wf.a.f74274a.c("GameResLoader", "PSGameRes error:" + th2, true);
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
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(continuation);
            anonymousClass4.L$0 = bVar;
            anonymousClass4.L$1 = th2;
            return anonymousClass4.invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PSGameResLoader$loadGameInfo$1(String str, PSGameResLoader pSGameResLoader, Function1<? super View, Unit> function1, Context context, String str2, Continuation<? super PSGameResLoader$loadGameInfo$1> continuation) {
        super(2, continuation);
        this.$itemId = str;
        this.this$0 = pSGameResLoader;
        this.$callback = function1;
        this.$context = context;
        this.$pageName = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PSGameResLoader$loadGameInfo$1(this.$itemId, this.this$0, this.$callback, this.$context, this.$pageName, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) throws JSONException {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(this.$itemId);
            Unit unit = Unit.f64096a;
            jSONObject.put("itemIds", jSONArray);
            for (Map.Entry entry : zh.a.INSTANCE.a(System.currentTimeMillis()).entrySet()) {
                jSONObject.put((String) entry.getKey(), entry.getValue());
            }
            String string = jSONObject.toString();
            Intrinsics.g(string, "toString(...)");
            wf.a.f74274a.c("GameResLoader", "PSGameRes loadGameInfo,bodyStr:" + string + " ", true);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.r(new AnonymousClass3(this.this$0, mg.b.f66404a.a(string), null)), new AnonymousClass4(null));
            final Function1<View, Unit> function1 = this.$callback;
            final PSGameResLoader pSGameResLoader = this.this$0;
            final Context context = this.$context;
            final String str = this.$pageName;
            final String str2 = this.$itemId;
            kotlinx.coroutines.flow.b bVar = new kotlinx.coroutines.flow.b() {

                @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
                @DebugMetadata(c = "com.transsion.commercialization.gameres.ps.PSGameResLoader$loadGameInfo$1$5$1", f = "PSGameResLoader.kt", l = {}, m = "invokeSuspend")
                static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                    final Function1<View, Unit> $callback;
                    final Context $context;
                    final String $itemId;
                    final String $pageName;
                    final List<RecommendInfo> $response;
                    int label;
                    final PSGameResLoader this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass1(List<RecommendInfo> list, Function1<? super View, Unit> function1, PSGameResLoader pSGameResLoader, Context context, String str, String str2, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$response = list;
                        this.$callback = function1;
                        this.this$0 = pSGameResLoader;
                        this.$context = context;
                        this.$pageName = str;
                        this.$itemId = str2;
                    }

                    @Override
                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                        return new AnonymousClass1(this.$response, this.$callback, this.this$0, this.$context, this.$pageName, this.$itemId, continuation);
                    }

                    @Override
                    public final Object invokeSuspend(Object obj) {
                        RecommendInfo recommendInfo;
                        IntrinsicsKt.f();
                        if (this.label != 0) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                        List<RecommendInfo> list = this.$response;
                        if (list == null || list.isEmpty()) {
                            this.$callback.invoke(null);
                        } else {
                            RecommendInfo recommendInfo2 = (RecommendInfo) CollectionsKt.k0(this.$response);
                            if ((recommendInfo2 != null ? Intrinsics.c(recommendInfo2.getExists(), Boxing.a(true)) : false) && (recommendInfo = (RecommendInfo) CollectionsKt.k0(this.$response)) != null) {
                                Function1<View, Unit> function1 = this.$callback;
                                PSGameResLoader pSGameResLoader = this.this$0;
                                Context context = this.$context;
                                String str = this.$pageName;
                                String str2 = this.$itemId;
                                wf.a.C0922a.f(wf.a.f74274a, "GameResLoader", "PSGameRes getGameInfo, success:" + recommendInfo, false, 4, null);
                                function1.invoke(pSGameResLoader.e(context, pSGameResLoader.d(str, str2, recommendInfo)));
                            } else {
                                this.$callback.invoke(null);
                            }
                        }
                        return Unit.f64096a;
                    }

                    @Override
                    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                    }
                }

                @Override
                public final Object emit(List list, Continuation continuation) {
                    Object objG = i.g(y0.c(), new AnonymousClass1(list, function1, pSGameResLoader, context, str, str2, null), continuation);
                    return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
                }
            };
            this.label = 1;
            if (aVarE.a(bVar, this) == objF) {
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
        return ((PSGameResLoader$loadGameInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
