package com.snaptube.premium.files;

import android.app.Activity;
import androidx.view.LiveData;
import com.phoenix.download.card.model.TaskCardModel;
import com.snaptube.base.ktx.ObservableKt;
import com.snaptube.permission.PermissionHelper;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.files.downloading.DownloadingHelper;
import com.snaptube.premium.files.pojo.DownloadData;
import com.snaptube.premium.reyclerbin.DeleteHelper;
import com.snaptube.taskManager.datasets.TaskInfo;
import com.snaptube.util.ProductionEnv;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.wandoujia.base.utils.RxBus;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import o.bx2;
import o.cu1;
import o.dx2;
import o.e18;
import o.ex1;
import o.hl5;
import o.iw1;
import o.jw1;
import o.mx8;
import o.n01;
import o.or3;
import o.pg1;
import o.pq5;
import o.rk2;
import o.sh;
import o.sk2;
import o.sq5;
import o.tk2;
import o.xu0;
import o.y05;
import rx.c;

public final class FilesViewModel extends mx8 implements jw1 {
    public boolean c;
    public boolean d;
    public final y05 g;
    public final LiveData h;
    public final y05 i;
    public final LiveData j;
    public final y05 k;
    public final ex1 l;
    public final DownloadTaskRepository a = new DownloadTaskRepository();
    public final n01 b = new n01();
    public List e = new ArrayList();
    public final Set f = new LinkedHashSet();

    public static final class a {
        public Boolean a;
        public Boolean b;
        public boolean c;

        public a() {
            this(null, null, 3, null);
        }

        public a(Boolean bool, Boolean bool2) {
            this.a = bool;
            this.b = bool2;
        }

        public a(Boolean bool, Boolean bool2, int i, pg1 pg1Var) {
            this((i & 1) != 0 ? null : bool, (i & 2) != 0 ? null : bool2);
        }

        public final Boolean a() {
            return this.b;
        }

        public final Boolean b() {
            return this.a;
        }

        public final boolean c() {
            return this.c;
        }

        public final boolean d() {
            Boolean bool = this.b;
            return bool == null || or3.a(bool, Boolean.TRUE);
        }

        public final boolean e() {
            Boolean bool = this.a;
            return bool == null || or3.a(bool, Boolean.TRUE);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return or3.a(this.a, aVar.a) && or3.a(this.b, aVar.b);
        }

        public final boolean f() {
            return e() && d();
        }

        public final void g(Boolean bool) {
            this.b = bool;
        }

        public final void h(Boolean bool) {
            this.a = bool;
        }

        public int hashCode() {
            Boolean bool = this.a;
            int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
            Boolean bool2 = this.b;
            return iHashCode + (bool2 != null ? bool2.hashCode() : 0);
        }

        public final void i(boolean z) {
            this.c = z;
        }

        public String toString() {
            return "EmptyValue(downloadingValue=" + this.a + ", downloadedValue=" + this.b + ")";
        }
    }

    public static final class b extends pq5.a {
        public final bx2 a;

        public b(bx2 bx2Var) {
            this.a = bx2Var;
        }

        @Override
        public void b() {
            super.b();
            this.a.invoke();
        }
    }

    public FilesViewModel() {
        y05 y05Var = new y05();
        this.g = y05Var;
        this.h = y05Var;
        y05 y05Var2 = new y05();
        this.i = y05Var2;
        this.j = y05Var2;
        this.k = new y05(new a(null, null, 3, null));
        this.l = new ex1(this);
        q0();
        r0();
        p0();
    }

    public static void B(dx2 dx2Var, Object obj) {
        k0(dx2Var, obj);
    }

    public static final List M(FilesViewModel filesViewModel) {
        return filesViewModel.e;
    }

    public static final y05 R(FilesViewModel filesViewModel) {
        return filesViewModel.g;
    }

    public static final void T(FilesViewModel filesViewModel, boolean z) {
        filesViewModel.c = z;
    }

    public static final void U(FilesViewModel filesViewModel, boolean z) {
        filesViewModel.d = z;
    }

    public static final void V(FilesViewModel filesViewModel, boolean z) {
        filesViewModel.s0(z);
    }

