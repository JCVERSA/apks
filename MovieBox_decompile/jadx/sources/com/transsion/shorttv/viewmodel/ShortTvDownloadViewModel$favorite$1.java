package com.transsion.shorttv.viewmodel;

import com.cloud.tmc.integration.event.EventConstants;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.Subject;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$favorite$1", f = "ShortTvDownloadViewModel.kt", l = {199}, m = "invokeSuspend")
@SourceDebugExtension
final class ShortTvDownloadViewModel$favorite$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $favorite;
    final ShortTVFavInfo $favoriteInfo;
    final Subject $shortTvInfo;
    int label;
    final ShortTvDownloadViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvDownloadViewModel$favorite$1(Subject subject, boolean z10, ShortTvDownloadViewModel shortTvDownloadViewModel, ShortTVFavInfo shortTVFavInfo, Continuation<? super ShortTvDownloadViewModel$favorite$1> continuation) {
        super(2, continuation);
        this.$shortTvInfo = subject;
        this.$favorite = z10;
        this.this$0 = shortTvDownloadViewModel;
        this.$favoriteInfo = shortTVFavInfo;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTvDownloadViewModel$favorite$1(this.$shortTvInfo, this.$favorite, this.this$0, this.$favoriteInfo, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                Subject subject = this.$shortTvInfo;
                boolean z10 = this.$favorite;
                ShortTvDownloadViewModel shortTvDownloadViewModel = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("subjectId", subject.getSubjectId());
                jSONObject.put(EventConstants.KEY_ACTION, !z10 ? 1 : 0);
                sr.a aVarK = shortTvDownloadViewModel.k();
                RequestBody.Companion companion2 = RequestBody.INSTANCE;
                String string = jSONObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyCreate = companion2.create(string, MediaType.INSTANCE.parse("application/json"));
                this.label = 1;
                obj = sr.a.C0885a.a(aVarK, requestBodyCreate, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) obj);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        ShortTVFavInfo shortTVFavInfo = this.$favoriteInfo;
        boolean z11 = this.$favorite;
        ShortTvDownloadViewModel shortTvDownloadViewModel2 = this.this$0;
        Subject subject2 = this.$shortTvInfo;
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            if (shortTVFavInfo.getHasFavorite() != (!z11)) {
                shortTVFavInfo.setHasFavorite(!z11);
                if (z11) {
                    String favoriteNum = shortTVFavInfo.getFavoriteNum();
                    shortTVFavInfo.setFavoriteNum(String.valueOf((favoriteNum != null ? Long.parseLong(favoriteNum) : 1L) - 1));
                } else {
                    String favoriteNum2 = shortTVFavInfo.getFavoriteNum();
                    shortTVFavInfo.setFavoriteNum(String.valueOf((favoriteNum2 != null ? Long.parseLong(favoriteNum2) : 0L) + 1));
                }
                shortTvDownloadViewModel2.m().q(!z11 ? Boxing.d(1) : Boxing.d(2));
                String subjectId = subject2.getSubjectId();
                if (subjectId == null) {
                    subjectId = "";
                }
                hx.c cVar = new hx.c(subjectId, true ^ z11, String.valueOf(shortTVFavInfo.getFavoriteNum()));
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = hx.c.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, cVar, 0L);
            }
        }
        ShortTvDownloadViewModel shortTvDownloadViewModel3 = this.this$0;
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            shortTvDownloadViewModel3.m().q(Boxing.d(0));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvDownloadViewModel$favorite$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
