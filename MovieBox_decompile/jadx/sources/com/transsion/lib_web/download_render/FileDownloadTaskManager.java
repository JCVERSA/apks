package com.transsion.lib_web.download_render;

import android.app.Application;
import com.tn.lib.logger.xlog.LogType;
import com.transsion.lib_web.download_render.data.PageData;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.k;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import pl.h;
import qi.i;

public final class FileDownloadTaskManager {

    public static final FileDownloadTaskManager f44780a = new FileDownloadTaskManager();

    private static final AtomicBoolean f44781b = new AtomicBoolean(false);

    private static AtomicLong f44782c = new AtomicLong(1);

    private static final kotlinx.coroutines.sync.a f44783d = kotlinx.coroutines.sync.g.b(false, 1, null);

    private static final n0 f44784e;

    private static final n0 f44785f;

    private static final LinkedHashMap f44786g;

    private static final AtomicBoolean f44787h;

    private static String f44788i;

    private static d f44789j;

    private static final List f44790k;

    public static final class a implements d {
        a() {
        }

        @Override
        public void a(String url) {
            Intrinsics.h(url, "url");
            FileDownloadTaskManager.f44788i = url;
        }

        @Override
        public void b() {
            FileDownloadTaskManager.f44788i = null;
        }
    }

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.g(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        f44784e = o0.a(m1.c(executorServiceNewSingleThreadExecutor));
        f44785f = o0.a(y0.b());
        f44786g = new LinkedHashMap();
        f44787h = new AtomicBoolean(false);
        f44789j = new a();
        f44790k = new ArrayList();
    }

    private FileDownloadTaskManager() {
    }

