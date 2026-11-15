package com.transsion.ad.test.ad_config;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.o;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.pslink.PsLinkAdPlan;
import com.transsion.ad.ps.model.ItemDetail;
import com.transsion.ad.ps.model.PSAdTypeEnum;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import sh.u;
import vh.l;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "W", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lsh/u;", "a", "Lsh/u;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdPsOfferActivity extends TestBaseActivity {

    private u binding;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdPsOfferActivity$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ad/db/pslink/PsLinkAdPlan;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/db/pslink/PsLinkAdPlan;)V", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseQuickAdapter {
        public a() {
            super(R$layout.test_item_ad_plan_layout, null, 2, null);
        }

        @Override
        public void F(BaseViewHolder holder, PsLinkAdPlan item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            StringBuilder sb2 = new StringBuilder();
            RecommendInfo recommendInfo = (RecommendInfo) o.d(item.getPsInfoJson(), RecommendInfo.class);
            sb2.append("id = " + item.getId() + "\n");
            sb2.append("nonId = " + item.getNonId() + "\n");
            sb2.append("adSource = " + item.getAdSource() + "\n");
            sb2.append("extAdSlot = " + item.getExtAdSlot() + "\n");
            sb2.append("showMax = " + item.getShowMax() + "\n");
            sb2.append("clickMax = " + item.getClickMax() + "\n");
            sb2.append("showHours = " + item.getShowHours() + "\n");
            sb2.append("showedTimes = " + item.getShowedTimes() + "\n");
            sb2.append("clickedTimes = " + item.getClickedTimes() + "\n");
            sb2.append("showDate = " + item.getShowDate() + "\n");
            sb2.append("rank = " + item.getRank() + "\n");
            sb2.append("psPlanId = " + item.getPsPlanId() + "\n");
            sb2.append("updateTimestamp = " + item.getUpdateTimestamp() + "\n");
            sb2.append("packageName = " + recommendInfo.getPackageName() + "\n");
            ItemDetail detail = recommendInfo.getDetail();
            sb2.append("name = " + (detail != null ? detail.getName() : null) + "\n");
            sb2.append("showAttributionLink = " + recommendInfo.getShowAttributionLink() + "\n");
            sb2.append("attributionLink = " + recommendInfo.getAttributionLink() + "\n");
            sb2.append("deepLink = " + recommendInfo.getDeepLink() + "\n");
            sb2.append("gpLink = " + recommendInfo.getGpLink() + "\n");
            sb2.append("isOffer = " + recommendInfo.isOffer() + "\n");
            Integer adType = recommendInfo.getAdType();
            int value = PSAdTypeEnum.PS_AD_TYPE_USER_RETENTION_1.getValue();
            if (adType != null && adType.intValue() == value) {
                sb2.append("adType = 拉活\n");
            } else {
                sb2.append("adType = 拉新\n");
            }
            holder.setText(R$id.tvConfig, sb2.toString());
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2", f = "TestAdPsOfferActivity.kt", l = {46}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final a $mAdPlanAdapter;
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2$1", f = "TestAdPsOfferActivity.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE, 50}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final a $mAdPlanAdapter;
            int label;
            final TestAdPsOfferActivity this$0;

            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
            @DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdPsOfferActivity$onCreate$2$1$1", f = "TestAdPsOfferActivity.kt", l = {}, m = "invokeSuspend")
            static final class C05721 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                final List<PsLinkAdPlan> $allPslink;
                final a $mAdPlanAdapter;
                int label;
                final TestAdPsOfferActivity this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C05721(a aVar, List<PsLinkAdPlan> list, TestAdPsOfferActivity testAdPsOfferActivity, Continuation<? super C05721> continuation) {
                    super(2, continuation);
                    this.$mAdPlanAdapter = aVar;
                    this.$allPslink = list;
                    this.this$0 = testAdPsOfferActivity;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C05721(this.$mAdPlanAdapter, this.$allPslink, this.this$0, continuation);
                }

                @Override
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    this.$mAdPlanAdapter.n1(this.$allPslink);
                    List<PsLinkAdPlan> list = this.$allPslink;
                    u uVar = null;
                    String str = "计划数量 = " + (list != null ? Boxing.d(list.size()) : null);
                    u uVar2 = this.this$0.binding;
                    if (uVar2 == null) {
                        Intrinsics.y("binding");
                    } else {
                        uVar = uVar2;
                    }
                    uVar.f72181f.setText(str);
                    return Unit.f64096a;
                }

                @Override
                public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                    return ((C05721) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(TestAdPsOfferActivity testAdPsOfferActivity, a aVar, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = testAdPsOfferActivity;
                this.$mAdPlanAdapter = aVar;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$mAdPlanAdapter, continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = IntrinsicsKt.f();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        ResultKt.b(obj);
                    } else {
                        if (i10 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f64096a;
                }
                ResultKt.b(obj);
                l lVarZ0 = MbAdDatabase.INSTANCE.b(this.this$0).z0();
                this.label = 1;
                obj = lVarZ0.a(this);
                if (obj == objF) {
                    return objF;
                }
                a2 a2VarC = y0.c();
                C05721 c05721 = new C05721(this.$mAdPlanAdapter, (List) obj, this.this$0, null);
                this.label = 2;
                if (i.g(a2VarC, c05721, this) == objF) {
                    return objF;
                }
                return Unit.f64096a;
            }

            @Override
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(a aVar, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$mAdPlanAdapter = aVar;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return TestAdPsOfferActivity.this.new AnonymousClass2(this.$mAdPlanAdapter, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                i0 i0VarB = y0.b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(TestAdPsOfferActivity.this, this.$mAdPlanAdapter, null);
                this.label = 1;
                if (i.g(i0VarB, anonymousClass1, this) == objF) {
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
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public static final void S(TestAdPsOfferActivity testAdPsOfferActivity, View view) {
        rh.f fVar = rh.f.f71235a;
        fVar.h(!fVar.d());
        testAdPsOfferActivity.W();
    }

    public static final void U(TestAdPsOfferActivity testAdPsOfferActivity, View view) {
        k.d(v.a(testAdPsOfferActivity), null, null, new TestAdPsOfferActivity$onCreate$4$1(testAdPsOfferActivity, null), 3, null);
    }

    public static final void V(TestAdPsOfferActivity testAdPsOfferActivity, View view) {
        rh.f fVar = rh.f.f71235a;
        fVar.e(!fVar.a());
        testAdPsOfferActivity.W();
    }

    private final void W() {
        u uVar = this.binding;
        u uVar2 = null;
        if (uVar == null) {
            Intrinsics.y("binding");
            uVar = null;
        }
        Button button = uVar.f72177b;
        rh.f fVar = rh.f.f71235a;
        button.setText(fVar.d() ? "releasePsApi = true" : "releasePsApi = false");
        u uVar3 = this.binding;
        if (uVar3 == null) {
            Intrinsics.y("binding");
        } else {
            uVar2 = uVar3;
        }
        uVar2.f72179d.setText(fVar.a() ? "detailRequestLog = true" : "detailRequestLog = false");
    }

    @Override
    public String getLogTag() {
        return "ad_ps_d";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        u uVarC = u.c(getLayoutInflater());
        this.binding = uVarC;
        u uVar = null;
        if (uVarC == null) {
            Intrinsics.y("binding");
            uVarC = null;
        }
        setContentView(uVarC.getRoot());
        a aVar = new a();
        u uVar2 = this.binding;
        if (uVar2 == null) {
            Intrinsics.y("binding");
            uVar2 = null;
        }
        RecyclerView recyclerView = uVar2.f72180e;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(aVar);
        k.d(v.a(this), null, null, new AnonymousClass2(aVar, null), 3, null);
        W();
        u uVar3 = this.binding;
        if (uVar3 == null) {
            Intrinsics.y("binding");
            uVar3 = null;
        }
        uVar3.f72177b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdPsOfferActivity.S(this.f41210a, view);
            }
        });
        u uVar4 = this.binding;
        if (uVar4 == null) {
            Intrinsics.y("binding");
            uVar4 = null;
        }
        uVar4.f72178c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdPsOfferActivity.U(this.f41211a, view);
            }
        });
        u uVar5 = this.binding;
        if (uVar5 == null) {
            Intrinsics.y("binding");
        } else {
            uVar = uVar5;
        }
        uVar.f72179d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdPsOfferActivity.V(this.f41212a, view);
            }
        });
    }
}
