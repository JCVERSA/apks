package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import java.io.IOException;

public final class iu0 implements pw0, pw0.a {
    public final vw0.b b;
    private final long c;
    private final cd d;
    private vw0 e;
    private pw0 f;

    @Nullable
    private pw0.a g;
    private boolean h;
    private long i = C.TIME_UNSET;

    public interface a {
        void a(vw0.b bVar);

        void a(vw0.b bVar, IOException iOException);
    }

    public iu0(vw0.b bVar, cd cdVar, long j) {
        this.b = bVar;
        this.d = cdVar;
        this.c = j;
    }

    public final void a(vw0.b bVar) {
        long j = this.c;
        long j2 = this.i;
        if (j2 != C.TIME_UNSET) {
            j = j2;
        }
        vw0 vw0Var = this.e;
        vw0Var.getClass();
        pw0 pw0VarA = vw0Var.a(bVar, this.d, j);
        this.f = pw0VarA;
        if (this.g != null) {
            pw0VarA.a(this, j);
        }
    }

    public final long b() {
        return this.c;
    }

    public final void c() {
        if (this.f != null) {
            vw0 vw0Var = this.e;
            vw0Var.getClass();
            vw0Var.a(this.f);
        }
    }

    @Override
    public final boolean continueLoading(long j) {
        pw0 pw0Var = this.f;
        return pw0Var != null && pw0Var.continueLoading(j);
    }

    @Override
    public final void discardBuffer(long j, boolean z) {
        pw0 pw0Var = this.f;
        int i = f92.a;
        pw0Var.discardBuffer(j, z);
    }

    @Override
    public final long getBufferedPositionUs() {
        pw0 pw0Var = this.f;
        int i = f92.a;
        return pw0Var.getBufferedPositionUs();
    }

    @Override
    public final long getNextLoadPositionUs() {
        pw0 pw0Var = this.f;
        int i = f92.a;
        return pw0Var.getNextLoadPositionUs();
    }

    @Override
    public final z52 getTrackGroups() {
        pw0 pw0Var = this.f;
        int i = f92.a;
        return pw0Var.getTrackGroups();
    }

    @Override
    public final boolean isLoading() {
        pw0 pw0Var = this.f;
        return pw0Var != null && pw0Var.isLoading();
    }

    @Override
    public final void maybeThrowPrepareError() throws IOException {
        pw0 pw0Var = this.f;
        if (pw0Var != null) {
            pw0Var.maybeThrowPrepareError();
            return;
        }
        vw0 vw0Var = this.e;
        if (vw0Var != null) {
            vw0Var.maybeThrowSourceInfoRefreshError();
        }
    }

    @Override
    public final long readDiscontinuity() {
        pw0 pw0Var = this.f;
        int i = f92.a;
        return pw0Var.readDiscontinuity();
    }

    @Override
    public final void reevaluateBuffer(long j) {
        pw0 pw0Var = this.f;
        int i = f92.a;
        pw0Var.reevaluateBuffer(j);
    }

    @Override
    public final long seekToUs(long j) {
        pw0 pw0Var = this.f;
        int i = f92.a;
        return pw0Var.seekToUs(j);
    }

    @Override
    public final long a(long j, fx1 fx1Var) {
        pw0 pw0Var = this.f;
        int i = f92.a;
        return pw0Var.a(j, fx1Var);
    }

    public final long a() {
        return this.i;
    }

    @Override
    public final void a(mx1 mx1Var) {
        pw0.a aVar = this.g;
        int i = f92.a;
        aVar.a(this);
    }

    @Override
    public final void a(pw0 pw0Var) {
        pw0.a aVar = this.g;
        int i = f92.a;
        aVar.a((pw0) this);
    }

    public final void a(long j) {
        this.i = j;
    }

    @Override
    public final void a(pw0.a aVar, long j) {
        this.g = aVar;
        pw0 pw0Var = this.f;
        if (pw0Var != null) {
            long j2 = this.c;
            long j3 = this.i;
            if (j3 != C.TIME_UNSET) {
                j2 = j3;
            }
            pw0Var.a(this, j2);
        }
    }

    @Override
    public final long a(h70[] h70VarArr, boolean[] zArr, lt1[] lt1VarArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.i;
        if (j3 == C.TIME_UNSET || j != this.c) {
            j2 = j;
        } else {
            this.i = C.TIME_UNSET;
            j2 = j3;
        }
        pw0 pw0Var = this.f;
        int i = f92.a;
        return pw0Var.a(h70VarArr, zArr, lt1VarArr, zArr2, j2);
    }

    public final void a(vw0 vw0Var) {
        if (this.e == null) {
            this.e = vw0Var;
            return;
        }
        throw new IllegalStateException();
    }
}
