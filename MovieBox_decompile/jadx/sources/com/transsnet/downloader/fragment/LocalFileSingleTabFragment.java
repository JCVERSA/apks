package com.transsnet.downloader.fragment;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.HistoricalPlayRecordMultipleEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Locale;
import kotlin.Deprecated;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

@Deprecated
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;", "Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;", "<init>", "()V", "", "receiveArguments", "initViewData", "initViewModel", "", "getEmptyDescText", "()Ljava/lang/String;", "", "T0", "()Z", "getPageName", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/String;", "tabName", "", "l", "I", "tabIndex", "m", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LocalFileSingleTabFragment extends LocalFileBaseFragment {

    private String tabName = "";

    private int tabIndex;

    public static final class b extends RecyclerView.l {
        b() {
        }

        @Override
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() == null || childAdapterPosition != 0) {
                return;
            }
            outRect.top = com.blankj.utilcode.util.a0.a(12.0f);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.fragment.LocalFileSingleTabFragment$initViewModel$1", f = "LocalFileSingleTabFragment.kt", l = {95}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LocalFileSingleTabFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.flow.x0 x0VarP = LocalFileSingleTabFragment.this.G0().P();
                final LocalFileSingleTabFragment localFileSingleTabFragment = LocalFileSingleTabFragment.this;
                kotlinx.coroutines.flow.b bVar = new kotlinx.coroutines.flow.b() {

                    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
                    @DebugMetadata(c = "com.transsnet.downloader.fragment.LocalFileSingleTabFragment$initViewModel$1$1$1", f = "LocalFileSingleTabFragment.kt", l = {}, m = "invokeSuspend")
                    static final class C06651 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
                        final int $it;
                        int label;
                        final LocalFileSingleTabFragment this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        C06651(int i10, LocalFileSingleTabFragment localFileSingleTabFragment, Continuation<? super C06651> continuation) {
                            super(2, continuation);
                            this.$it = i10;
                            this.this$0 = localFileSingleTabFragment;
                        }

                        @Override
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new C06651(this.$it, this.this$0, continuation);
                        }

                        @Override
                        public final Object invokeSuspend(Object obj) {
                            IntrinsicsKt.f();
                            if (this.label != 0) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.b(obj);
                            int i10 = this.$it;
                            if (i10 >= 0) {
                                com.transsnet.downloader.adapter.a aVarF0 = this.this$0.getMAllHistoricalPlayRecordAdapter();
                                if (aVarF0 != null) {
                                    aVarF0.notifyItemChanged(this.$it);
                                }
                                com.transsnet.downloader.viewmodel.a0.f57862a.t("刷新UI index = " + this.$it);
                            } else {
                                com.transsnet.downloader.viewmodel.a0.f57862a.t(" 异常  index = " + i10);
                            }
                            return Unit.f64096a;
                        }

                        @Override
                        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
                            return ((C06651) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
                        }
                    }

                    public final Object a(int i11, Continuation continuation) {
                        Object objG = kotlinx.coroutines.i.g(kotlinx.coroutines.y0.c(), new C06651(i11, localFileSingleTabFragment, null), continuation);
                        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
                    }

                    @Override
                    public Object emit(Object obj2, Continuation continuation) {
                        return a(((Number) obj2).intValue(), continuation);
                    }
                };
                this.label = 1;
                if (x0VarP.a(bVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            throw new KotlinNothingValueException();
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public static final void p1(LocalFileSingleTabFragment localFileSingleTabFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        localFileSingleTabFragment.V0(adapter, view, i10);
    }

    public static final void q1(LocalFileSingleTabFragment localFileSingleTabFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object obj = adapter.getData().get(i10);
        localFileSingleTabFragment.Y0(obj instanceof HistoricalPlayRecordMultipleEntity ? (HistoricalPlayRecordMultipleEntity) obj : null, i10, localFileSingleTabFragment.tabIndex);
    }

    @Override
    public boolean T0() {
        return true;
    }

    @Override
    public String getEmptyDescText() {
        String string = getString(R$string.download_no_local_file_tips_2);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override
    public String getPageName() {
        String lowerCase = this.tabName.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        return "file_manager_tab_" + lowerCase;
    }

    @Override
    public void initViewData() {
        RecyclerView recyclerView;
        t6.f fVarH0;
        TitleLayout titleLayout;
        bx.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (titleLayout = mViewBinding.f16234d) != null) {
            titleLayout.setVisibility(8);
        }
        com.transsnet.downloader.adapter.a aVarF0 = getMAllHistoricalPlayRecordAdapter();
        if (aVarF0 != null && (fVarH0 = aVarF0.h0()) != null) {
            fVarH0.z(false);
        }
        bx.s mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f16232b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
        com.transsnet.downloader.adapter.a aVar = new com.transsnet.downloader.adapter.a(T0());
        aVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                LocalFileSingleTabFragment.p1(this.f57150a, baseQuickAdapter, view, i10);
            }
        });
        aVar.l(R$id.ivTopRightCornerPoint);
        aVar.s1(new r6.b() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                LocalFileSingleTabFragment.q1(this.f57161a, baseQuickAdapter, view, i10);
            }
        });
        b1(aVar);
        recyclerView.setAdapter(getMAllHistoricalPlayRecordAdapter());
        recyclerView.addItemDecoration(new b());
    }

    @Override
    public void initViewModel() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(getPageName(), false, 2, null);
    }

    @Override
    public void receiveArguments() {
        String string;
        super.receiveArguments();
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("extra_download_out_file_tab_name")) == null) {
            string = "";
        }
        this.tabName = string;
        Bundle arguments2 = getArguments();
        this.tabIndex = arguments2 != null ? arguments2.getInt("extra_position") : 0;
    }
}