    private final void k() {
        h hVar = h.f69205a;
        AtomicBoolean atomicBoolean = f44787h;
        hVar.a("DR_FileDownloadTaskManager", "<startDownloadExecution> isDownloadRunning value: " + atomicBoolean.get() + ", if value is true -> can't load download");
        if (atomicBoolean.compareAndSet(false, true)) {
            k.d(f44785f, null, null, new FileDownloadTaskManager$startDownloadExecution$1(null), 3, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v19, types: [T, tl.a] */
    public final Object m(List list, Continuation continuation) throws Throwable {
        FileDownloadTaskManager$updateTask$1 fileDownloadTaskManager$updateTask$1;
        List list2;
        kotlinx.coroutines.sync.a aVar;
        FileDownloadTaskManager fileDownloadTaskManager;
        Object obj;
        PageData pageDataA;
        PageData pageDataA2;
        PageData pageDataA3;
        PageData pageDataA4;
        LinkedHashSet linkedHashSet;
        PageData pageDataA5;
        if (continuation instanceof FileDownloadTaskManager$updateTask$1) {
            fileDownloadTaskManager$updateTask$1 = (FileDownloadTaskManager$updateTask$1) continuation;
            int i10 = fileDownloadTaskManager$updateTask$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                fileDownloadTaskManager$updateTask$1.label = i10 - Integer.MIN_VALUE;
            } else {
                fileDownloadTaskManager$updateTask$1 = new FileDownloadTaskManager$updateTask$1(this, continuation);
            }
        } else {
            fileDownloadTaskManager$updateTask$1 = new FileDownloadTaskManager$updateTask$1(this, continuation);
        }
        Object obj2 = fileDownloadTaskManager$updateTask$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = fileDownloadTaskManager$updateTask$1.label;
        Object obj3 = null;
        if (i11 == 0) {
            ResultKt.b(obj2);
            h.f69205a.a("DR_FileDownloadTaskManager", "<updateTask> start");
            kotlinx.coroutines.sync.a aVar2 = f44783d;
            fileDownloadTaskManager$updateTask$1.L$0 = this;
            list2 = list;
            fileDownloadTaskManager$updateTask$1.L$1 = list2;
            fileDownloadTaskManager$updateTask$1.L$2 = aVar2;
            fileDownloadTaskManager$updateTask$1.label = 1;
            if (aVar2.f(null, fileDownloadTaskManager$updateTask$1) == objF) {
                return objF;
            }
            aVar = aVar2;
            fileDownloadTaskManager = this;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (kotlinx.coroutines.sync.a) fileDownloadTaskManager$updateTask$1.L$2;
            list2 = (List) fileDownloadTaskManager$updateTask$1.L$1;
            fileDownloadTaskManager = (FileDownloadTaskManager) fileDownloadTaskManager$updateTask$1.L$0;
            ResultKt.b(obj2);
        }
        try {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            LinkedHashSet linkedHashSet3 = new LinkedHashSet();
            LinkedHashSet linkedHashSet4 = new LinkedHashSet();
            int i12 = 0;
            for (Object obj4 : list2) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    try {
                        CollectionsKt.u();
                    } catch (Throwable th2) {
                        th = th2;
                        obj = obj3;
                        aVar.unlock(obj);
                        throw th;
                    }
                }
                PageData pageData = (PageData) obj4;
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Ref.LongRef longRef = new Ref.LongRef();
                FileDownloadTaskManager fileDownloadTaskManager2 = fileDownloadTaskManager;
                longRef.element = -1L;
                for (Map.Entry entry : f44786g.entrySet()) {
                    LinkedHashSet linkedHashSet5 = linkedHashSet3;
                    long jLongValue = ((Number) entry.getKey()).longValue();
                    ?? r10 = (tl.a) entry.getValue();
                    if (Intrinsics.c(r10.a().getUrl(), pageData.getUrl())) {
                        objectRef.element = r10;
                        longRef.element = jLongValue;
                    }
                    linkedHashSet3 = linkedHashSet5;
                }
                LinkedHashSet linkedHashSet6 = linkedHashSet3;
                if (longRef.element == -1) {
                    linkedHashSet4.add(Boxing.d(i12));
                } else {
                    String versionCode = pageData.getVersionCode();
                    tl.a aVar3 = (tl.a) objectRef.element;
                    if (Intrinsics.c(versionCode, (aVar3 == null || (pageDataA5 = aVar3.a()) == null) ? null : pageDataA5.getVersionCode())) {
                        linkedHashSet = linkedHashSet6;
                        linkedHashSet.add(Boxing.e(longRef.element));
                    } else {
                        linkedHashSet2.add(Boxing.e(longRef.element));
                        linkedHashSet4.add(Boxing.d(i12));
                    }
                    fileDownloadTaskManager = fileDownloadTaskManager2;
                    linkedHashSet3 = linkedHashSet;
                    i12 = i13;
                    obj3 = null;
                }
                linkedHashSet = linkedHashSet6;
                fileDownloadTaskManager = fileDownloadTaskManager2;
                linkedHashSet3 = linkedHashSet;
                i12 = i13;
                obj3 = null;
            }
            FileDownloadTaskManager fileDownloadTaskManager3 = fileDownloadTaskManager;
            LinkedHashSet linkedHashSet7 = linkedHashSet3;
            Iterator it = f44786g.entrySet().iterator();
            while (it.hasNext()) {
                long jLongValue2 = ((Number) ((Map.Entry) it.next()).getKey()).longValue();
                if (!linkedHashSet7.contains(Boxing.e(jLongValue2))) {
                    linkedHashSet2.add(Boxing.e(jLongValue2));
                }
            }
            for (Iterator it2 = linkedHashSet2.iterator(); it2.hasNext(); it2 = it2) {
                tl.a aVar4 = (tl.a) f44786g.remove(Boxing.e(((Number) it2.next()).longValue()));
                h.f69205a.a("DR_FileDownloadTaskManager", "<updateTask> downloadTaskQueue 移除掉的任务 taskId: " + (aVar4 != null ? Boxing.e(aVar4.b()) : null) + ", url:" + ((aVar4 == null || (pageDataA4 = aVar4.a()) == null) ? null : pageDataA4.getUrl()) + ", versionCode:" + ((aVar4 == null || (pageDataA3 = aVar4.a()) == null) ? null : pageDataA3.getVersionCode()) + ", priority:" + ((aVar4 == null || (pageDataA2 = aVar4.a()) == null) ? null : pageDataA2.getPriority()) + ", manifestUrl:" + ((aVar4 == null || (pageDataA = aVar4.a()) == null) ? null : pageDataA.getManifestUrl()));
            }
            Iterator it3 = linkedHashSet4.iterator();
            while (it3.hasNext()) {
                int iIntValue = ((Number) it3.next()).intValue();
                long andAdd = f44782c.getAndAdd(1L);
                PageData pageData2 = (PageData) list2.get(iIntValue);
                h.f69205a.a("DR_FileDownloadTaskManager", "<updateTask> downloadTaskQueue 添加新任务 taskId: " + andAdd + ", url:" + pageData2.getUrl() + ", versionCode:" + pageData2.getVersionCode() + ", priority:" + pageData2.getPriority() + ", manifestUrl:" + pageData2.getManifestUrl());
                f44786g.put(Boxing.e(andAdd), new tl.a(andAdd, pageData2));
                it3 = it3;
                list2 = list2;
            }
            LinkedHashMap linkedHashMap = f44786g;
            Collection collectionValues = linkedHashMap.values();
            Intrinsics.g(collectionValues, "<get-values>(...)");
            List listI0 = CollectionsKt.I0(collectionValues, new Comparator() {
                /* JADX WARN: Multi-variable type inference failed */
                @Override
                public final int compare(T t10, T t11) {
                    Long priority = ((tl.a) t11).a().getPriority();
                    Long lValueOf = Long.valueOf(priority != null ? priority.longValue() : Long.MIN_VALUE);
                    Long priority2 = ((tl.a) t10).a().getPriority();
                    return ComparisonsKt.d(lValueOf, Long.valueOf(priority2 != null ? priority2.longValue() : Long.MIN_VALUE));
                }
            });
            linkedHashMap.clear();
            for (Object obj5 : listI0) {
                Intrinsics.g(obj5, "next(...)");
                tl.a aVar5 = (tl.a) obj5;
                f44786g.put(Boxing.e(aVar5.b()), aVar5);
            }
            Unit unit = Unit.f64096a;
            aVar.unlock(null);
            fileDownloadTaskManager3.k();
            return Unit.f64096a;
        } catch (Throwable th3) {
            th = th3;
            obj = null;
        }
    }