    public static final List j0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (List) dx2Var.invoke(obj);
    }

    public static final void k0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final void l0(FilesViewModel filesViewModel, Throwable th) {
        or3.f(filesViewModel, "this$0");
        filesViewModel.c = false;
        ProductionEnv.errorLog("FilesViewModel", th);
    }

    private final void n0() {
        PhoenixApplication.K().y(this.l);
    }

    public static void s(FilesViewModel filesViewModel, Throwable th) {
        l0(filesViewModel, th);
    }

    public static List t(dx2 dx2Var, Object obj) {
        return j0(dx2Var, obj);
    }

    public final void W(Activity activity, bx2 bx2Var) {
        or3.f(activity, "activity");
        or3.f(bx2Var, "onGranted");
        if (sq5.g()) {
            return;
        }
        com.snaptube.permission.a aVarA = new com.snaptube.permission.a.C0392a().h(sq5.e()).e(1).c(true).f(R.string.allow_files_access_to_save_downloaded_files).j("myfiles_download").a();
        or3.e(aVarA, "build(...)");
        PermissionHelper.a.k(activity, aVarA, new b(bx2Var));
    }

    public final boolean Y() {
        return this.d;
    }

    public final void a0() {
        a aVar = (a) this.k.f();
        if (aVar == null) {
            return;
        }
        aVar.i(true);
    }

    public final LiveData c0() {
        return this.j;
    }

    @Override
    public void d(DownloadData downloadData) {
        or3.f(downloadData, NativeAdPresenter.DOWNLOAD);
        DownloadingHelper.a.o(this.e, downloadData.f());
        this.f.add(Long.valueOf(downloadData.f()));
        this.i.p(this.f);
    }

    public final LiveData d0() {
        return this.h;
    }

    @Override
    public void e() {
        i0();
    }

    public final LiveData e0() {
        return this.k;
    }

    @Override
    public void f(List list, List list2) {
        or3.f(list, "pathList");
        or3.f(list2, "idList");
        DownloadingHelper.a.n(this.e, list, list2);
        this.g.m(new iw1(this.e, null, 2, null));
    }

    public final TaskInfo f0() {
        Iterator it2 = new ArrayList(this.e).iterator();
        while (true) {
            if (!it2.hasNext()) {
                return null;
            }
            e18 e18VarM = ((TaskCardModel) ((DownloadData) it2.next()).d()).m();
            TaskInfo taskInfoB = e18VarM != null ? e18VarM.b() : null;
            if ((taskInfoB != null ? taskInfoB.i : null) == TaskInfo.TaskStatus.ERROR) {
                if (!com.phoenix.download.b.e(cu1.c(new File(taskInfoB.i())), taskInfoB.d - taskInfoB.e)) {
                    return taskInfoB;
                }
            }
        }
    }

    public final boolean g0() {
        a aVar = (a) this.k.f();
        return aVar != null && aVar.d();
    }

    @Override
    public void h(DownloadData downloadData) {
        or3.f(downloadData, NativeAdPresenter.DOWNLOAD);
        if (DeleteHelper.a.b().contains(Long.valueOf(downloadData.f()))) {
            return;
        }
        DownloadingHelper downloadingHelper = DownloadingHelper.a;
        if (DownloadingHelper.c(downloadingHelper, this.e, downloadData, 0, 4, null) != null) {
            downloadingHelper.r(this.e);
            this.g.m(new iw1(this.e, null, 2, null));
        }
    }

    public final boolean h0() {
        a aVar = (a) this.k.f();
        return aVar != null && aVar.e();
    }

    @Override
    public void i(DownloadData downloadData) {
        or3.f(downloadData, NativeAdPresenter.DOWNLOAD);
        TaskInfo.TaskStatus taskStatus = ((TaskCardModel) downloadData.d()).m().b().i;
        if (taskStatus != TaskInfo.TaskStatus.DELETED && taskStatus != TaskInfo.TaskStatus.FINISH && !DeleteHelper.a.b().contains(Long.valueOf(downloadData.f()))) {
            DownloadingHelper downloadingHelper = DownloadingHelper.a;
            if (DownloadingHelper.c(downloadingHelper, this.e, downloadData, 0, 4, null) != null) {
                downloadingHelper.r(this.e);
                this.g.m(new iw1(this.e, null, 2, null));
                return;
            }
        }
        Pair pairT = DownloadingHelper.a.t(this.e, downloadData, true);
        if (pairT != null) {
            this.g.m(new iw1(this.e, new hl5(3, ((Number) pairT.getFirst()).intValue(), ((Number) pairT.getSecond()).intValue())));
        }
    }

    public final void i0() {
        this.d = false;
        if (this.c) {
            return;
        }
        this.c = true;
        this.a.o().U(new rk2(FilesViewModel$loadDownloadingData$1.INSTANCE)).Y(sh.c()).u0(new sk2(new FilesViewModel$loadDownloadingData$2(this)), new tk2(this));
    }

    public final void m0() {
        this.f.clear();
    }

    @Override
    public void o(List list) {
        or3.f(list, "taskIds");
        DownloadingHelper.a.n(this.e, xu0.h(), list);
        this.f.addAll(list);
        this.i.p(this.f);
    }

    public final void o0() {
        PhoenixApplication.K().x(this.l);
    }

    @Override
    public void onCleared() {
        this.b.b();
        n0();
        super.onCleared();
    }

    public final void p0() {
        n01 n01Var = this.b;
        c cVarC = RxBus.d().c(1251);
        or3.e(cVarC, "filter(...)");
        n01Var.a(ObservableKt.i(cVarC, new FilesViewModel$setupSubscriptionForBatchUpdate$1(this)));
    }

    public final void q0() {
        this.b.a(DownloadingHelper.a.q(this));
        o0();
    }

    public final void r0() {
        n01 n01Var = this.b;
        c cVarC = RxBus.d().c(1248);
        or3.e(cVarC, "filter(...)");
        n01Var.a(ObservableKt.i(cVarC, new FilesViewModel$setupSubscriptionForEmpty$1(this)));
    }

    public final void s0(boolean z) {
        a aVar = (a) this.k.f();
        if (aVar != null) {
            if (aVar.c() || !or3.a(aVar.a(), Boolean.valueOf(z))) {
                aVar.i(false);
                Boolean boolB = aVar.b();
                u0(boolB != null ? boolB.booleanValue() : false, z);
            }
        }
    }

    public final void t0(boolean z) {
        a aVar = (a) this.k.f();
        if (aVar == null || or3.a(aVar.b(), Boolean.valueOf(z))) {
            return;
        }
        Boolean boolA = aVar.a();
        u0(z, boolA != null ? boolA.booleanValue() : false);
    }

    public final void u0(boolean z, boolean z2) {
        a aVar = (a) this.k.f();
        if (aVar != null) {
            aVar.h(Boolean.valueOf(z));
            aVar.g(Boolean.valueOf(z2));
            this.k.m(aVar);
        }
    }
}
