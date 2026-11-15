package com.cloud.hisavana.sdk.manager;

import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.Y0;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.security.SecureRandom;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    public static final a f22061d = new a(null);

    private static final g f22062e = new g();

    private final String f22063a = "RetryTrackingManager";

    private AtomicBoolean f22064b = new AtomicBoolean(false);

    private final int f22065c = 2;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final g a() {
            return g.f22062e;
        }

        private a() {
        }
    }

    public static abstract class b {
        public abstract void a();
    }

    public static abstract class c {
        public abstract void a(String str);

        public abstract void b(String str, int i10);
    }

    public static final class d extends b {

        final DiskTrackingBean f22066a;

        final g f22067b;

        d(DiskTrackingBean diskTrackingBean, g gVar) {
            this.f22066a = diskTrackingBean;
            this.f22067b = gVar;
        }

        public static final void c(g this$0, DiskTrackingBean diskTrackingBean) {
            Intrinsics.h(this$0, "this$0");
            this$0.l(diskTrackingBean.getNext());
        }

        @Override
        public void a() {
            if (this.f22066a.getNext() == null) {
                this.f22067b.f22064b.set(false);
                return;
            }
            HSScopeHelper hSScopeHelper = HSScopeHelper.f22503a;
            final g gVar = this.f22067b;
            final DiskTrackingBean diskTrackingBean = this.f22066a;
            hSScopeHelper.j(new Runnable() {
                @Override
                public final void run() {
                    g.d.c(gVar, diskTrackingBean);
                }
            }, this.f22067b.f());
        }
    }

    public final long f() {
        return (new SecureRandom().nextLong() % ((long) 2000)) + ((long) 1000);
    }

    public static final void k(g this$0) {
        Intrinsics.h(this$0, "this$0");
        List<DiskTrackingBean> listM = N0.f20911e.a().m();
        if (listM == null || listM.isEmpty()) {
            this$0.f22064b.set(false);
            return;
        }
        DiskTrackingBean diskTrackingBean = (DiskTrackingBean) listM.get(0);
        DiskTrackingBean diskTrackingBean2 = diskTrackingBean;
        for (DiskTrackingBean diskTrackingBean3 : listM) {
            if (!Intrinsics.c(diskTrackingBean2, diskTrackingBean3)) {
                diskTrackingBean2.setNext(diskTrackingBean3);
                diskTrackingBean2 = diskTrackingBean3;
            }
        }
        this$0.l(diskTrackingBean);
    }

    public final void l(DiskTrackingBean diskTrackingBean) {
        b4.b().d(this.f22063a, "tracking " + diskTrackingBean);
        if (diskTrackingBean == null) {
            return;
        }
        if (diskTrackingBean.getRetryTimes().get() >= this.f22065c) {
            j(diskTrackingBean);
            l(diskTrackingBean.getNext());
        } else if (NetStateManager.checkNetworkState(true)) {
            Y0.g(diskTrackingBean, new d(diskTrackingBean, this));
        } else {
            this.f22064b.set(false);
            b4.b().d(this.f22063a, "tracking,net is not ok");
        }
    }

    public final void d(DiskTrackingBean diskTrackingBean) {
        if (diskTrackingBean != null) {
            diskTrackingBean.getRetryTimes().addAndGet(1);
            if (diskTrackingBean.getRetryTimes().get() >= this.f22065c) {
                j(diskTrackingBean);
            } else {
                N0.f20911e.a().l(diskTrackingBean);
            }
        }
    }

    public final void h(DiskTrackingBean diskTrackingBean) {
        String uuid;
        b4.b().d(this.f22063a, "addTrackingBean " + diskTrackingBean);
        N0.a aVar = N0.f20911e;
        aVar.a().k();
        N0 n0A = aVar.a();
        if (diskTrackingBean == null || (uuid = diskTrackingBean.getUuid()) == null) {
            uuid = "";
        }
        if (n0A.h(uuid) == null) {
            aVar.a().j(diskTrackingBean);
        }
    }

    public final void i() {
        if (this.f22064b.get()) {
            b4.b().d(this.f22063a, "startRetryTracking,is retrying");
        } else {
            this.f22064b.set(true);
            HSScopeHelper.f22503a.i(new Runnable() {
                @Override
                public final void run() {
                    g.k(this.f22060a);
                }
            });
        }
    }

    public final void j(DiskTrackingBean diskTrackingBean) {
        if (diskTrackingBean != null) {
            N0.f20911e.a().f(diskTrackingBean.getUuid());
        }
    }
}
