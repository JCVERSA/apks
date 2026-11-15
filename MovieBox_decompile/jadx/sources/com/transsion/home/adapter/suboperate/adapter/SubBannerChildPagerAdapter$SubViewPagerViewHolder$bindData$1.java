package com.transsion.home.adapter.suboperate.adapter;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.adapter.suboperate.adapter.SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1", f = "SubBannerChildPagerAdapter.kt", l = {148}, m = "invokeSuspend")
final class SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $coverUrl;
    private Object L$0;
    int label;
    final SubBannerChildPagerAdapter.SubViewPagerViewHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1(String str, SubBannerChildPagerAdapter.SubViewPagerViewHolder subViewPagerViewHolder, Continuation<? super SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1> continuation) {
        super(2, continuation);
        this.$coverUrl = str;
        this.this$0 = subViewPagerViewHolder;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1 subBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1 = new SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1(this.$coverUrl, this.this$0, continuation);
        subBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1.L$0 = obj;
        return subBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        AssetManager assets;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                String str = this.$coverUrl;
                if (str != null) {
                    SubBannerChildPagerAdapter.SubViewPagerViewHolder subViewPagerViewHolder = this.this$0;
                    Result.Companion companion = Result.INSTANCE;
                    Context context = subViewPagerViewHolder.getImageView().getContext();
                    InputStream inputStreamOpen = (context == null || (assets = context.getAssets()) == null) ? null : assets.open(str);
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                    a2 a2VarC = y0.c();
                    SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1$1$1$1 subBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1$1$1$1 = new SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1$1$1$1(subViewPagerViewHolder, bitmapDecodeStream, null);
                    this.label = 1;
                    if (kotlinx.coroutines.i.g(a2VarC, subBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1$1$1$1, this) == objF) {
                        return objF;
                    }
                }
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubBannerChildPagerAdapter$SubViewPagerViewHolder$bindData$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
