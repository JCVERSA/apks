package com.transsion.onlinevideo.history;

import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.HistoryUserBean;
import com.transsion.dbdata.database.OnlineVideoDatabase;
import com.transsion.onlinevideo.history.HistoryManager;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.gu8;
import defpackage.iia;
import defpackage.jq0;
import defpackage.sg7;
import defpackage.tq0;
import defpackage.zf7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class HistoryManager {

    public class a implements tq0 {
        public final HistoryUserBean[] b;
        public final String c;

        public a(HistoryUserBean[] historyUserBeanArr, String str) {
            this.b = historyUserBeanArr;
            this.c = str;
        }

        public static void c(HistoryUserBean[] historyUserBeanArr, String str) {
            List<HistoryUserBean> historyUserBeanByVideoIdIntact;
            sg7 sg7VarC = OnlineVideoDatabase.a().c();
            for (HistoryUserBean historyUserBean : historyUserBeanArr) {
                if (historyUserBean.videoIsTact() && (historyUserBeanByVideoIdIntact = sg7VarC.getHistoryUserBeanByVideoIdIntact(historyUserBean.videoId)) != null) {
                    sg7VarC.deleteHistories(historyUserBeanByVideoIdIntact);
                }
                historyUserBean.userId = str == null ? 0L : str.hashCode();
                historyUserBean.isUploaded = 1;
                sg7VarC.insertHistory(historyUserBean);
            }
        }

        public static void d(HistoryUserBean[] historyUserBeanArr, String str, gu8 gu8Var) {
            List<HistoryUserBean> historyUserBeanByVideoIdIntact;
            sg7 sg7VarC = OnlineVideoDatabase.a().c();
            for (HistoryUserBean historyUserBean : historyUserBeanArr) {
                if (historyUserBean.videoIsTact() && (historyUserBeanByVideoIdIntact = sg7VarC.getHistoryUserBeanByVideoIdIntact(historyUserBean.videoId)) != null) {
                    sg7VarC.deleteHistories(historyUserBeanByVideoIdIntact);
                }
                historyUserBean.userId = str == null ? 0L : str.hashCode();
                historyUserBean.isUploaded = (gu8Var.a() == null || !((BaseResponse) gu8Var.a()).isSuccess()) ? 1 : 0;
                sg7VarC.insertHistory(historyUserBean);
            }
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
            LogUtils.m("HistoryManager", "uploadUserHistory: onFailure");
            final HistoryUserBean[] historyUserBeanArr = this.b;
            final String str = this.c;
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    HistoryManager.a.c(historyUserBeanArr, str);
                }
            });
        }

        @Override
        public void onResponse(jq0 jq0Var, final gu8 gu8Var) {
            final HistoryUserBean[] historyUserBeanArr = this.b;
            final String str = this.c;
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    HistoryManager.a.d(historyUserBeanArr, str, gu8Var);
                }
            });
        }
    }

    public class b implements tq0 {
        public final sg7 b;

        public b(sg7 sg7Var) {
            this.b = sg7Var;
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
            LogUtils.m("HistoryManager", "uploadHistory: onFailure");
        }

        @Override
        public void onResponse(jq0 jq0Var, gu8 gu8Var) {
            LogUtils.j("HistoryManager", "uploadHistory: onResponse");
            final sg7 sg7Var = this.b;
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    sg7Var.changeAllUploadStatus();
                }
            });
        }
    }

    public class c implements tq0 {
        public static void b(gu8 gu8Var) {
            if (gu8Var.a() == null || ((BaseResponse) gu8Var.a()).getData() == null) {
                return;
            }
            List<HistoryUserBean> list = (List) ((BaseResponse) gu8Var.a()).getData();
            Log.i("HistoryManager", "getHistory count: " + list.size());
            if (list.isEmpty()) {
                return;
            }
            sg7 sg7VarC = OnlineVideoDatabase.a().c();
            sg7VarC.deleteSyncUserHistory();
            sg7VarC.insertHistories(list);
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
        }

        @Override
        public void onResponse(jq0 jq0Var, final gu8 gu8Var) {
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    HistoryManager.c.b(gu8Var);
                }
            });
        }
    }

    public class d implements tq0 {
        public final List b;

        public d(List list) {
            this.b = list;
        }

        public static void b(List list) {
            sg7 sg7VarC = OnlineVideoDatabase.a().c();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                HistoryUserBean historyUserBean = (HistoryUserBean) it.next();
                historyUserBean.setIsUploaded();
                sg7VarC.insertHistory(historyUserBean);
            }
        }

        @Override
        public void onFailure(jq0 jq0Var, Throwable th) {
            LogUtils.m("HistoryManager", "syncLocalHistory onFailure ");
        }

        @Override
        public void onResponse(jq0 jq0Var, gu8 gu8Var) {
            LogUtils.j("HistoryManager", "syncLocalHistory:onResponse");
            final List list = this.b;
            iia.a(new Runnable() {
                @Override
                public final void run() {
                    HistoryManager.d.b(list);
                }
            });
        }
    }

    public static List e() {
        List<HistoryUserBean> allHistoryUserBean = OnlineVideoDatabase.a().c().getAllHistoryUserBean();
        if (allHistoryUserBean == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (HistoryUserBean historyUserBean : allHistoryUserBean) {
            if (!historyUserBean.isUploaded()) {
                arrayList.add(historyUserBean);
            }
        }
        return arrayList;
    }

    public static void f(final List list) {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                HistoryManager.i(list);
            }
        });
    }

    public static void g() {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                HistoryManager.j();
            }
        });
    }

    public static void h() {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getPlayHistory().enqueue(new c());
    }

    public static void i(List list) {
        if (list == null || list.size() == 0) {
            return;
        }
        final ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            HistoryBean historyBean = (HistoryBean) it.next();
            HistoryUserBean historyUserBeanValueOfUserBean = HistoryUserBean.valueOfUserBean(historyBean);
            historyUserBeanValueOfUserBean.setIsDeleted();
            arrayList.add(historyUserBeanValueOfUserBean);
            if (historyBean.getmIsYoutube() == 1) {
                arrayList2.add(historyBean);
            }
        }
        if (arrayList2.size() > 0) {
            OnlineVideoDatabase.a().b().deleteHistories(arrayList2);
        }
        OnlineVideoDatabase.a().c().insertHistories(arrayList);
        int size = list.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = ((HistoryBean) list.get(i)).recordId;
        }
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).deletePlayHistory(jArr).enqueue(new tq0() {
            @Override
            public void onFailure(jq0 jq0Var, Throwable th) {
            }

            @Override
            public void onResponse(jq0 jq0Var, gu8 gu8Var) {
                iia.a(new Runnable() {
                    @Override
                    public void run() {
                        OnlineVideoDatabase.a().c().deleteHistories(arrayList);
                    }
                });
            }
        });
    }

    public static void j() {
        OnlineVideoDatabase.a().c().deleteAll();
    }

    public static void k() {
        List listE = e();
        if (listE == null && listE.size() == 0) {
            return;
        }
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).uploadPlayHistory((HistoryUserBean[]) listE.toArray(new HistoryUserBean[listE.size()])).enqueue(new d(listE));
    }

    public static void l(List list) {
        if (list == null || list.size() == 0) {
            return;
        }
        sg7 sg7VarC = OnlineVideoDatabase.a().c();
        zf7 zf7VarB = OnlineVideoDatabase.a().b();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            HistoryBean historyBean = (HistoryBean) it.next();
            HistoryUserBean.valueOfUserBean(historyBean).isUploaded = 1;
            arrayList.add(HistoryUserBean.valueOfUserBean(historyBean));
        }
        sg7VarC.insertHistories(arrayList);
        zf7VarB.deleteHistories(list);
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).uploadPlayHistory((List<HistoryBean>) list).enqueue(new b(sg7VarC));
    }

    public static void m() {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                HistoryManager.k();
            }
        });
    }

    public static void n(final List list) {
        iia.a(new Runnable() {
            @Override
            public final void run() {
                HistoryManager.l(list);
            }
        });
    }

    public static void o(HistoryUserBean[] historyUserBeanArr, String str) {
        if (historyUserBeanArr == null || historyUserBeanArr.length == 0) {
            return;
        }
        LogUtils.j("HistoryManager", "uploadUserHistory: list count " + historyUserBeanArr.length);
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).uploadPlayHistory(historyUserBeanArr).enqueue(new a(historyUserBeanArr, str));
    }
}
