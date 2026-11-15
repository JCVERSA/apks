package com.transsion.shorttv.ui.adapter;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.Subject;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.ui.adapter.ShortTVTrendingAdapter$loadBuiltInCover$1", f = "ShortTVTrendingAdapter.kt", l = {172}, m = "invokeSuspend")
final class ShortTVTrendingAdapter$loadBuiltInCover$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Subject $item;
    final AppCompatImageView $this_loadBuiltInCover;
    int label;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\f\u0012\n \u0002*\u0004\u0018\u00010\u00010\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Landroid/graphics/Bitmap;", "kotlin.jvm.PlatformType", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.ui.adapter.ShortTVTrendingAdapter$loadBuiltInCover$1$1", f = "ShortTVTrendingAdapter.kt", l = {169}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final Subject $item;
        final AppCompatImageView $this_loadBuiltInCover;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Subject subject, AppCompatImageView appCompatImageView, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$item = subject;
            this.$this_loadBuiltInCover = appCompatImageView;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$item, this.$this_loadBuiltInCover, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) throws IOException {
            String url;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                Cover cover = this.$item.getCover();
                if (cover != null && (url = cover.getUrl()) != null) {
                    InputStream inputStreamOpen = this.$this_loadBuiltInCover.getContext().getAssets().open(url);
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpen);
                    this.L$0 = inputStreamOpen;
                    this.label = 1;
                    if (bVar.emit(bitmapDecodeStream, this) == objF) {
                        return objF;
                    }
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
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u0010\u0012\f\u0012\n \u0002*\u0004\u0018\u00010\u00010\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Landroid/graphics/Bitmap;", "kotlin.jvm.PlatformType", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.ui.adapter.ShortTVTrendingAdapter$loadBuiltInCover$1$2", f = "ShortTVTrendingAdapter.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
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
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Throwable th2, Continuation<? super Unit> continuation) {
            return new AnonymousClass2(continuation).invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final AppCompatImageView f51102a;

        a(AppCompatImageView appCompatImageView) {
            this.f51102a = appCompatImageView;
        }

        @Override
        public final Object emit(Bitmap bitmap, Continuation continuation) {
            this.f51102a.setImageBitmap(bitmap);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTVTrendingAdapter$loadBuiltInCover$1(Subject subject, AppCompatImageView appCompatImageView, Continuation<? super ShortTVTrendingAdapter$loadBuiltInCover$1> continuation) {
        super(2, continuation);
        this.$item = subject;
        this.$this_loadBuiltInCover = appCompatImageView;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ShortTVTrendingAdapter$loadBuiltInCover$1(this.$item, this.$this_loadBuiltInCover, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$item, this.$this_loadBuiltInCover, null)), y0.b()), new AnonymousClass2(null));
            a aVar = new a(this.$this_loadBuiltInCover);
            this.label = 1;
            if (aVarE.a(aVar, this) == objF) {
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
        return ((ShortTVTrendingAdapter$loadBuiltInCover$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
