package com.transsion.ugcvideodetail.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCCollectionVideoGroupDao;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public class UGCVideoDetailViewModel extends t0 {
    public static final a H = new a(null);
    private String A;
    private int B;
    private int C;
    private final b0 D;
    private final LiveData E;
    private final b0 F;
    private final LiveData G;

    private String f54366a;

    private String f54371f;

    private String f54372g;

    private final b0 f54376k;

    private final LiveData f54377l;

    private final b0 f54378m;

    private final b0 f54379n;

    private final LiveData f54380o;

    private final b0 f54381p;

    private final LiveData f54382q;

    private final b0 f54383r;

    private final b0 f54384s;

    private final LiveData f54385t;

    private final b0 f54386u;

    private final LiveData f54387v;

    private final b0 f54388w;

    private final LiveData f54389x;

    private String f54390y;

    private final Set f54391z;

    private final Lazy f54367b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCVideoDetailViewModel.x();
        }
    });

    private final Lazy f54368c = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCVideoDetailViewModel.Z();
        }
    });

    private final Lazy f54369d = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCVideoDetailViewModel.w();
        }
    });

    private String f54370e = "";

    private final b0 f54373h = new b0();

    private final b0 f54374i = new b0();

    private final b0 f54375j = new b0();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b {

        private final List f54392a;

        private final String f54393b;

        public b(List videos, String str) {
            Intrinsics.h(videos, "videos");
            this.f54392a = videos;
            this.f54393b = str;
        }

        public final String a() {
            return this.f54393b;
        }

        public final List b() {
            return this.f54392a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f54392a, bVar.f54392a) && Intrinsics.c(this.f54393b, bVar.f54393b);
        }

        public int hashCode() {
            int iHashCode = this.f54392a.hashCode() * 31;
            String str = this.f54393b;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "ReplacePlayListData(videos=" + this.f54392a + ", clickedVideoId=" + this.f54393b + ")";
        }
    }

    public UGCVideoDetailViewModel() {
        b0 b0Var = new b0();
        this.f54376k = b0Var;
        this.f54377l = b0Var;
        this.f54378m = new b0();
        b0 b0Var2 = new b0();
        this.f54379n = b0Var2;
        this.f54380o = b0Var2;
        b0 b0Var3 = new b0();
        this.f54381p = b0Var3;
        this.f54382q = b0Var3;
        this.f54383r = new b0();
        b0 b0Var4 = new b0();
        this.f54384s = b0Var4;
        this.f54385t = b0Var4;
        b0 b0Var5 = new b0();
        this.f54386u = b0Var5;
        this.f54387v = b0Var5;
        b0 b0Var6 = new b0();
        this.f54388w = b0Var6;
        this.f54389x = b0Var6;
        this.f54391z = new LinkedHashSet();
        b0 b0Var7 = new b0();
        this.D = b0Var7;
        this.E = b0Var7;
        b0 b0Var8 = new b0();
        this.F = b0Var8;
        this.G = b0Var8;
    }

    public final ju.a F() {
        return (ju.a) this.f54367b.getValue();
    }

    private final void V(String str, String str2) {
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$getVideoDetail$1(this, str, str2, null), 3, null);
    }

    private final void W(String str) {
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$getVideoDetailBySubject$1(this, str, null), 3, null);
    }

    public static final UGCVideoDetailPlayDao Z() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    public final boolean k0(String str, int i10, int i11) {
        int i12;
        int i13;
        if (!Intrinsics.c(str, this.A) || (i12 = this.B) <= 0 || (i13 = this.C) <= 0 || i10 < i12 || i11 > i13) {
            return true;
        }
        wf.a.C0922a.f(wf.a.f74274a, "UGCVideoDetailViewModel", "PlayList range already covered: requested[" + i10 + "-" + i11 + "], loaded[" + i12 + "-" + i13 + "]", false, 4, null);
        return false;
    }

    private final void v() {
        this.f54391z.clear();
    }

    public static final UGCCollectionVideoGroupDao w() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).A1();
    }

    public static final ju.a x() {
        return (ju.a) kg.c.f63982e.a().h(ju.a.class);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b5 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {all -> 0x0033, blocks: (B:14:0x002f, B:31:0x0072, B:33:0x0076, B:35:0x007c, B:38:0x0083, B:40:0x008b, B:42:0x0091, B:44:0x0099, B:45:0x00a8, B:48:0x00b5, B:21:0x0042, B:27:0x005a, B:24:0x0049), top: B:52:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object y(String str, Continuation continuation) {
        UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1;
        DownloadBean downloadBean;
        BaseDto baseDto;
        String path;
        UGCVideoPlayInfo uGCVideoPlayInfo;
        List<UGCVideoPlayStream> resources;
        UGCVideoPlayStream uGCVideoPlayStream;
        if (continuation instanceof UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1) {
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 = (UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1) continuation;
            int i10 = uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1.label = i10 - Integer.MIN_VALUE;
            } else {
                uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 = new UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1(this, continuation);
            }
        } else {
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 = new UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1(this, continuation);
        }
        UGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1 uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2 = uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$1;
        Object objR = uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    str = (String) uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0;
                    ResultKt.b(objR);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    downloadBean = (DownloadBean) uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0;
                    ResultKt.b(objR);
                }
                baseDto = (BaseDto) objR;
                if (downloadBean != null && (path = downloadBean.getPath()) != null && path.length() != 0 && (uGCVideoPlayInfo = (UGCVideoPlayInfo) baseDto.getData()) != null && (resources = uGCVideoPlayInfo.getResources()) != null && (uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(resources)) != null) {
                    String path2 = downloadBean.getPath();
                    Intrinsics.e(path2);
                    uGCVideoPlayStream.setUrl(path2);
                    uGCVideoPlayStream.setFormat("Mp4");
                }
                if (Intrinsics.c(baseDto.getCode(), "0")) {
                    return (UGCVideoPlayInfo) baseDto.getData();
                }
                return null;
            }
            ResultKt.b(objR);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0 = str;
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.label = 1;
            objR = downloadEsHelperA.R(str, uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2);
            if (objR == objF) {
                return objF;
            }
            DownloadBean downloadBean2 = (DownloadBean) objR;
            ju.a aVarF = F();
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.L$0 = downloadBean2;
            uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2.label = 2;
            Object objI = ju.a.C0777a.i(aVarF, str, null, uGCVideoDetailViewModel$fetchVideoPlayInfoInternal$2, 2, null);
            if (objI == objF) {
                return objF;
            }
            objR = objI;
            downloadBean = downloadBean2;
            baseDto = (BaseDto) objR;
            if (downloadBean != null) {
                String path3 = downloadBean.getPath();
                Intrinsics.e(path3);
                uGCVideoPlayStream.setUrl(path3);
                uGCVideoPlayStream.setFormat("Mp4");
            }
            if (Intrinsics.c(baseDto.getCode(), "0")) {
                return null;
            }
            return (UGCVideoPlayInfo) baseDto.getData();
        } catch (Throwable th2) {
            wf.a.C0922a.l(wf.a.f74274a, "UGCVideoDetailViewModel", "fetchVideoPlayInfoInternal error:" + th2, false, 4, null);
            return null;
        }
    }

    public final b0 A() {
        return this.f54375j;
    }

    public final b0 B() {
        return this.f54374i;
    }

    public final b0 C() {
        return this.f54383r;
    }

    public final b0 D() {
        return this.f54373h;
    }

    public final String E() {
        return this.f54390y;
    }

    public final LiveData G() {
        return this.f54380o;
    }

    public final b0 H() {
        return this.f54378m;
    }

    public final LiveData I() {
        return this.E;
    }

    public final LiveData J() {
        return this.f54377l;
    }

    protected final UGCVideoDetailPlayDao K() {
        return (UGCVideoDetailPlayDao) this.f54368c.getValue();
    }

    public final LiveData L() {
        return this.f54382q;
    }

    public final LiveData M() {
        return this.f54385t;
    }

    public final LiveData N() {
        return this.f54387v;
    }

    public String O() {
        return this.f54372g;
    }

    public String P() {
        return this.f54371f;
    }

    public final LiveData Q() {
        return this.f54389x;
    }

    public final LiveData R() {
        return this.G;
    }

    public final int S(int i10) {
        return (i10 - 1) / 50;
    }

    public String T() {
        return this.f54370e;
    }

    public final void U(boolean z10, String str, String str2) {
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$getUGCDetailForYouList$1(z10, this, str, str2, null), 3, null);
    }

    public final void X(String collectionId, int i10, int i11, boolean z10) {
        Intrinsics.h(collectionId, "collectionId");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$getVideoPlayList$1(this, collectionId, i10, i11, z10, null), 3, null);
    }

    protected final b0 Y() {
        return this.f54376k;
    }

    public final boolean a0(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return this.f54391z.contains(str);
    }

    public final void b0(String ugcVideoId) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$loadHistory$1(this, ugcVideoId, null), 3, null);
    }

    public final void c0(String ugcVideoId, String str) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        v();
        if (!Intrinsics.c(str, this.A)) {
            this.A = null;
            this.B = 0;
            this.C = 0;
        }
        V(ugcVideoId, str);
    }

    public final void d0(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        v();
        W(subjectId);
    }

    public final void e0(String str) {
        if (str == null || str.length() == 0) {
            return;
        }
        this.f54391z.add(str);
    }

    public final void f0(String str) {
        this.f54390y = str;
    }

    public void g0(String str) {
        this.f54372g = str;
    }

    public void h0(String str) {
        this.f54371f = str;
    }

    public final void i0(List list, String str) {
        List list2 = list;
        if (list2 == null || list2.isEmpty() || str == null || str.length() == 0) {
            return;
        }
        this.f54388w.q(new b(list, str));
    }

    public void j0(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f54370e = str;
    }

    public final void l0(String ugcVideoId, boolean z10) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$toggleFavorite$1(this, ugcVideoId, z10, null), 3, null);
    }

    public final void m0(String ugcVideoId, boolean z10) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$toggleLike$1(this, ugcVideoId, z10, null), 3, null);
    }

    public final void n0(String targetUID, boolean z10) {
        Intrinsics.h(targetUID, "targetUID");
        k.d(u0.a(this), null, null, new UGCVideoDetailViewModel$toggleSubscription$1(this, targetUID, z10, null), 3, null);
    }

    public final void u(List list, boolean z10) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Iterable<UGCVideo> arrayList = (List) this.f54383r.f();
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (UGCVideo uGCVideo : arrayList) {
            String ugcVideoId = uGCVideo.getUgcVideoId();
            if (ugcVideoId != null) {
                linkedHashMap.put(ugcVideoId, uGCVideo);
            }
        }
        if (z10) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                UGCVideo uGCVideo2 = (UGCVideo) it.next();
                String ugcVideoId2 = uGCVideo2.getUgcVideoId();
                if (ugcVideoId2 != null) {
                    linkedHashMap.put(ugcVideoId2, uGCVideo2);
                }
            }
        } else {
            for (UGCVideo uGCVideo3 : CollectionsKt.T(list)) {
                String ugcVideoId3 = uGCVideo3.getUgcVideoId();
                if (ugcVideoId3 != null && !linkedHashMap.containsKey(ugcVideoId3)) {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put(ugcVideoId3, uGCVideo3);
                    linkedHashMap2.putAll(linkedHashMap);
                    linkedHashMap.clear();
                    linkedHashMap.putAll(linkedHashMap2);
                }
            }
        }
        b0 b0Var = this.f54383r;
        Collection collectionValues = linkedHashMap.values();
        Intrinsics.g(collectionValues, "<get-values>(...)");
        b0Var.q(CollectionsKt.U0(collectionValues));
    }

    protected final UGCCollectionVideoGroupDao z() {
        return (UGCCollectionVideoGroupDao) this.f54369d.getValue();
    }
}
