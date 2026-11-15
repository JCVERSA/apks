package com.transsion.edcation.history;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.edcation.R$string;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.moviedetailapi.SubjectType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;
import t6.f;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\t\u001a\u00020\bH\u0082@¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u0004R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010&¨\u0006*"}, d2 = {"Lcom/transsion/edcation/history/EducationHistoryFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lek/b;", "<init>", "()V", "Landroid/view/View;", "j0", "()Landroid/view/View;", "", "isRefresh", "", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "i0", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroid/view/LayoutInflater;", "inflater", "m0", "(Landroid/view/LayoutInflater;)Lek/b;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onResume", "Lcom/transsion/edcation/history/EducationHistoryAdapter;", "a", "Lcom/transsion/edcation/history/EducationHistoryAdapter;", "mAdapter", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "l0", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "mVideoDetailPlayDao", "", "c", "I", "mOffset", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mLimit", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class EducationHistoryFragment extends BaseFragment<ek.b> {

    private EducationHistoryAdapter mAdapter;

    private int mOffset;

    private final Lazy mVideoDetailPlayDao = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return EducationHistoryFragment.o0();
        }
    });

    private int mLimit = 10;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.edcation.history.EducationHistoryFragment$lazyLoadData$1", f = "EducationHistoryFragment.kt", l = {72, 74}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.edcation.history.EducationHistoryFragment$lazyLoadData$1$1", f = "EducationHistoryFragment.kt", l = {}, m = "invokeSuspend")
        static final class C05901 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final List<VideoDetailPlayBean> $list;
            int label;
            final EducationHistoryFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C05901(EducationHistoryFragment educationHistoryFragment, List<VideoDetailPlayBean> list, Continuation<? super C05901> continuation) {
                super(2, continuation);
                this.this$0 = educationHistoryFragment;
                this.$list = list;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C05901(this.this$0, this.$list, continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                EducationHistoryAdapter educationHistoryAdapter;
                f fVarH0;
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                if (this.this$0.mOffset > 0) {
                    EducationHistoryAdapter educationHistoryAdapter2 = this.this$0.mAdapter;
                    if (educationHistoryAdapter2 != null) {
                        educationHistoryAdapter2.n1(this.$list);
                    }
                } else {
                    EducationHistoryAdapter educationHistoryAdapter3 = this.this$0.mAdapter;
                    if (educationHistoryAdapter3 != null) {
                        educationHistoryAdapter3.Y0(this.this$0.j0());
                    }
                }
                if (this.$list.size() < this.this$0.mLimit && (educationHistoryAdapter = this.this$0.mAdapter) != null && (fVarH0 = educationHistoryAdapter.h0()) != null) {
                    f.u(fVarH0, false, 1, null);
                }
                return Unit.f64096a;
            }

            @Override
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C05901) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EducationHistoryFragment.this.new AnonymousClass1(continuation);
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
            EducationHistoryFragment educationHistoryFragment = EducationHistoryFragment.this;
            this.label = 1;
            obj = educationHistoryFragment.i0(true, this);
            if (obj == objF) {
                return objF;
            }
            a2 a2VarC = y0.c();
            C05901 c05901 = new C05901(EducationHistoryFragment.this, (List) obj, null);
            this.label = 2;
            if (i.g(a2VarC, c05901, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.edcation.history.EducationHistoryFragment$onResume$1", f = "EducationHistoryFragment.kt", l = {93, MBSupportMuteAdType.REWARD_VIDEO, 96}, m = "invokeSuspend")
    static final class C10471 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.edcation.history.EducationHistoryFragment$onResume$1$1", f = "EducationHistoryFragment.kt", l = {}, m = "invokeSuspend")
        static final class C05911 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            final List<VideoDetailPlayBean> $list;
            int label;
            final EducationHistoryFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C05911(EducationHistoryFragment educationHistoryFragment, List<VideoDetailPlayBean> list, Continuation<? super C05911> continuation) {
                super(2, continuation);
                this.this$0 = educationHistoryFragment;
                this.$list = list;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C05911(this.this$0, this.$list, continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                EducationHistoryAdapter educationHistoryAdapter;
                f fVarH0;
                IntrinsicsKt.f();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                if (this.this$0.mOffset > 0) {
                    EducationHistoryAdapter educationHistoryAdapter2 = this.this$0.mAdapter;
                    if (educationHistoryAdapter2 != null) {
                        educationHistoryAdapter2.n1(this.$list);
                    }
                } else {
                    EducationHistoryAdapter educationHistoryAdapter3 = this.this$0.mAdapter;
                    if (educationHistoryAdapter3 != null) {
                        educationHistoryAdapter3.Y0(this.this$0.j0());
                    }
                }
                if (this.$list.size() < this.this$0.mLimit && (educationHistoryAdapter = this.this$0.mAdapter) != null && (fVarH0 = educationHistoryAdapter.h0()) != null) {
                    f.u(fVarH0, false, 1, null);
                }
                return Unit.f64096a;
            }

            @Override
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C05911) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        C10471(Continuation<? super C10471> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return EducationHistoryFragment.this.new C10471(continuation);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0054 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            a2 a2VarC;
            C05911 c05911;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                } else if (i10 == 2) {
                    ResultKt.b(obj);
                    a2VarC = y0.c();
                    c05911 = new C05911(EducationHistoryFragment.this, (List) obj, null);
                    this.label = 3;
                    if (i.g(a2VarC, c05911, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            this.label = 1;
            if (u0.a(1000L, this) == objF) {
                return objF;
            }
            EducationHistoryFragment educationHistoryFragment = EducationHistoryFragment.this;
            this.label = 2;
            obj = educationHistoryFragment.i0(true, this);
            if (obj == objF) {
                return objF;
            }
            a2VarC = y0.c();
            c05911 = new C05911(EducationHistoryFragment.this, (List) obj, null);
            this.label = 3;
            if (i.g(a2VarC, c05911, this) == objF) {
                return objF;
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10471) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i0(boolean z10, Continuation continuation) {
        EducationHistoryFragment$fetchHistory$1 educationHistoryFragment$fetchHistory$1;
        if (continuation instanceof EducationHistoryFragment$fetchHistory$1) {
            educationHistoryFragment$fetchHistory$1 = (EducationHistoryFragment$fetchHistory$1) continuation;
            int i10 = educationHistoryFragment$fetchHistory$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                educationHistoryFragment$fetchHistory$1.label = i10 - Integer.MIN_VALUE;
            } else {
                educationHistoryFragment$fetchHistory$1 = new EducationHistoryFragment$fetchHistory$1(this, continuation);
            }
        } else {
            educationHistoryFragment$fetchHistory$1 = new EducationHistoryFragment$fetchHistory$1(this, continuation);
        }
        Object objI = educationHistoryFragment$fetchHistory$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = educationHistoryFragment$fetchHistory$1.label;
        if (i11 == 0) {
            ResultKt.b(objI);
            if (z10) {
                this.mOffset = 0;
            }
            VideoDetailPlayDao videoDetailPlayDaoL0 = l0();
            int i12 = this.mOffset;
            int i13 = this.mLimit;
            int value = SubjectType.EDUCATION.getValue();
            educationHistoryFragment$fetchHistory$1.label = 1;
            objI = videoDetailPlayDaoL0.i(i12, i13, value, educationHistoryFragment$fetchHistory$1);
            if (objI == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objI);
        }
        List list = (List) objI;
        this.mOffset += list != null ? list.size() : 0;
        return list == null ? new ArrayList() : list;
    }

    public final View j0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        String string = getString(R$string.course_list_empy);
        Intrinsics.g(string, "getString(...)");
        stateView.showData(4, 1, false, "", string);
        String string2 = getString(R$string.course_explore_now);
        Intrinsics.g(string2, "getString(...)");
        stateView.setReTryTxt(string2);
        stateView.retry(new Function0() {
            @Override
            public final Object invoke() {
                return EducationHistoryFragment.k0(this.f42944a);
            }
        });
        return stateView;
    }

    public static final Unit k0(EducationHistoryFragment educationHistoryFragment) {
        Navigator.x(TheRouter.c("/main/tab").K("bottomTab", BottomTabType.TAB_CODE_HOME).K("topTab", "Education"), educationHistoryFragment.requireContext(), null, 2, null);
        return Unit.f64096a;
    }

    private final VideoDetailPlayDao l0() {
        return (VideoDetailPlayDao) this.mVideoDetailPlayDao.getValue();
    }

    public static final void n0(EducationHistoryFragment educationHistoryFragment) {
        k.d(v.a(educationHistoryFragment), null, null, new EducationHistoryFragment$initView$1$1$1(educationHistoryFragment, null), 3, null);
    }

    public static final VideoDetailPlayDao o0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        ek.b mViewBinding = getMViewBinding();
        RecyclerView recyclerView = mViewBinding != null ? mViewBinding.f59720b : null;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        EducationHistoryAdapter educationHistoryAdapter = new EducationHistoryAdapter(new ArrayList());
        this.mAdapter = educationHistoryAdapter;
        if (recyclerView != null) {
            recyclerView.setAdapter(educationHistoryAdapter);
        }
        EducationHistoryAdapter educationHistoryAdapter2 = this.mAdapter;
        if (educationHistoryAdapter2 != null) {
            educationHistoryAdapter2.h0().z(true);
            educationHistoryAdapter2.h0().z(true);
            educationHistoryAdapter2.h0().y(true);
            educationHistoryAdapter2.h0().D(new r6.f() {
                @Override
                public final void a() {
                    EducationHistoryFragment.n0(this.f42945a);
                }
            });
        }
    }

    @Override
    public void lazyLoadData() {
        k.d(v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    @Override
    public ek.b getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        ek.b bVarC = ek.b.c(inflater);
        Intrinsics.g(bVarC, "inflate(...)");
        return bVarC;
    }

    @Override
    public void onResume() {
        super.onResume();
        k.d(v.a(this), null, null, new C10471(null), 3, null);
    }
}
