package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableCollection;
import defpackage.dgb;
import defpackage.im5;
import defpackage.kj5;
import defpackage.wfb;
import defpackage.xd8;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;

public abstract class AggregateFuture extends c {
    public static final kj5 i = new kj5(AggregateFuture.class);
    public ImmutableCollection f;
    public final boolean g;
    public final boolean h;

    public enum ReleaseResourcesReason {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    public AggregateFuture(ImmutableCollection immutableCollection, boolean z, boolean z2) {
        super(immutableCollection.size());
        this.f = (ImmutableCollection) xd8.o(immutableCollection);
        this.g = z;
        this.h = z2;
    }

    public static void G(Throwable th) {
        i.a().log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    public static boolean x(Set set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    public final void F(ImmutableCollection immutableCollection) {
        int iT = t();
        xd8.v(iT >= 0, "Less than 0 remaining futures");
        if (iT == 0) {
            I(immutableCollection);
        }
    }

    public abstract void B();

    public final void C(Throwable th) {
        xd8.o(th);
        if (this.g && !setException(th) && x(u(), th)) {
            G(th);
        } else if (th instanceof Error) {
            G(th);
        }
    }

    public final void D() {
        Objects.requireNonNull(this.f);
        if (this.f.isEmpty()) {
            B();
            return;
        }
        if (!this.g) {
            final ImmutableCollection immutableCollection = this.h ? this.f : null;
            Runnable runnable = new Runnable() {
                @Override
                public final void run() {
                    this.b.F(immutableCollection);
                }
            };
            dgb it = this.f.iterator();
            while (it.hasNext()) {
                im5 im5Var = (im5) it.next();
                if (im5Var.isDone()) {
                    F(immutableCollection);
                } else {
                    im5Var.addListener(runnable, MoreExecutors.a());
                }
            }
            return;
        }
        dgb it2 = this.f.iterator();
        final int i2 = 0;
        while (it2.hasNext()) {
            final im5 im5Var2 = (im5) it2.next();
            int i3 = i2 + 1;
            if (im5Var2.isDone()) {
                E(i2, im5Var2);
            } else {
                im5Var2.addListener(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.E(i2, im5Var2);
                    }
                }, MoreExecutors.a());
            }
            i2 = i3;
        }
    }

    public final void E(int i2, im5 im5Var) {
        try {
            if (im5Var.isCancelled()) {
                this.f = null;
                cancel(false);
            } else {
                z(i2, im5Var);
            }
        } finally {
            F(null);
        }
    }

    public final void I(ImmutableCollection immutableCollection) {
        if (immutableCollection != null) {
            dgb it = immutableCollection.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                Future future = (Future) it.next();
                if (!future.isCancelled()) {
                    z(i2, future);
                }
                i2++;
            }
        }
        s();
        B();
        J(ReleaseResourcesReason.ALL_INPUT_FUTURES_PROCESSED);
    }

    public void J(ReleaseResourcesReason releaseResourcesReason) {
        xd8.o(releaseResourcesReason);
        this.f = null;
    }

    @Override
    public final void afterDone() {
        super.afterDone();
        ImmutableCollection immutableCollection = this.f;
        J(ReleaseResourcesReason.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (immutableCollection != null)) {
            boolean zWasInterrupted = wasInterrupted();
            dgb it = immutableCollection.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(zWasInterrupted);
            }
        }
    }

    @Override
    public final String pendingToString() {
        ImmutableCollection immutableCollection = this.f;
        if (immutableCollection == null) {
            return super.pendingToString();
        }
        return "futures=" + immutableCollection;
    }

    @Override
    public final void r(Set set) {
        xd8.o(set);
        if (isCancelled()) {
            return;
        }
        Throwable thTryInternalFastPathGetFailure = tryInternalFastPathGetFailure();
        Objects.requireNonNull(thTryInternalFastPathGetFailure);
        x(set, thTryInternalFastPathGetFailure);
    }

    public abstract void y(int i2, Object obj);

    public final void z(int i2, Future future) {
        try {
            y(i2, wfb.a(future));
        } catch (ExecutionException e) {
            C(e.getCause());
        } catch (Throwable th) {
            C(th);
        }
    }
}
