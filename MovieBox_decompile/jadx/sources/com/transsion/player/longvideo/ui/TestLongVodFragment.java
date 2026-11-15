package com.transsion.player.longvideo.ui;

import android.app.Application;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baseui.fragment.BaseFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0004R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001b\u0010\u001d\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/player/longvideo/ui/TestLongVodFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lmn/n;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "c0", "(Landroid/view/LayoutInflater;)Lmn/n;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "onPause", "onResume", "onStop", "Lkn/a;", "a", "Lkn/a;", "playerControl", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "getVideoDetailPlayDao", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "videoDetailPlayDao", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestLongVodFragment extends BaseFragment<mn.n> {

    private kn.a playerControl;

    private final Lazy videoDetailPlayDao = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TestLongVodFragment.d0();
        }
    });

    public static final class a extends androidx.activity.u {
        a() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            kn.a aVar = TestLongVodFragment.this.playerControl;
            if (aVar != null) {
                aVar.onBackPressed();
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.ui.TestLongVodFragment$initView$2", f = "TestLongVodFragment.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(continuation);
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
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public static final VideoDetailPlayDao d0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    @Override
    public mn.n getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        mn.n nVarC = mn.n.c(inflater);
        Intrinsics.g(nVarC, "inflate(...)");
        return nVarC;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        mn.n mViewBinding = getMViewBinding();
        this.playerControl = mViewBinding != null ? mViewBinding.f66646e : null;
        getMViewBinding();
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass2(null), 3, null);
        requireActivity().getOnBackPressedDispatcher().i(this, new a());
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onPause() {
        super.onPause();
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onViewPause();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onViewResume();
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onSaveHistory();
        }
    }
}
