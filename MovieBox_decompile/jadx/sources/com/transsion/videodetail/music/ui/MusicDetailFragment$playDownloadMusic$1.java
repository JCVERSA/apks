package com.transsion.videodetail.music.ui;

import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.music.ui.MusicDetailFragment$playDownloadMusic$1", f = "MusicDetailFragment.kt", l = {891}, m = "invokeSuspend")
final class MusicDetailFragment$playDownloadMusic$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final String $subjectId;
    private Object L$0;
    int label;
    final MusicDetailFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MusicDetailFragment$playDownloadMusic$1(MusicDetailFragment musicDetailFragment, String str, Continuation<? super MusicDetailFragment$playDownloadMusic$1> continuation) {
        super(2, continuation);
        this.this$0 = musicDetailFragment;
        this.$subjectId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        MusicDetailFragment$playDownloadMusic$1 musicDetailFragment$playDownloadMusic$1 = new MusicDetailFragment$playDownloadMusic$1(this.this$0, this.$subjectId, continuation);
        musicDetailFragment$playDownloadMusic$1.L$0 = obj;
        return musicDetailFragment$playDownloadMusic$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.n0 n0Var = (kotlinx.coroutines.n0) this.L$0;
            ui.c cVarK1 = this.this$0.k1();
            String str = this.$subjectId;
            if (str == null) {
                str = "";
            }
            this.L$0 = n0Var;
            this.label = 1;
            obj = cVarK1.D(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        DownloadBean downloadBean = (DownloadBean) obj;
        if (downloadBean != null) {
            this.this$0.f2(downloadBean);
        } else {
            MusicDetailFragment musicDetailFragment = this.this$0;
            yv.a.f76396a.b(musicDetailFragment.getClassTag() + " --> loadData() --> 无网络 无下载");
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicDetailFragment$playDownloadMusic$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
