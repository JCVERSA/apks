package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import java.util.Map;

public final class e0 implements k {

    private final k f26628a;

    private final PriorityTaskManager f26629b;

    private final int f26630c;

    public e0(k kVar, PriorityTaskManager priorityTaskManager, int i10) {
        this.f26628a = (k) com.google.android.exoplayer2.util.a.e(kVar);
        this.f26629b = (PriorityTaskManager) com.google.android.exoplayer2.util.a.e(priorityTaskManager);
        this.f26630c = i10;
    }

    @Override
    public long a(n nVar) {
        this.f26629b.c(this.f26630c);
        return this.f26628a.a(nVar);
    }

    @Override
    public void close() {
        this.f26628a.close();
    }

    @Override
    public void e(k0 k0Var) {
        com.google.android.exoplayer2.util.a.e(k0Var);
        this.f26628a.e(k0Var);
    }

    @Override
    public Map getResponseHeaders() {
        return this.f26628a.getResponseHeaders();
    }

    @Override
    public Uri getUri() {
        return this.f26628a.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) {
        this.f26629b.c(this.f26630c);
        return this.f26628a.read(bArr, i10, i11);
    }
}
