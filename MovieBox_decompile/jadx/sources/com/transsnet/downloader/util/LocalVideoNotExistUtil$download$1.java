package com.transsnet.downloader.util;

import android.app.Application;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
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
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.LocalVideoNotExistUtil$download$1", f = "LocalVideoNotExistUtil.kt", l = {163, 182, 201}, m = "invokeSuspend")
@SourceDebugExtension
final class LocalVideoNotExistUtil$download$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isSeries;
    final String $path;
    final String $resourceId;
    final int $seriesPosition;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoNotExistUtil$download$1(String str, String str2, boolean z10, int i10, Continuation<? super LocalVideoNotExistUtil$download$1> continuation) {
        super(2, continuation);
        this.$resourceId = str;
        this.$path = str2;
        this.$isSeries = z10;
        this.$seriesPosition = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoNotExistUtil$download$1(this.$resourceId, this.$path, this.$isSeries, this.$seriesPosition, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:41:0x00de  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:50:0x010e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0119  */
    /* JADX WARN: Code duplicated, block: B:55:0x0128 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x0139  */
    @Override
    public final Object invokeSuspend(Object obj) {
        DownloadBean downloadBean;
        String str;
        File file;
        String path;
        String strQ;
        String rootPath;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else if (i10 == 2) {
                downloadBean = (DownloadBean) this.L$0;
                ResultKt.b(obj);
                wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "2 download, 加入下载队列", false, 4, null);
                if (downloadBean.getRootPathType() != 1) {
                    if (Build.VERSION.SDK_INT <= 28 || downloadBean.getRootPathType() != 2) {
                        path = downloadBean.getPath();
                        if (path != null) {
                            rootPath = downloadBean.getRootPath();
                            if (rootPath == null) {
                                rootPath = ui.b.f73084a.e();
                            }
                            strQ = StringsKt.Q(path, rootPath, ui.b.f73084a.e(), false, 4, null);
                        } else {
                            strQ = null;
                        }
                        downloadBean.setPath(strQ);
                    } else {
                        downloadBean.setPath(DownloadUtil.f57680a.s(downloadBean));
                    }
                }
                com.transsnet.downloader.manager.p.f57282a.a(Utils.a()).p(downloadBean);
                str = this.$path;
                if (str != null) {
                    file = new File(str);
                    if (file.exists()) {
                        file.delete();
                    }
                }
                this.L$0 = null;
                this.label = 3;
                if (u0.a(200L, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "2 download, 刷新列表", false, 4, null);
            if (this.$isSeries) {
                LocalVideoNotExistUtil.f57684a.u(this.$seriesPosition);
            }
            DownloadRefreshEvent downloadRefreshEvent = new DownloadRefreshEvent("", "", false, false, 12, null);
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = DownloadRefreshEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, downloadRefreshEvent, 0L);
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "2 download, resourceId = " + this.$resourceId, false, 4, null);
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String str2 = this.$resourceId;
        this.label = 1;
        obj = downloadEsHelperA.p(str2, this);
        if (obj == objF) {
            return objF;
        }
        downloadBean = (DownloadBean) obj;
        if (downloadBean != null) {
            String str3 = this.$path;
            String str4 = this.$resourceId;
            if (str3 != null) {
                int rootPathType = downloadBean.getRootPathType();
                if (rootPathType != 2) {
                    if (rootPathType == 3 && Build.VERSION.SDK_INT >= 29) {
                        com.transsnet.downloader.y yVar = com.transsnet.downloader.y.f58021a;
                        Application applicationA = Utils.a();
                        Intrinsics.g(applicationA, "getApp(...)");
                        yVar.d(applicationA, str3);
                    }
                } else if (Build.VERSION.SDK_INT >= 29) {
                    com.transsnet.downloader.y yVar2 = com.transsnet.downloader.y.f58021a;
                    Application applicationA2 = Utils.a();
                    Intrinsics.g(applicationA2, "getApp(...)");
                    yVar2.e(applicationA2, str3);
                }
            }
            downloadBean.setStatus(0);
            DownloadUtil.f57680a.H(downloadBean);
            ui.n0 n0VarR = LocalVideoNotExistUtil.f57684a.r();
            this.L$0 = downloadBean;
            this.label = 2;
            if (n0VarR.b(str4, this) == objF) {
                return objF;
            }
            wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "2 download, 加入下载队列", false, 4, null);
            if (downloadBean.getRootPathType() != 1) {
                if (Build.VERSION.SDK_INT <= 28) {
                    path = downloadBean.getPath();
                    if (path != null) {
                        rootPath = downloadBean.getRootPath();
                        if (rootPath == null) {
                            rootPath = ui.b.f73084a.e();
                        }
                        strQ = StringsKt.Q(path, rootPath, ui.b.f73084a.e(), false, 4, null);
                    } else {
                        strQ = null;
                    }
                    downloadBean.setPath(strQ);
                } else {
                    path = downloadBean.getPath();
                    if (path != null) {
                        rootPath = downloadBean.getRootPath();
                        if (rootPath == null) {
                            rootPath = ui.b.f73084a.e();
                        }
                        strQ = StringsKt.Q(path, rootPath, ui.b.f73084a.e(), false, 4, null);
                    } else {
                        strQ = null;
                    }
                    downloadBean.setPath(strQ);
                }
            }
            com.transsnet.downloader.manager.p.f57282a.a(Utils.a()).p(downloadBean);
        }
        str = this.$path;
        if (str != null) {
            file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        }
        this.L$0 = null;
        this.label = 3;
        if (u0.a(200L, this) == objF) {
            return objF;
        }
        wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "2 download, 刷新列表", false, 4, null);
        if (this.$isSeries) {
            LocalVideoNotExistUtil.f57684a.u(this.$seriesPosition);
        }
        DownloadRefreshEvent downloadRefreshEvent2 = new DownloadRefreshEvent("", "", false, false, 12, null);
        FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = DownloadRefreshEvent.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.postEvent(name2, downloadRefreshEvent2, 0L);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoNotExistUtil$download$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
