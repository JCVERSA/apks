package androidx.work.impl;

import android.text.TextUtils;
import androidx.work.ExistingWorkPolicy;
import androidx.work.impl.utils.EnqueueRunnable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class w extends androidx.work.p {

    private static final String f15383j = androidx.work.j.i("WorkContinuationImpl");

    private final d0 f15384a;

    private final String f15385b;

    private final ExistingWorkPolicy f15386c;

    private final List f15387d;

    private final List f15388e;

    private final List f15389f;

    private final List f15390g;

    private boolean f15391h;

    private androidx.work.l f15392i;

    public w(d0 d0Var, List list) {
        this(d0Var, null, ExistingWorkPolicy.KEEP, list, null);
    }

    private static boolean i(w wVar, Set set) {
        set.addAll(wVar.c());
        Set setL = l(wVar);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (setL.contains((String) it.next())) {
                return true;
            }
        }
        List listE = wVar.e();
        if (listE != null && !listE.isEmpty()) {
            Iterator it2 = listE.iterator();
            while (it2.hasNext()) {
                if (i((w) it2.next(), set)) {
                    return true;
                }
            }
        }
        set.removeAll(wVar.c());
        return false;
    }

    public static Set l(w wVar) {
        HashSet hashSet = new HashSet();
        List listE = wVar.e();
        if (listE != null && !listE.isEmpty()) {
            Iterator it = listE.iterator();
            while (it.hasNext()) {
                hashSet.addAll(((w) it.next()).c());
            }
        }
        return hashSet;
    }

    @Override
    public androidx.work.l a() {
        if (this.f15391h) {
            androidx.work.j.e().k(f15383j, "Already enqueued work ids (" + TextUtils.join(", ", this.f15388e) + ")");
        } else {
            EnqueueRunnable enqueueRunnable = new EnqueueRunnable(this);
            this.f15384a.u().c(enqueueRunnable);
            this.f15392i = enqueueRunnable.getOperation();
        }
        return this.f15392i;
    }

    public ExistingWorkPolicy b() {
        return this.f15386c;
    }

    public List c() {
        return this.f15388e;
    }

    public String d() {
        return this.f15385b;
    }

    public List e() {
        return this.f15390g;
    }

    public List f() {
        return this.f15387d;
    }

    public d0 g() {
        return this.f15384a;
    }

    public boolean h() {
        return i(this, new HashSet());
    }

    public boolean j() {
        return this.f15391h;
    }

    public void k() {
        this.f15391h = true;
    }

    public w(d0 d0Var, String str, ExistingWorkPolicy existingWorkPolicy, List list) {
        this(d0Var, str, existingWorkPolicy, list, null);
    }

    public w(d0 d0Var, String str, ExistingWorkPolicy existingWorkPolicy, List list, List list2) {
        this.f15384a = d0Var;
        this.f15385b = str;
        this.f15386c = existingWorkPolicy;
        this.f15387d = list;
        this.f15390g = list2;
        this.f15388e = new ArrayList(list.size());
        this.f15389f = new ArrayList();
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                this.f15389f.addAll(((w) it.next()).f15389f);
            }
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            String strB = ((androidx.work.r) list.get(i10)).b();
            this.f15388e.add(strB);
            this.f15389f.add(strB);
        }
    }
}
