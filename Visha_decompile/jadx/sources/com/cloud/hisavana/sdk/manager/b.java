package com.cloud.hisavana.sdk.manager;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.Y0;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.k1;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import defpackage.e74;
import defpackage.el0;
import defpackage.ikd;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.security.SecureRandom;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;

public final class b {
    public static final a e = new a(null);
    public static final b f = new b();
    public final String a = "RetryTrackingManager";
    public AtomicBoolean b = new AtomicBoolean(false);
    public final int c = 2;
    public final SecureRandom d = new SecureRandom();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a() {
            return b.f;
        }

        public a() {
        }
    }

    public static abstract class AbstractC0053b {
        public abstract void a();
    }

    public static abstract class c {
        public abstract void a(String str);

        public abstract void b(String str, int i);
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.RetryTrackingManager$addTrackingBean$1", f = "RetryTrackingManager.kt", l = {}, m = "invokeSuspend")
    public static final class d extends SuspendLambda implements s74 {
        int a;
        final DiskTrackingBean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DiskTrackingBean diskTrackingBean, wh1<? super d> wh1Var) {
            super(2, wh1Var);
            this.c = diskTrackingBean;
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((d) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return b.this.new d(this.c, wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            String uuid;
            z45.f();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.c.b(obj);
            ikd.b().d(b.this.a, "addTrackingBean " + this.c);
            Y0.a aVar = Y0.e;
            aVar.a().i();
            Y0 y0A = aVar.a();
            DiskTrackingBean diskTrackingBean = this.c;
            if (diskTrackingBean == null || (uuid = diskTrackingBean.getUuid()) == null) {
                uuid = "";
            }
            if (y0A.f(uuid) == null) {
                aVar.a().h(this.c);
            }
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/Function1;", "Lzfb;", "resume", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(Le74;)V"}, k = 3, mv = {1, 9, 0})
    public static final class e extends Lambda implements e74 {
        final DiskTrackingBean a;

        public static final class a extends AbstractC0053b {
            public final e74 a;

            public a(e74 e74Var) {
                this.a = e74Var;
            }

            @Override
            public void a() {
                this.a.invoke(zfb.a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DiskTrackingBean diskTrackingBean) {
            super(1);
            this.a = diskTrackingBean;
        }

        public final void a(e74 e74Var) {
            y45.j(e74Var, "resume");
            k1.g(this.a, new a(e74Var));
        }

        @Override
        public Object invoke(Object obj) {
            a((e74) obj);
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 9, 0})
    @nt1(c = "com.cloud.hisavana.sdk.manager.RetryTrackingManager$startRetryTracking$1", f = "RetryTrackingManager.kt", l = {43, 44}, m = "invokeSuspend")
    public static final class f extends SuspendLambda implements s74 {
        Object a;
        int b;

        public f(wh1<? super f> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((f) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return b.this.new f(wh1Var);
        }

        /* JADX WARN: Code duplicated, block: B:25:0x0054 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:7:0x0013, B:23:0x004e, B:25:0x0054, B:27:0x006a, B:28:0x0070, B:30:0x0076, B:31:0x0087, B:34:0x00b3, B:14:0x0026, B:17:0x002e, B:19:0x003e, B:22:0x004a), top: B:41:0x0009 }] */
        /* JADX WARN: Code duplicated, block: B:27:0x006a A[Catch: all -> 0x0017, LOOP:0: B:23:0x004e->B:27:0x006a, LOOP_END, TryCatch #0 {all -> 0x0017, blocks: (B:7:0x0013, B:23:0x004e, B:25:0x0054, B:27:0x006a, B:28:0x0070, B:30:0x0076, B:31:0x0087, B:34:0x00b3, B:14:0x0026, B:17:0x002e, B:19:0x003e, B:22:0x004a), top: B:41:0x0009 }] */
        /* JADX WARN: Code duplicated, block: B:30:0x0076 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:7:0x0013, B:23:0x004e, B:25:0x0054, B:27:0x006a, B:28:0x0070, B:30:0x0076, B:31:0x0087, B:34:0x00b3, B:14:0x0026, B:17:0x002e, B:19:0x003e, B:22:0x004a), top: B:41:0x0009 }] */
        /* JADX WARN: Code duplicated, block: B:31:0x0087 A[Catch: all -> 0x0017, TryCatch #0 {all -> 0x0017, blocks: (B:7:0x0013, B:23:0x004e, B:25:0x0054, B:27:0x006a, B:28:0x0070, B:30:0x0076, B:31:0x0087, B:34:0x00b3, B:14:0x0026, B:17:0x002e, B:19:0x003e, B:22:0x004a), top: B:41:0x0009 }] */
        /* JADX WARN: Code duplicated, block: B:33:0x00b2 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:43:0x0070 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:23:0x004e). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                Method dump skipped, instruction units count: 218
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cloud.hisavana.sdk.manager.b.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Object c(DiskTrackingBean diskTrackingBean, wh1 wh1Var) {
        return HSCommonUtils.a.w(10000L, new e(diskTrackingBean), wh1Var);
    }

    public final void e(DiskTrackingBean diskTrackingBean) {
        if (diskTrackingBean != null) {
            if (diskTrackingBean.getRetryTimes().addAndGet(1) >= this.c) {
                k(diskTrackingBean);
            } else {
                Y0.e.a().j(diskTrackingBean);
            }
        }
    }

    public final long f() {
        long j = 2000;
        long jNextLong = this.d.nextLong() % j;
        if (jNextLong < 0) {
            jNextLong += j;
        }
        return jNextLong + ((long) 1000);
    }

    public final void h(DiskTrackingBean diskTrackingBean) {
        HSScopeHelper hSScopeHelper = HSScopeHelper.a;
        el0.d(hSScopeHelper.f(), hSScopeHelper.e(), null, new d(diskTrackingBean, null), 2, null);
    }

    public final void j() {
        if (!this.b.compareAndSet(false, true)) {
            ikd.b().d(this.a, "startRetryTracking,is retrying");
        } else {
            HSScopeHelper hSScopeHelper = HSScopeHelper.a;
            el0.d(hSScopeHelper.f(), hSScopeHelper.e(), null, new f(null), 2, null);
        }
    }

    public final void k(DiskTrackingBean diskTrackingBean) {
        if (diskTrackingBean != null) {
            Y0.e.a().d(diskTrackingBean.getUuid());
        }
    }
}
