package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import defpackage.abb;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;

public final class e31 implements sd1 {
    private final Context a;
    private final od1 b;
    private final j62 c;
    private final String d;
    private final s9 e;
    private final a f;
    private final v9 g;
    private final pw1 h;
    private final r62 i;
    private final ArrayList j;
    private uk0 k;
    private boolean l;
    private boolean m;

    @VisibleForTesting
    public static final class a extends Handler {
        private final od1 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Looper looper, od1 od1Var) {
            super(looper);
            y45.j(looper, "looper");
            y45.j(od1Var, "noticeReportController");
            this.a = od1Var;
        }

        @Override
        public final void handleMessage(Message message) {
            long jElapsedRealtime;
            y45.j(message, NotificationCompat.CATEGORY_MESSAGE);
            int i = message.what;
            if (i == 1) {
                Object obj = message.obj;
                y45.h(obj, "null cannot be cast to non-null type kotlin.Pair<java.lang.ref.WeakReference<com.monetization.ads.base.impression.tracking.MrcNoticeTrackingManager>, com.monetization.ads.base.impression.tracking.model.TrackingNotice>");
                Pair pair = (Pair) obj;
                e31 e31Var = (e31) ((WeakReference) pair.getFirst()).get();
                if (e31Var != null) {
                    q62 q62Var = (q62) pair.getSecond();
                    sp0.d(e31Var.d);
                    n92 n92VarA = e31.a(e31Var, q62Var);
                    e31Var.a(q62Var, n92VarA);
                    if (!e31.a(n92VarA)) {
                        q62Var.a(null);
                        e31Var.b();
                        return;
                    }
                    e31Var.j.remove(q62Var);
                    e31Var.e();
                    od1 od1Var = this.a;
                    fy1 fy1VarC = q62Var.c();
                    ArrayList arrayList = e31Var.j;
                    ArrayList arrayList2 = new ArrayList(defpackage.z71.v(arrayList, 10));
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(((q62) it.next()).c());
                    }
                    od1Var.a(fy1VarC, arrayList2);
                    return;
                }
                return;
            }
            if (i != 2) {
                return;
            }
            Object obj2 = message.obj;
            y45.h(obj2, "null cannot be cast to non-null type java.lang.ref.WeakReference<com.monetization.ads.base.impression.tracking.MrcNoticeTrackingManager?>");
            e31 e31Var2 = (e31) ((WeakReference) obj2).get();
            if (e31Var2 != null) {
                sp0.d(Integer.valueOf(e31Var2.j.size()), e31Var2.d);
                for (q62 q62Var2 : e31Var2.j) {
                    n92 n92VarA2 = e31.a(e31Var2, q62Var2);
                    if (e31.a(n92VarA2)) {
                        Long lB = q62Var2.b();
                        if (lB != null) {
                            jElapsedRealtime = lB.longValue();
                        } else {
                            jElapsedRealtime = SystemClock.elapsedRealtime();
                            q62Var2.a(Long.valueOf(jElapsedRealtime));
                        }
                        if (SystemClock.elapsedRealtime() - jElapsedRealtime >= q62Var2.a()) {
                            e31Var2.f.sendMessage(Message.obtain(e31Var2.f, 1, abb.a(new WeakReference(e31Var2), q62Var2)));
                        }
                        e31Var2.f();
                        this.a.a(q62Var2.c());
                    } else {
                        q62Var2.a(null);
                        this.a.a(q62Var2.c(), n92VarA2);
                    }
                }
                if (e31Var2.d()) {
                    e31Var2.f.sendMessageDelayed(Message.obtain(e31Var2.f, 2, new WeakReference(e31Var2)), 200L);
                }
            }
        }
    }

    public e31(Context context, o3 o3Var, od1 od1Var, j62 j62Var, String str, s9 s9Var, a aVar, v9 v9Var, pw1 pw1Var, r62 r62Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(od1Var, "noticeReportController");
        y45.j(j62Var, "trackingChecker");
        y45.j(str, "viewControllerDescription");
        y45.j(s9Var, "adStructureType");
        y45.j(aVar, "handler");
        y45.j(v9Var, "adTracker");
        y45.j(pw1Var, "sdkSettings");
        y45.j(r62Var, "trackingNoticeBuilder");
        this.a = context;
        this.b = od1Var;
        this.c = j62Var;
        this.d = str;
        this.e = s9Var;
        this.f = aVar;
        this.g = v9Var;
        this.h = pw1Var;
        this.i = r62Var;
        this.j = new ArrayList();
    }

    public final void e() {
        if (this.m || !this.j.isEmpty()) {
            return;
        }
        this.m = true;
        uk0 uk0Var = this.k;
        if (uk0Var != null) {
            uk0Var.g();
        }
    }

    public final void f() {
        if (this.l) {
            return;
        }
        this.l = true;
        uk0 uk0Var = this.k;
        if (uk0Var != null) {
            uk0Var.c();
        }
    }

    public static final boolean a(n92 n92Var) {
        return n92Var.b() == n92.a.c;
    }

    public final synchronized boolean d() {
        return this.j.size() > 0;
    }

    @Override
    public final synchronized void b() {
        sp0.d(new Object[0]);
        if (gh1.h.a(this.a).b() && !this.j.isEmpty() && d() && !this.f.hasMessages(2)) {
            a aVar = this.f;
            aVar.sendMessage(Message.obtain(aVar, 2, new WeakReference(this)));
        }
    }

    @Override
    public final synchronized void c() {
        try {
            sp0.d(Integer.valueOf(this.j.size()), this.d);
            a();
            ArrayList arrayList = new ArrayList();
            Iterator it = this.j.iterator();
            while (it.hasNext()) {
                q62 q62Var = (q62) it.next();
                ju1 ju1VarA = this.h.a(this.a);
                n92 n92VarA = (ju1VarA == null || !ju1VarA.g0()) ? this.c.a(q62Var.e()) : this.c.b(q62Var.e());
                sp0.d(n92VarA.b().a());
                a(q62Var, n92VarA);
                if (n92VarA.b() == n92.a.c) {
                    it.remove();
                    f();
                    e();
                    this.b.a(q62Var.c());
                    od1 od1Var = this.b;
                    fy1 fy1VarC = q62Var.c();
                    ArrayList arrayList2 = this.j;
                    ArrayList arrayList3 = new ArrayList(defpackage.z71.v(arrayList2, 10));
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        arrayList3.add(((q62) it2.next()).c());
                    }
                    od1Var.a(fy1VarC, arrayList3);
                } else {
                    arrayList.add(new ud1(q62Var, n92VarA));
                }
            }
            this.b.a(arrayList);
            b();
        } catch (Throwable th) {
            throw th;
        }
    }

    public static final n92 a(e31 e31Var, q62 q62Var) {
        n92 n92VarB = e31Var.c.b(q62Var.e());
        sp0.d(n92VarB.b().a());
        return n92VarB;
    }

    @VisibleForTesting
    public final synchronized void a(List<ey1> list) {
        fy1 fy1Var;
        fy1 fy1Var2;
        try {
            y45.j(list, "showNotices");
            this.j.clear();
            r62 r62Var = this.i;
            s9 s9Var = this.e;
            r62Var.getClass();
            y45.j(s9Var, "adStructureType");
            y45.j(list, "showNotices");
            ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((ey1) it.next()).b());
            }
            Set setG1 = defpackage.i81.g1(arrayList);
            int iOrdinal = s9Var.ordinal();
            if (iOrdinal == 0) {
                if (!(setG1 instanceof Collection) || !setG1.isEmpty()) {
                    Iterator it2 = setG1.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (((fy1) it2.next()) == fy1.c) {
                                fy1Var = null;
                                break;
                            }
                        }
                    }
                }
                fy1Var = fy1.b;
                break;
            }
            if (iOrdinal == 1) {
                fy1Var = fy1.c;
            } else if (iOrdinal == 2) {
                fy1Var = fy1.b;
            } else {
                throw new NoWhenBranchMatchedException();
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList<ey1> arrayList3 = new ArrayList();
            for (Object obj : list) {
                if (((ey1) obj).c() != null) {
                    arrayList3.add(obj);
                }
            }
            for (ey1 ey1Var : arrayList3) {
                String strC = ey1Var.c();
                long jA = ey1Var.a();
                int iD = ey1Var.d();
                if (ey1Var.b() != fy1.d || fy1Var == null) {
                    fy1 fy1VarB = ey1Var.b();
                    fy1Var2 = fy1VarB;
                } else {
                    fy1Var2 = fy1Var;
                }
                if (strC != null) {
                    arrayList2.add(new q62(iD, jA, fy1Var2, strC));
                }
            }
            this.j.addAll(arrayList2);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0022 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:14:0x0024 A[Catch: all -> 0x0020, TRY_LEAVE, TryCatch #0 {all -> 0x0020, blocks: (B:3:0x0001, B:10:0x001c, B:14:0x0024), top: B:19:0x0001 }] */
    public final synchronized void a(dh1 dh1Var, boolean z) {
        try {
            y45.j(dh1Var, "phoneState");
            Objects.toString(dh1Var);
            sp0.d(new Object[0]);
            int iOrdinal = dh1Var.ordinal();
            if (iOrdinal == 0) {
                if (z) {
                    b();
                }
            } else if (iOrdinal == 1) {
                a();
            } else if (iOrdinal == 2) {
                if (z) {
                    b();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final void a(uk0 uk0Var) {
        y45.j(uk0Var, "impressionTrackingListener");
        this.k = uk0Var;
    }

    @Override
    public final synchronized void a() {
        sp0.d(new Object[0]);
        this.f.removeMessages(2);
        this.f.removeMessages(1);
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            ((q62) it.next()).a(null);
        }
    }

    public final synchronized void a(q62 q62Var, n92 n92Var) {
        try {
            if (n92Var.b() == n92.a.c) {
                this.g.a(q62Var.d(), z62.h);
            } else {
                this.b.a(q62Var.c(), n92Var);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final synchronized void a(o8<?> o8Var, List<ey1> list) {
        y45.j(o8Var, "adResponse");
        y45.j(list, "showNotices");
        sp0.d(new Object[0]);
        this.b.a(o8Var);
        this.j.clear();
        this.b.invalidate();
        this.m = false;
        a();
        a(list);
    }
}
