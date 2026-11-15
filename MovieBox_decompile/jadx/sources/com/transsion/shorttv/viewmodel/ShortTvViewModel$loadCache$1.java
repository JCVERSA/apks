package com.transsion.shorttv.viewmodel;

import android.content.Context;
import com.transsion.shorttv.bean.BannerData;
import com.transsion.shorttv.bean.OperatingResp;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$loadCache$1", f = "ShortTvViewModel.kt", l = {}, m = "invokeSuspend")
final class ShortTvViewModel$loadCache$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Context $context;
    private Object L$0;
    int label;
    final ShortTvViewModel this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$loadCache$1$1", f = "ShortTvViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final Context $context;
        int label;
        final ShortTvViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ShortTvViewModel shortTvViewModel, Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = shortTvViewModel;
            this.$context = context;
        }

        public static final Unit d() {
            wf.a.C0922a.z(wf.a.f74274a, "ShortTvViewModel", "Cache---没有运营位缓存", false, 4, null);
            return Unit.f64096a;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$context, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object obj2;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ShortTvViewModel shortTvViewModel = this.this$0;
            Context context = this.$context;
            try {
                Result.Companion companion = Result.INSTANCE;
                String string = com.transsion.shorttv.utils.h.f51644a.d().getString("short_tv_operating_data", "");
                if (string == null || string.length() == 0) {
                    string = shortTvViewModel.k0().a(context);
                }
                OperatingResp operatingResp = (OperatingResp) com.blankj.utilcode.util.o.d(string, OperatingResp.class);
                if (operatingResp != null) {
                    operatingResp.setSourceFrom("from_cache");
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    List<BannerData> banners = operatingResp.getBanners();
                    wf.a.C0922a.r(c0922a, "ShortTvViewModel", new String[]{"Cache---有运营位缓存 banner:" + (banners != null ? Boxing.d(banners.size()) : null) + " "}, false, 4, null);
                    operatingResp.setCache(true);
                    shortTvViewModel.M0(operatingResp);
                    shortTvViewModel.i0().n(operatingResp);
                    obj2 = Unit.f64096a;
                } else {
                    obj2 = new Function0() {
                        @Override
                        public final Object invoke() {
                            return ShortTvViewModel$loadCache$1.AnonymousClass1.d();
                        }
                    };
                }
                Result.m453constructorimpl(obj2);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvViewModel$loadCache$1(ShortTvViewModel shortTvViewModel, Context context, Continuation<? super ShortTvViewModel$loadCache$1> continuation) {
        super(2, continuation);
        this.this$0 = shortTvViewModel;
        this.$context = context;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvViewModel$loadCache$1 shortTvViewModel$loadCache$1 = new ShortTvViewModel$loadCache$1(this.this$0, this.$context, continuation);
        shortTvViewModel$loadCache$1.L$0 = obj;
        return shortTvViewModel$loadCache$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        kotlinx.coroutines.k.d((n0) this.L$0, null, null, new AnonymousClass1(this.this$0, this.$context, null), 3, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvViewModel$loadCache$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
