package com.snaptube.premium.files.downloading;

import androidx.view.LiveData;
import com.snaptube.base.ktx.ObservableKt;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.files.DownloadTaskRepository;
import com.snaptube.premium.files.pojo.DownloadData;
import com.snaptube.premium.reyclerbin.DeleteHelper;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.vungle.ads.internal.protos.Sdk;
import com.wandoujia.base.utils.RxBus;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import o.a58;
import o.dp1;
import o.dx2;
import o.ex1;
import o.fv7;
import o.ix1;
import o.jw1;
import o.jx1;
import o.kd8;
import o.ki5;
import o.lu7;
import o.mx8;
import o.n01;
import o.o67;
import o.or3;
import o.pq2;
import o.sh;
import o.su1;
import o.tq2;
import o.wu7;
import o.y05;
import rx.c;
import rx.subjects.PublishSubject;

public final class DownloadingViewModel extends mx8 implements jw1, ki5 {
    public wu7 d;
    public final y05 f;
    public final LiveData g;
    public final y05 h;
    public final LiveData i;
    public final y05 j;
    public final LiveData k;
    public final ex1 l;
    public final DownloadTaskRepository a = new DownloadTaskRepository();
    public final n01 b = new n01();
    public final lu7 c = new o67(PublishSubject.Y0());
    public final Set e = new LinkedHashSet();

    public DownloadingViewModel() {
        y05 y05Var = new y05();
        this.f = y05Var;
        this.g = y05Var;
        y05 y05Var2 = new y05();
        this.h = y05Var2;
        this.i = y05Var2;
        y05 y05Var3 = new y05();
        this.j = y05Var3;
        this.k = y05Var3;
        this.l = new ex1(this);
        c0();
        d0();
    }

    public static final wu7 B(DownloadingViewModel downloadingViewModel) {
        return downloadingViewModel.d;
    }

    public static final y05 M(DownloadingViewModel downloadingViewModel) {
        return downloadingViewModel.h;
    }

    private final void a0() {
        PhoenixApplication.K().y(this.l);
    }

    private final void c0() {
        PhoenixApplication.K().x(this.l);
    }

    private final void d0() {
        this.b.a(DownloadingHelper.a.q(this));
        this.b.a(RxBus.d().c(Sdk.SDKError.Reason.AD_NO_FILL_VALUE).o0(300L, TimeUnit.MILLISECONDS).w0(this.c));
    }

    public static final Boolean f0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (Boolean) dx2Var.invoke(obj);
    }

    public static final List g0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (List) dx2Var.invoke(obj);
    }

    public static List s(dx2 dx2Var, Object obj) {
        return g0(dx2Var, obj);
    }

    public static Boolean t(dx2 dx2Var, Object obj) {
        return f0(dx2Var, obj);
    }

    public final pq2 R() {
        return tq2.I(this.a.p(), dp1.b());
    }

    public final LiveData T() {
        return this.i;
    }

    public final LiveData U() {
        return this.k;
    }

    public final LiveData V() {
        return this.g;
    }

    public final void W() {
        this.e.clear();
    }

    public final void Y(long j) {
        this.e.add(Long.valueOf(j));
        this.j.p(kd8.a(this.e, Boolean.TRUE));
    }

    @Override
    public void d(DownloadData downloadData) {
        or3.f(downloadData, NativeAdPresenter.DOWNLOAD);
        Y(downloadData.f());
    }

    @Override
    public void e() {
        this.f.p(new su1.d(true));
    }

    public final void e0() {
        fv7.a(this.d);
        c cVarY = this.c.E(new ix1(DownloadingViewModel$subscriptionRefresh$1.INSTANCE)).Y(a58.b).U(new jx1(DownloadingViewModel$subscriptionRefresh$2.INSTANCE)).d0().Y(sh.c());
        or3.e(cVarY, "observeOn(...)");
        this.d = ObservableKt.i(cVarY, new DownloadingViewModel$subscriptionRefresh$3(this));
    }

    @Override
    public void f(List list, List list2) {
        or3.f(list, "pathList");
        or3.f(list2, "idList");
        this.f.p(new su1.a(list, list2));
    }

    @Override
    public void h(DownloadData downloadData) {
        or3.f(downloadData, NativeAdPresenter.DOWNLOAD);
        if (DeleteHelper.a.b().contains(Long.valueOf(downloadData.f()))) {
            return;
        }
        this.f.p(new su1.b(downloadData));
    }

    @Override
    public void i(DownloadData downloadData) {
        or3.f(downloadData, NativeAdPresenter.DOWNLOAD);
        this.f.p(new su1.c(downloadData));
    }

    @Override
    public void n(TaskInfo taskInfo) {
        or3.f(taskInfo, "taskInfo");
        Y(taskInfo.a);
    }

    @Override
    public void o(List list) {
        or3.f(list, "taskId");
        this.e.addAll(list);
        this.j.p(kd8.a(this.e, Boolean.FALSE));
    }

    @Override
    public void onCleared() {
        this.b.b();
        a0();
        super.onCleared();
    }
}
