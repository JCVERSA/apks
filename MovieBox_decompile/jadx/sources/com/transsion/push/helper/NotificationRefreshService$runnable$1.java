package com.transsion.push.helper;

import android.app.Application;
import android.app.NotificationManager;
import android.os.Handler;
import android.service.notification.StatusBarNotification;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.notification.MsgBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.SoftReference;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/transsion/push/helper/NotificationRefreshService$runnable$1", "Ljava/lang/Runnable;", "run", "", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class NotificationRefreshService$runnable$1 implements Runnable {
    final NotificationRefreshService this$0;

    NotificationRefreshService$runnable$1(NotificationRefreshService notificationRefreshService) {
        this.this$0 = notificationRefreshService;
    }

    public static final boolean run$lambda$0(SoftReference softReference) {
        return softReference.get() == null;
    }

    @Override
    public void run() {
        StatusBarNotification[] activeNotifications;
        StatusBarNotification statusBarNotification;
        CollectionsKt.I(this.this$0.msgList, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return Boolean.valueOf(NotificationRefreshService$runnable$1.run$lambda$0((SoftReference) obj));
            }
        });
        try {
            NotificationManager notificationManager = this.this$0.manager;
            activeNotifications = notificationManager != null ? notificationManager.getActiveNotifications() : null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        Integer numValueOf = activeNotifications != null ? Integer.valueOf(activeNotifications.length) : null;
        wf.a.C0922a.f(c0922a, "NoticeRefreshHelper", "onRepeat, currentNotifications: " + numValueOf + " msgList: " + this.this$0.msgList.size(), false, 4, null);
        int length = activeNotifications != null ? activeNotifications.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            Integer numValueOf2 = (activeNotifications == null || (statusBarNotification = activeNotifications[i10]) == null) ? null : Integer.valueOf(statusBarNotification.getId());
            Iterator it = this.this$0.msgList.iterator();
            Intrinsics.g(it, "iterator(...)");
            MsgBean msgBean = null;
            while (it.hasNext()) {
                MsgBean msgBean2 = (MsgBean) ((SoftReference) it.next()).get();
                if (msgBean2 != null) {
                    int iL = NotificationShowHelper.f48744a.l(msgBean2.getMessageId());
                    if (numValueOf2 != null && iL == numValueOf2.intValue()) {
                        msgBean2.setRefresh(true);
                        Application applicationA = Utils.a();
                        if (applicationA != null) {
                            e.f48766a.j(applicationA, msgBean2);
                        }
                    }
                }
                if (msgBean2 != null && msgBean2.getIsPermanent()) {
                    int iO = NotificationShowHelper.f48744a.o();
                    if (numValueOf2 != null && iO == numValueOf2.intValue()) {
                        msgBean = msgBean2;
                    }
                }
            }
            if (msgBean != null) {
                msgBean.setRefresh(true);
                Application applicationA2 = Utils.a();
                if (applicationA2 != null) {
                    e.f48766a.j(applicationA2, msgBean);
                }
            }
        }
        Handler handler = this.this$0.handler;
        if (handler != null) {
            handler.postDelayed(this, 30000L);
        }
    }
}
