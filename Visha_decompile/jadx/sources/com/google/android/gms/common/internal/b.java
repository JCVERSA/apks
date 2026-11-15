package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import defpackage.ay0;
import defpackage.bf1;
import defpackage.qe7;
import defpackage.ti4;
import defpackage.wd8;
import defpackage.zi4;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

public abstract class b extends a implements com.google.android.gms.common.api.a.f {
    public final ay0 F;
    public final Set G;
    public final Account H;

    public b(Context context, Looper looper, int i, ay0 ay0Var, com.google.android.gms.common.api.c.a aVar, com.google.android.gms.common.api.c.b bVar) {
        this(context, looper, i, ay0Var, (bf1) aVar, (qe7) bVar);
    }

    public final ay0 I() {
        return this.F;
    }

    public Set J(Set set) {
        return set;
    }

    public final Set K(Set set) {
        Set setJ = J(set);
        Iterator it = setJ.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return setJ;
    }

    @Override
    public Set a() {
        return requiresSignIn() ? this.G : Collections.emptySet();
    }

    @Override
    public Executor f() {
        return null;
    }

    @Override
    public final Account getAccount() {
        return this.H;
    }

    @Override
    public final Set i() {
        return this.G;
    }

    public b(Context context, Looper looper, int i, ay0 ay0Var, bf1 bf1Var, qe7 qe7Var) {
        this(context, looper, ti4.a(context), zi4.o(), i, ay0Var, (bf1) wd8.l(bf1Var), (qe7) wd8.l(qe7Var));
    }

    public b(Context context, Looper looper, ti4 ti4Var, zi4 zi4Var, int i, ay0 ay0Var, bf1 bf1Var, qe7 qe7Var) {
        super(context, looper, ti4Var, zi4Var, i, bf1Var == null ? null : new c(bf1Var), qe7Var == null ? null : new d(qe7Var), ay0Var.j());
        this.F = ay0Var;
        this.H = ay0Var.a();
        this.G = K(ay0Var.d());
    }
}
