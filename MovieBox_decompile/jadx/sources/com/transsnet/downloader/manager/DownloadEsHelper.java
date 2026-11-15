package com.transsnet.downloader.manager;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.SubtitleBean;
import com.transsion.baselib.db.video.a1;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.LocalVideoEvent;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ui.v0;

public final class DownloadEsHelper {

    public static final a f57201m = new a(null);

    private static final Lazy f57202n = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadEsHelper.U();
        }
    });

    private final ConcurrentHashMap f57203a = new ConcurrentHashMap();

    private final ConcurrentHashMap f57204b = new ConcurrentHashMap();

    private final ConcurrentHashMap f57205c = new ConcurrentHashMap();

    private final ConcurrentHashMap f57206d = new ConcurrentHashMap();

    private final ConcurrentHashMap f57207e = new ConcurrentHashMap();

    private final ConcurrentHashMap f57208f = new ConcurrentHashMap();

    private String f57209g = "";

    private String f57210h = "";

    private int f57211i = 1;

    private final Lazy f57212j = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadEsHelper.n();
        }
    });

    private final Lazy f57213k = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadEsHelper.a0();
        }
    });

    private final Lazy f57214l = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return DownloadEsHelper.j0();
        }
    });

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadEsHelper a() {
            return (DownloadEsHelper) DownloadEsHelper.f57202n.getValue();
        }

        private a() {
        }
    }

    public static Object B(DownloadEsHelper downloadEsHelper, boolean z10, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return downloadEsHelper.A(z10, continuation);
    }

    public static Object F(DownloadEsHelper downloadEsHelper, String str, boolean z10, Continuation continuation, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return downloadEsHelper.E(str, z10, continuation);
    }

    private final v0 L() {
        return (v0) this.f57213k.getValue();
    }

    public static Object O(DownloadEsHelper downloadEsHelper, boolean z10, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return downloadEsHelper.N(z10, continuation);
    }

    public static final DownloadEsHelper U() {
        return new DownloadEsHelper();
    }

    private final void V(String str, DownloadBean downloadBean) {
        DownloadBean downloadBean2 = (DownloadBean) this.f57207e.get(str);
        if ((downloadBean2 != null ? downloadBean2.getResolution() : 0) < downloadBean.getResolution()) {
            this.f57207e.put(str + downloadBean.getSe() + (downloadBean2 != null ? Integer.valueOf(downloadBean2.getEp()) : null), downloadBean);
        }
    }

    private final void W(String str, DownloadBean downloadBean) {
        this.f57208f.put(str, downloadBean);
    }

    public static final v0 a0() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).y1();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00af  */
    /* JADX WARN: Code duplicated, block: B:50:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:52:0x0100  */
    /* JADX WARN: Code duplicated, block: B:56:0x0110 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object j(DownloadBean downloadBean, Continuation continuation) {
        DownloadEsHelper$checkSubtitle$1 downloadEsHelper$checkSubtitle$1;
        List<SubtitleBean> list;
        List list2;
        String postId;
        v0 v0VarL;
        if (continuation instanceof DownloadEsHelper$checkSubtitle$1) {
            downloadEsHelper$checkSubtitle$1 = (DownloadEsHelper$checkSubtitle$1) continuation;
            int i10 = downloadEsHelper$checkSubtitle$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$checkSubtitle$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$checkSubtitle$1 = new DownloadEsHelper$checkSubtitle$1(this, continuation);
            }
        } else {
            downloadEsHelper$checkSubtitle$1 = new DownloadEsHelper$checkSubtitle$1(this, continuation);
        }
        Object objD = downloadEsHelper$checkSubtitle$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$checkSubtitle$1.label;
        if (i11 == 0) {
            ResultKt.b(objD);
            if (!downloadBean.getSubtitleList().isEmpty()) {
                return Unit.f64096a;
            }
            list = null;
            if (downloadBean.getSubjectId() != null) {
                if (!downloadBean.isSeries()) {
                    v0 v0VarL2 = L();
                    if (v0VarL2 != null) {
                        String subjectId = downloadBean.getSubjectId();
                        Intrinsics.e(subjectId);
                        downloadEsHelper$checkSubtitle$1.L$0 = downloadBean;
                        downloadEsHelper$checkSubtitle$1.label = 2;
                        objD = v0VarL2.d(subjectId, downloadEsHelper$checkSubtitle$1);
                        if (objD == objF) {
                            return objF;
                        }
                        list = (List) objD;
                    }
                    return Unit.f64096a;
                }
                v0 v0VarL3 = L();
                if (v0VarL3 != null) {
                    String subjectId2 = downloadBean.getSubjectId();
                    Intrinsics.e(subjectId2);
                    int ep2 = downloadBean.getEp();
                    int se2 = downloadBean.getSe();
                    downloadEsHelper$checkSubtitle$1.L$0 = downloadBean;
                    downloadEsHelper$checkSubtitle$1.label = 1;
                    objD = v0VarL3.e(subjectId2, ep2, se2, downloadEsHelper$checkSubtitle$1);
                    if (objD == objF) {
                        return objF;
                    }
                    list = (List) objD;
                }
                return Unit.f64096a;
            }
            list2 = list;
            if (list2 != null) {
                postId = downloadBean.getPostId();
                if (postId != null) {
                    downloadEsHelper$checkSubtitle$1.L$0 = downloadBean;
                    downloadEsHelper$checkSubtitle$1.label = 3;
                    objD = v0VarL.f(postId, downloadEsHelper$checkSubtitle$1);
                    if (objD == objF) {
                        return objF;
                    }
                }
            } else {
                postId = downloadBean.getPostId();
                if (postId != null) {
                    downloadEsHelper$checkSubtitle$1.L$0 = downloadBean;
                    downloadEsHelper$checkSubtitle$1.label = 3;
                    objD = v0VarL.f(postId, downloadEsHelper$checkSubtitle$1);
                    if (objD == objF) {
                        return objF;
                    }
                }
            }
            return Unit.f64096a;
        }
        if (i11 == 1) {
            downloadBean = (DownloadBean) downloadEsHelper$checkSubtitle$1.L$0;
            ResultKt.b(objD);
            list = (List) objD;
            list2 = list;
            if (list2 != null) {
                postId = downloadBean.getPostId();
                if (postId != null) {
                    downloadEsHelper$checkSubtitle$1.L$0 = downloadBean;
                    downloadEsHelper$checkSubtitle$1.label = 3;
                    objD = v0VarL.f(postId, downloadEsHelper$checkSubtitle$1);
                    if (objD == objF) {
                        return objF;
                    }
                }
            } else {
                postId = downloadBean.getPostId();
                if (postId != null) {
                    downloadEsHelper$checkSubtitle$1.L$0 = downloadBean;
                    downloadEsHelper$checkSubtitle$1.label = 3;
                    objD = v0VarL.f(postId, downloadEsHelper$checkSubtitle$1);
                    if (objD == objF) {
                        return objF;
                    }
                }
            }
            return Unit.f64096a;
        }
        if (i11 == 2) {
            downloadBean = (DownloadBean) downloadEsHelper$checkSubtitle$1.L$0;
            ResultKt.b(objD);
            list = (List) objD;
            list2 = list;
            if (list2 != null || list2.isEmpty()) {
                postId = downloadBean.getPostId();
                if (postId != null && (v0VarL = L()) != null) {
                    downloadEsHelper$checkSubtitle$1.L$0 = downloadBean;
                    downloadEsHelper$checkSubtitle$1.label = 3;
                    objD = v0VarL.f(postId, downloadEsHelper$checkSubtitle$1);
                    if (objD == objF) {
                        return objF;
                    }
                }
            } else {
                for (SubtitleBean subtitleBean : list) {
                    if (this.f57204b.contains(subtitleBean.getResourceId())) {
                        List<SubtitleBean> subtitleList = downloadBean.getSubtitleList();
                        Object obj = this.f57204b.get(subtitleBean.getResourceId());
                        Intrinsics.e(obj);
                        subtitleList.add(obj);
                    } else {
                        this.f57204b.put(subtitleBean.getResourceId(), subtitleBean);
                        downloadBean.getSubtitleList().add(subtitleBean);
                    }
                }
            }
            return Unit.f64096a;
        }
        if (i11 != 3) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        downloadBean = (DownloadBean) downloadEsHelper$checkSubtitle$1.L$0;
        ResultKt.b(objD);
        List<SubtitleBean> list3 = (List) objD;
        if (list3 != null) {
            for (SubtitleBean subtitleBean2 : list3) {
                if (this.f57204b.contains(subtitleBean2.getResourceId())) {
                    List<SubtitleBean> subtitleList2 = downloadBean.getSubtitleList();
                    Object obj2 = this.f57204b.get(subtitleBean2.getResourceId());
                    Intrinsics.e(obj2);
                    subtitleList2.add(obj2);
                } else {
                    this.f57204b.put(subtitleBean2.getResourceId(), subtitleBean2);
                    downloadBean.getSubtitleList().add(subtitleBean2);
                }
            }
        }
        return Unit.f64096a;
    }

    public static final a1 j0() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).D1();
        }
        return null;
    }

    public static final ui.c n() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).o1();
        }
        return null;
    }

    private final ui.c r() {
        return (ui.c) this.f57212j.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x008b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x008d A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:14:0x0033, B:46:0x0094, B:48:0x009a, B:50:0x00a8, B:51:0x00ac, B:53:0x00b2, B:55:0x00ba, B:56:0x00be, B:70:0x0111, B:57:0x00cb, B:59:0x00d1, B:60:0x00ed, B:62:0x00f3, B:63:0x00f6, B:65:0x00fc, B:66:0x00ff, B:68:0x0107, B:69:0x010b, B:21:0x0044, B:40:0x0080, B:41:0x0083, B:45:0x008d, B:24:0x004a, B:34:0x006b, B:27:0x0051, B:29:0x005a, B:31:0x0060, B:35:0x006f, B:37:0x0075), top: B:77:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:83:? A[RETURN, SYNTHETIC] */
    public final Object A(boolean z10, Continuation continuation) {
        DownloadEsHelper$getListComplete$1 downloadEsHelper$getListComplete$1;
        List list;
        ArrayList arrayList;
        Iterator it;
        List list2;
        if (continuation instanceof DownloadEsHelper$getListComplete$1) {
            downloadEsHelper$getListComplete$1 = (DownloadEsHelper$getListComplete$1) continuation;
            int i10 = downloadEsHelper$getListComplete$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getListComplete$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getListComplete$1 = new DownloadEsHelper$getListComplete$1(this, continuation);
            }
        } else {
            downloadEsHelper$getListComplete$1 = new DownloadEsHelper$getListComplete$1(this, continuation);
        }
        Object objG = downloadEsHelper$getListComplete$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getListComplete$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objG);
                String strD = ij.o.f62115a.d();
                list = null;
                if (strD != null) {
                    ui.c cVarR = r();
                    if (cVarR != null) {
                        downloadEsHelper$getListComplete$1.Z$0 = z10;
                        downloadEsHelper$getListComplete$1.label = 1;
                        objG = cVarR.s(strD, downloadEsHelper$getListComplete$1);
                        if (objG == objF) {
                            return objF;
                        }
                        list = (List) objG;
                    }
                } else {
                    ui.c cVarR2 = r();
                    if (cVarR2 != null) {
                        downloadEsHelper$getListComplete$1.Z$0 = z10;
                        downloadEsHelper$getListComplete$1.label = 2;
                        objG = cVarR2.g(downloadEsHelper$getListComplete$1);
                        if (objG == objF) {
                            return objF;
                        }
                        list = (List) objG;
                    }
                }
                arrayList = new ArrayList();
                if (z10) {
                    return list;
                }
                if (list == null) {
                    return arrayList;
                }
                it = list.iterator();
                list2 = arrayList;
            } else if (i11 == 1) {
                z10 = downloadEsHelper$getListComplete$1.Z$0;
                ResultKt.b(objG);
                list = (List) objG;
                arrayList = new ArrayList();
                if (z10) {
                    return list;
                }
                if (list == null) {
                    return arrayList;
                }
                it = list.iterator();
                list2 = arrayList;
            } else if (i11 == 2) {
                z10 = downloadEsHelper$getListComplete$1.Z$0;
                ResultKt.b(objG);
                list = (List) objG;
                arrayList = new ArrayList();
                if (z10) {
                    return list;
                }
                if (list == null) {
                    return arrayList;
                }
                it = list.iterator();
                list2 = arrayList;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) downloadEsHelper$getListComplete$1.L$1;
                list2 = (List) downloadEsHelper$getListComplete$1.L$0;
                ResultKt.b(objG);
            }
            while (it.hasNext()) {
                DownloadBean downloadBean = (DownloadBean) it.next();
                ConcurrentHashMap concurrentHashMap = this.f57203a;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                    String resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    Object obj = concurrentHashMap2.get(resourceId2);
                    Intrinsics.e(obj);
                    downloadBean = (DownloadBean) obj;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    String subjectId = downloadBean.getSubjectId();
                    if (subjectId != null) {
                        V(subjectId, downloadBean);
                    }
                    String ugcVideoId = downloadBean.getUgcVideoId();
                    if (ugcVideoId != null) {
                        W(ugcVideoId, downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                    String resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    concurrentHashMap3.put(resourceId3, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getListComplete$1.L$0 = list2;
                downloadEsHelper$getListComplete$1.L$1 = it;
                downloadEsHelper$getListComplete$1.label = 3;
                if (j(downloadBean, downloadEsHelper$getListComplete$1) == objF) {
                    return objF;
                }
            }
            return list2;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0082 A[Catch: all -> 0x0037, TryCatch #0 {all -> 0x0037, blocks: (B:14:0x0033, B:41:0x0089, B:43:0x008f, B:45:0x009d, B:46:0x00a1, B:48:0x00a7, B:50:0x00af, B:51:0x00b3, B:65:0x0104, B:52:0x00be, B:54:0x00c4, B:55:0x00e0, B:57:0x00e6, B:58:0x00e9, B:60:0x00ef, B:61:0x00f2, B:63:0x00fa, B:64:0x00fe, B:20:0x0042, B:37:0x0078, B:38:0x007b, B:40:0x0082, B:21:0x0046, B:31:0x0065, B:24:0x004d, B:26:0x0056, B:28:0x005c, B:32:0x0069, B:34:0x006f), top: B:72:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:78:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object C(Continuation continuation) {
        DownloadEsHelper$getListUnComplete$1 downloadEsHelper$getListUnComplete$1;
        List list;
        ArrayList arrayList;
        Iterator it;
        List list2;
        if (continuation instanceof DownloadEsHelper$getListUnComplete$1) {
            downloadEsHelper$getListUnComplete$1 = (DownloadEsHelper$getListUnComplete$1) continuation;
            int i10 = downloadEsHelper$getListUnComplete$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getListUnComplete$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getListUnComplete$1 = new DownloadEsHelper$getListUnComplete$1(this, continuation);
            }
        } else {
            downloadEsHelper$getListUnComplete$1 = new DownloadEsHelper$getListUnComplete$1(this, continuation);
        }
        Object objK = downloadEsHelper$getListUnComplete$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getListUnComplete$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objK);
                String strD = ij.o.f62115a.d();
                list = null;
                if (strD != null) {
                    ui.c cVarR = r();
                    if (cVarR != null) {
                        downloadEsHelper$getListUnComplete$1.label = 1;
                        objK = cVarR.u(strD, downloadEsHelper$getListUnComplete$1);
                        if (objK == objF) {
                            return objF;
                        }
                        list = (List) objK;
                    }
                } else {
                    ui.c cVarR2 = r();
                    if (cVarR2 != null) {
                        downloadEsHelper$getListUnComplete$1.label = 2;
                        objK = cVarR2.k(downloadEsHelper$getListUnComplete$1);
                        if (objK == objF) {
                            return objF;
                        }
                        list = (List) objK;
                    }
                }
                arrayList = new ArrayList();
                if (list == null) {
                    return arrayList;
                }
                it = list.iterator();
                list2 = arrayList;
            } else if (i11 == 1) {
                ResultKt.b(objK);
                list = (List) objK;
                arrayList = new ArrayList();
                if (list == null) {
                    return arrayList;
                }
                it = list.iterator();
                list2 = arrayList;
            } else if (i11 == 2) {
                ResultKt.b(objK);
                list = (List) objK;
                arrayList = new ArrayList();
                if (list == null) {
                    return arrayList;
                }
                it = list.iterator();
                list2 = arrayList;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) downloadEsHelper$getListUnComplete$1.L$1;
                list2 = (List) downloadEsHelper$getListUnComplete$1.L$0;
                ResultKt.b(objK);
            }
            while (it.hasNext()) {
                DownloadBean downloadBean = (DownloadBean) it.next();
                ConcurrentHashMap concurrentHashMap = this.f57203a;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                    String resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    Object obj = concurrentHashMap2.get(resourceId2);
                    Intrinsics.e(obj);
                    list2.add(obj);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    String subjectId = downloadBean.getSubjectId();
                    if (subjectId != null) {
                        V(subjectId, downloadBean);
                    }
                    String ugcVideoId = downloadBean.getUgcVideoId();
                    if (ugcVideoId != null) {
                        W(ugcVideoId, downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                    String resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    concurrentHashMap3.put(resourceId3, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getListUnComplete$1.L$0 = list2;
                downloadEsHelper$getListUnComplete$1.L$1 = it;
                downloadEsHelper$getListUnComplete$1.label = 3;
                if (j(downloadBean, downloadEsHelper$getListUnComplete$1) == objF) {
                    return objF;
                }
            }
            return list2;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    public final Object D(Continuation continuation) {
        ui.c cVarR = r();
        if (cVarR != null) {
            return cVarR.B(continuation);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0067  */
    /* JADX WARN: Code duplicated, block: B:29:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object E(String str, boolean z10, Continuation continuation) {
        DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3 downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;
        String str2;
        DownloadBean downloadBean;
        if (continuation instanceof DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3) {
            downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3 = (DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3) continuation;
            int i10 = downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3 = new DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3(this, continuation);
            }
        } else {
            downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3 = new DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3(this, continuation);
        }
        Object objF = downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3.result;
        Object objF2 = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3.label;
        if (i11 == 0) {
            ResultKt.b(objF);
            if (this.f57203a.containsKey(str) && !z10) {
                return (DownloadBean) this.f57203a.get(str);
            }
            ui.c cVarR = r();
            if (cVarR != null) {
                downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3.L$0 = str;
                downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3.label = 1;
                objF = cVarR.F(str, downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3);
                if (objF == objF2) {
                    return objF2;
                }
            } else {
                str2 = str;
                downloadBean = null;
            }
            if (downloadBean != null) {
                return downloadBean;
            }
            this.f57203a.put(str2, downloadBean);
            return downloadBean;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        str = (String) downloadEsHelper$getOutsideVideoHistoricalPlayRecord$3.L$0;
        ResultKt.b(objF);
        str2 = str;
        downloadBean = (DownloadBean) objF;
        if (downloadBean != null) {
            return downloadBean;
        }
        this.f57203a.put(str2, downloadBean);
        return downloadBean;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x006e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007c A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x008e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009f A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a5 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c7 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d0 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00db A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[LOOP:0: B:32:0x0068->B:68:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x00a5, please report this as an issue */
    public final Object G(int i10, Continuation continuation) {
        DownloadEsHelper$getRecentlyByNum$1 downloadEsHelper$getRecentlyByNum$1;
        List list;
        ArrayList arrayList;
        List list2;
        Iterator it;
        DownloadBean downloadBean;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String subjectId;
        String ugcVideoId;
        String resourceId2;
        String resourceId3;
        if (continuation instanceof DownloadEsHelper$getRecentlyByNum$1) {
            downloadEsHelper$getRecentlyByNum$1 = (DownloadEsHelper$getRecentlyByNum$1) continuation;
            int i11 = downloadEsHelper$getRecentlyByNum$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getRecentlyByNum$1.label = i11 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getRecentlyByNum$1 = new DownloadEsHelper$getRecentlyByNum$1(this, continuation);
            }
        } else {
            downloadEsHelper$getRecentlyByNum$1 = new DownloadEsHelper$getRecentlyByNum$1(this, continuation);
        }
        Object objP = downloadEsHelper$getRecentlyByNum$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = downloadEsHelper$getRecentlyByNum$1.label;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    ResultKt.b(objP);
                } else {
                    if (i12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) downloadEsHelper$getRecentlyByNum$1.L$1;
                    list2 = (List) downloadEsHelper$getRecentlyByNum$1.L$0;
                    ResultKt.b(objP);
                }
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                        resourceId3 = downloadBean.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean.getUrl();
                        }
                        Object obj = concurrentHashMap2.get(resourceId3);
                        Intrinsics.e(obj);
                        downloadBean = (DownloadBean) obj;
                        list2.add(downloadBean);
                    } else {
                        if (downloadBean.isShotTV()) {
                            this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                        }
                        subjectId = downloadBean.getSubjectId();
                        if (subjectId != null) {
                            V(subjectId, downloadBean);
                        }
                        ugcVideoId = downloadBean.getUgcVideoId();
                        if (ugcVideoId != null) {
                            W(ugcVideoId, downloadBean);
                        }
                        ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                        resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean.getUrl();
                        }
                        concurrentHashMap3.put(resourceId2, downloadBean);
                        list2.add(downloadBean);
                    }
                    downloadEsHelper$getRecentlyByNum$1.L$0 = list2;
                    downloadEsHelper$getRecentlyByNum$1.L$1 = it;
                    downloadEsHelper$getRecentlyByNum$1.label = 2;
                    if (j(downloadBean, downloadEsHelper$getRecentlyByNum$1) == objF) {
                        return objF;
                    }
                }
                return list2;
            }
            ResultKt.b(objP);
            ui.c cVarR = r();
            if (cVarR != null) {
                downloadEsHelper$getRecentlyByNum$1.label = 1;
                objP = cVarR.p(i10, downloadEsHelper$getRecentlyByNum$1);
                if (objP == objF) {
                    return objF;
                }
            } else {
                list = null;
            }
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap4 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj2 = concurrentHashMap4.get(resourceId3);
                    Intrinsics.e(obj2);
                    downloadBean = (DownloadBean) obj2;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    subjectId = downloadBean.getSubjectId();
                    if (subjectId != null) {
                        V(subjectId, downloadBean);
                    }
                    ugcVideoId = downloadBean.getUgcVideoId();
                    if (ugcVideoId != null) {
                        W(ugcVideoId, downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap5 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap5.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getRecentlyByNum$1.L$0 = list2;
                downloadEsHelper$getRecentlyByNum$1.L$1 = it;
                downloadEsHelper$getRecentlyByNum$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getRecentlyByNum$1) == objF) {
                    return objF;
                }
            }
            return list2;
            list = (List) objP;
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap6 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj3 = concurrentHashMap6.get(resourceId3);
                    Intrinsics.e(obj3);
                    downloadBean = (DownloadBean) obj3;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    subjectId = downloadBean.getSubjectId();
                    if (subjectId != null) {
                        V(subjectId, downloadBean);
                    }
                    ugcVideoId = downloadBean.getUgcVideoId();
                    if (ugcVideoId != null) {
                        W(ugcVideoId, downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap7 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap7.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getRecentlyByNum$1.L$0 = list2;
                downloadEsHelper$getRecentlyByNum$1.L$1 = it;
                downloadEsHelper$getRecentlyByNum$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getRecentlyByNum$1) == objF) {
                    return objF;
                }
            }
            return list2;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x006e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007c A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x008e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009f A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a5 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c9 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:? A[LOOP:0: B:32:0x0068->B:62:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x00a5, please report this as an issue */
    public final Object H(String str, Continuation continuation) {
        DownloadEsHelper$getSeries$1 downloadEsHelper$getSeries$1;
        List list;
        ArrayList arrayList;
        List list2;
        Iterator it;
        DownloadBean downloadBean;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String resourceId2;
        String resourceId3;
        if (continuation instanceof DownloadEsHelper$getSeries$1) {
            downloadEsHelper$getSeries$1 = (DownloadEsHelper$getSeries$1) continuation;
            int i10 = downloadEsHelper$getSeries$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getSeries$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getSeries$1 = new DownloadEsHelper$getSeries$1(this, continuation);
            }
        } else {
            downloadEsHelper$getSeries$1 = new DownloadEsHelper$getSeries$1(this, continuation);
        }
        Object objC = downloadEsHelper$getSeries$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getSeries$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(objC);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) downloadEsHelper$getSeries$1.L$1;
                    list2 = (List) downloadEsHelper$getSeries$1.L$0;
                    ResultKt.b(objC);
                }
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                        resourceId3 = downloadBean.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean.getUrl();
                        }
                        Object obj = concurrentHashMap2.get(resourceId3);
                        Intrinsics.e(obj);
                        downloadBean = (DownloadBean) obj;
                        list2.add(downloadBean);
                    } else {
                        if (downloadBean.isShotTV()) {
                            this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                        }
                        ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                        resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean.getUrl();
                        }
                        concurrentHashMap3.put(resourceId2, downloadBean);
                        list2.add(downloadBean);
                    }
                    downloadEsHelper$getSeries$1.L$0 = list2;
                    downloadEsHelper$getSeries$1.L$1 = it;
                    downloadEsHelper$getSeries$1.label = 2;
                    if (j(downloadBean, downloadEsHelper$getSeries$1) == objF) {
                        return objF;
                    }
                }
                return list2;
            }
            ResultKt.b(objC);
            ui.c cVarR = r();
            if (cVarR != null) {
                downloadEsHelper$getSeries$1.label = 1;
                objC = cVarR.c(str, downloadEsHelper$getSeries$1);
                if (objC == objF) {
                    return objF;
                }
            } else {
                list = null;
            }
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap4 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj2 = concurrentHashMap4.get(resourceId3);
                    Intrinsics.e(obj2);
                    downloadBean = (DownloadBean) obj2;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap5 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap5.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getSeries$1.L$0 = list2;
                downloadEsHelper$getSeries$1.L$1 = it;
                downloadEsHelper$getSeries$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getSeries$1) == objF) {
                    return objF;
                }
            }
            return list2;
            list = (List) objC;
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap6 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj3 = concurrentHashMap6.get(resourceId3);
                    Intrinsics.e(obj3);
                    downloadBean = (DownloadBean) obj3;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap7 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap7.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getSeries$1.L$0 = list2;
                downloadEsHelper$getSeries$1.L$1 = it;
                downloadEsHelper$getSeries$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getSeries$1) == objF) {
                    return objF;
                }
            }
            return list2;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x006e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007c A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x008e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009f A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a5 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c9 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:50:0x00d3, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c9, B:49:0x00cd, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:57:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:? A[LOOP:0: B:32:0x0068->B:62:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x00a5, please report this as an issue */
    public final Object I(String str, Continuation continuation) {
        DownloadEsHelper$getSeriesCompleted$1 downloadEsHelper$getSeriesCompleted$1;
        List list;
        ArrayList arrayList;
        List list2;
        Iterator it;
        DownloadBean downloadBean;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String resourceId2;
        String resourceId3;
        if (continuation instanceof DownloadEsHelper$getSeriesCompleted$1) {
            downloadEsHelper$getSeriesCompleted$1 = (DownloadEsHelper$getSeriesCompleted$1) continuation;
            int i10 = downloadEsHelper$getSeriesCompleted$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getSeriesCompleted$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getSeriesCompleted$1 = new DownloadEsHelper$getSeriesCompleted$1(this, continuation);
            }
        } else {
            downloadEsHelper$getSeriesCompleted$1 = new DownloadEsHelper$getSeriesCompleted$1(this, continuation);
        }
        Object objE = downloadEsHelper$getSeriesCompleted$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getSeriesCompleted$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(objE);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) downloadEsHelper$getSeriesCompleted$1.L$1;
                    list2 = (List) downloadEsHelper$getSeriesCompleted$1.L$0;
                    ResultKt.b(objE);
                }
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                        resourceId3 = downloadBean.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean.getUrl();
                        }
                        Object obj = concurrentHashMap2.get(resourceId3);
                        Intrinsics.e(obj);
                        downloadBean = (DownloadBean) obj;
                        list2.add(downloadBean);
                    } else {
                        if (downloadBean.isShotTV()) {
                            this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                        }
                        ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                        resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean.getUrl();
                        }
                        concurrentHashMap3.put(resourceId2, downloadBean);
                        list2.add(downloadBean);
                    }
                    downloadEsHelper$getSeriesCompleted$1.L$0 = list2;
                    downloadEsHelper$getSeriesCompleted$1.L$1 = it;
                    downloadEsHelper$getSeriesCompleted$1.label = 2;
                    if (j(downloadBean, downloadEsHelper$getSeriesCompleted$1) == objF) {
                        return objF;
                    }
                }
                return list2;
            }
            ResultKt.b(objE);
            ui.c cVarR = r();
            if (cVarR != null) {
                downloadEsHelper$getSeriesCompleted$1.label = 1;
                objE = cVarR.e(str, downloadEsHelper$getSeriesCompleted$1);
                if (objE == objF) {
                    return objF;
                }
            } else {
                list = null;
            }
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap4 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj2 = concurrentHashMap4.get(resourceId3);
                    Intrinsics.e(obj2);
                    downloadBean = (DownloadBean) obj2;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap5 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap5.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getSeriesCompleted$1.L$0 = list2;
                downloadEsHelper$getSeriesCompleted$1.L$1 = it;
                downloadEsHelper$getSeriesCompleted$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getSeriesCompleted$1) == objF) {
                    return objF;
                }
            }
            return list2;
            list = (List) objE;
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap6 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj3 = concurrentHashMap6.get(resourceId3);
                    Intrinsics.e(obj3);
                    downloadBean = (DownloadBean) obj3;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap7 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap7.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getSeriesCompleted$1.L$0 = list2;
                downloadEsHelper$getSeriesCompleted$1.L$1 = it;
                downloadEsHelper$getSeriesCompleted$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getSeriesCompleted$1) == objF) {
                    return objF;
                }
            }
            return list2;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object J(String str, int i10, int i11, Continuation continuation) {
        DownloadEsHelper$getSubjectDownloadBean$1 downloadEsHelper$getSubjectDownloadBean$1;
        if (continuation instanceof DownloadEsHelper$getSubjectDownloadBean$1) {
            downloadEsHelper$getSubjectDownloadBean$1 = (DownloadEsHelper$getSubjectDownloadBean$1) continuation;
            int i12 = downloadEsHelper$getSubjectDownloadBean$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getSubjectDownloadBean$1.label = i12 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getSubjectDownloadBean$1 = new DownloadEsHelper$getSubjectDownloadBean$1(this, continuation);
            }
        } else {
            downloadEsHelper$getSubjectDownloadBean$1 = new DownloadEsHelper$getSubjectDownloadBean$1(this, continuation);
        }
        Object objE = downloadEsHelper$getSubjectDownloadBean$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = downloadEsHelper$getSubjectDownloadBean$1.label;
        try {
            if (i13 == 0) {
                ResultKt.b(objE);
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$getSubjectDownloadBean$1.label = 1;
                    objE = cVarR.E(str, i10, i11, downloadEsHelper$getSubjectDownloadBean$1);
                    if (objE == objF) {
                        return objF;
                    }
                }
                return null;
            }
            if (i13 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objE);
            DownloadBean downloadBean = (DownloadBean) objE;
            if (downloadBean == null) {
                return null;
            }
            ConcurrentHashMap concurrentHashMap = this.f57203a;
            String resourceId = downloadBean.getResourceId();
            if (resourceId == null) {
                resourceId = downloadBean.getUrl();
            }
            if (concurrentHashMap.containsKey(resourceId)) {
                ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                return (DownloadBean) concurrentHashMap2.get(resourceId2);
            }
            ConcurrentHashMap concurrentHashMap3 = this.f57203a;
            String resourceId3 = downloadBean.getResourceId();
            if (resourceId3 == null) {
                resourceId3 = downloadBean.getUrl();
            }
            concurrentHashMap3.put(resourceId3, downloadBean);
            return downloadBean;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public final DownloadBean K(String subjectId, int i10, int i11) {
        Intrinsics.h(subjectId, "subjectId");
        return (DownloadBean) this.f57207e.get(subjectId + i10 + i11);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x006e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007c A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x008e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009f A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a5 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c7 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d0 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00db A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[LOOP:0: B:32:0x0068->B:68:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x00a5, please report this as an issue */
    public final Object M(Continuation continuation) {
        DownloadEsHelper$getTotalList$1 downloadEsHelper$getTotalList$1;
        List list;
        ArrayList arrayList;
        List list2;
        Iterator it;
        DownloadBean downloadBean;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String subjectId;
        String ugcVideoId;
        String resourceId2;
        String resourceId3;
        if (continuation instanceof DownloadEsHelper$getTotalList$1) {
            downloadEsHelper$getTotalList$1 = (DownloadEsHelper$getTotalList$1) continuation;
            int i10 = downloadEsHelper$getTotalList$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getTotalList$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getTotalList$1 = new DownloadEsHelper$getTotalList$1(this, continuation);
            }
        } else {
            downloadEsHelper$getTotalList$1 = new DownloadEsHelper$getTotalList$1(this, continuation);
        }
        Object objN = downloadEsHelper$getTotalList$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getTotalList$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(objN);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) downloadEsHelper$getTotalList$1.L$1;
                    list2 = (List) downloadEsHelper$getTotalList$1.L$0;
                    ResultKt.b(objN);
                }
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                        resourceId3 = downloadBean.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean.getUrl();
                        }
                        Object obj = concurrentHashMap2.get(resourceId3);
                        Intrinsics.e(obj);
                        downloadBean = (DownloadBean) obj;
                        list2.add(downloadBean);
                    } else {
                        if (downloadBean.isShotTV()) {
                            this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                        }
                        subjectId = downloadBean.getSubjectId();
                        if (subjectId != null) {
                            V(subjectId, downloadBean);
                        }
                        ugcVideoId = downloadBean.getUgcVideoId();
                        if (ugcVideoId != null) {
                            W(ugcVideoId, downloadBean);
                        }
                        ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                        resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean.getUrl();
                        }
                        concurrentHashMap3.put(resourceId2, downloadBean);
                        list2.add(downloadBean);
                    }
                    downloadEsHelper$getTotalList$1.L$0 = list2;
                    downloadEsHelper$getTotalList$1.L$1 = it;
                    downloadEsHelper$getTotalList$1.label = 2;
                    if (j(downloadBean, downloadEsHelper$getTotalList$1) == objF) {
                        return objF;
                    }
                }
                return list2;
            }
            ResultKt.b(objN);
            ui.c cVarR = r();
            if (cVarR != null) {
                downloadEsHelper$getTotalList$1.label = 1;
                objN = cVarR.n(downloadEsHelper$getTotalList$1);
                if (objN == objF) {
                    return objF;
                }
            } else {
                list = null;
            }
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap4 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj2 = concurrentHashMap4.get(resourceId3);
                    Intrinsics.e(obj2);
                    downloadBean = (DownloadBean) obj2;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    subjectId = downloadBean.getSubjectId();
                    if (subjectId != null) {
                        V(subjectId, downloadBean);
                    }
                    ugcVideoId = downloadBean.getUgcVideoId();
                    if (ugcVideoId != null) {
                        W(ugcVideoId, downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap5 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap5.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getTotalList$1.L$0 = list2;
                downloadEsHelper$getTotalList$1.L$1 = it;
                downloadEsHelper$getTotalList$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getTotalList$1) == objF) {
                    return objF;
                }
            }
            return list2;
            list = (List) objN;
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap6 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj3 = concurrentHashMap6.get(resourceId3);
                    Intrinsics.e(obj3);
                    downloadBean = (DownloadBean) obj3;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    subjectId = downloadBean.getSubjectId();
                    if (subjectId != null) {
                        V(subjectId, downloadBean);
                    }
                    ugcVideoId = downloadBean.getUgcVideoId();
                    if (ugcVideoId != null) {
                        W(ugcVideoId, downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap7 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap7.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getTotalList$1.L$0 = list2;
                downloadEsHelper$getTotalList$1.L$1 = it;
                downloadEsHelper$getTotalList$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getTotalList$1) == objF) {
                    return objF;
                }
            }
            return list2;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x006d A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:12:0x0030, B:25:0x0062, B:30:0x006d, B:31:0x0073, B:33:0x0079, B:35:0x0087, B:36:0x008b, B:39:0x0093, B:41:0x009b, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:47:0x00b3, B:48:0x00b7, B:49:0x00c2, B:50:0x00c4), top: B:54:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:33:0x0079 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:12:0x0030, B:25:0x0062, B:30:0x006d, B:31:0x0073, B:33:0x0079, B:35:0x0087, B:36:0x008b, B:39:0x0093, B:41:0x009b, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:47:0x00b3, B:48:0x00b7, B:49:0x00c2, B:50:0x00c4), top: B:54:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0087 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:12:0x0030, B:25:0x0062, B:30:0x006d, B:31:0x0073, B:33:0x0079, B:35:0x0087, B:36:0x008b, B:39:0x0093, B:41:0x009b, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:47:0x00b3, B:48:0x00b7, B:49:0x00c2, B:50:0x00c4), top: B:54:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00b3 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:12:0x0030, B:25:0x0062, B:30:0x006d, B:31:0x0073, B:33:0x0079, B:35:0x0087, B:36:0x008b, B:39:0x0093, B:41:0x009b, B:42:0x009f, B:44:0x00a7, B:45:0x00ab, B:47:0x00b3, B:48:0x00b7, B:49:0x00c2, B:50:0x00c4), top: B:54:0x0030 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object N(boolean z10, Continuation continuation) {
        DownloadEsHelper$getTransferReceivedList$1 downloadEsHelper$getTransferReceivedList$1;
        List list;
        DownloadEsHelper downloadEsHelper;
        List<DownloadBean> list2;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String resourceId2;
        if (continuation instanceof DownloadEsHelper$getTransferReceivedList$1) {
            downloadEsHelper$getTransferReceivedList$1 = (DownloadEsHelper$getTransferReceivedList$1) continuation;
            int i10 = downloadEsHelper$getTransferReceivedList$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getTransferReceivedList$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getTransferReceivedList$1 = new DownloadEsHelper$getTransferReceivedList$1(this, continuation);
            }
        } else {
            downloadEsHelper$getTransferReceivedList$1 = new DownloadEsHelper$getTransferReceivedList$1(this, continuation);
        }
        Object obj = downloadEsHelper$getTransferReceivedList$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getTransferReceivedList$1.label;
        Unit unit = null;
        if (i11 == 0) {
            ResultKt.b(obj);
            ArrayList arrayList = new ArrayList();
            try {
                Result.Companion companion = Result.INSTANCE;
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$getTransferReceivedList$1.L$0 = arrayList;
                    downloadEsHelper$getTransferReceivedList$1.L$1 = this;
                    downloadEsHelper$getTransferReceivedList$1.Z$0 = z10;
                    downloadEsHelper$getTransferReceivedList$1.label = 1;
                    Object objJ = cVarR.j(downloadEsHelper$getTransferReceivedList$1);
                    if (objJ == objF) {
                        return objF;
                    }
                    downloadEsHelper = this;
                    list = arrayList;
                    obj = objJ;
                } else {
                    downloadEsHelper = this;
                    list = arrayList;
                    list2 = null;
                }
                if (list2 != null) {
                    for (DownloadBean downloadBean : list2) {
                        concurrentHashMap = downloadEsHelper.f57203a;
                        resourceId = downloadBean.getResourceId();
                        if (resourceId == null) {
                            resourceId = downloadBean.getUrl();
                        }
                        if (concurrentHashMap.containsKey(resourceId) || z10) {
                            ConcurrentHashMap concurrentHashMap2 = downloadEsHelper.f57203a;
                            resourceId2 = downloadBean.getResourceId();
                            if (resourceId2 == null) {
                                resourceId2 = downloadBean.getUrl();
                            }
                            concurrentHashMap2.put(resourceId2, downloadBean);
                            Boxing.a(list.add(downloadBean));
                        } else {
                            ConcurrentHashMap concurrentHashMap3 = downloadEsHelper.f57203a;
                            String resourceId3 = downloadBean.getResourceId();
                            if (resourceId3 == null) {
                                resourceId3 = downloadBean.getUrl();
                            }
                            DownloadBean downloadBean2 = (DownloadBean) concurrentHashMap3.get(resourceId3);
                            if (downloadBean2 != null) {
                                list.add(downloadBean2);
                            }
                        }
                    }
                    unit = Unit.f64096a;
                }
                Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                th = th2;
                list = arrayList;
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th));
            }
            return list;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        z10 = downloadEsHelper$getTransferReceivedList$1.Z$0;
        downloadEsHelper = (DownloadEsHelper) downloadEsHelper$getTransferReceivedList$1.L$1;
        list = (List) downloadEsHelper$getTransferReceivedList$1.L$0;
        try {
            ResultKt.b(obj);
        } catch (Throwable th3) {
            th = th3;
            Result.Companion companion3 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th));
        }
        list2 = (List) obj;
        if (list2 != null) {
            while (r8.hasNext()) {
                concurrentHashMap = downloadEsHelper.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                }
                ConcurrentHashMap concurrentHashMap4 = downloadEsHelper.f57203a;
                resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                concurrentHashMap4.put(resourceId2, downloadBean);
                Boxing.a(list.add(downloadBean));
            }
            unit = Unit.f64096a;
        }
        Result.m453constructorimpl(unit);
        return list;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:47:0x00b1, B:43:0x009f, B:45:0x00a7, B:46:0x00ab, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x006e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:47:0x00b1, B:43:0x009f, B:45:0x00a7, B:46:0x00ab, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007c A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:47:0x00b1, B:43:0x009f, B:45:0x00a7, B:46:0x00ab, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:47:0x00b1, B:43:0x009f, B:45:0x00a7, B:46:0x00ab, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x008e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:47:0x00b1, B:43:0x009f, B:45:0x00a7, B:46:0x00ab, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009f A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:47:0x00b1, B:43:0x009f, B:45:0x00a7, B:46:0x00ab, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a7 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:47:0x00b1, B:43:0x009f, B:45:0x00a7, B:46:0x00ab, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:? A[LOOP:0: B:32:0x0068->B:59:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object P(String str, Continuation continuation) {
        DownloadEsHelper$getUGCCollectionList$1 downloadEsHelper$getUGCCollectionList$1;
        List list;
        ArrayList arrayList;
        List list2;
        Iterator it;
        DownloadBean downloadBean;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String resourceId2;
        String resourceId3;
        if (continuation instanceof DownloadEsHelper$getUGCCollectionList$1) {
            downloadEsHelper$getUGCCollectionList$1 = (DownloadEsHelper$getUGCCollectionList$1) continuation;
            int i10 = downloadEsHelper$getUGCCollectionList$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getUGCCollectionList$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getUGCCollectionList$1 = new DownloadEsHelper$getUGCCollectionList$1(this, continuation);
            }
        } else {
            downloadEsHelper$getUGCCollectionList$1 = new DownloadEsHelper$getUGCCollectionList$1(this, continuation);
        }
        Object objZ = downloadEsHelper$getUGCCollectionList$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getUGCCollectionList$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(objZ);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) downloadEsHelper$getUGCCollectionList$1.L$1;
                    list2 = (List) downloadEsHelper$getUGCCollectionList$1.L$0;
                    ResultKt.b(objZ);
                }
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                        resourceId3 = downloadBean.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean.getUrl();
                        }
                        Object obj = concurrentHashMap2.get(resourceId3);
                        Intrinsics.e(obj);
                        downloadBean = (DownloadBean) obj;
                        list2.add(downloadBean);
                    } else {
                        ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                        resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean.getUrl();
                        }
                        concurrentHashMap3.put(resourceId2, downloadBean);
                        list2.add(downloadBean);
                    }
                    downloadEsHelper$getUGCCollectionList$1.L$0 = list2;
                    downloadEsHelper$getUGCCollectionList$1.L$1 = it;
                    downloadEsHelper$getUGCCollectionList$1.label = 2;
                    if (j(downloadBean, downloadEsHelper$getUGCCollectionList$1) == objF) {
                        return objF;
                    }
                }
                return list2;
            }
            ResultKt.b(objZ);
            ui.c cVarR = r();
            if (cVarR != null) {
                downloadEsHelper$getUGCCollectionList$1.label = 1;
                objZ = cVarR.z(str, downloadEsHelper$getUGCCollectionList$1);
                if (objZ == objF) {
                    return objF;
                }
            } else {
                list = null;
            }
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap4 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj2 = concurrentHashMap4.get(resourceId3);
                    Intrinsics.e(obj2);
                    downloadBean = (DownloadBean) obj2;
                    list2.add(downloadBean);
                } else {
                    ConcurrentHashMap concurrentHashMap5 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap5.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getUGCCollectionList$1.L$0 = list2;
                downloadEsHelper$getUGCCollectionList$1.L$1 = it;
                downloadEsHelper$getUGCCollectionList$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getUGCCollectionList$1) == objF) {
                    return objF;
                }
            }
            return list2;
            list = (List) objZ;
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap6 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj3 = concurrentHashMap6.get(resourceId3);
                    Intrinsics.e(obj3);
                    downloadBean = (DownloadBean) obj3;
                    list2.add(downloadBean);
                } else {
                    ConcurrentHashMap concurrentHashMap7 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap7.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getUGCCollectionList$1.L$0 = list2;
                downloadEsHelper$getUGCCollectionList$1.L$1 = it;
                downloadEsHelper$getUGCCollectionList$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getUGCCollectionList$1) == objF) {
                    return objF;
                }
            }
            return list2;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x006e  */
    /* JADX WARN: Code duplicated, block: B:40:0x006f A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:12:0x0029, B:37:0x006a, B:40:0x006f, B:41:0x007a, B:43:0x0080, B:45:0x008e, B:46:0x0092, B:48:0x0098, B:50:0x00a0, B:51:0x00a4, B:53:0x00ac, B:54:0x00b0, B:56:0x00b8, B:57:0x00bc, B:18:0x0038, B:26:0x004e, B:29:0x0054, B:32:0x005b, B:34:0x0061, B:21:0x003f, B:23:0x0045), top: B:62:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x0080 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:12:0x0029, B:37:0x006a, B:40:0x006f, B:41:0x007a, B:43:0x0080, B:45:0x008e, B:46:0x0092, B:48:0x0098, B:50:0x00a0, B:51:0x00a4, B:53:0x00ac, B:54:0x00b0, B:56:0x00b8, B:57:0x00bc, B:18:0x0038, B:26:0x004e, B:29:0x0054, B:32:0x005b, B:34:0x0061, B:21:0x003f, B:23:0x0045), top: B:62:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x008e A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:12:0x0029, B:37:0x006a, B:40:0x006f, B:41:0x007a, B:43:0x0080, B:45:0x008e, B:46:0x0092, B:48:0x0098, B:50:0x00a0, B:51:0x00a4, B:53:0x00ac, B:54:0x00b0, B:56:0x00b8, B:57:0x00bc, B:18:0x0038, B:26:0x004e, B:29:0x0054, B:32:0x005b, B:34:0x0061, B:21:0x003f, B:23:0x0045), top: B:62:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a0 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:12:0x0029, B:37:0x006a, B:40:0x006f, B:41:0x007a, B:43:0x0080, B:45:0x008e, B:46:0x0092, B:48:0x0098, B:50:0x00a0, B:51:0x00a4, B:53:0x00ac, B:54:0x00b0, B:56:0x00b8, B:57:0x00bc, B:18:0x0038, B:26:0x004e, B:29:0x0054, B:32:0x005b, B:34:0x0061, B:21:0x003f, B:23:0x0045), top: B:62:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x00b8 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:12:0x0029, B:37:0x006a, B:40:0x006f, B:41:0x007a, B:43:0x0080, B:45:0x008e, B:46:0x0092, B:48:0x0098, B:50:0x00a0, B:51:0x00a4, B:53:0x00ac, B:54:0x00b0, B:56:0x00b8, B:57:0x00bc, B:18:0x0038, B:26:0x004e, B:29:0x0054, B:32:0x005b, B:34:0x0061, B:21:0x003f, B:23:0x0045), top: B:62:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x00ac A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x007a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Q(String str, Continuation continuation) {
        DownloadEsHelper$getUGCCollectionListByResourceId$1 downloadEsHelper$getUGCCollectionListByResourceId$1;
        String ugcVideoCollectionId;
        ui.c cVarR;
        List<DownloadBean> list;
        ArrayList arrayList;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String resourceId2;
        DownloadBean downloadBean;
        String resourceId3;
        if (continuation instanceof DownloadEsHelper$getUGCCollectionListByResourceId$1) {
            downloadEsHelper$getUGCCollectionListByResourceId$1 = (DownloadEsHelper$getUGCCollectionListByResourceId$1) continuation;
            int i10 = downloadEsHelper$getUGCCollectionListByResourceId$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getUGCCollectionListByResourceId$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getUGCCollectionListByResourceId$1 = new DownloadEsHelper$getUGCCollectionListByResourceId$1(this, continuation);
            }
        } else {
            downloadEsHelper$getUGCCollectionListByResourceId$1 = new DownloadEsHelper$getUGCCollectionListByResourceId$1(this, continuation);
        }
        Object objD = downloadEsHelper$getUGCCollectionListByResourceId$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getUGCCollectionListByResourceId$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objD);
                ui.c cVarR2 = r();
                if (cVarR2 != null) {
                    downloadEsHelper$getUGCCollectionListByResourceId$1.label = 1;
                    objD = cVarR2.d(str, downloadEsHelper$getUGCCollectionListByResourceId$1);
                    if (objD == objF) {
                        return objF;
                    }
                }
                return null;
            }
            if (i11 == 1) {
                ResultKt.b(objD);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(objD);
            }
            list = (List) objD;
            if (list != null) {
                return null;
            }
            arrayList = new ArrayList();
            for (DownloadBean downloadBean2 : list) {
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean2.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean2.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                    resourceId2 = downloadBean2.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean2.getUrl();
                    }
                    downloadBean = (DownloadBean) concurrentHashMap2.get(resourceId2);
                    if (downloadBean != null) {
                        arrayList.add(downloadBean);
                    }
                } else {
                    ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                    resourceId3 = downloadBean2.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean2.getUrl();
                    }
                    concurrentHashMap3.put(resourceId3, downloadBean2);
                    Boxing.a(arrayList.add(downloadBean2));
                }
            }
            return arrayList;
            DownloadBean downloadBean3 = (DownloadBean) objD;
            if (downloadBean3 != null && (ugcVideoCollectionId = downloadBean3.getUgcVideoCollectionId()) != null && (cVarR = r()) != null) {
                downloadEsHelper$getUGCCollectionListByResourceId$1.label = 2;
                objD = cVarR.z(ugcVideoCollectionId, downloadEsHelper$getUGCCollectionListByResourceId$1);
                if (objD == objF) {
                    return objF;
                }
                list = (List) objD;
                if (list != null) {
                    arrayList = new ArrayList();
                    while (r8.hasNext()) {
                        concurrentHashMap = this.f57203a;
                        resourceId = downloadBean2.getResourceId();
                        if (resourceId == null) {
                            resourceId = downloadBean2.getUrl();
                        }
                        if (concurrentHashMap.containsKey(resourceId)) {
                            ConcurrentHashMap concurrentHashMap4 = this.f57203a;
                            resourceId2 = downloadBean2.getResourceId();
                            if (resourceId2 == null) {
                                resourceId2 = downloadBean2.getUrl();
                            }
                            downloadBean = (DownloadBean) concurrentHashMap4.get(resourceId2);
                            if (downloadBean != null) {
                                arrayList.add(downloadBean);
                            }
                        } else {
                            ConcurrentHashMap concurrentHashMap5 = this.f57203a;
                            resourceId3 = downloadBean2.getResourceId();
                            if (resourceId3 == null) {
                                resourceId3 = downloadBean2.getUrl();
                            }
                            concurrentHashMap5.put(resourceId3, downloadBean2);
                            Boxing.a(arrayList.add(downloadBean2));
                        }
                    }
                    return arrayList;
                }
            }
            return null;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object R(String str, Continuation continuation) {
        DownloadEsHelper$getUGCVideoDownloadBean$1 downloadEsHelper$getUGCVideoDownloadBean$1;
        if (continuation instanceof DownloadEsHelper$getUGCVideoDownloadBean$1) {
            downloadEsHelper$getUGCVideoDownloadBean$1 = (DownloadEsHelper$getUGCVideoDownloadBean$1) continuation;
            int i10 = downloadEsHelper$getUGCVideoDownloadBean$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getUGCVideoDownloadBean$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getUGCVideoDownloadBean$1 = new DownloadEsHelper$getUGCVideoDownloadBean$1(this, continuation);
            }
        } else {
            downloadEsHelper$getUGCVideoDownloadBean$1 = new DownloadEsHelper$getUGCVideoDownloadBean$1(this, continuation);
        }
        Object objI = downloadEsHelper$getUGCVideoDownloadBean$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getUGCVideoDownloadBean$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objI);
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$getUGCVideoDownloadBean$1.label = 1;
                    objI = cVarR.i(str, downloadEsHelper$getUGCVideoDownloadBean$1);
                    if (objI == objF) {
                        return objF;
                    }
                }
                return null;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objI);
            DownloadBean downloadBean = (DownloadBean) objI;
            if (downloadBean == null) {
                return null;
            }
            ConcurrentHashMap concurrentHashMap = this.f57203a;
            String resourceId = downloadBean.getResourceId();
            if (resourceId == null) {
                resourceId = downloadBean.getUrl();
            }
            if (concurrentHashMap.containsKey(resourceId)) {
                ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                return (DownloadBean) concurrentHashMap2.get(resourceId2);
            }
            ConcurrentHashMap concurrentHashMap3 = this.f57203a;
            String resourceId3 = downloadBean.getResourceId();
            if (resourceId3 == null) {
                resourceId3 = downloadBean.getUrl();
            }
            concurrentHashMap3.put(resourceId3, downloadBean);
            return downloadBean;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public final DownloadBean S(String ugcVideoId) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        return (DownloadBean) this.f57208f.get(ugcVideoId);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object T(DownloadBean downloadBean, Continuation continuation) {
        DownloadEsHelper$insert$1 downloadEsHelper$insert$1;
        if (continuation instanceof DownloadEsHelper$insert$1) {
            downloadEsHelper$insert$1 = (DownloadEsHelper$insert$1) continuation;
            int i10 = downloadEsHelper$insert$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$insert$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$insert$1 = new DownloadEsHelper$insert$1(this, continuation);
            }
        } else {
            downloadEsHelper$insert$1 = new DownloadEsHelper$insert$1(this, continuation);
        }
        Object obj = downloadEsHelper$insert$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$insert$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                if (downloadBean.getStatus() == 7) {
                    return Unit.f64096a;
                }
                if (downloadBean.isShotTV()) {
                    this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                }
                ConcurrentHashMap concurrentHashMap = this.f57203a;
                String resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                concurrentHashMap.put(resourceId, downloadBean);
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$insert$1.label = 1;
                    if (cVarR.t(downloadBean, downloadEsHelper$insert$1) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    public final void X(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f57209g = str;
    }

    public final void Y(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f57210h = str;
    }

    public final void Z(int i10) {
        this.f57211i = i10;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0073 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:12:0x0028, B:44:0x00a3, B:19:0x0040, B:30:0x006d, B:32:0x0073, B:34:0x007f, B:39:0x008f, B:41:0x0095, B:22:0x0047, B:24:0x004e, B:26:0x0051, B:28:0x0059, B:29:0x005d), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x008b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x008c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0095 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:12:0x0028, B:44:0x00a3, B:19:0x0040, B:30:0x006d, B:32:0x0073, B:34:0x007f, B:39:0x008f, B:41:0x0095, B:22:0x0047, B:24:0x004e, B:26:0x0051, B:28:0x0059, B:29:0x005d), top: B:48:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00a2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x008f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x008c -> B:38:0x008d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object b0(com.transsion.baselib.db.download.DownloadBean r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.transsnet.downloader.manager.DownloadEsHelper$update$1
            if (r0 == 0) goto L13
            r0 = r9
            com.transsnet.downloader.manager.DownloadEsHelper$update$1 r0 = (com.transsnet.downloader.manager.DownloadEsHelper$update$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.transsnet.downloader.manager.DownloadEsHelper$update$1 r0 = new com.transsnet.downloader.manager.DownloadEsHelper$update$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L44
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L2d
            goto La3
        L2d:
            r8 = move-exception
            goto La6
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            java.lang.Object r8 = r0.L$1
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r2 = r0.L$0
            com.transsion.baselib.db.download.DownloadBean r2 = (com.transsion.baselib.db.download.DownloadBean) r2
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L2d
            goto L8d
        L44:
            kotlin.ResultKt.b(r9)
            int r9 = r8.getStatus()     // Catch: java.lang.Throwable -> L2d
            r2 = 7
            if (r9 != r2) goto L51
            kotlin.Unit r8 = kotlin.Unit.f64096a     // Catch: java.lang.Throwable -> L2d
            return r8
        L51:
            java.util.concurrent.ConcurrentHashMap r9 = r7.f57203a     // Catch: java.lang.Throwable -> L2d
            java.lang.String r2 = r8.getResourceId()     // Catch: java.lang.Throwable -> L2d
            if (r2 != 0) goto L5d
            java.lang.String r2 = r8.getUrl()     // Catch: java.lang.Throwable -> L2d
        L5d:
            r9.put(r2, r8)     // Catch: java.lang.Throwable -> L2d
            java.util.List r9 = r8.getSubtitleList()     // Catch: java.lang.Throwable -> L2d
            java.lang.Iterable r9 = (java.lang.Iterable) r9     // Catch: java.lang.Throwable -> L2d
            java.util.Iterator r9 = r9.iterator()     // Catch: java.lang.Throwable -> L2d
            r6 = r9
            r9 = r8
            r8 = r6
        L6d:
            boolean r2 = r8.hasNext()     // Catch: java.lang.Throwable -> L2d
            if (r2 == 0) goto L8f
            java.lang.Object r2 = r8.next()     // Catch: java.lang.Throwable -> L2d
            com.transsion.baselib.db.download.SubtitleBean r2 = (com.transsion.baselib.db.download.SubtitleBean) r2     // Catch: java.lang.Throwable -> L2d
            ui.v0 r5 = r7.L()     // Catch: java.lang.Throwable -> L2d
            if (r5 == 0) goto L6d
            r0.L$0 = r9     // Catch: java.lang.Throwable -> L2d
            r0.L$1 = r8     // Catch: java.lang.Throwable -> L2d
            r0.label = r4     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r2 = r5.b(r2, r0)     // Catch: java.lang.Throwable -> L2d
            if (r2 != r1) goto L8c
            return r1
        L8c:
            r2 = r9
        L8d:
            r9 = r2
            goto L6d
        L8f:
            ui.c r8 = r7.r()     // Catch: java.lang.Throwable -> L2d
            if (r8 == 0) goto La3
            r2 = 0
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L2d
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L2d
            r0.label = r3     // Catch: java.lang.Throwable -> L2d
            java.lang.Object r8 = r8.y(r9, r0)     // Catch: java.lang.Throwable -> L2d
            if (r8 != r1) goto La3
            return r1
        La3:
            kotlin.Unit r8 = kotlin.Unit.f64096a     // Catch: java.lang.Throwable -> L2d
            return r8
        La6:
            r8.printStackTrace()
            kotlin.Unit r8 = kotlin.Unit.f64096a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsnet.downloader.manager.DownloadEsHelper.b0(com.transsion.baselib.db.download.DownloadBean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c0(String str, long j10, Continuation continuation) {
        DownloadEsHelper$updateDuration$1 downloadEsHelper$updateDuration$1;
        if (continuation instanceof DownloadEsHelper$updateDuration$1) {
            downloadEsHelper$updateDuration$1 = (DownloadEsHelper$updateDuration$1) continuation;
            int i10 = downloadEsHelper$updateDuration$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$updateDuration$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$updateDuration$1 = new DownloadEsHelper$updateDuration$1(this, continuation);
            }
        } else {
            downloadEsHelper$updateDuration$1 = new DownloadEsHelper$updateDuration$1(this, continuation);
        }
        Object obj = downloadEsHelper$updateDuration$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$updateDuration$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                DownloadBean downloadBean = (DownloadBean) this.f57203a.get(str);
                if (downloadBean != null) {
                    downloadBean.setDuration(Boxing.e(j10));
                }
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$updateDuration$1.label = 1;
                    if (cVarR.C(str, j10, downloadEsHelper$updateDuration$1) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0078 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:65:0x010e, B:20:0x0045, B:60:0x00fb, B:62:0x0101, B:23:0x004c, B:32:0x006b, B:34:0x0072, B:36:0x0078, B:38:0x0086, B:39:0x008c, B:42:0x0096, B:44:0x009f, B:46:0x00a6, B:49:0x00d9, B:51:0x00de, B:53:0x00e4, B:55:0x00ea, B:26:0x0053, B:28:0x0059), top: B:69:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0086 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:65:0x010e, B:20:0x0045, B:60:0x00fb, B:62:0x0101, B:23:0x004c, B:32:0x006b, B:34:0x0072, B:36:0x0078, B:38:0x0086, B:39:0x008c, B:42:0x0096, B:44:0x009f, B:46:0x00a6, B:49:0x00d9, B:51:0x00de, B:53:0x00e4, B:55:0x00ea, B:26:0x0053, B:28:0x0059), top: B:69:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x0094  */
    /* JADX WARN: Code duplicated, block: B:44:0x009f A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:65:0x010e, B:20:0x0045, B:60:0x00fb, B:62:0x0101, B:23:0x004c, B:32:0x006b, B:34:0x0072, B:36:0x0078, B:38:0x0086, B:39:0x008c, B:42:0x0096, B:44:0x009f, B:46:0x00a6, B:49:0x00d9, B:51:0x00de, B:53:0x00e4, B:55:0x00ea, B:26:0x0053, B:28:0x0059), top: B:69:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d9 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:65:0x010e, B:20:0x0045, B:60:0x00fb, B:62:0x0101, B:23:0x004c, B:32:0x006b, B:34:0x0072, B:36:0x0078, B:38:0x0086, B:39:0x008c, B:42:0x0096, B:44:0x009f, B:46:0x00a6, B:49:0x00d9, B:51:0x00de, B:53:0x00e4, B:55:0x00ea, B:26:0x0053, B:28:0x0059), top: B:69:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00ea A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:65:0x010e, B:20:0x0045, B:60:0x00fb, B:62:0x0101, B:23:0x004c, B:32:0x006b, B:34:0x0072, B:36:0x0078, B:38:0x0086, B:39:0x008c, B:42:0x0096, B:44:0x009f, B:46:0x00a6, B:49:0x00d9, B:51:0x00de, B:53:0x00e4, B:55:0x00ea, B:26:0x0053, B:28:0x0059), top: B:69:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00f8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:60:0x00fb A[Catch: all -> 0x0034, PHI: r4 r8
      0x00fb: PHI (r4v7 java.lang.String) = (r4v2 java.lang.String), (r4v8 java.lang.String) binds: [B:54:0x00e8, B:59:0x00fa] A[DONT_GENERATE, DONT_INLINE]
      0x00fb: PHI (r8v6 long) = (r8v4 long), (r8v7 long) binds: [B:54:0x00e8, B:59:0x00fa] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:65:0x010e, B:20:0x0045, B:60:0x00fb, B:62:0x0101, B:23:0x004c, B:32:0x006b, B:34:0x0072, B:36:0x0078, B:38:0x0086, B:39:0x008c, B:42:0x0096, B:44:0x009f, B:46:0x00a6, B:49:0x00d9, B:51:0x00de, B:53:0x00e4, B:55:0x00ea, B:26:0x0053, B:28:0x0059), top: B:69:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0101 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x002f, B:65:0x010e, B:20:0x0045, B:60:0x00fb, B:62:0x0101, B:23:0x004c, B:32:0x006b, B:34:0x0072, B:36:0x0078, B:38:0x0086, B:39:0x008c, B:42:0x0096, B:44:0x009f, B:46:0x00a6, B:49:0x00d9, B:51:0x00de, B:53:0x00e4, B:55:0x00ea, B:26:0x0053, B:28:0x0059), top: B:69:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x010d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object d0(String str, int i10, long j10, Continuation continuation) {
        DownloadEsHelper$updateReadProgress$3 downloadEsHelper$updateReadProgress$3;
        long j11;
        DownloadBean downloadBean;
        long jCurrentTimeMillis;
        String resourceId;
        ui.c cVarR;
        long j12;
        DownloadBean downloadBean2;
        String resourceId2;
        Long duration;
        long jLongValue;
        ui.c cVarR2;
        if (continuation instanceof DownloadEsHelper$updateReadProgress$3) {
            downloadEsHelper$updateReadProgress$3 = (DownloadEsHelper$updateReadProgress$3) continuation;
            int i11 = downloadEsHelper$updateReadProgress$3.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$updateReadProgress$3.label = i11 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$updateReadProgress$3 = new DownloadEsHelper$updateReadProgress$3(this, continuation);
            }
        } else {
            downloadEsHelper$updateReadProgress$3 = new DownloadEsHelper$updateReadProgress$3(this, continuation);
        }
        Object objA = downloadEsHelper$updateReadProgress$3.result;
        Object objF = IntrinsicsKt.f();
        int i12 = downloadEsHelper$updateReadProgress$3.label;
        try {
            if (i12 != 0) {
                if (i12 == 1) {
                    j11 = downloadEsHelper$updateReadProgress$3.J$0;
                    ResultKt.b(objA);
                } else if (i12 == 2) {
                    j12 = downloadEsHelper$updateReadProgress$3.J$0;
                    resourceId = (String) downloadEsHelper$updateReadProgress$3.L$0;
                    ResultKt.b(objA);
                    j11 = j12;
                    cVarR2 = r();
                    if (cVarR2 != null) {
                        downloadEsHelper$updateReadProgress$3.L$0 = null;
                        downloadEsHelper$updateReadProgress$3.label = 3;
                        if (cVarR2.r(resourceId, j11, downloadEsHelper$updateReadProgress$3) == objF) {
                            return objF;
                        }
                    }
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(objA);
                }
                return Unit.f64096a;
            }
            ResultKt.b(objA);
            ui.c cVarR3 = r();
            if (cVarR3 != null) {
                downloadEsHelper$updateReadProgress$3.J$0 = j10;
                downloadEsHelper$updateReadProgress$3.label = 1;
                objA = cVarR3.A(str, i10, downloadEsHelper$updateReadProgress$3);
                if (objA == objF) {
                    return objF;
                }
                j11 = j10;
            } else {
                j11 = j10;
                downloadBean = null;
            }
            jCurrentTimeMillis = System.currentTimeMillis();
            if (downloadBean == null) {
                downloadBean2 = (DownloadBean) this.f57203a.get(downloadBean.getResourceId());
                if (downloadBean2 != null) {
                    downloadBean2.setReadProgress(j11);
                    downloadBean2.setLastPlayTimeStamp(jCurrentTimeMillis);
                }
                resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = "";
                }
                String str2 = resourceId2;
                duration = downloadBean.getDuration();
                if (duration != null) {
                    jLongValue = duration.longValue();
                } else {
                    jLongValue = 0;
                }
                LocalVideoEvent localVideoEvent = new LocalVideoEvent(str2, j11, jLongValue, true, false, 16, null);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = LocalVideoEvent.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, localVideoEvent, 0L);
            }
            if (downloadBean != null) {
                downloadBean.setReadProgress(j11);
            }
            if (downloadBean != null && (resourceId = downloadBean.getResourceId()) != null) {
                cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$updateReadProgress$3.L$0 = resourceId;
                    downloadEsHelper$updateReadProgress$3.J$0 = j11;
                    downloadEsHelper$updateReadProgress$3.label = 2;
                    if (cVarR.v(resourceId, jCurrentTimeMillis, downloadEsHelper$updateReadProgress$3) == objF) {
                        return objF;
                    }
                    j12 = j11;
                    j11 = j12;
                    cVarR2 = r();
                    if (cVarR2 != null) {
                        downloadEsHelper$updateReadProgress$3.L$0 = null;
                        downloadEsHelper$updateReadProgress$3.label = 3;
                        if (cVarR2.r(resourceId, j11, downloadEsHelper$updateReadProgress$3) == objF) {
                            return objF;
                        }
                    }
                } else {
                    cVarR2 = r();
                    if (cVarR2 != null) {
                        downloadEsHelper$updateReadProgress$3.L$0 = null;
                        downloadEsHelper$updateReadProgress$3.label = 3;
                        if (cVarR2.r(resourceId, j11, downloadEsHelper$updateReadProgress$3) == objF) {
                            return objF;
                        }
                    }
                }
            }
            return Unit.f64096a;
            downloadBean = (DownloadBean) objA;
            jCurrentTimeMillis = System.currentTimeMillis();
            if (downloadBean == null) {
                downloadBean2 = (DownloadBean) this.f57203a.get(downloadBean.getResourceId());
                if (downloadBean2 != null) {
                    downloadBean2.setReadProgress(j11);
                    downloadBean2.setLastPlayTimeStamp(jCurrentTimeMillis);
                }
                resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = "";
                }
                String str3 = resourceId2;
                duration = downloadBean.getDuration();
                if (duration != null) {
                    jLongValue = duration.longValue();
                } else {
                    jLongValue = 0;
                }
                LocalVideoEvent localVideoEvent2 = new LocalVideoEvent(str3, j11, jLongValue, true, false, 16, null);
                FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name2 = LocalVideoEvent.class.getName();
                Intrinsics.g(name2, "getName(...)");
                flowEventBus2.postEvent(name2, localVideoEvent2, 0L);
            }
            if (downloadBean != null) {
                downloadBean.setReadProgress(j11);
            }
            if (downloadBean != null) {
                cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$updateReadProgress$3.L$0 = resourceId;
                    downloadEsHelper$updateReadProgress$3.J$0 = j11;
                    downloadEsHelper$updateReadProgress$3.label = 2;
                    if (cVarR.v(resourceId, jCurrentTimeMillis, downloadEsHelper$updateReadProgress$3) == objF) {
                        return objF;
                    }
                    j12 = j11;
                    j11 = j12;
                    cVarR2 = r();
                    if (cVarR2 != null) {
                        downloadEsHelper$updateReadProgress$3.L$0 = null;
                        downloadEsHelper$updateReadProgress$3.label = 3;
                        if (cVarR2.r(resourceId, j11, downloadEsHelper$updateReadProgress$3) == objF) {
                            return objF;
                        }
                    }
                } else {
                    cVarR2 = r();
                    if (cVarR2 != null) {
                        downloadEsHelper$updateReadProgress$3.L$0 = null;
                        downloadEsHelper$updateReadProgress$3.label = 3;
                        if (cVarR2.r(resourceId, j11, downloadEsHelper$updateReadProgress$3) == objF) {
                            return objF;
                        }
                    }
                }
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e0(String str, long j10, Continuation continuation) {
        DownloadEsHelper$updateReadProgress$1 downloadEsHelper$updateReadProgress$1;
        if (continuation instanceof DownloadEsHelper$updateReadProgress$1) {
            downloadEsHelper$updateReadProgress$1 = (DownloadEsHelper$updateReadProgress$1) continuation;
            int i10 = downloadEsHelper$updateReadProgress$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$updateReadProgress$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$updateReadProgress$1 = new DownloadEsHelper$updateReadProgress$1(this, continuation);
            }
        } else {
            downloadEsHelper$updateReadProgress$1 = new DownloadEsHelper$updateReadProgress$1(this, continuation);
        }
        Object obj = downloadEsHelper$updateReadProgress$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$updateReadProgress$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                DownloadBean downloadBean = (DownloadBean) this.f57203a.get(str);
                if (downloadBean != null) {
                    downloadBean.setReadProgress(j10);
                }
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$updateReadProgress$1.label = 1;
                    if (cVarR.r(str, j10, downloadEsHelper$updateReadProgress$1) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f0(String str, int i10, Continuation continuation) {
        DownloadEsHelper$updateStatus$1 downloadEsHelper$updateStatus$1;
        if (continuation instanceof DownloadEsHelper$updateStatus$1) {
            downloadEsHelper$updateStatus$1 = (DownloadEsHelper$updateStatus$1) continuation;
            int i11 = downloadEsHelper$updateStatus$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$updateStatus$1.label = i11 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$updateStatus$1 = new DownloadEsHelper$updateStatus$1(this, continuation);
            }
        } else {
            downloadEsHelper$updateStatus$1 = new DownloadEsHelper$updateStatus$1(this, continuation);
        }
        Object obj = downloadEsHelper$updateStatus$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = downloadEsHelper$updateStatus$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(obj);
                DownloadBean downloadBean = (DownloadBean) this.f57203a.get(str);
                if (downloadBean != null) {
                    downloadBean.setStatus(i10);
                }
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$updateStatus$1.label = 1;
                    if (cVarR.w(str, i10, downloadEsHelper$updateStatus$1) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    public final File g() {
        File file = new File(ui.b.f73084a.c(), "builtIn");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object g0(String str, Subject subject, Continuation continuation) {
        DownloadEsHelper$updateSubjectIfo$1 downloadEsHelper$updateSubjectIfo$1;
        if (continuation instanceof DownloadEsHelper$updateSubjectIfo$1) {
            downloadEsHelper$updateSubjectIfo$1 = (DownloadEsHelper$updateSubjectIfo$1) continuation;
            int i10 = downloadEsHelper$updateSubjectIfo$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$updateSubjectIfo$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$updateSubjectIfo$1 = new DownloadEsHelper$updateSubjectIfo$1(this, continuation);
            }
        } else {
            downloadEsHelper$updateSubjectIfo$1 = new DownloadEsHelper$updateSubjectIfo$1(this, continuation);
        }
        DownloadEsHelper$updateSubjectIfo$1 downloadEsHelper$updateSubjectIfo$2 = downloadEsHelper$updateSubjectIfo$1;
        Object obj = downloadEsHelper$updateSubjectIfo$2.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$updateSubjectIfo$2.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                DownloadBean downloadBean = (DownloadBean) this.f57203a.get(str);
                if (downloadBean != null) {
                    downloadBean.setRestrictLevel(subject.getRestrictLevel());
                    downloadBean.setReleaseDate(subject.getReleaseDate());
                    downloadBean.setCountryName(subject.getCountryName());
                    downloadBean.setSeNum(subject.getSeNum());
                    downloadBean.setGenre(subject.getGenre());
                    downloadBean.setSubtitles(subject.getSubtitles());
                    downloadBean.setImdbRate(subject.getImdbRate());
                }
                ui.c cVarR = r();
                if (cVarR != null) {
                    String restrictLevel = subject.getRestrictLevel();
                    String releaseDate = subject.getReleaseDate();
                    String countryName = subject.getCountryName();
                    Integer seNum = subject.getSeNum();
                    String genre = subject.getGenre();
                    String subtitles = subject.getSubtitles();
                    String imdbRate = subject.getImdbRate();
                    downloadEsHelper$updateSubjectIfo$2.label = 1;
                    if (cVarR.H(str, restrictLevel, releaseDate, countryName, seNum, genre, subtitles, imdbRate, downloadEsHelper$updateSubjectIfo$2) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    public final File h() {
        i();
        File file = new File(ui.b.f73084a.e());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h0(String str, String str2, Continuation continuation) {
        DownloadEsHelper$updateSubtitleSelectId$1 downloadEsHelper$updateSubtitleSelectId$1;
        if (continuation instanceof DownloadEsHelper$updateSubtitleSelectId$1) {
            downloadEsHelper$updateSubtitleSelectId$1 = (DownloadEsHelper$updateSubtitleSelectId$1) continuation;
            int i10 = downloadEsHelper$updateSubtitleSelectId$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$updateSubtitleSelectId$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$updateSubtitleSelectId$1 = new DownloadEsHelper$updateSubtitleSelectId$1(this, continuation);
            }
        } else {
            downloadEsHelper$updateSubtitleSelectId$1 = new DownloadEsHelper$updateSubtitleSelectId$1(this, continuation);
        }
        Object obj = downloadEsHelper$updateSubtitleSelectId$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$updateSubtitleSelectId$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                DownloadBean downloadBean = (DownloadBean) this.f57203a.get(str);
                if (downloadBean != null) {
                    downloadBean.setSubtitleSelectId(str2);
                }
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$updateSubtitleSelectId$1.label = 1;
                    if (cVarR.b(str, str2, downloadEsHelper$updateSubtitleSelectId$1) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    public final void i() {
        String strE = ui.b.f73084a.e();
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        String string = bVar.b().getString("download_root_path", strE);
        String string2 = bVar.b().getString("download_root_path_name", null);
        if (string2 == null) {
            string2 = Utils.a().getString(R$string.str_download_dialog_path_moviebox_folder);
            Intrinsics.g(string2, "getString(...)");
        }
        int i10 = bVar.b().getInt("download_root_path_type", 1);
        if (!DownloadUtil.f57680a.D()) {
            String string3 = Utils.a().getString(R$string.str_download_dialog_path_moviebox_folder);
            Intrinsics.g(string3, "getString(...)");
            this.f57210h = string3;
            this.f57209g = strE;
            this.f57211i = 1;
            return;
        }
        this.f57210h = string2;
        this.f57211i = i10;
        if (string == null || string.length() == 0) {
            string = strE;
        }
        this.f57209g = string;
        try {
            File file = new File(this.f57209g);
            if (file.exists()) {
                return;
            }
            file.mkdirs();
        } catch (Throwable th2) {
            wf.a.f74274a.i("DownloadEsHelper", "path error, path = " + this.f57210h + ", error = " + th2, true);
            String string4 = Utils.a().getString(R$string.str_download_dialog_path_moviebox_folder);
            Intrinsics.g(string4, "getString(...)");
            this.f57210h = string4;
            this.f57209g = strE;
            this.f57211i = 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i0(String str, int i10, int i11, Continuation continuation) {
        DownloadEsHelper$updateWH$1 downloadEsHelper$updateWH$1;
        if (continuation instanceof DownloadEsHelper$updateWH$1) {
            downloadEsHelper$updateWH$1 = (DownloadEsHelper$updateWH$1) continuation;
            int i12 = downloadEsHelper$updateWH$1.label;
            if ((i12 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$updateWH$1.label = i12 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$updateWH$1 = new DownloadEsHelper$updateWH$1(this, continuation);
            }
        } else {
            downloadEsHelper$updateWH$1 = new DownloadEsHelper$updateWH$1(this, continuation);
        }
        Object obj = downloadEsHelper$updateWH$1.result;
        Object objF = IntrinsicsKt.f();
        int i13 = downloadEsHelper$updateWH$1.label;
        try {
            if (i13 == 0) {
                ResultKt.b(obj);
                DownloadBean downloadBean = (DownloadBean) this.f57203a.get(str);
                if (downloadBean != null) {
                    downloadBean.setVideoWidth(i10);
                    downloadBean.setVideoHeight(i11);
                }
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$updateWH$1.label = 1;
                    if (cVarR.h(str, i10, i11, downloadEsHelper$updateWH$1) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i13 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object k(String str, String str2, Continuation continuation) {
        DownloadEsHelper$deleteByUrl$1 downloadEsHelper$deleteByUrl$1;
        if (continuation instanceof DownloadEsHelper$deleteByUrl$1) {
            downloadEsHelper$deleteByUrl$1 = (DownloadEsHelper$deleteByUrl$1) continuation;
            int i10 = downloadEsHelper$deleteByUrl$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$deleteByUrl$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$deleteByUrl$1 = new DownloadEsHelper$deleteByUrl$1(this, continuation);
            }
        } else {
            downloadEsHelper$deleteByUrl$1 = new DownloadEsHelper$deleteByUrl$1(this, continuation);
        }
        Object obj = downloadEsHelper$deleteByUrl$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$deleteByUrl$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                if (this.f57203a.containsKey(str2)) {
                    this.f57203a.remove(str2);
                }
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$deleteByUrl$1.label = 1;
                    if (cVarR.m(str, downloadEsHelper$deleteByUrl$1) == objF) {
                        return objF;
                    }
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object l(String str, String str2, String str3, Continuation continuation) {
        DownloadEsHelper$deleteItem$1 downloadEsHelper$deleteItem$1;
        v0 v0VarL;
        if (continuation instanceof DownloadEsHelper$deleteItem$1) {
            downloadEsHelper$deleteItem$1 = (DownloadEsHelper$deleteItem$1) continuation;
            int i10 = downloadEsHelper$deleteItem$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$deleteItem$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$deleteItem$1 = new DownloadEsHelper$deleteItem$1(this, continuation);
            }
        } else {
            downloadEsHelper$deleteItem$1 = new DownloadEsHelper$deleteItem$1(this, continuation);
        }
        Object obj = downloadEsHelper$deleteItem$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$deleteItem$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    str = (String) downloadEsHelper$deleteItem$1.L$0;
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            if (this.f57203a.containsKey(str)) {
                this.f57203a.remove(str);
            }
            if (str2 != null) {
            }
            if (str3 != null && (v0VarL = L()) != null) {
                downloadEsHelper$deleteItem$1.L$0 = str;
                downloadEsHelper$deleteItem$1.label = 1;
                if (v0VarL.a(str3, downloadEsHelper$deleteItem$1) == objF) {
                    return objF;
                }
            }
            ui.c cVarR = r();
            if (cVarR != null) {
                downloadEsHelper$deleteItem$1.L$0 = null;
                downloadEsHelper$deleteItem$1.label = 2;
                if (cVarR.a(str, downloadEsHelper$deleteItem$1) == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return Unit.f64096a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0071 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object m(DownloadBean downloadBean, Continuation continuation) {
        DownloadEsHelper$deleteTransferReceived$1 downloadEsHelper$deleteTransferReceived$1;
        Object objM453constructorimpl;
        String path;
        Object objM453constructorimpl2;
        Unit unit;
        if (continuation instanceof DownloadEsHelper$deleteTransferReceived$1) {
            downloadEsHelper$deleteTransferReceived$1 = (DownloadEsHelper$deleteTransferReceived$1) continuation;
            int i10 = downloadEsHelper$deleteTransferReceived$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$deleteTransferReceived$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$deleteTransferReceived$1 = new DownloadEsHelper$deleteTransferReceived$1(this, continuation);
            }
        } else {
            downloadEsHelper$deleteTransferReceived$1 = new DownloadEsHelper$deleteTransferReceived$1(this, continuation);
        }
        Object obj = downloadEsHelper$deleteTransferReceived$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$deleteTransferReceived$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                if (downloadBean != null) {
                    String resourceId = downloadBean.getResourceId();
                    if (resourceId != null) {
                        Result.Companion companion = Result.INSTANCE;
                        ui.c cVarR = r();
                        if (cVarR != null) {
                            downloadEsHelper$deleteTransferReceived$1.L$0 = downloadBean;
                            downloadEsHelper$deleteTransferReceived$1.label = 1;
                            if (cVarR.l(resourceId, downloadEsHelper$deleteTransferReceived$1) == objF) {
                                return objF;
                            }
                        } else {
                            unit = null;
                        }
                        objM453constructorimpl = Result.m453constructorimpl(unit);
                        Result.m452boximpl(objM453constructorimpl);
                        path = downloadBean.getPath();
                        if (path != null) {
                            try {
                                Result.Companion companion2 = Result.INSTANCE;
                                objM453constructorimpl2 = Result.m453constructorimpl(Boxing.a(new File(path).delete()));
                            } catch (Throwable th2) {
                                Result.Companion companion3 = Result.INSTANCE;
                                objM453constructorimpl2 = Result.m453constructorimpl(ResultKt.a(th2));
                            }
                            Result.m452boximpl(objM453constructorimpl2);
                        }
                    } else {
                        path = downloadBean.getPath();
                        if (path != null) {
                            Result.Companion companion4 = Result.INSTANCE;
                            objM453constructorimpl2 = Result.m453constructorimpl(Boxing.a(new File(path).delete()));
                            Result.m452boximpl(objM453constructorimpl2);
                        }
                    }
                }
                return Unit.f64096a;
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            downloadBean = (DownloadBean) downloadEsHelper$deleteTransferReceived$1.L$0;
            ResultKt.b(obj);
            unit = Unit.f64096a;
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th3) {
            Result.Companion companion5 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th3));
        }
        Result.m452boximpl(objM453constructorimpl);
        path = downloadBean.getPath();
        if (path != null) {
            Result.Companion companion6 = Result.INSTANCE;
            objM453constructorimpl2 = Result.m453constructorimpl(Boxing.a(new File(path).delete()));
            Result.m452boximpl(objM453constructorimpl2);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004f  */
    /* JADX WARN: Code duplicated, block: B:27:0x005b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0069  */
    /* JADX WARN: Code duplicated, block: B:34:0x007b  */
    /* JADX WARN: Code duplicated, block: B:40:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x008b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0073 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0055 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object o(String str, Continuation continuation) {
        DownloadEsHelper$findDownloadBySubjectId$1 downloadEsHelper$findDownloadBySubjectId$1;
        List<DownloadBean> list;
        ui.c cVarR;
        ArrayList arrayList;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String resourceId2;
        DownloadBean downloadBean;
        if (continuation instanceof DownloadEsHelper$findDownloadBySubjectId$1) {
            downloadEsHelper$findDownloadBySubjectId$1 = (DownloadEsHelper$findDownloadBySubjectId$1) continuation;
            int i10 = downloadEsHelper$findDownloadBySubjectId$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$findDownloadBySubjectId$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$findDownloadBySubjectId$1 = new DownloadEsHelper$findDownloadBySubjectId$1(this, continuation);
            }
        } else {
            downloadEsHelper$findDownloadBySubjectId$1 = new DownloadEsHelper$findDownloadBySubjectId$1(this, continuation);
        }
        Object objO = downloadEsHelper$findDownloadBySubjectId$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$findDownloadBySubjectId$1.label;
        if (i11 == 0) {
            ResultKt.b(objO);
            list = null;
            if (str != null && (cVarR = r()) != null) {
                downloadEsHelper$findDownloadBySubjectId$1.label = 1;
                objO = cVarR.o(str, downloadEsHelper$findDownloadBySubjectId$1);
                if (objO == objF) {
                    return objF;
                }
            }
            arrayList = new ArrayList();
            if (list != null) {
                for (DownloadBean downloadBean2 : list) {
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean2.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean2.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                        resourceId2 = downloadBean2.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean2.getUrl();
                        }
                        downloadBean = (DownloadBean) concurrentHashMap2.get(resourceId2);
                        if (downloadBean != null) {
                            arrayList.add(downloadBean);
                        }
                    } else {
                        Boxing.a(arrayList.add(downloadBean2));
                    }
                }
            }
            return arrayList;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objO);
        list = (List) objO;
        arrayList = new ArrayList();
        if (list != null) {
            while (r6.hasNext()) {
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean2.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean2.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                    resourceId2 = downloadBean2.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean2.getUrl();
                    }
                    downloadBean = (DownloadBean) concurrentHashMap3.get(resourceId2);
                    if (downloadBean != null) {
                        arrayList.add(downloadBean);
                    }
                } else {
                    Boxing.a(arrayList.add(downloadBean2));
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x006e A[Catch: all -> 0x0031, TryCatch #0 {all -> 0x0031, blocks: (B:13:0x002d, B:20:0x003f, B:31:0x0068, B:34:0x006e, B:37:0x0076, B:23:0x0046, B:25:0x004e, B:26:0x0057, B:28:0x005d), top: B:43:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0076 A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:13:0x002d, B:20:0x003f, B:31:0x0068, B:34:0x006e, B:37:0x0076, B:23:0x0046, B:25:0x004e, B:26:0x0057, B:28:0x005d), top: B:43:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0080 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object p(String str, Continuation continuation) {
        DownloadEsHelper$findDownloadedByResourceId$1 downloadEsHelper$findDownloadedByResourceId$1;
        DownloadBean downloadBean;
        DownloadBean downloadBean2;
        if (continuation instanceof DownloadEsHelper$findDownloadedByResourceId$1) {
            downloadEsHelper$findDownloadedByResourceId$1 = (DownloadEsHelper$findDownloadedByResourceId$1) continuation;
            int i10 = downloadEsHelper$findDownloadedByResourceId$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$findDownloadedByResourceId$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$findDownloadedByResourceId$1 = new DownloadEsHelper$findDownloadedByResourceId$1(this, continuation);
            }
        } else {
            downloadEsHelper$findDownloadedByResourceId$1 = new DownloadEsHelper$findDownloadedByResourceId$1(this, continuation);
        }
        Object objD = downloadEsHelper$findDownloadedByResourceId$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$findDownloadedByResourceId$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    str = (String) downloadEsHelper$findDownloadedByResourceId$1.L$0;
                    ResultKt.b(objD);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    downloadBean2 = (DownloadBean) downloadEsHelper$findDownloadedByResourceId$1.L$0;
                    ResultKt.b(objD);
                }
                return downloadBean2;
            }
            ResultKt.b(objD);
            if (this.f57203a.containsKey(str)) {
                downloadBean2 = (DownloadBean) this.f57203a.get(str);
            } else {
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$findDownloadedByResourceId$1.L$0 = str;
                    downloadEsHelper$findDownloadedByResourceId$1.label = 1;
                    objD = cVarR.d(str, downloadEsHelper$findDownloadedByResourceId$1);
                    if (objD == objF) {
                        return objF;
                    }
                } else {
                    downloadBean = null;
                }
                if (downloadBean != null) {
                    this.f57203a.put(str, downloadBean);
                }
                downloadBean2 = downloadBean;
            }
            if (downloadBean2 != null) {
                downloadEsHelper$findDownloadedByResourceId$1.L$0 = downloadBean2;
                downloadEsHelper$findDownloadedByResourceId$1.label = 2;
                if (j(downloadBean2, downloadEsHelper$findDownloadedByResourceId$1) == objF) {
                    return objF;
                }
            }
            return downloadBean2;
            downloadBean = (DownloadBean) objD;
            if (downloadBean != null) {
                this.f57203a.put(str, downloadBean);
            }
            downloadBean2 = downloadBean;
            if (downloadBean2 != null) {
                downloadEsHelper$findDownloadedByResourceId$1.L$0 = downloadBean2;
                downloadEsHelper$findDownloadedByResourceId$1.label = 2;
                if (j(downloadBean2, downloadEsHelper$findDownloadedByResourceId$1) == objF) {
                    return objF;
                }
            }
            return downloadBean2;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public final DownloadBean q(String resourceId) {
        Intrinsics.h(resourceId, "resourceId");
        if (this.f57203a.containsKey(resourceId)) {
            return (DownloadBean) this.f57203a.get(resourceId);
        }
        return null;
    }

    public final File s() {
        i();
        return new File(ui.b.f73084a.e());
    }

    public final String t() {
        return this.f57209g;
    }

    public final int u() {
        return this.f57211i;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006a A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0034, B:33:0x0072, B:35:0x0078, B:37:0x0086, B:38:0x008a, B:40:0x0090, B:42:0x0098, B:43:0x009c, B:48:0x00d3, B:44:0x00a9, B:46:0x00c9, B:47:0x00cd, B:20:0x0047, B:28:0x005f, B:30:0x0063, B:32:0x006a, B:23:0x004e, B:25:0x0054), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0078 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0034, B:33:0x0072, B:35:0x0078, B:37:0x0086, B:38:0x008a, B:40:0x0090, B:42:0x0098, B:43:0x009c, B:48:0x00d3, B:44:0x00a9, B:46:0x00c9, B:47:0x00cd, B:20:0x0047, B:28:0x005f, B:30:0x0063, B:32:0x006a, B:23:0x004e, B:25:0x0054), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0086 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0034, B:33:0x0072, B:35:0x0078, B:37:0x0086, B:38:0x008a, B:40:0x0090, B:42:0x0098, B:43:0x009c, B:48:0x00d3, B:44:0x00a9, B:46:0x00c9, B:47:0x00cd, B:20:0x0047, B:28:0x005f, B:30:0x0063, B:32:0x006a, B:23:0x004e, B:25:0x0054), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0090 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0034, B:33:0x0072, B:35:0x0078, B:37:0x0086, B:38:0x008a, B:40:0x0090, B:42:0x0098, B:43:0x009c, B:48:0x00d3, B:44:0x00a9, B:46:0x00c9, B:47:0x00cd, B:20:0x0047, B:28:0x005f, B:30:0x0063, B:32:0x006a, B:23:0x004e, B:25:0x0054), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0098 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0034, B:33:0x0072, B:35:0x0078, B:37:0x0086, B:38:0x008a, B:40:0x0090, B:42:0x0098, B:43:0x009c, B:48:0x00d3, B:44:0x00a9, B:46:0x00c9, B:47:0x00cd, B:20:0x0047, B:28:0x005f, B:30:0x0063, B:32:0x006a, B:23:0x004e, B:25:0x0054), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a9 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0034, B:33:0x0072, B:35:0x0078, B:37:0x0086, B:38:0x008a, B:40:0x0090, B:42:0x0098, B:43:0x009c, B:48:0x00d3, B:44:0x00a9, B:46:0x00c9, B:47:0x00cd, B:20:0x0047, B:28:0x005f, B:30:0x0063, B:32:0x006a, B:23:0x004e, B:25:0x0054), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00c9 A[Catch: all -> 0x0038, TryCatch #0 {all -> 0x0038, blocks: (B:13:0x0034, B:33:0x0072, B:35:0x0078, B:37:0x0086, B:38:0x008a, B:40:0x0090, B:42:0x0098, B:43:0x009c, B:48:0x00d3, B:44:0x00a9, B:46:0x00c9, B:47:0x00cd, B:20:0x0047, B:28:0x005f, B:30:0x0063, B:32:0x006a, B:23:0x004e, B:25:0x0054), top: B:54:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x00e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:59:? A[LOOP:0: B:33:0x0072->B:59:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x00a9, please report this as an issue */
    public final Object v(String str, Continuation continuation) {
        DownloadEsHelper$getEpisode$1 downloadEsHelper$getEpisode$1;
        List list;
        List arrayList;
        String str2;
        Iterator it;
        DownloadBean downloadBean;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String resourceId2;
        String resourceId3;
        if (continuation instanceof DownloadEsHelper$getEpisode$1) {
            downloadEsHelper$getEpisode$1 = (DownloadEsHelper$getEpisode$1) continuation;
            int i10 = downloadEsHelper$getEpisode$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getEpisode$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getEpisode$1 = new DownloadEsHelper$getEpisode$1(this, continuation);
            }
        } else {
            downloadEsHelper$getEpisode$1 = new DownloadEsHelper$getEpisode$1(this, continuation);
        }
        Object objG = downloadEsHelper$getEpisode$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getEpisode$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    str = (String) downloadEsHelper$getEpisode$1.L$0;
                    ResultKt.b(objG);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) downloadEsHelper$getEpisode$1.L$2;
                    arrayList = (List) downloadEsHelper$getEpisode$1.L$1;
                    str2 = (String) downloadEsHelper$getEpisode$1.L$0;
                    ResultKt.b(objG);
                }
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                        resourceId3 = downloadBean.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean.getUrl();
                        }
                        Object obj = concurrentHashMap2.get(resourceId3);
                        Intrinsics.e(obj);
                        downloadBean = (DownloadBean) obj;
                        arrayList.add(downloadBean);
                    } else {
                        this.f57206d.put(str2 + downloadBean.getEp(), downloadBean);
                        ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                        resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean.getUrl();
                        }
                        concurrentHashMap3.put(resourceId2, downloadBean);
                        arrayList.add(downloadBean);
                    }
                    downloadEsHelper$getEpisode$1.L$0 = str2;
                    downloadEsHelper$getEpisode$1.L$1 = arrayList;
                    downloadEsHelper$getEpisode$1.L$2 = it;
                    downloadEsHelper$getEpisode$1.label = 2;
                    if (j(downloadBean, downloadEsHelper$getEpisode$1) == objF) {
                        return objF;
                    }
                }
                return arrayList;
            }
            ResultKt.b(objG);
            ui.c cVarR = r();
            if (cVarR != null) {
                downloadEsHelper$getEpisode$1.L$0 = str;
                downloadEsHelper$getEpisode$1.label = 1;
                objG = cVarR.G(str, downloadEsHelper$getEpisode$1);
                if (objG == objF) {
                    return objF;
                }
            } else {
                list = null;
            }
            arrayList = new ArrayList();
            if (list != null) {
                str2 = str;
                it = list.iterator();
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap4 = this.f57203a;
                        resourceId3 = downloadBean.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean.getUrl();
                        }
                        Object obj2 = concurrentHashMap4.get(resourceId3);
                        Intrinsics.e(obj2);
                        downloadBean = (DownloadBean) obj2;
                        arrayList.add(downloadBean);
                    } else {
                        this.f57206d.put(str2 + downloadBean.getEp(), downloadBean);
                        ConcurrentHashMap concurrentHashMap5 = this.f57203a;
                        resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean.getUrl();
                        }
                        concurrentHashMap5.put(resourceId2, downloadBean);
                        arrayList.add(downloadBean);
                    }
                    downloadEsHelper$getEpisode$1.L$0 = str2;
                    downloadEsHelper$getEpisode$1.L$1 = arrayList;
                    downloadEsHelper$getEpisode$1.L$2 = it;
                    downloadEsHelper$getEpisode$1.label = 2;
                    if (j(downloadBean, downloadEsHelper$getEpisode$1) == objF) {
                        return objF;
                    }
                }
            }
            return arrayList;
            list = (List) objG;
            arrayList = new ArrayList();
            if (list != null) {
                str2 = str;
                it = list.iterator();
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap6 = this.f57203a;
                        resourceId3 = downloadBean.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean.getUrl();
                        }
                        Object obj3 = concurrentHashMap6.get(resourceId3);
                        Intrinsics.e(obj3);
                        downloadBean = (DownloadBean) obj3;
                        arrayList.add(downloadBean);
                    } else {
                        this.f57206d.put(str2 + downloadBean.getEp(), downloadBean);
                        ConcurrentHashMap concurrentHashMap7 = this.f57203a;
                        resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean.getUrl();
                        }
                        concurrentHashMap7.put(resourceId2, downloadBean);
                        arrayList.add(downloadBean);
                    }
                    downloadEsHelper$getEpisode$1.L$0 = str2;
                    downloadEsHelper$getEpisode$1.L$1 = arrayList;
                    downloadEsHelper$getEpisode$1.L$2 = it;
                    downloadEsHelper$getEpisode$1.label = 2;
                    if (j(downloadBean, downloadEsHelper$getEpisode$1) == objF) {
                        return objF;
                    }
                }
            }
            return arrayList;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(String str, int i10, Continuation continuation) {
        DownloadEsHelper$getEpisodeBean$1 downloadEsHelper$getEpisodeBean$1;
        if (continuation instanceof DownloadEsHelper$getEpisodeBean$1) {
            downloadEsHelper$getEpisodeBean$1 = (DownloadEsHelper$getEpisodeBean$1) continuation;
            int i11 = downloadEsHelper$getEpisodeBean$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getEpisodeBean$1.label = i11 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getEpisodeBean$1 = new DownloadEsHelper$getEpisodeBean$1(this, continuation);
            }
        } else {
            downloadEsHelper$getEpisodeBean$1 = new DownloadEsHelper$getEpisodeBean$1(this, continuation);
        }
        Object objF = downloadEsHelper$getEpisodeBean$1.result;
        Object objF2 = IntrinsicsKt.f();
        int i12 = downloadEsHelper$getEpisodeBean$1.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objF);
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$getEpisodeBean$1.L$0 = str;
                    downloadEsHelper$getEpisodeBean$1.I$0 = i10;
                    downloadEsHelper$getEpisodeBean$1.label = 1;
                    objF = cVarR.f(str, i10, downloadEsHelper$getEpisodeBean$1);
                    if (objF == objF2) {
                        return objF2;
                    }
                }
                return null;
            }
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i10 = downloadEsHelper$getEpisodeBean$1.I$0;
            str = (String) downloadEsHelper$getEpisodeBean$1.L$0;
            ResultKt.b(objF);
            DownloadBean downloadBean = (DownloadBean) objF;
            if (downloadBean == null) {
                return null;
            }
            ConcurrentHashMap concurrentHashMap = this.f57203a;
            String resourceId = downloadBean.getResourceId();
            if (resourceId == null) {
                resourceId = downloadBean.getUrl();
            }
            if (concurrentHashMap.containsKey(resourceId)) {
                ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                String resourceId2 = downloadBean.getResourceId();
                if (resourceId2 == null) {
                    resourceId2 = downloadBean.getUrl();
                }
                return (DownloadBean) concurrentHashMap2.get(resourceId2);
            }
            this.f57206d.put(str + i10, downloadBean);
            ConcurrentHashMap concurrentHashMap3 = this.f57203a;
            String resourceId3 = downloadBean.getResourceId();
            if (resourceId3 == null) {
                resourceId3 = downloadBean.getUrl();
            }
            concurrentHashMap3.put(resourceId3, downloadBean);
            return downloadBean;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return null;
        }
    }

    public final DownloadBean x(String subjectId, int i10) {
        Intrinsics.h(subjectId, "subjectId");
        return (DownloadBean) this.f57206d.get(subjectId + i10);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0060 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x006e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x007c A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x008e A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x009f A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00a5 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c7 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d0 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00db A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:13:0x0030, B:32:0x0068, B:34:0x006e, B:36:0x007c, B:37:0x0080, B:39:0x0086, B:41:0x008e, B:42:0x0092, B:56:0x00e5, B:43:0x009f, B:45:0x00a5, B:46:0x00c1, B:48:0x00c7, B:49:0x00ca, B:51:0x00d0, B:52:0x00d3, B:54:0x00db, B:55:0x00df, B:19:0x003f, B:27:0x0055, B:29:0x0059, B:31:0x0060, B:22:0x0046, B:24:0x004c), top: B:63:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:66:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:? A[LOOP:0: B:32:0x0068->B:68:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x00a5, please report this as an issue */
    public final Object y(Continuation continuation) {
        DownloadEsHelper$getFailedDownload$1 downloadEsHelper$getFailedDownload$1;
        List list;
        ArrayList arrayList;
        List list2;
        Iterator it;
        DownloadBean downloadBean;
        ConcurrentHashMap concurrentHashMap;
        String resourceId;
        String subjectId;
        String ugcVideoId;
        String resourceId2;
        String resourceId3;
        if (continuation instanceof DownloadEsHelper$getFailedDownload$1) {
            downloadEsHelper$getFailedDownload$1 = (DownloadEsHelper$getFailedDownload$1) continuation;
            int i10 = downloadEsHelper$getFailedDownload$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getFailedDownload$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getFailedDownload$1 = new DownloadEsHelper$getFailedDownload$1(this, continuation);
            }
        } else {
            downloadEsHelper$getFailedDownload$1 = new DownloadEsHelper$getFailedDownload$1(this, continuation);
        }
        Object objQ = downloadEsHelper$getFailedDownload$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getFailedDownload$1.label;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(objQ);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) downloadEsHelper$getFailedDownload$1.L$1;
                    list2 = (List) downloadEsHelper$getFailedDownload$1.L$0;
                    ResultKt.b(objQ);
                }
                while (it.hasNext()) {
                    downloadBean = (DownloadBean) it.next();
                    concurrentHashMap = this.f57203a;
                    resourceId = downloadBean.getResourceId();
                    if (resourceId == null) {
                        resourceId = downloadBean.getUrl();
                    }
                    if (concurrentHashMap.containsKey(resourceId)) {
                        ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                        resourceId3 = downloadBean.getResourceId();
                        if (resourceId3 == null) {
                            resourceId3 = downloadBean.getUrl();
                        }
                        Object obj = concurrentHashMap2.get(resourceId3);
                        Intrinsics.e(obj);
                        downloadBean = (DownloadBean) obj;
                        list2.add(downloadBean);
                    } else {
                        if (downloadBean.isShotTV()) {
                            this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                        }
                        subjectId = downloadBean.getSubjectId();
                        if (subjectId != null) {
                            V(subjectId, downloadBean);
                        }
                        ugcVideoId = downloadBean.getUgcVideoId();
                        if (ugcVideoId != null) {
                            W(ugcVideoId, downloadBean);
                        }
                        ConcurrentHashMap concurrentHashMap3 = this.f57203a;
                        resourceId2 = downloadBean.getResourceId();
                        if (resourceId2 == null) {
                            resourceId2 = downloadBean.getUrl();
                        }
                        concurrentHashMap3.put(resourceId2, downloadBean);
                        list2.add(downloadBean);
                    }
                    downloadEsHelper$getFailedDownload$1.L$0 = list2;
                    downloadEsHelper$getFailedDownload$1.L$1 = it;
                    downloadEsHelper$getFailedDownload$1.label = 2;
                    if (j(downloadBean, downloadEsHelper$getFailedDownload$1) == objF) {
                        return objF;
                    }
                }
                return list2;
            }
            ResultKt.b(objQ);
            ui.c cVarR = r();
            if (cVarR != null) {
                downloadEsHelper$getFailedDownload$1.label = 1;
                objQ = cVarR.q(downloadEsHelper$getFailedDownload$1);
                if (objQ == objF) {
                    return objF;
                }
            } else {
                list = null;
            }
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap4 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj2 = concurrentHashMap4.get(resourceId3);
                    Intrinsics.e(obj2);
                    downloadBean = (DownloadBean) obj2;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    subjectId = downloadBean.getSubjectId();
                    if (subjectId != null) {
                        V(subjectId, downloadBean);
                    }
                    ugcVideoId = downloadBean.getUgcVideoId();
                    if (ugcVideoId != null) {
                        W(ugcVideoId, downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap5 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap5.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getFailedDownload$1.L$0 = list2;
                downloadEsHelper$getFailedDownload$1.L$1 = it;
                downloadEsHelper$getFailedDownload$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getFailedDownload$1) == objF) {
                    return objF;
                }
            }
            return list2;
            list = (List) objQ;
            arrayList = new ArrayList();
            if (list != null) {
                return arrayList;
            }
            list2 = arrayList;
            it = list.iterator();
            while (it.hasNext()) {
                downloadBean = (DownloadBean) it.next();
                concurrentHashMap = this.f57203a;
                resourceId = downloadBean.getResourceId();
                if (resourceId == null) {
                    resourceId = downloadBean.getUrl();
                }
                if (concurrentHashMap.containsKey(resourceId)) {
                    ConcurrentHashMap concurrentHashMap6 = this.f57203a;
                    resourceId3 = downloadBean.getResourceId();
                    if (resourceId3 == null) {
                        resourceId3 = downloadBean.getUrl();
                    }
                    Object obj3 = concurrentHashMap6.get(resourceId3);
                    Intrinsics.e(obj3);
                    downloadBean = (DownloadBean) obj3;
                    list2.add(downloadBean);
                } else {
                    if (downloadBean.isShotTV()) {
                        this.f57206d.put(downloadBean.getSubjectId() + downloadBean.getEp(), downloadBean);
                    }
                    subjectId = downloadBean.getSubjectId();
                    if (subjectId != null) {
                        V(subjectId, downloadBean);
                    }
                    ugcVideoId = downloadBean.getUgcVideoId();
                    if (ugcVideoId != null) {
                        W(ugcVideoId, downloadBean);
                    }
                    ConcurrentHashMap concurrentHashMap7 = this.f57203a;
                    resourceId2 = downloadBean.getResourceId();
                    if (resourceId2 == null) {
                        resourceId2 = downloadBean.getUrl();
                    }
                    concurrentHashMap7.put(resourceId2, downloadBean);
                    list2.add(downloadBean);
                }
                downloadEsHelper$getFailedDownload$1.L$0 = list2;
                downloadEsHelper$getFailedDownload$1.L$1 = it;
                downloadEsHelper$getFailedDownload$1.label = 2;
                if (j(downloadBean, downloadEsHelper$getFailedDownload$1) == objF) {
                    return objF;
                }
            }
            return list2;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return new ArrayList();
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0052 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0054 A[Catch: all -> 0x0077, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x0026, B:21:0x0044, B:23:0x0048, B:25:0x004c, B:30:0x005a, B:32:0x0060, B:34:0x0064, B:39:0x0072, B:37:0x006c, B:28:0x0054, B:16:0x0035, B:18:0x003b), top: B:42:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0059  */
    /* JADX WARN: Code duplicated, block: B:32:0x0060 A[Catch: all -> 0x0077, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x0026, B:21:0x0044, B:23:0x0048, B:25:0x004c, B:30:0x005a, B:32:0x0060, B:34:0x0064, B:39:0x0072, B:37:0x006c, B:28:0x0054, B:16:0x0035, B:18:0x003b), top: B:42:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x006a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x006c A[Catch: all -> 0x0077, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x0026, B:21:0x0044, B:23:0x0048, B:25:0x004c, B:30:0x005a, B:32:0x0060, B:34:0x0064, B:39:0x0072, B:37:0x006c, B:28:0x0054, B:16:0x0035, B:18:0x003b), top: B:42:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0071  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object z(Continuation continuation) {
        DownloadEsHelper$getLatestDownloadVideo$1 downloadEsHelper$getLatestDownloadVideo$1;
        DownloadBean downloadBean;
        ConcurrentHashMap concurrentHashMap;
        String url;
        String url2;
        if (continuation instanceof DownloadEsHelper$getLatestDownloadVideo$1) {
            downloadEsHelper$getLatestDownloadVideo$1 = (DownloadEsHelper$getLatestDownloadVideo$1) continuation;
            int i10 = downloadEsHelper$getLatestDownloadVideo$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                downloadEsHelper$getLatestDownloadVideo$1.label = i10 - Integer.MIN_VALUE;
            } else {
                downloadEsHelper$getLatestDownloadVideo$1 = new DownloadEsHelper$getLatestDownloadVideo$1(this, continuation);
            }
        } else {
            downloadEsHelper$getLatestDownloadVideo$1 = new DownloadEsHelper$getLatestDownloadVideo$1(this, continuation);
        }
        Object objX = downloadEsHelper$getLatestDownloadVideo$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = downloadEsHelper$getLatestDownloadVideo$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objX);
                ui.c cVarR = r();
                if (cVarR != null) {
                    downloadEsHelper$getLatestDownloadVideo$1.label = 1;
                    objX = cVarR.x(downloadEsHelper$getLatestDownloadVideo$1);
                    if (objX == objF) {
                        return objF;
                    }
                } else {
                    downloadBean = null;
                }
                concurrentHashMap = this.f57203a;
                if (downloadBean != null || (url = downloadBean.getResourceId()) == null) {
                    if (downloadBean != null) {
                        url = downloadBean.getUrl();
                    } else {
                        url = null;
                    }
                }
                if (concurrentHashMap.containsKey(url)) {
                    return downloadBean;
                }
                ConcurrentHashMap concurrentHashMap2 = this.f57203a;
                if (downloadBean != null || (url2 = downloadBean.getResourceId()) == null) {
                    if (downloadBean != null) {
                        url2 = downloadBean.getUrl();
                    } else {
                        url2 = null;
                    }
                }
                return concurrentHashMap2.get(url2);
            }
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objX);
            downloadBean = (DownloadBean) objX;
            concurrentHashMap = this.f57203a;
            if (downloadBean != null) {
                if (downloadBean != null) {
                    url = downloadBean.getUrl();
                } else {
                    url = null;
                }
            } else if (downloadBean != null) {
                url = downloadBean.getUrl();
            } else {
                url = null;
            }
            if (concurrentHashMap.containsKey(url)) {
                return downloadBean;
            }
            ConcurrentHashMap concurrentHashMap3 = this.f57203a;
            if (downloadBean != null) {
                if (downloadBean != null) {
                    url2 = downloadBean.getUrl();
                } else {
                    url2 = null;
                }
            } else if (downloadBean != null) {
                url2 = downloadBean.getUrl();
            } else {
                url2 = null;
            }
            return concurrentHashMap3.get(url2);
        } catch (Throwable unused) {
            return null;
        }
    }
}
