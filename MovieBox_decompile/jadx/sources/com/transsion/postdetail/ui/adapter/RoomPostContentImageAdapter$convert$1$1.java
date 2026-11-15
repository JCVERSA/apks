package com.transsion.postdetail.ui.adapter;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.Image;
import kotlin.Metadata;
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
@DebugMetadata(c = "com.transsion.postdetail.ui.adapter.RoomPostContentImageAdapter$convert$1$1", f = "RoomPostContentImageAdapter.kt", l = {59}, m = "invokeSuspend")
final class RoomPostContentImageAdapter$convert$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Image $item;
    final ShapeableImageView $ivCover;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomPostContentImageAdapter$convert$1$1(Image image, ShapeableImageView shapeableImageView, Continuation<? super RoomPostContentImageAdapter$convert$1$1> continuation) {
        super(2, continuation);
        this.$item = image;
        this.$ivCover = shapeableImageView;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomPostContentImageAdapter$convert$1$1(this.$item, this.$ivCover, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        AssetManager assets;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            String url = this.$item.getUrl();
            if (url != null) {
                ShapeableImageView shapeableImageView = this.$ivCover;
                Context context = shapeableImageView.getContext();
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream((context == null || (assets = context.getAssets()) == null) ? null : assets.open(url));
                a2 a2VarC = y0.c();
                RoomPostContentImageAdapter$convert$1$1$1$1 roomPostContentImageAdapter$convert$1$1$1$1 = new RoomPostContentImageAdapter$convert$1$1$1$1(shapeableImageView, bitmapDecodeStream, null);
                this.label = 1;
                if (kotlinx.coroutines.i.g(a2VarC, roomPostContentImageAdapter$convert$1$1$1$1, this) == objF) {
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
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomPostContentImageAdapter$convert$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
