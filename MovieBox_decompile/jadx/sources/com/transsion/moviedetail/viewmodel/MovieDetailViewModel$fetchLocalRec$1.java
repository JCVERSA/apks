package com.transsion.moviedetail.viewmodel;

import com.google.gson.JsonObject;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.bean.ForYouBean;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import okhttp3.RequestBody;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.moviedetail.viewmodel.MovieDetailViewModel$fetchLocalRec$1", f = "MovieDetailViewModel.kt", l = {227}, m = "invokeSuspend")
final class MovieDetailViewModel$fetchLocalRec$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isTablet;
    final int $page;
    final String $requestKey;
    final Integer $subjectType;
    final boolean $useName;
    int label;
    final MovieDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MovieDetailViewModel$fetchLocalRec$1(boolean z10, String str, Integer num, int i10, boolean z11, MovieDetailViewModel movieDetailViewModel, Continuation<? super MovieDetailViewModel$fetchLocalRec$1> continuation) {
        super(2, continuation);
        this.$useName = z10;
        this.$requestKey = str;
        this.$subjectType = num;
        this.$page = i10;
        this.$isTablet = z11;
        this.this$0 = movieDetailViewModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MovieDetailViewModel$fetchLocalRec$1(this.$useName, this.$requestKey, this.$subjectType, this.$page, this.$isTablet, this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00fb  */
    @Override
    public final Object invokeSuspend(Object obj) {
        List<Subject> items;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                wf.a.C0922a.f(wf.a.f74274a, "MovieDetailViewModel", "fetchLocalRec,useName:" + this.$useName + ", requestKey:" + this.$requestKey + ",subjectType" + this.$subjectType + ", page:" + this.$page, false, 4, null);
                Integer num = this.$subjectType;
                int value = SubjectType.MUSIC.getValue();
                int i11 = 8;
                if (num == null || num.intValue() != value) {
                    Integer num2 = this.$subjectType;
                    int value2 = SubjectType.EDUCATION.getValue();
                    if (num2 == null || num2.intValue() != value2) {
                        if (!this.$isTablet) {
                            i11 = 6;
                        }
                    }
                }
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("subjectId", this.$useName ? "0" : this.$requestKey);
                jsonObject.addProperty("name", this.$useName ? this.$requestKey : "");
                jsonObject.addProperty("page", Boxing.d(this.$page));
                jsonObject.addProperty("perPage", Boxing.d(i11));
                mg.b.a aVar = mg.b.f66404a;
                String string = jsonObject.toString();
                Intrinsics.g(string, "toString(...)");
                RequestBody requestBodyA = aVar.a(string);
                if (requestBodyA != null) {
                    om.a aVarN = this.this$0.N();
                    String strA = gg.a.f61067a.a();
                    this.label = 1;
                    obj = aVarN.h(strA, requestBodyA, this);
                    if (obj == objF) {
                        return objF;
                    }
                } else {
                    items = null;
                }
                wf.a.C0922a.f(wf.a.f74274a, "MovieDetailViewModel", "fetchLocalRec,items: " + items, false, 4, null);
                this.this$0.f45712j.n(items);
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            BaseDto baseDto = (BaseDto) obj;
            if (baseDto == null) {
                items = null;
            } else {
                ForYouBean forYouBean = Intrinsics.c(baseDto.getCode(), "0") ? (ForYouBean) baseDto.getData() : null;
                if (forYouBean != null) {
                    items = forYouBean.getItems();
                } else {
                    items = null;
                }
            }
            wf.a.C0922a.f(wf.a.f74274a, "MovieDetailViewModel", "fetchLocalRec,items: " + items, false, 4, null);
            this.this$0.f45712j.n(items);
        } catch (Exception unused) {
            this.this$0.f45712j.n(null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MovieDetailViewModel$fetchLocalRec$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
