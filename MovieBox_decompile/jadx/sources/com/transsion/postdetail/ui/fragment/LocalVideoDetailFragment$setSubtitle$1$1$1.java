package com.transsion.postdetail.ui.fragment;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.subtitle.VideoSubtitleControl;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$setSubtitle$1$1$1", f = "LocalVideoDetailFragment.kt", l = {}, m = "invokeSuspend")
final class LocalVideoDetailFragment$setSubtitle$1$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final DownloadBean $dBean;
    final List<ht.a> $subtitleList;
    int label;
    final LocalVideoDetailFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoDetailFragment$setSubtitle$1$1$1(List<ht.a> list, LocalVideoDetailFragment localVideoDetailFragment, DownloadBean downloadBean, Continuation<? super LocalVideoDetailFragment$setSubtitle$1$1$1> continuation) {
        super(2, continuation);
        this.$subtitleList = list;
        this.this$0 = localVideoDetailFragment;
        this.$dBean = downloadBean;
    }

    public static final void i(LocalVideoDetailFragment localVideoDetailFragment) {
        localVideoDetailFragment.t2();
    }

    public static final Unit j(List list, final LocalVideoDetailFragment localVideoDetailFragment, boolean z10) {
        List list2;
        wn.j mViewBinding;
        ConstraintLayout root;
        if (!z10 && (((list2 = list) == null || list2.isEmpty()) && (mViewBinding = localVideoDetailFragment.getMViewBinding()) != null && (root = mViewBinding.getRoot()) != null)) {
            root.post(new Runnable() {
                @Override
                public final void run() {
                    LocalVideoDetailFragment$setSubtitle$1$1$1.k(localVideoDetailFragment);
                }
            });
        }
        return Unit.f64096a;
    }

    public static final void k(LocalVideoDetailFragment localVideoDetailFragment) {
        localVideoDetailFragment.t2();
    }

    public static final void l(LocalVideoDetailFragment localVideoDetailFragment) {
        localVideoDetailFragment.t2();
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoDetailFragment$setSubtitle$1$1$1(this.$subtitleList, this.this$0, this.$dBean, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        ConstraintLayout root;
        wn.j mViewBinding;
        ConstraintLayout root2;
        com.transsion.postdetail.layer.local.c0 c0Var;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        List<ht.a> list = this.$subtitleList;
        if (list != null && (c0Var = this.this$0.localVideoDot) != null) {
            c0Var.q(list);
        }
        VideoSubtitleControl videoSubtitleControl = this.this$0.subtitleControl;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.f0(this.$subtitleList);
        }
        if (yg.l.f76264a.e()) {
            DownloadBean downloadBean = this.this$0.downloadBean;
            if (downloadBean == null || !downloadBean.isInnerRes()) {
                List<ht.a> list2 = this.$subtitleList;
                if ((list2 == null || list2.isEmpty()) && (mViewBinding = this.this$0.getMViewBinding()) != null && (root2 = mViewBinding.getRoot()) != null) {
                    final LocalVideoDetailFragment localVideoDetailFragment = this.this$0;
                    Boxing.a(root2.post(new Runnable() {
                        @Override
                        public final void run() {
                            LocalVideoDetailFragment$setSubtitle$1$1$1.i(localVideoDetailFragment);
                        }
                    }));
                }
            } else {
                DownloadBean downloadBean2 = this.this$0.downloadBean;
                if (downloadBean2 != null) {
                    DownloadBean downloadBean3 = this.$dBean;
                    final List<ht.a> list3 = this.$subtitleList;
                    final LocalVideoDetailFragment localVideoDetailFragment2 = this.this$0;
                    wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "视频播放开始检测字幕,name:" + downloadBean3.getTotalTitleName() + ", subtitleResId:" + downloadBean3.getSubtitleResId(), true);
                    com.transsion.subtitle.h.f52857a.b().e(downloadBean2, new Function1() {
                        @Override
                        public final Object invoke(Object obj2) {
                            return LocalVideoDetailFragment$setSubtitle$1$1$1.j(list3, localVideoDetailFragment2, ((Boolean) obj2).booleanValue());
                        }
                    });
                }
            }
        } else {
            List<ht.a> list4 = this.$subtitleList;
            if (list4 == null || list4.isEmpty()) {
                wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "展示无字幕ui,name:" + this.$dBean.getTotalTitleName() + ", subtitleResId:" + this.$dBean.getSubtitleResId(), true);
                wn.j mViewBinding2 = this.this$0.getMViewBinding();
                if (mViewBinding2 != null && (root = mViewBinding2.getRoot()) != null) {
                    final LocalVideoDetailFragment localVideoDetailFragment3 = this.this$0;
                    Boxing.a(root.post(new Runnable() {
                        @Override
                        public final void run() {
                            LocalVideoDetailFragment$setSubtitle$1$1$1.l(localVideoDetailFragment3);
                        }
                    }));
                }
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoDetailFragment$setSubtitle$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
