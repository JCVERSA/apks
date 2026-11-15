package com.transsnet.downloader.util;

import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.DownloadRefreshEvent;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;
import kotlinx.coroutines.y0;
import on.e0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.LocalVideoNotExistUtil$delete$2", f = "LocalVideoNotExistUtil.kt", l = {229, 236, 237, 240}, m = "invokeSuspend")
@SourceDebugExtension
final class LocalVideoNotExistUtil$delete$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isSeries;
    final String $path;
    final String $resourceId;
    final int $seriesPosition;
    final String $subjectId;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsnet.downloader.util.LocalVideoNotExistUtil$delete$2$2", f = "LocalVideoNotExistUtil.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final String $resourceId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$resourceId = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$resourceId, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            e0.f67859a.s(this.$resourceId);
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoNotExistUtil$delete$2(String str, String str2, boolean z10, int i10, String str3, Continuation<? super LocalVideoNotExistUtil$delete$2> continuation) {
        super(2, continuation);
        this.$resourceId = str;
        this.$path = str2;
        this.$isSeries = z10;
        this.$seriesPosition = i10;
        this.$subjectId = str3;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoNotExistUtil$delete$2(this.$resourceId, this.$path, this.$isSeries, this.$seriesPosition, this.$subjectId, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0095 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x00a0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x00b1  */
    @Override
    public final Object invokeSuspend(Object obj) {
        a2 a2VarC;
        AnonymousClass2 anonymousClass2;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else if (i10 == 2) {
                ResultKt.b(obj);
                a2VarC = y0.c();
                anonymousClass2 = new AnonymousClass2(this.$resourceId, null);
                this.label = 3;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass2, this) == objF) {
                    return objF;
                }
                this.label = 4;
                if (u0.a(200L, this) == objF) {
                    return objF;
                }
            } else if (i10 == 3) {
                ResultKt.b(obj);
                this.label = 4;
                if (u0.a(200L, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "2 delete, 刷新列表", false, 4, null);
            if (this.$isSeries) {
                LocalVideoNotExistUtil.f57684a.u(this.$seriesPosition);
            }
            yw.e eVar = new yw.e(true, false);
            AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
            FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name = yw.e.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, eVar, 0L);
            DownloadRefreshEvent downloadRefreshEvent = new DownloadRefreshEvent("", "", false, false, 12, null);
            FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = DownloadRefreshEvent.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, downloadRefreshEvent, 0L);
            DownloadManagerApi.B0(DownloadManagerApi.f56187j.a(), this.$subjectId, this.$resourceId, this.$isSeries, false, false, 24, null);
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "2 delete, resourceId = " + this.$resourceId, false, 4, null);
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String str = this.$resourceId;
        this.label = 1;
        if (downloadEsHelperA.l(str, null, null, this) == objF) {
            return objF;
        }
        String str2 = this.$path;
        if (str2 != null) {
            File file = new File(str2);
            if (file.exists()) {
                file.delete();
            }
        }
        ui.n0 n0VarR = LocalVideoNotExistUtil.f57684a.r();
        String str3 = this.$resourceId;
        this.label = 2;
        if (n0VarR.b(str3, this) == objF) {
            return objF;
        }
        a2VarC = y0.c();
        anonymousClass2 = new AnonymousClass2(this.$resourceId, null);
        this.label = 3;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass2, this) == objF) {
            return objF;
        }
        this.label = 4;
        if (u0.a(200L, this) == objF) {
            return objF;
        }
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "2 delete, 刷新列表", false, 4, null);
        if (this.$isSeries) {
            LocalVideoNotExistUtil.f57684a.u(this.$seriesPosition);
        }
        yw.e eVar2 = new yw.e(true, false);
        AppScopeVMlProvider appScopeVMlProvider2 = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus3 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
        String name3 = yw.e.class.getName();
        Intrinsics.g(name3, "getName(...)");
        flowEventBus3.postEvent(name3, eVar2, 0L);
        DownloadRefreshEvent downloadRefreshEvent2 = new DownloadRefreshEvent("", "", false, false, 12, null);
        FlowEventBus flowEventBus4 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
        String name4 = DownloadRefreshEvent.class.getName();
        Intrinsics.g(name4, "getName(...)");
        flowEventBus4.postEvent(name4, downloadRefreshEvent2, 0L);
        DownloadManagerApi.B0(DownloadManagerApi.f56187j.a(), this.$subjectId, this.$resourceId, this.$isSeries, false, false, 24, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoNotExistUtil$delete$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
