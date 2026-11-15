package com.mgtv.data.aphone.core.g;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import androidx.browser.trusted.sharing.ShareTarget;
import com.mgtv.data.aphone.core.bean.EventBean;
import com.mgtv.data.aphone.core.bean.OffLineHbBean;
import com.mgtv.data.aphone.core.db.SDKResumeHttpOflHbTaskColumn;
import com.mgtv.data.aphone.core.db.e;
import com.mgtv.data.aphone.core.j.c;
import com.mgtv.data.aphone.core.j.g;
import com.mgtv.data.aphone.core.j.i;
import com.mgtv.data.aphone.core.j.j;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class a extends BroadcastReceiver {
    private static final String a = "a";
    private ExecutorService b;
    private List<Callable<Boolean>> c;
    private List<Future<Boolean>> d;
    private int e;

    private void a(Context context) {
        if (g.a(context)) {
            a(context, e.a(context, com.mgtv.data.aphone.core.db.a.a), com.mgtv.data.aphone.core.db.a.a);
            a(context, e.a(context, com.mgtv.data.aphone.core.db.a.b), com.mgtv.data.aphone.core.db.a.b);
            b(context);
        }
    }

    @TargetApi(11)
    private void b(Context context) {
        try {
            ExecutorService executorService = (ExecutorService) AsyncTask.THREAD_POOL_EXECUTOR;
            ArrayList arrayList = new ArrayList();
            final List<OffLineHbBean> listB = e.b(context, SDKResumeHttpOflHbTaskColumn.TABLE, null, null);
            for (final int i = 0; i < listB.size() && i <= 100; i++) {
                arrayList.add(new Callable<Boolean>() {
                    @Override
                    public Boolean call() throws Exception {
                        return new com.mgtv.data.aphone.b.a().a(((OffLineHbBean) listB.get(i)).url, ((OffLineHbBean) listB.get(i)).eventId, ((OffLineHbBean) listB.get(i)).bid, ((OffLineHbBean) listB.get(i)).params).a == 200 ? Boolean.TRUE : Boolean.FALSE;
                    }
                });
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(executorService.submit((Callable) it.next()));
            }
            int size = arrayList2.size();
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Future future = (Future) it2.next();
                if (future.isDone()) {
                    try {
                        if (((Boolean) future.get()).booleanValue()) {
                            it2.remove();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            int size2 = arrayList2.size();
            c.b("big_data_sdk", "################### 离线数据库表： mgtv_data_oflhb_reporter  离线总任务数:" + size + "   离线剩余任务数:" + size2 + " 离线完成任务数:" + (size - size2));
            if (size > 0) {
                c.b("big_data_sdk", "##################### 清空离线数据库表： mgtv_data_oflhb_reporter");
                e.a(context, SDKResumeHttpOflHbTaskColumn.TABLE, true);
            }
        } catch (Exception unused) {
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
        NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
        if (connectivityManager.getActiveNetworkInfo() != null) {
            if (networkInfo2 == null && networkInfo == null) {
                return;
            }
            a(context);
            c.b("big_data_sdk", "##################### NetStatusBroadcastReceiver onReceive isWifi:" + com.mgtv.data.aphone.core.e.c.a);
            if (!com.mgtv.data.aphone.core.e.c.a || com.mgtv.data.aphone.core.e.e.b) {
                return;
            }
            com.mgtv.data.aphone.core.e.c.a(context).a(com.mgtv.data.aphone.core.e.c.a);
            b(context);
            c.b("big_data_sdk", "##################### NetStatusBroadcastReceiver offlineHbDataReporter() if");
        }
    }

    private void a(Context context, List<EventBean> list, String str) {
        EventBean eventBean;
        this.b = Executors.newCachedThreadPool();
        this.c = new ArrayList();
        new EventBean();
        new EventBean();
        int i = 0;
        while (i < list.size()) {
            EventBean eventBean2 = list.get(i);
            i++;
            if (i < list.size()) {
                eventBean = list.get(i);
            } else {
                eventBean = new EventBean();
            }
            if (i.a(eventBean2.bid) || i.a(eventBean.bid) || !eventBean2.bid.equals(eventBean.bid)) {
                final List<EventBean> listA = e.a(context, str, eventBean2.bid, eventBean2.eventId);
                final StringBuffer stringBuffer = new StringBuffer();
                if (listA != null && listA.size() > 0 && listA.get(0).method.equals("POST")) {
                    if (listA.size() > 1) {
                        stringBuffer.append("[");
                        Iterator<EventBean> it = listA.iterator();
                        while (it.hasNext()) {
                            stringBuffer.append(it.next().params.replace("[", "").replace("]", ""));
                            stringBuffer.append(StringUtils.COMMA);
                        }
                        stringBuffer.append("]");
                        int iLastIndexOf = stringBuffer.lastIndexOf(StringUtils.COMMA);
                        stringBuffer.replace(iLastIndexOf, iLastIndexOf + 1, "");
                    } else {
                        stringBuffer.append(listA.get(0).params);
                    }
                    this.c.add(new Callable<Boolean>() {
                        @Override
                        public Boolean call() throws Exception {
                            return new com.mgtv.data.aphone.b.a().a(((EventBean) listA.get(0)).url, ((EventBean) listA.get(0)).eventId, ((EventBean) listA.get(0)).bid, stringBuffer.toString()).a == 200 ? Boolean.TRUE : Boolean.FALSE;
                        }
                    });
                } else if (listA != null && listA.size() > 0 && listA.get(0).method.equals(ShareTarget.METHOD_GET)) {
                    for (final EventBean eventBean3 : listA) {
                        this.c.add(new Callable<Boolean>() {
                            @Override
                            public Boolean call() throws Exception {
                                com.mgtv.data.aphone.b.a aVar = new com.mgtv.data.aphone.b.a();
                                EventBean eventBean4 = eventBean3;
                                return aVar.a(eventBean4.url, eventBean4.eventId, eventBean4.bid, j.a(eventBean4.params)).a == 200 ? Boolean.TRUE : Boolean.FALSE;
                            }
                        });
                    }
                }
            }
        }
        this.d = new ArrayList();
        Iterator<Callable<Boolean>> it2 = this.c.iterator();
        while (it2.hasNext()) {
            this.d.add(this.b.submit(it2.next()));
        }
        this.e = this.d.size();
        int iA = (int) a();
        c.b("big_data_sdk", "################### 数据库表： " + str + "  总任务数:" + this.e + "   剩余任务数:" + iA + " 完成任务数:" + (this.e - iA));
        if (this.e > 0) {
            c.b("big_data_sdk", "##################### 清空 数据库表： " + str);
            e.a(context, str, false);
        }
    }

    private float a() {
        Iterator<Future<Boolean>> it = this.d.iterator();
        while (it.hasNext()) {
            Future<Boolean> next = it.next();
            if (next.isDone()) {
                try {
                    if (next.get().booleanValue()) {
                        it.remove();
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return this.d.size();
    }
}
