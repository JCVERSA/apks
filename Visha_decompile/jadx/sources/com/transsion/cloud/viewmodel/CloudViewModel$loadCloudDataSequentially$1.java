package com.transsion.cloud.viewmodel;

import android.util.Log;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.cl0;
import defpackage.d72;
import defpackage.el0;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.Ref$BooleanRef;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$loadCloudDataSequentially$1", f = "CloudViewModel.kt", l = {836, 844, 845}, m = "invokeSuspend")
public final class CloudViewModel$loadCloudDataSequentially$1 extends SuspendLambda implements s74 {
    final int $dataType;
    final int $pageNo;
    final String $searchText;
    final String $sortBy;
    final String $sortField;
    private Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final CloudViewModel this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "com.transsion.cloud.viewmodel.CloudViewModel$loadCloudDataSequentially$1$1", f = "CloudViewModel.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final CountDownLatch $latch;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CountDownLatch countDownLatch, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$latch = countDownLatch;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return new AnonymousClass1(this.$latch, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            if (!this.$latch.await(10L, TimeUnit.SECONDS)) {
                Log.w("CloudViewModel", "wait timeout");
            }
            return zfb.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudViewModel$loadCloudDataSequentially$1(CloudViewModel cloudViewModel, int i, String str, String str2, int i2, String str3, wh1<? super CloudViewModel$loadCloudDataSequentially$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = cloudViewModel;
        this.$pageNo = i;
        this.$sortField = str;
        this.$sortBy = str2;
        this.$dataType = i2;
        this.$searchText = str3;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        CloudViewModel$loadCloudDataSequentially$1 cloudViewModel$loadCloudDataSequentially$1 = new CloudViewModel$loadCloudDataSequentially$1(this.this$0, this.$pageNo, this.$sortField, this.$sortBy, this.$dataType, this.$searchText, wh1Var);
        cloudViewModel$loadCloudDataSequentially$1.L$0 = obj;
        return cloudViewModel$loadCloudDataSequentially$1;
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudViewModel$loadCloudDataSequentially$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00d6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:38:0x00f1 A[ADDED_TO_REGION, Catch: Exception -> 0x0023, REMOVE, TRY_LEAVE, TryCatch #0 {Exception -> 0x0023, blocks: (B:8:0x001e, B:33:0x00d9, B:35:0x00dd, B:37:0x00e1, B:38:0x00f1, B:15:0x003a, B:29:0x00c7, B:18:0x004f, B:25:0x00b4, B:21:0x005a), top: B:43:0x000e }] */
    @Override
    public final Object invokeSuspend(Object obj) {
        d72 d72Var;
        d72 d72Var2;
        Ref$BooleanRef ref$BooleanRef;
        Ref$BooleanRef ref$BooleanRef2;
        Ref$BooleanRef ref$BooleanRef3;
        Ref$BooleanRef ref$BooleanRef4;
        Ref$BooleanRef ref$BooleanRef5;
        Ref$BooleanRef ref$BooleanRef6;
        Object objF = z45.f();
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    d72Var2 = (d72) this.L$3;
                    d72Var = (d72) this.L$2;
                    ref$BooleanRef2 = (Ref$BooleanRef) this.L$1;
                    ref$BooleanRef = (Ref$BooleanRef) this.L$0;
                    kotlin.c.b(obj);
                } else if (i == 2) {
                    d72Var2 = (d72) this.L$2;
                    ref$BooleanRef3 = (Ref$BooleanRef) this.L$1;
                    ref$BooleanRef4 = (Ref$BooleanRef) this.L$0;
                    kotlin.c.b(obj);
                    this.L$0 = ref$BooleanRef4;
                    this.L$1 = ref$BooleanRef3;
                    this.L$2 = null;
                    this.label = 3;
                    if (d72Var2.o(this) == objF) {
                        return objF;
                    }
                    ref$BooleanRef5 = ref$BooleanRef3;
                    ref$BooleanRef6 = ref$BooleanRef4;
                } else {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ref$BooleanRef5 = (Ref$BooleanRef) this.L$1;
                    ref$BooleanRef6 = (Ref$BooleanRef) this.L$0;
                    kotlin.c.b(obj);
                }
                if (ref$BooleanRef6.element || ref$BooleanRef5.element) {
                    this.this$0.u(this.$pageNo, this.$sortField, this.$sortBy, this.$dataType, this.$searchText);
                } else {
                    this.this$0.u(this.$pageNo, this.$sortField, this.$sortBy, this.$dataType, this.$searchText);
                }
                return zfb.a;
            }
            kotlin.c.b(obj);
            nk1 nk1Var = (nk1) this.L$0;
            Log.d("CloudViewModel", TtmlNode.START);
            CountDownLatch countDownLatch = new CountDownLatch(2);
            Ref$BooleanRef ref$BooleanRef7 = new Ref$BooleanRef();
            Ref$BooleanRef ref$BooleanRef8 = new Ref$BooleanRef();
            d72 d72VarB = el0.b(nk1Var, null, null, new CloudViewModel$loadCloudDataSequentially$1$favoriteJob$1(this.this$0, ref$BooleanRef7, countDownLatch, null), 3, null);
            d72 d72VarB2 = el0.b(nk1Var, null, null, new CloudViewModel$loadCloudDataSequentially$1$recentJob$1(this.this$0, ref$BooleanRef8, countDownLatch, null), 3, null);
            kotlinx.coroutines.c cVarB = mc2.b();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(countDownLatch, null);
            this.L$0 = ref$BooleanRef7;
            this.L$1 = ref$BooleanRef8;
            this.L$2 = d72VarB;
            this.L$3 = d72VarB2;
            this.label = 1;
            if (cl0.g(cVarB, anonymousClass1, this) == objF) {
                return objF;
            }
            d72Var = d72VarB;
            d72Var2 = d72VarB2;
            ref$BooleanRef = ref$BooleanRef7;
            ref$BooleanRef2 = ref$BooleanRef8;
            this.L$0 = ref$BooleanRef;
            this.L$1 = ref$BooleanRef2;
            this.L$2 = d72Var2;
            this.L$3 = null;
            this.label = 2;
            if (d72Var.o(this) == objF) {
                return objF;
            }
            ref$BooleanRef3 = ref$BooleanRef2;
            ref$BooleanRef4 = ref$BooleanRef;
            this.L$0 = ref$BooleanRef4;
            this.L$1 = ref$BooleanRef3;
            this.L$2 = null;
            this.label = 3;
            if (d72Var2.o(this) == objF) {
                return objF;
            }
            ref$BooleanRef5 = ref$BooleanRef3;
            ref$BooleanRef6 = ref$BooleanRef4;
            if (ref$BooleanRef6.element) {
                this.this$0.u(this.$pageNo, this.$sortField, this.$sortBy, this.$dataType, this.$searchText);
            } else {
                this.this$0.u(this.$pageNo, this.$sortField, this.$sortBy, this.$dataType, this.$searchText);
            }
            return zfb.a;
        } catch (Exception e) {
            Log.e("CloudViewModel", "loadCloudDataSequentially: " + e.getMessage());
            this.this$0.u(this.$pageNo, this.$sortField, this.$sortBy, this.$dataType, this.$searchText);
        }
    }
}
