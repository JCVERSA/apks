package com.transsion.room.fragment;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup;
import com.google.android.material.imageview.ShapeableImageView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.room.fragment.RoomDetailFragment$showCover$2$onResourceReady$1", f = "RoomDetailFragment.kt", l = {599}, m = "invokeSuspend")
@SourceDebugExtension
final class RoomDetailFragment$showCover$2$onResourceReady$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final Bitmap $resource;
    int label;
    final RoomDetailFragment this$0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Landroid/graphics/Bitmap;", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.fragment.RoomDetailFragment$showCover$2$onResourceReady$1$1", f = "RoomDetailFragment.kt", l = {594}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.b, Continuation<? super Unit>, Object> {
        final Bitmap $resource;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Bitmap bitmap, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$resource = bitmap;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$resource, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.b bVar = (kotlinx.coroutines.flow.b) this.L$0;
                Bitmap bitmap = this.$resource;
                this.label = 1;
                if (bVar.emit(bitmap, this) == objF) {
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
        public final Object invoke(kotlinx.coroutines.flow.b bVar, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(bVar, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005*\u0010\u0012\f\u0012\n \u0002*\u0004\u0018\u00010\u00010\u00010\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lkotlinx/coroutines/flow/b;", "Landroid/graphics/Bitmap;", "kotlin.jvm.PlatformType", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/b;Ljava/lang/Throwable;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.room.fragment.RoomDetailFragment$showCover$2$onResourceReady$1$3", f = "RoomDetailFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.b, Throwable, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
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
            return new AnonymousClass3(continuation).invokeSuspend(Unit.f64096a);
        }
    }

    static final class a implements kotlinx.coroutines.flow.b {

        final RoomDetailFragment f49416a;

        final Bitmap f49417b;

        a(RoomDetailFragment roomDetailFragment, Bitmap bitmap) {
            this.f49416a = roomDetailFragment;
            this.f49417b = bitmap;
        }

        @Override
        public final Object emit(Bitmap bitmap, Continuation continuation) {
            ShapeableImageView shapeableImageView;
            ShapeableImageView shapeableImageView2;
            ShapeableImageView shapeableImageView3;
            if (!this.f49416a.isAdded() || this.f49416a.isRemoving() || this.f49416a.isDetached()) {
                return Unit.f64096a;
            }
            fp.n mViewBinding = this.f49416a.getMViewBinding();
            if (mViewBinding != null) {
                mViewBinding.f60373d.setBackground(new BitmapDrawable(this.f49416a.getResources(), bitmap));
                ViewGroup.LayoutParams layoutParams = mViewBinding.f60372c.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.height = mViewBinding.f60373d.getMeasuredHeight();
                }
                mViewBinding.f60372c.setLayoutParams(layoutParams);
            }
            if (this.f49417b.getHeight() < com.blankj.utilcode.util.a0.a(56.0f)) {
                fp.n mViewBinding2 = this.f49416a.getMViewBinding();
                if (mViewBinding2 != null && (shapeableImageView3 = mViewBinding2.f60378i) != null) {
                    shapeableImageView3.setImageBitmap(bitmap);
                }
                fp.n mViewBinding3 = this.f49416a.getMViewBinding();
                if (mViewBinding3 != null && (shapeableImageView2 = mViewBinding3.f60378i) != null) {
                    uf.c.k(shapeableImageView2);
                }
            } else {
                fp.n mViewBinding4 = this.f49416a.getMViewBinding();
                if (mViewBinding4 != null && (shapeableImageView = mViewBinding4.f60378i) != null) {
                    uf.c.g(shapeableImageView);
                }
            }
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RoomDetailFragment$showCover$2$onResourceReady$1(Bitmap bitmap, RoomDetailFragment roomDetailFragment, Continuation<? super RoomDetailFragment$showCover$2$onResourceReady$1> continuation) {
        super(2, continuation);
        this.$resource = bitmap;
        this.this$0 = roomDetailFragment;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RoomDetailFragment$showCover$2$onResourceReady$1(this.$resource, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            final kotlinx.coroutines.flow.a aVarR = kotlinx.coroutines.flow.c.r(new AnonymousClass1(this.$resource, null));
            kotlinx.coroutines.flow.a aVarE = kotlinx.coroutines.flow.c.e(kotlinx.coroutines.flow.c.t(new kotlinx.coroutines.flow.a() {

                public static final class AnonymousClass2 implements kotlinx.coroutines.flow.b {

                    final kotlinx.coroutines.flow.b f49419a;

                    @Metadata(k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
                    @DebugMetadata(c = "com.transsion.room.fragment.RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1$2", f = "RoomDetailFragment.kt", l = {50}, m = "emit")
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(kotlinx.coroutines.flow.b bVar) {
                        this.f49419a = bVar;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i10 = anonymousClass1.label;
                            if ((i10 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label = i10 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.result;
                        Object objF = IntrinsicsKt.f();
                        int i11 = anonymousClass1.label;
                        if (i11 == 0) {
                            ResultKt.b(obj2);
                            kotlinx.coroutines.flow.b bVar = this.f49419a;
                            Bitmap bitmapA = sf.b.a((Bitmap) obj, 50, false);
                            anonymousClass1.label = 1;
                            if (bVar.emit(bitmapA, anonymousClass1) == objF) {
                                return objF;
                            }
                        } else {
                            if (i11 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj2);
                        }
                        return Unit.f64096a;
                    }
                }

                @Override
                public Object a(kotlinx.coroutines.flow.b bVar, Continuation continuation) {
                    Object objA = aVarR.a(new AnonymousClass2(bVar), continuation);
                    return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
                }
            }, kotlinx.coroutines.y0.a()), new AnonymousClass3(null));
            a aVar = new a(this.this$0, this.$resource);
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
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RoomDetailFragment$showCover$2$onResourceReady$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
