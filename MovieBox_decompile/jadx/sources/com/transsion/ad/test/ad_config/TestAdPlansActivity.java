package com.transsion.ad.test.ad_config;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import ci.p;
import com.blankj.utilcode.util.o;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.google.gson.reflect.TypeToken;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.manager.AdPlansStorageManager;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.test.TestBaseActivity;
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
import sh.t;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Lsh/t;", "a", "Lsh/t;", "binding", "AdPlansAdapter", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdPlansActivity extends TestBaseActivity {

    private t binding;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/ad/db/plan/MbAdDbPlans;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "holder", "mbAdDbPlans", "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ad/db/plan/MbAdDbPlans;)V", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class AdPlansAdapter extends BaseQuickAdapter {
        public AdPlansAdapter() {
            super(R$layout.test_item_ad_plan_layout, null, 2, null);
        }

        @Override
        public void F(BaseViewHolder holder, MbAdDbPlans mbAdDbPlans) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(mbAdDbPlans, "mbAdDbPlans");
            StringBuilder sb2 = new StringBuilder();
            List list = (List) o.e(mbAdDbPlans.getAdMaterialList(), new TypeToken<List<? extends AdMaterialList>>() {
            }.getType());
            Intrinsics.e(list);
            if (!list.isEmpty()) {
                sb2.append("type = " + ((AdMaterialList) list.get(0)).getType() + "\n");
            }
            sb2.append("id = " + mbAdDbPlans.getId() + "\n");
            sb2.append("name = " + mbAdDbPlans.getName() + "\n");
            p pVar = p.f16947a;
            String startTime = mbAdDbPlans.getStartTime();
            sb2.append("startTime = " + p.b(pVar, startTime != null ? Long.valueOf(Long.parseLong(startTime)) : null, null, 2, null) + "\n");
            String endTime = mbAdDbPlans.getEndTime();
            sb2.append("endTime = " + p.b(pVar, endTime != null ? Long.valueOf(Long.parseLong(endTime)) : null, null, 2, null) + "\n");
            sb2.append("dispatchTimeStart = " + mbAdDbPlans.getDispatchTimeStart() + "\n");
            sb2.append("dispatchTimeEnd = " + mbAdDbPlans.getDispatchTimeEnd() + "\n");
            sb2.append("displayTimes = " + mbAdDbPlans.getDisplayTimes() + "\n");
            sb2.append("showedTimes = " + mbAdDbPlans.getShowedTimes() + "\n");
            sb2.append("showDate = " + mbAdDbPlans.getShowDate() + "\n");
            sb2.append("brand = " + mbAdDbPlans.getBrand() + "\n");
            sb2.append("denyBrand = " + mbAdDbPlans.getDenyBrand() + "\n");
            sb2.append("model = " + mbAdDbPlans.getModel() + "\n");
            sb2.append("denyModel = " + mbAdDbPlans.getDenyModel() + "\n");
            sb2.append("country = " + mbAdDbPlans.getCountry() + "\n");
            sb2.append("adSource = " + mbAdDbPlans.getAdSource() + "\n");
            sb2.append("extAdSlot = " + mbAdDbPlans.getExtAdSlot() + "\n");
            sb2.append("sort = " + mbAdDbPlans.getSort() + "\n");
            sb2.append("bidEcpmCent = " + mbAdDbPlans.getBidEcpmCent() + "\n");
            sb2.append("ecpmCent = " + mbAdDbPlans.getEcpmCent() + "\n");
            sb2.append("h5LinkPreload = " + mbAdDbPlans.getH5LinkPreload() + "\n");
            sb2.append("h5LinkOpenByCct = " + mbAdDbPlans.getH5LinkOpenByCct() + "\n");
            holder.setText(R$id.tvConfig, sb2.toString());
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdPlansActivity$onCreate$4", f = "TestAdPlansActivity.kt", l = {64}, m = "invokeSuspend")
    static final class AnonymousClass4 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final AdPlansAdapter $mAdPlanAdapter;
        int label;
        final TestAdPlansActivity this$0;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdPlansActivity$onCreate$4$1", f = "TestAdPlansActivity.kt", l = {RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH, 66}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final AdPlansAdapter $mAdPlanAdapter;
            int label;
            final TestAdPlansActivity this$0;

            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
            @DebugMetadata(c = "com.transsion.ad.test.ad_config.TestAdPlansActivity$onCreate$4$1$1", f = "TestAdPlansActivity.kt", l = {}, m = "invokeSuspend")
            static final class C05711 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                final List<MbAdDbPlans> $allAdPlans;
                final AdPlansAdapter $mAdPlanAdapter;
                int label;
                final TestAdPlansActivity this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C05711(AdPlansAdapter adPlansAdapter, List<MbAdDbPlans> list, TestAdPlansActivity testAdPlansActivity, Continuation<? super C05711> continuation) {
                    super(2, continuation);
                    this.$mAdPlanAdapter = adPlansAdapter;
                    this.$allAdPlans = list;
                    this.this$0 = testAdPlansActivity;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C05711(this.$mAdPlanAdapter, this.$allAdPlans, this.this$0, continuation);
                }

                @Override
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    this.$mAdPlanAdapter.n1(this.$allAdPlans);
                    List<MbAdDbPlans> list = this.$allAdPlans;
                    t tVar = null;
                    String str = "计划数量 = " + (list != null ? Boxing.d(list.size()) : null);
                    t tVar2 = this.this$0.binding;
                    if (tVar2 == null) {
                        Intrinsics.y("binding");
                    } else {
                        tVar = tVar2;
                    }
                    tVar.f72175d.setText(str);
                    return Unit.f64096a;
                }

                @Override
                public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                    return ((C05711) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(AdPlansAdapter adPlansAdapter, TestAdPlansActivity testAdPlansActivity, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$mAdPlanAdapter = adPlansAdapter;
                this.this$0 = testAdPlansActivity;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$mAdPlanAdapter, this.this$0, continuation);
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
                AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f41107a;
                this.label = 1;
                obj = adPlansStorageManager.g(this);
                if (obj == objF) {
                    return objF;
                }
                a2 a2VarC = y0.c();
                C05711 c05711 = new C05711(this.$mAdPlanAdapter, (List) obj, this.this$0, null);
                this.label = 2;
                if (i.g(a2VarC, c05711, this) == objF) {
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
        AnonymousClass4(AdPlansAdapter adPlansAdapter, TestAdPlansActivity testAdPlansActivity, Continuation<? super AnonymousClass4> continuation) {
            super(2, continuation);
            this.$mAdPlanAdapter = adPlansAdapter;
            this.this$0 = testAdPlansActivity;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass4(this.$mAdPlanAdapter, this.this$0, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                i0 i0VarB = y0.b();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$mAdPlanAdapter, this.this$0, null);
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
            return ((AnonymousClass4) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public static final void R(TestAdPlansActivity testAdPlansActivity, View view) {
        k.d(v.a(testAdPlansActivity), null, null, new TestAdPlansActivity$onCreate$1$1(null), 3, null);
    }

    public static final void S(TestAdPlansActivity testAdPlansActivity, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object obj = adapter.getData().get(i10);
        MbAdDbPlans mbAdDbPlans = obj instanceof MbAdDbPlans ? (MbAdDbPlans) obj : null;
        if (mbAdDbPlans != null) {
            Intent intent = new Intent(testAdPlansActivity, (Class<?>) TestAdPlanDetailActivity.class);
            intent.putExtra("MbAdDbPlans", mbAdDbPlans);
            testAdPlansActivity.startActivity(intent);
        }
    }

    @Override
    public String getLogTag() {
        return "ad_";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        t tVarC = t.c(getLayoutInflater());
        this.binding = tVarC;
        if (tVarC == null) {
            Intrinsics.y("binding");
            tVarC = null;
        }
        setContentView(tVarC.getRoot());
        t tVar = this.binding;
        if (tVar == null) {
            Intrinsics.y("binding");
            tVar = null;
        }
        tVar.f72173b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdPlansActivity.R(this.f41208a, view);
            }
        });
        AdPlansAdapter adPlansAdapter = new AdPlansAdapter();
        t tVar2 = this.binding;
        if (tVar2 == null) {
            Intrinsics.y("binding");
            tVar2 = null;
        }
        RecyclerView recyclerView = tVar2.f72174c;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        recyclerView.setAdapter(adPlansAdapter);
        adPlansAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                TestAdPlansActivity.S(this.f41209a, baseQuickAdapter, view, i10);
            }
        });
        k.d(v.a(this), null, null, new AnonymousClass4(adPlansAdapter, this, null), 3, null);
    }
}
