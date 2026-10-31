package com.snaptube.premium.files.downloaded;

import androidx.view.LiveData;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.snaptube.base.ktx.ObservableKt;
import com.snaptube.dataadapter.plugin.utils.YouTubeApiUtils;
import com.snaptube.premium.ads.AdOldListDelegate;
import com.snaptube.premium.ads.utils.AdCardInsertKt;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.files.DownloadTaskRepository;
import com.snaptube.premium.files.pojo.DownloadData;
import com.snaptube.premium.model.LocalVideoAlbumInfo;
import com.snaptube.premium.model.VideoMyThingsCardModel;
import com.snaptube.premium.reyclerbin.DeleteHelper;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.MediaScanUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import o.af1;
import o.aw1;
import o.bw1;
import o.cw1;
import o.cy2;
import o.do3;
import o.dw1;
import o.dx2;
import o.ew1;
import o.fw1;
import o.gw1;
import o.iu4;
import o.kf5;
import o.lr1;
import o.lv1;
import o.mg8;
import o.mx8;
import o.n74;
import o.or3;
import o.pg1;
import o.rx2;
import o.sh;
import o.t14;
import o.ud8;
import o.ux2;
import o.xu0;
import o.y05;
import o.z31;
import rx.c;

public final class DownloadedTaskViewModel extends mx8 {
    public static final a k = new a(null);
    public static final Comparator l = new aw1();
    public static int m;
    public static int n;
    public final DownloadTaskRepository a = new DownloadTaskRepository();
    public final y05 b;
    public final LinkedList c;
    public final t14 d;
    public final t14 e;
    public int f;
    public final List g;
    public af1 h;
    public boolean i;
    public y05 j;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lo/lv1;", "kotlin.jvm.PlatformType", YouTubeApiUtils.LIST, "Lo/mg8;", "invoke", "(Lo/lv1;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nDownloadedTaskViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadedTaskViewModel.kt\ncom/snaptube/premium/files/downloaded/DownloadedTaskViewModel$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,523:1\n1774#2,4:524\n1774#2,4:528\n*S KotlinDebug\n*F\n+ 1 DownloadedTaskViewModel.kt\ncom/snaptube/premium/files/downloaded/DownloadedTaskViewModel$1\n*L\n97#1:524,4\n98#1:528,4\n*E\n"})
    public static final class AnonymousClass1 extends Lambda implements dx2 {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override
        public Object invoke(Object obj) {
            invoke((lv1) obj);
            return mg8.a;
        }

        public final void invoke(lv1 lv1Var) {
            int i;
            a aVar = DownloadedTaskViewModel.k;
            List listB = lv1Var.b();
            int i2 = 0;
            if ((listB instanceof Collection) && listB.isEmpty()) {
                i = 0;
            } else {
                Iterator it2 = listB.iterator();
                i = 0;
                while (it2.hasNext()) {
                    if (((DownloadData) it2.next()).k() && (i = i + 1) < 0) {
                        xu0.p();
                    }
                }
            }
            aVar.e(i);
            a aVar2 = DownloadedTaskViewModel.k;
            List listB2 = lv1Var.b();
            if (!(listB2 instanceof Collection) || !listB2.isEmpty()) {
                Iterator it3 = listB2.iterator();
                while (it3.hasNext()) {
                    if (((DownloadData) it3.next()).i() && (i2 = i2 + 1) < 0) {
                        xu0.p();
                    }
                }
            }
            aVar2.d(i2);
        }
    }

    public static final class a {
        public a() {
        }

        public a(pg1 pg1Var) {
            this();
        }

        public final Comparator a() {
            return DownloadedTaskViewModel.Y();
        }

        public final int b() {
            return DownloadedTaskViewModel.a0();
        }

        public final int c() {
            return DownloadedTaskViewModel.c0();
        }

        public final void d(int i) {
            DownloadedTaskViewModel.j0(i);
        }

        public final void e(int i) {
            DownloadedTaskViewModel.k0(i);
        }
    }

    public static final class b implements kf5, cy2 {
        public final dx2 a;

        public b(dx2 dx2Var) {
            or3.f(dx2Var, "function");
            this.a = dx2Var;
        }

        @Override
        public final ux2 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof kf5) && (obj instanceof cy2)) {
                return or3.a(a(), ((cy2) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public DownloadedTaskViewModel() {
        y05 y05Var = new y05();
        this.b = y05Var;
        this.c = new LinkedList();
        this.d = kotlin.b.b(DownloadedTaskViewModel$adOldListDelegate$2.INSTANCE);
        this.e = kotlin.b.b(DownloadedTaskViewModel$mHasAddAdPositionSet$2.INSTANCE);
        this.f = -1;
        this.g = new ArrayList();
        this.h = af1.d.a();
        this.j = new y05(Boolean.FALSE);
        y05Var.j(new b(AnonymousClass1.INSTANCE));
    }

    public static void B(dx2 dx2Var, Object obj) {
        u0(dx2Var, obj);
    }

    public static final List E0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        return (List) dx2Var.invoke(obj);
    }

    public static final void G0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final void H0(DownloadedTaskViewModel downloadedTaskViewModel, Throwable th) {
        or3.f(downloadedTaskViewModel, "this$0");
        downloadedTaskViewModel.i = false;
        downloadedTaskViewModel.b.p(lv1.c.a());
    }

    public static void L0(DownloadedTaskViewModel downloadedTaskViewModel, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = null;
        }
        if ((i & 2) != 0) {
            list2 = null;
        }
        downloadedTaskViewModel.K0(list, list2);
    }

    public static int M(DownloadData downloadData, DownloadData downloadData2) {
        return r0(downloadData, downloadData2);
    }

    public static void R(DownloadedTaskViewModel downloadedTaskViewModel, Throwable th) {
        v0(downloadedTaskViewModel, th);
    }

    public static void R0(DownloadedTaskViewModel downloadedTaskViewModel, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        if ((i & 2) != 0) {
            z2 = true;
        }
        downloadedTaskViewModel.Q0(z, z2);
    }

    public static void T(dx2 dx2Var, Object obj) {
        G0(dx2Var, obj);
    }

    public static List U(dx2 dx2Var, Object obj) {
        return E0(dx2Var, obj);
    }

    public static final void V(DownloadedTaskViewModel downloadedTaskViewModel) {
        downloadedTaskViewModel.p0();
    }

    public static final af1 W(DownloadedTaskViewModel downloadedTaskViewModel) {
        return downloadedTaskViewModel.h;
    }

    public static final Comparator Y() {
        return l;
    }

    public static final int a0() {
        return m;
    }

    public static final int c0() {
        return n;
    }

    public static final LinkedList d0(DownloadedTaskViewModel downloadedTaskViewModel) {
        return downloadedTaskViewModel.c;
    }

    public static final HashSet e0(DownloadedTaskViewModel downloadedTaskViewModel) {
        return downloadedTaskViewModel.y0();
    }

    public static final DownloadTaskRepository f0(DownloadedTaskViewModel downloadedTaskViewModel) {
        return downloadedTaskViewModel.a;
    }

    public static final VideoMyThingsCardModel g0(DownloadedTaskViewModel downloadedTaskViewModel, int i) {
        return downloadedTaskViewModel.A0(i);
    }

    public static final List h0(DownloadedTaskViewModel downloadedTaskViewModel, List list) {
        return downloadedTaskViewModel.B0(list);
    }

    public static final void i0(DownloadedTaskViewModel downloadedTaskViewModel) {
        downloadedTaskViewModel.I0();
    }

    public static final void j0(int i) {
        m = i;
    }

    public static final void k0(int i) {
        n = i;
    }

    public static final void l0(DownloadedTaskViewModel downloadedTaskViewModel, boolean z) {
        downloadedTaskViewModel.i = z;
    }

    public static final List m0(DownloadedTaskViewModel downloadedTaskViewModel, List list, List list2) {
        return downloadedTaskViewModel.O0(list, list2);
    }

    public static final int r0(DownloadData downloadData, DownloadData downloadData2) {
        or3.f(downloadData, "l");
        or3.f(downloadData2, CampaignEx.JSON_KEY_AD_R);
        long finishTime = ((VideoMyThingsCardModel) downloadData2.d()).n().k().getFinishTime();
        long finishTime2 = ((VideoMyThingsCardModel) downloadData.d()).n().k().getFinishTime();
        return (finishTime2 == 0 && finishTime == 0) ? or3.i(((VideoMyThingsCardModel) downloadData2.d()).n().k().getCreateTime(), ((VideoMyThingsCardModel) downloadData.d()).n().k().getCreateTime()) : or3.i(finishTime, finishTime2);
    }

    public static void s(DownloadedTaskViewModel downloadedTaskViewModel, Throwable th) {
        H0(downloadedTaskViewModel, th);
    }

    public static List t(rx2 rx2Var, Object obj, Object obj2) {
        return t0(rx2Var, obj, obj2);
    }

    public static final List t0(rx2 rx2Var, Object obj, Object obj2) {
        or3.f(rx2Var, "$tmp0");
        return (List) rx2Var.invoke(obj, obj2);
    }

    public static final void u0(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    public static final void v0(DownloadedTaskViewModel downloadedTaskViewModel, Throwable th) {
        or3.f(downloadedTaskViewModel, "this$0");
        downloadedTaskViewModel.i = false;
        downloadedTaskViewModel.b.p(lv1.c.a());
    }

    private final AdOldListDelegate w0() {
        return (AdOldListDelegate) this.d.getValue();
    }

    public final VideoMyThingsCardModel A0(int i) {
        if (this.c.size() > i) {
            return (VideoMyThingsCardModel) ((DownloadData) this.c.get(i)).d();
        }
        if (i > 0) {
            return (VideoMyThingsCardModel) ((DownloadData) this.c.get(i - 1)).d();
        }
        return null;
    }

    public final List B0(List list) {
        ProductionEnv.debugLog("DownloadedTaskViewModel", "handleDownloadedList..." + list);
        LinkedList linkedList = new LinkedList();
        Iterator it2 = list.iterator();
        boolean zIsSupportLockType = false;
        String filePath = "";
        while (it2.hasNext()) {
            DownloadData downloadData = (DownloadData) it2.next();
            LocalVideoAlbumInfo localVideoAlbumInfoK = ((VideoMyThingsCardModel) downloadData.d()).n().k();
            if (localVideoAlbumInfoK != null) {
                linkedList.add(downloadData);
                zIsSupportLockType |= localVideoAlbumInfoK.isSupportLockType();
                if (filePath.length() == 0) {
                    String filePath2 = localVideoAlbumInfoK.getFilePath();
                    or3.e(filePath2, "getFilePath(...)");
                    int iZ0 = z0(filePath2);
                    if (iZ0 == 1 || iZ0 == 2) {
                        filePath = localVideoAlbumInfoK.getFilePath();
                        or3.e(filePath, "getFilePath(...)");
                    }
                }
            }
        }
        z31.o(zIsSupportLockType);
        N0(filePath);
        if (!linkedList.isEmpty()) {
            DeleteHelper.a.a(linkedList);
        }
        return linkedList;
    }

    public final y05 C0() {
        return this.j;
    }

    public final c D0() {
        return this.a.q().U(new gw1(new DownloadedTaskViewModel$loadAllDownloadedObservable$1(this))).Y(sh.c());
    }

    public final void F0() {
        if (this.i) {
            return;
        }
        ProductionEnv.debugLog("DownloadedTaskViewModel", "loadData...");
        this.i = true;
        this.h = null;
        D0().u0(new ew1(new DownloadedTaskViewModel$loadData$1(this)), new fw1(this));
    }

    public final void I0() {
        if (this.i) {
            return;
        }
        ProductionEnv.debugLog("DownloadedTaskViewModel", "loadNextPage...");
        c cVarY = DownloadTaskRepository.u(this.a, this.h, false, 2, null).Y(sh.c());
        or3.e(cVarY, "observeOn(...)");
        ObservableKt.i(cVarY, new DownloadedTaskViewModel$loadNextPage$1(this));
    }

    public final void J0(long j) {
        c cVarY = this.a.n(j).Y(sh.c());
        or3.e(cVarY, "observeOn(...)");
        ObservableKt.i(cVarY, new DownloadedTaskViewModel$refreshByTaskId$1(this));
    }

    public final void K0(List list, List list2) {
        ProductionEnv.debugLog("DownloadedTaskViewModel", "removeDownloadDataList..." + list + " " + list2);
        if (lr1.a.n(this.c, list, list2)) {
            if ((list == null || list.isEmpty() || list.size() <= 1) && (list2 == null || list2.isEmpty() || list2.size() <= 1)) {
                q0();
            } else {
                M0();
            }
            R0(this, false, false, 3, null);
        }
    }

    public final void M0() {
        boolean z;
        ProductionEnv.debugLog("DownloadedTaskViewModel", "resetAdPos...");
        y0().clear();
        this.f = -1;
        this.g.clear();
        if (!this.c.isEmpty()) {
            Iterator it2 = this.c.iterator();
            or3.e(it2, "iterator(...)");
            z = false;
            while (it2.hasNext()) {
                Object next = it2.next();
                or3.e(next, "next(...)");
                if (((DownloadData) next).g() == 100) {
                    it2.remove();
                    z = true;
                }
            }
        } else {
            z = false;
        }
        if (z) {
            R0(this, false, false, 3, null);
        }
    }

    public final void N0(String str) {
        ProductionEnv.debugLog("DownloadedTaskViewModel", "setDownloadFirstFilePath..." + str);
    }

    public final List O0(List list, List list2) {
        ProductionEnv.debugLog("DownloadedTaskViewModel", "tryCombineDownloadAndBakList...");
        LinkedList linkedList = new LinkedList(list);
        HashSet hashSet = new HashSet();
        Iterator it2 = linkedList.iterator();
        while (it2.hasNext()) {
            String strE = ((DownloadData) it2.next()).e();
            if (strE != null && strE.length() > 0) {
                hashSet.add(strE);
            }
        }
        Iterator it3 = list2.iterator();
        while (it3.hasNext()) {
            DownloadData downloadData = (DownloadData) it3.next();
            String strE2 = downloadData.e();
            if (strE2 != null && !hashSet.contains(strE2)) {
                linkedList.add(downloadData);
            }
        }
        return linkedList;
    }

    public final void P0() {
        n74 n74VarN;
        LocalVideoAlbumInfo localVideoAlbumInfoK;
        n74 n74VarN2;
        LocalVideoAlbumInfo localVideoAlbumInfoK2;
        ProductionEnv.debugLog("DownloadedTaskViewModel", "updateAdPosList..." + this.c.size());
        w0().f(this.c.size());
        for (Integer num : w0().c()) {
            int size = this.c.size();
            or3.c(num);
            if (((size < num.intValue() || y0().contains(num)) ? null : num) != null) {
                y0().add(num);
                VideoMyThingsCardModel videoMyThingsCardModelA0 = A0(num.intValue());
                long jCurrentTimeMillis = (videoMyThingsCardModelA0 == null || (n74VarN2 = videoMyThingsCardModelA0.n()) == null || (localVideoAlbumInfoK2 = n74VarN2.k()) == null) ? System.currentTimeMillis() : localVideoAlbumInfoK2.getCreateTime();
                long jCurrentTimeMillis2 = (videoMyThingsCardModelA0 == null || (n74VarN = videoMyThingsCardModelA0.n()) == null || (localVideoAlbumInfoK = n74VarN.k()) == null) ? System.currentTimeMillis() : localVideoAlbumInfoK.getFinishTime();
                Object obj = w0().e().get(num.intValue());
                or3.e(obj, "get(...)");
                String str = (String) obj;
                Object obj2 = w0().g.get(num.intValue());
                or3.e(obj2, "get(...)");
                do3 do3Var = new do3(str, ((Number) obj2).intValue(), jCurrentTimeMillis, jCurrentTimeMillis2);
                ProductionEnv.debugLog("DownloadedTaskViewModel", "updateAdPosList...add adPos = " + num);
                LinkedList linkedList = this.c;
                int iIntValue = num.intValue();
                DownloadData downloadData = new DownloadData(100, lr1.a.e(do3Var));
                this.g.add(downloadData);
                mg8 mg8Var = mg8.a;
                linkedList.add(iIntValue, downloadData);
                this.f = num.intValue();
            }
        }
        if (this.g.size() > 1) {
            int i = this.f;
            int size2 = this.c.size() - 1;
            LinkedList linkedList2 = this.c;
            List list = this.g;
            List listSubList = list.subList(1, list.size());
            com.snaptube.premium.ads.a.d dVarZ = PhoenixApplication.C().y().Z(w0().d());
            or3.e(dVarZ, "getFeedStreamAdConfig(...)");
            AdCardInsertKt.c(i, size2, linkedList2, listSubList, dVarZ, new DownloadedTaskViewModel$updateAdPosList$3(this));
        }
    }

    public final void Q0(boolean z, boolean z2) {
        ProductionEnv.debugLog("DownloadedTaskViewModel", "updateDownloadPageList " + this.c.size());
        if (z2) {
            lr1.a aVar = lr1.a;
            LinkedList linkedList = this.c;
            or3.d(linkedList, "null cannot be cast to non-null type kotlin.collections.MutableList<com.snaptube.premium.files.pojo.DownloadData<*>>");
            aVar.h(ud8.c(linkedList));
            ProductionEnv.debugLog("DownloadedTaskViewModel", "updateDownloadPageList filter " + this.c.size());
            Collections.sort(this.c, l);
        }
        if (z) {
            P0();
        }
        this.b.m(new lv1(this.h, this.c));
    }

    public final void n0(DownloadData downloadData) {
        or3.f(downloadData, "downloadData");
        ProductionEnv.debugLog("DownloadedTaskViewModel", "addDownloadData..." + downloadData.g());
        if (lr1.a.a(this.c, downloadData)) {
            R0(this, false, false, 2, null);
        }
    }

    public final void o0(List list, boolean z) {
        ProductionEnv.debugLog("DownloadedTaskViewModel", "addDownloadData..." + (list != null ? Integer.valueOf(list.size()) : null) + " " + z);
        if (lr1.a.b(this.c, list)) {
            R0(this, z, false, 2, null);
        }
    }

    public final void p0() {
        ProductionEnv.debugLog("DownloadedTaskViewModel", "clearList...");
        y0().clear();
        this.c.clear();
        this.f = -1;
        this.g.clear();
    }

    public final void q0() {
        HashSet hashSetY0 = y0();
        if (y0().size() <= 0) {
            hashSetY0 = null;
        }
        if (hashSetY0 != null) {
            int size = hashSetY0.size();
            Iterator it2 = hashSetY0.iterator();
            or3.e(it2, "iterator(...)");
            int size2 = this.c.size() - size;
            int i = 0;
            while (it2.hasNext()) {
                Object next = it2.next();
                Integer num = (Integer) next;
                or3.c(num);
                if (size2 >= num.intValue()) {
                    next = null;
                }
                if (((Integer) next) != null) {
                    i++;
                    it2.remove();
                }
            }
            Integer numValueOf = i > 0 ? Integer.valueOf(i) : null;
            if (numValueOf != null) {
                int iIntValue = numValueOf.intValue();
                Iterator it3 = this.c.iterator();
                or3.e(it3, "iterator(...)");
                int i2 = size - iIntValue;
                ProductionEnv.debugLog("DownloadedTaskViewModel", "count=" + i + " totalAdCount=" + size);
                StringBuilder sb = new StringBuilder();
                sb.append("deleteAdPosWhenItemDelete...");
                sb.append(i2);
                ProductionEnv.debugLog("DownloadedTaskViewModel", sb.toString());
                int i3 = 1;
                while (it3.hasNext()) {
                    Object next2 = it3.next();
                    or3.e(next2, "next(...)");
                    if (((DownloadData) next2).g() == 100) {
                        if (i3 > i2) {
                            it3.remove();
                            ProductionEnv.debugLog("DownloadedTaskViewModel", "deleteAdPosWhenItemDelete...iterator.remove()");
                        }
                        i3++;
                    }
                }
            }
        }
    }

    public final void s0() {
        if (this.i) {
            return;
        }
        ProductionEnv.debugLog("DownloadedTaskViewModel", "firstLoad...");
        this.i = true;
        af1 af1VarA = af1.d.a();
        this.h = af1VarA;
        c.U0(this.a.t(af1VarA, true), this.a.s(), new bw1(new DownloadedTaskViewModel$firstLoad$1(this))).Y(sh.c()).u0(new cw1(new DownloadedTaskViewModel$firstLoad$2(this)), new dw1(this));
    }

    public final LiveData x0() {
        return this.b;
    }

    public final HashSet y0() {
        return (HashSet) this.e.getValue();
    }

    public final int z0(String str) {
        ProductionEnv.debugLog("DownloadedTaskViewModel", "getMediaTypeByPath..." + str);
        return MediaScanUtil.c(iu4.d(iu4.b(str)));
    }
}
