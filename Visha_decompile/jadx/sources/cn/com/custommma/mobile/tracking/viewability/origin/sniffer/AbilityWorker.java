package cn.com.custommma.mobile.tracking.viewability.origin.sniffer;

import android.content.Context;
import android.content.Intent;
import cn.com.custommma.mobile.tracking.api.Countly;
import cn.com.custommma.mobile.tracking.api.ViewAbilityHandler;
import cn.com.custommma.mobile.tracking.viewability.origin.CallBack;
import defpackage.k2;
import defpackage.oe5;
import defpackage.tbc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TimerTask;

public abstract class AbilityWorker implements k2 {

    class AnonymousClass1 implements Runnable {
        final AbilityWorker this$0;
        final CallBack val$callBack;
        final ViewAbilityHandler.MonitorType val$monitorType;
        final String val$trackURL;

        public AnonymousClass1(AbilityWorker abilityWorker, String str, CallBack callBack, ViewAbilityHandler.MonitorType monitorType) {
            this.val$trackURL = str;
            this.val$callBack = callBack;
            this.val$monitorType = monitorType;
        }

        @Override
        public void run() {
            AbilityWorker.a(null).a(this.val$trackURL, this.val$callBack, this.val$monitorType);
            oe5.g(",ID:" + this.val$trackURL + "监测完成,移除对应的数据");
            if (Countly.n) {
                AbilityWorker.b(null).sendBroadcast(new Intent(Countly.p));
            }
        }
    }

    public final class WorkTask extends TimerTask {
        final AbilityWorker this$0;

        private WorkTask(AbilityWorker abilityWorker) {
        }

        private void cacheWorks() {
            try {
                AbilityWorker.e(null, 0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @Override
        public void run() {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                int size = AbilityWorker.c(null).size();
                if (size == 0) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                oe5.g("<-----------------------------Time Line Begin [" + Thread.currentThread().getId() + "]--------------------------------------------------->");
                for (String str : AbilityWorker.c(null).keySet()) {
                    ViewAbilityExplorer viewAbilityExplorer = (ViewAbilityExplorer) AbilityWorker.c(null).get(str);
                    AbilityStatus abilityStatus = viewAbilityExplorer.getAbilityStatus();
                    if (abilityStatus == AbilityStatus.UPLOADED) {
                        arrayList.add(str);
                    } else if (abilityStatus == AbilityStatus.EXPLORERING) {
                        viewAbilityExplorer.onExplore(AbilityWorker.b(null));
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    AbilityWorker.c(null).remove((String) it.next());
                }
                if (AbilityWorker.d(null) > 10) {
                    cacheWorks();
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                AbilityWorker.f(null);
                oe5.a("index:" + AbilityWorker.d(null) + " cost:" + jCurrentTimeMillis2 + "ms, workExplorers length:" + size);
                StringBuilder sb = new StringBuilder();
                sb.append("<-----------------------------Time Line end [");
                sb.append(Thread.currentThread().getId());
                sb.append("]--------------------------------------------------->");
                oe5.g(sb.toString());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public WorkTask(AbilityWorker abilityWorker, AnonymousClass1 anonymousClass1) {
            this(abilityWorker);
        }
    }

    public static tbc a(AbilityWorker abilityWorker) {
        throw null;
    }

    public static Context b(AbilityWorker abilityWorker) {
        throw null;
    }

    public static HashMap c(AbilityWorker abilityWorker) {
        throw null;
    }

    public static int d(AbilityWorker abilityWorker) {
        throw null;
    }

    public static int e(AbilityWorker abilityWorker, int i) {
        throw null;
    }

    public static int f(AbilityWorker abilityWorker) {
        throw null;
    }
}
