package com.transsnet.downloader.util;

import android.content.Context;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.dialog.LocalFileErrorDialog;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.util.LocalVideoNotExistUtil$showErrorDialog$1", f = "LocalVideoNotExistUtil.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class LocalVideoNotExistUtil$showErrorDialog$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Context $contextI;
    final boolean $isSeries;
    final String $path;
    final String $resourceId;
    final boolean $seriesCollection;
    final List<DownloadBean> $seriesCollectionList;
    final int $seriesPosition;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoNotExistUtil$showErrorDialog$1(Context context, boolean z10, String str, List<DownloadBean> list, String str2, boolean z11, int i10, Continuation<? super LocalVideoNotExistUtil$showErrorDialog$1> continuation) {
        super(2, continuation);
        this.$contextI = context;
        this.$seriesCollection = z10;
        this.$resourceId = str;
        this.$seriesCollectionList = list;
        this.$path = str2;
        this.$isSeries = z11;
        this.$seriesPosition = i10;
    }

    public static final Unit g(boolean z10, Context context, final String str, List list, final String str2, final boolean z11, final int i10, int i11) {
        if (i11 != 1) {
            if (i11 == 2) {
                if (!z10) {
                    LocalVideoNotExistUtil.n(LocalVideoNotExistUtil.f57684a, str, str2, z11, i10, null, 16, null);
                } else if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        DownloadBean downloadBean = (DownloadBean) it.next();
                        if (downloadBean.getStatus() < 10) {
                            LocalVideoNotExistUtil localVideoNotExistUtil = LocalVideoNotExistUtil.f57684a;
                            String resourceId = downloadBean.getResourceId();
                            if (resourceId == null) {
                                resourceId = downloadBean.getUrl();
                            }
                            localVideoNotExistUtil.m(resourceId, downloadBean.getPath(), false, -1, downloadBean.getSubjectId());
                        }
                    }
                }
            }
        } else {
            if (!yg.l.f76264a.e()) {
                fh.b.f60176a.d(R$string.no_network_toast);
                return Unit.f64096a;
            }
            if (z10) {
                wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "合集列表, 展示路径选择弹窗", false, 4, null);
                LocalVideoNotExistUtil.f57684a.s(context, str, list);
            } else {
                wf.a.C0922a.f(wf.a.f74274a, "LocalVideoNotExistUtil", "单资源, 展示路径选择弹窗", false, 4, null);
                LocalVideoNotExistUtil.f57684a.k(context, str, null, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return LocalVideoNotExistUtil$showErrorDialog$1.h(str, str2, z11, i10, (String) obj);
                    }
                });
            }
        }
        return Unit.f64096a;
    }

    public static final Unit h(String str, String str2, boolean z10, int i10, String str3) {
        wf.a.f74274a.i("long_video_play", "单资源, 本地源文件不存在，开始重新下载, resourceId = " + str + "，path =" + str2, true);
        LocalVideoNotExistUtil.f57684a.p(str, str2, z10, i10);
        return Unit.f64096a;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoNotExistUtil$showErrorDialog$1(this.$contextI, this.$seriesCollection, this.$resourceId, this.$seriesCollectionList, this.$path, this.$isSeries, this.$seriesPosition, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        LocalFileErrorDialog localFileErrorDialog = new LocalFileErrorDialog();
        final Context context = this.$contextI;
        final boolean z10 = this.$seriesCollection;
        final String str = this.$resourceId;
        final List<DownloadBean> list = this.$seriesCollectionList;
        final String str2 = this.$path;
        final boolean z11 = this.$isSeries;
        final int i10 = this.$seriesPosition;
        localFileErrorDialog.v0(new Function1() {
            @Override
            public final Object invoke(Object obj2) {
                return LocalVideoNotExistUtil$showErrorDialog$1.g(z10, context, str, list, str2, z11, i10, ((Integer) obj2).intValue());
            }
        });
        localFileErrorDialog.k0(context, "LocalFileErrorDialog");
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoNotExistUtil$showErrorDialog$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
