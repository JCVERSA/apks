package com.transsion.edcation.list;

import android.content.Context;
import android.view.View;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.RepeatOnLifecycleKt;
import androidx.p009lifecycle.v;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.edcation.CourseManager;
import com.transsion.edcation.R$string;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.home.p004enum.BottomTabType;
import com.transsion.moviedetailapi.bean.Pager;
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
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.w0;
import kotlinx.coroutines.flow.x0;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\nJ\u000f\u0010\u0017\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/edcation/list/MyCourseListFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/edcation/bean/CourseBean;", "<init>", "()V", "", "isShowPageStateLayoutTitle", "()Z", "", "s0", "()Ljava/lang/String;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "initViewData", "G0", "loadMore", "lazyLoadData", "initViewModel", "x0", "getPageStateLayoutTitle", "retryLoadData", "Landroid/view/View;", "q0", "()Landroid/view/View;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "mPageNum", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MyCourseListFragment extends BaseListFragment<CourseBean> {

    private String mPageNum;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$1", f = "MyCourseListFragment.kt", l = {62}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$1$1", f = "MyCourseListFragment.kt", l = {63}, m = "invokeSuspend")
        static final class C05921 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            private Object L$0;
            int label;
            final MyCourseListFragment this$0;

            @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "it", "", "Lcom/transsion/edcation/bean/CourseBean;"}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
            @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$1$1$1", f = "MyCourseListFragment.kt", l = {}, m = "invokeSuspend")
            static final class C05931 extends SuspendLambda implements Function2<List<CourseBean>, Continuation<? super Unit>, Object> {
                final n0 $$this$repeatOnLifecycle;
                Object L$0;
                int label;
                final MyCourseListFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C05931(n0 n0Var, MyCourseListFragment myCourseListFragment, Continuation<? super C05931> continuation) {
                    super(2, continuation);
                    this.$$this$repeatOnLifecycle = n0Var;
                    this.this$0 = myCourseListFragment;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C05931 c05931 = new C05931(this.$$this$repeatOnLifecycle, this.this$0, continuation);
                    c05931.L$0 = obj;
                    return c05931;
                }

                @Override
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    List list = (List) this.L$0;
                    String.valueOf(this.$$this$repeatOnLifecycle);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("list: ");
                    sb2.append(list);
                    BaseQuickAdapter mBaseAdapter = this.this$0.getMBaseAdapter();
                    if (mBaseAdapter != null) {
                        mBaseAdapter.n1(list);
                    }
                    this.this$0.showContentView();
                    return Unit.f64096a;
                }

                @Override
                public final Object invoke(List<CourseBean> list, Continuation<? super Unit> continuation) {
                    return ((C05931) create(list, continuation)).invokeSuspend(Unit.f64096a);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C05921(MyCourseListFragment myCourseListFragment, Continuation<? super C05921> continuation) {
                super(2, continuation);
                this.this$0 = myCourseListFragment;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C05921 c05921 = new C05921(this.this$0, continuation);
                c05921.L$0 = obj;
                return c05921;
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = IntrinsicsKt.f();
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.b(obj);
                    n0 n0Var = (n0) this.L$0;
                    x0 x0VarH = CourseManager.f42905a.h();
                    C05931 c05931 = new C05931(n0Var, this.this$0, null);
                    this.label = 1;
                    if (kotlinx.coroutines.flow.c.h(x0VarH, c05931, this) == objF) {
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
                return ((C05921) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MyCourseListFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                Lifecycle lifecycle = MyCourseListFragment.this.getLifecycle();
                Intrinsics.g(lifecycle, "<get-lifecycle>(...)");
                Lifecycle.State state = Lifecycle.State.RESUMED;
                C05921 c05921 = new C05921(MyCourseListFragment.this, null);
                this.label = 1;
                if (RepeatOnLifecycleKt.a(lifecycle, state, c05921, this) == objF) {
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
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$2", f = "MyCourseListFragment.kt", l = {71}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
        @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$2$1", f = "MyCourseListFragment.kt", l = {73}, m = "invokeSuspend")
        static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
            int label;
            final MyCourseListFragment this$0;

            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/transsion/moviedetailapi/bean/Pager;"}, k = 3, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
            @DebugMetadata(c = "com.transsion.edcation.list.MyCourseListFragment$initViewModel$2$1$1", f = "MyCourseListFragment.kt", l = {}, m = "invokeSuspend")
            static final class C05941 extends SuspendLambda implements Function2<Pager, Continuation<? super Unit>, Object> {
                Object L$0;
                int label;
                final MyCourseListFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C05941(MyCourseListFragment myCourseListFragment, Continuation<? super C05941> continuation) {
                    super(2, continuation);
                    this.this$0 = myCourseListFragment;
                }

                @Override
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C05941 c05941 = new C05941(this.this$0, continuation);
                    c05941.L$0 = obj;
                    return c05941;
                }

                @Override
                public final Object invoke(Pager pager, Continuation<? super Unit> continuation) {
                    return ((C05941) create(pager, continuation)).invokeSuspend(Unit.f64096a);
                }

                @Override
                public final Object invokeSuspend(Object obj) {
                    IntrinsicsKt.f();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                    Pager pager = (Pager) this.L$0;
                    if (pager != null) {
                        MyCourseListFragment myCourseListFragment = this.this$0;
                        if (Intrinsics.c(pager.getHasMore(), Boxing.a(true))) {
                            String nextPage = pager.getNextPage();
                            if (nextPage == null) {
                                nextPage = "1";
                            }
                            myCourseListFragment.mPageNum = nextPage;
                            myCourseListFragment.B0();
                        } else {
                            BaseListFragment.D0(myCourseListFragment, false, 1, null);
                        }
                    }
                    if (this.this$0.A0()) {
                        this.this$0.I0(false);
                    }
                    return Unit.f64096a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(MyCourseListFragment myCourseListFragment, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = myCourseListFragment;
            }

            @Override
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override
            public final Object invokeSuspend(Object obj) {
                Object objF = IntrinsicsKt.f();
                int i10 = this.label;
                if (i10 == 0) {
                    ResultKt.b(obj);
                    w0 w0VarI = CourseManager.f42905a.i();
                    C05941 c05941 = new C05941(this.this$0, null);
                    this.label = 1;
                    if (kotlinx.coroutines.flow.c.h(w0VarI, c05941, this) == objF) {
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
                return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
            }
        }

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MyCourseListFragment.this.new AnonymousClass2(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                Lifecycle lifecycle = MyCourseListFragment.this.getLifecycle();
                Intrinsics.g(lifecycle, "<get-lifecycle>(...)");
                Lifecycle.State state = Lifecycle.State.RESUMED;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(MyCourseListFragment.this, null);
                this.label = 1;
                if (RepeatOnLifecycleKt.a(lifecycle, state, anonymousClass1, this) == objF) {
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

    public static final Unit Q0(MyCourseListFragment myCourseListFragment) {
        Navigator.x(TheRouter.c("/main/tab").K("bottomTab", BottomTabType.TAB_CODE_HOME).K("topTab", "Education"), myCourseListFragment.requireContext(), null, 2, null);
        return Unit.f64096a;
    }

    @Override
    public void G0() {
        I0(true);
        this.mPageNum = "1";
        lazyLoadData();
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initViewData() {
        super.initViewData();
        showLoadingView();
    }

    @Override
    public void initViewModel() {
        k.d(v.a(this), null, null, new AnonymousClass1(null), 3, null);
        k.d(v.a(this), null, null, new AnonymousClass2(null), 3, null);
    }

    @Override
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override
    public void lazyLoadData() {
        CourseManager courseManager = CourseManager.f42905a;
        String str = this.mPageNum;
        if (str == null) {
            str = "1";
        }
        CourseManager.r(courseManager, str, null, 2, null);
    }

    @Override
    public void loadMore() {
        lazyLoadData();
    }

    @Override
    public BaseQuickAdapter m0() {
        return new CourseListAdapter(0, 1, null);
    }

    @Override
    public View q0() {
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
                return MyCourseListFragment.Q0(this.f42951a);
            }
        });
        return stateView;
    }

    @Override
    public void retryLoadData() {
        CourseManager.r(CourseManager.f42905a, null, null, 3, null);
    }

    @Override
    public String s0() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void x0() {
        super.x0();
        jj.b bVar = (jj.b) getMViewBinding();
        if (bVar != null) {
            bVar.f63135d.setPadding(0, 0, 0, a0.a(12.0f));
            u0();
            BaseListFragment.K0(this, null, 1, null);
        }
    }
}