    public final void g(List list) {
        if (!f44781b.get()) {
            h.f69205a.b("DR_FileDownloadTaskManager", "<executeTask> fail, plz init first");
            return;
        }
        if (list != null) {
            if (list.isEmpty()) {
                list = null;
            }
            if (list != null && k.d(f44784e, null, null, new FileDownloadTaskManager$executeTask$2$1(list, null), 3, null) != null) {
                return;
            }
        }
        h.f69205a.f("DR_FileDownloadTaskManager", "<executeTask> fail: h5Pages is null or empty");
        Unit unit = Unit.f64096a;
    }

    public final d h() {
        return f44789j;
    }

    public final String i() {
        return f44788i;
    }

    public final void j(Application context, boolean z10, boolean z11, boolean z12, i api, String path) {
        Intrinsics.h(context, "context");
        Intrinsics.h(api, "api");
        Intrinsics.h(path, "path");
        if (z11) {
            xf.c.a.g(xf.c.f75330a, context, LogType.TYPE_LOGCAT, z12, null, 0L, 24, null);
        }
        if (!f44781b.compareAndSet(false, true)) {
            h.f69205a.f("DR_FileDownloadTaskManager", "<init> already done");
        } else {
            h.f69205a.a("DR_FileDownloadTaskManager", "<init> start");
            k.d(f44784e, null, null, new FileDownloadTaskManager$init$1(path, context, z10, api, null), 3, null);
        }
    }

    public final void l() {
        new com.transsion.lib_web.download_render.init.b().invoke();
    }
}
