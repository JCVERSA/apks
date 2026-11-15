package com.transsion.shorttv.base.image.blurhash;

import android.graphics.drawable.BitmapDrawable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.base.image.blurhash.BlurHash$execute$1", f = "BlurHash.kt", l = {Sdk$SDKMetric.SDKMetricType.TEMPLATE_HTML_SIZE_VALUE}, m = "invokeSuspend")
final class BlurHash$execute$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $blurString;
    final int $height;
    final Function1<BitmapDrawable, Unit> $response;
    final int $width;
    Object L$0;
    int label;
    final BlurHash this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)Ljava/lang/Object;"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.base.image.blurhash.BlurHash$execute$1$1", f = "BlurHash.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Object>, Object> {
        final Ref.ObjectRef<BitmapDrawable> $blurBitmap;
        final String $blurString;
        final int $height;
        final int $width;
        private Object L$0;
        int label;
        final BlurHash this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<BitmapDrawable> objectRef, String str, int i10, int i11, BlurHash blurHash, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$blurBitmap = objectRef;
            this.$blurString = str;
            this.$width = i10;
            this.$height = i11;
            this.this$0 = blurHash;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$blurBitmap, this.$blurString, this.$width, this.$height, this.this$0, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [T, android.graphics.drawable.BitmapDrawable, java.lang.Object] */
        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            Ref.ObjectRef<BitmapDrawable> objectRef = this.$blurBitmap;
            BitmapDrawable bitmapDrawable = objectRef.element;
            if (bitmapDrawable != null) {
                return bitmapDrawable;
            }
            String str = this.$blurString;
            int i10 = this.$width;
            int i11 = this.$height;
            BlurHash blurHash = this.this$0;
            ?? bitmapDrawable2 = new BitmapDrawable(blurHash.f50772a.getResources(), a.f50776a.b(str, i10, i11, blurHash.f50773b, false));
            objectRef.element = bitmapDrawable2;
            Intrinsics.e(bitmapDrawable2);
            blurHash.e(str, bitmapDrawable2);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BlurHash$execute$1(BlurHash blurHash, String str, Function1<? super BitmapDrawable, Unit> function1, int i10, int i11, Continuation<? super BlurHash$execute$1> continuation) {
        super(2, continuation);
        this.this$0 = blurHash;
        this.$blurString = str;
        this.$response = function1;
        this.$width = i10;
        this.$height = i11;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BlurHash$execute$1(this.this$0, this.$blurString, this.$response, this.$width, this.$height, continuation);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, android.graphics.drawable.BitmapDrawable] */
    @Override
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef objectRef;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = this.this$0.g(this.$blurString);
            i0 i0VarB = y0.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(objectRef2, this.$blurString, this.$width, this.$height, this.this$0, null);
            this.L$0 = objectRef2;
            this.label = 1;
            if (i.g(i0VarB, anonymousClass1, this) == objF) {
                return objF;
            }
            objectRef = objectRef2;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) this.L$0;
            ResultKt.b(obj);
        }
        Function1<BitmapDrawable, Unit> function1 = this.$response;
        T t10 = objectRef.element;
        Intrinsics.e(t10);
        function1.invoke(t10);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BlurHash$execute$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
