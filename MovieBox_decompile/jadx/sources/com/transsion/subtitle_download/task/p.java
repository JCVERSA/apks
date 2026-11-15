package com.transsion.subtitle_download.task;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingDeque;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class p {

    public static final p f53003a = new p();

    private static final LinkedBlockingDeque f53004b = new LinkedBlockingDeque();

    private static volatile boolean f53005c;

    private p() {
    }

    public static void e(p pVar, SubtitleDownloadTable subtitleDownloadTable, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        pVar.d(subtitleDownloadTable, z10);
    }

    private final void f() {
        f53005c = false;
        g();
    }

    private final void g() {
        Object objM453constructorimpl;
        Unit unit;
        if (!f53005c) {
            LinkedBlockingDeque linkedBlockingDeque = f53004b;
            if (!linkedBlockingDeque.isEmpty()) {
                f53005c = true;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    SubtitleDownloadTable subtitleDownloadTable = (SubtitleDownloadTable) linkedBlockingDeque.removeFirst();
                    if (subtitleDownloadTable != null) {
                        int type = subtitleDownloadTable.getType();
                        if (type == 4) {
                            new l().k(subtitleDownloadTable, new Function0() {
                                @Override
                                public final Object invoke() {
                                    return p.h(this.f53000a);
                                }
                            });
                        } else if (type != 5) {
                            new f().k(subtitleDownloadTable, new Function0() {
                                @Override
                                public final Object invoke() {
                                    return p.j(this.f53002a);
                                }
                            });
                        } else {
                            new i().k(subtitleDownloadTable, new Function0() {
                                @Override
                                public final Object invoke() {
                                    return p.i(this.f53001a);
                                }
                            });
                        }
                        unit = Unit.f64096a;
                    } else {
                        unit = null;
                    }
                    objM453constructorimpl = Result.m453constructorimpl(unit);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl == null) {
                    return;
                }
                com.transsion.subtitle_download.utils.b bVar = com.transsion.subtitle_download.utils.b.f53009a;
                p pVar = f53003a;
                bVar.b(pVar.k() + " --> downloadNext() --> 执行下载任务发生异常 -- it = " + Log.getStackTraceString(thM456exceptionOrNullimpl));
                pVar.f();
                return;
            }
        }
        LinkedBlockingDeque linkedBlockingDeque2 = f53004b;
        if (linkedBlockingDeque2.isEmpty()) {
            com.transsion.subtitle_download.utils.b.f53009a.c(k() + " --> downloadNext() --> taskList = " + linkedBlockingDeque2.size() + " -- 当前没有可执行任务了");
        }
    }

    public static final Unit h(p pVar) {
        pVar.f();
        return Unit.f64096a;
    }

    public static final Unit i(p pVar) {
        pVar.f();
        return Unit.f64096a;
    }

    public static final Unit j(p pVar) {
        pVar.f();
        return Unit.f64096a;
    }

    private final String k() {
        String simpleName = p.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void d(SubtitleDownloadTable dbBean, boolean z10) {
        Intrinsics.h(dbBean, "dbBean");
        if (com.transsion.subtitle_download.utils.e.f53012a.i(dbBean.getPath())) {
            com.transsion.subtitle_download.utils.b.f53009a.c(k() + " --> addTaskAndExecute() --> 开始下载字幕 --> 如果字幕资源已经下载完成了，那就直接跳过 --> next() -- getSubtitleInfo = " + dbBean.getSubtitleInfo());
            dbBean.setStatus(5);
            SubtitleDownloadDatabase.Companion dVar = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            dVar.b(applicationA).l0().f(dbBean);
            SubtitleDownloadManager.f52963a.n(dbBean);
            return;
        }
        Iterator it = f53004b.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            if (TextUtils.equals(((SubtitleDownloadTable) it.next()).getId(), dbBean.getId())) {
                z11 = true;
            }
        }
        if (z11) {
            return;
        }
        q.f53006a.d(dbBean);
        if (z10) {
            f53004b.addFirst(dbBean);
        } else {
            f53004b.add(dbBean);
        }
        com.transsion.subtitle_download.utils.b.f53009a.a(k() + " --> addTaskAndExecute() --> 剩余任务数量 -- taskList.size = " + f53004b.size() + " --> isDownloading = " + f53005c + " --> dbBean.failCount = " + dbBean.getFailCount());
        g();
    }
}
