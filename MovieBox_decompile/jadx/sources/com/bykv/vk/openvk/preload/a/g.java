package com.bykv.vk.openvk.preload.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g extends i implements Iterable<i> {

    private final List<i> f19913a = new ArrayList();

    public final void a(i iVar) {
        if (iVar == null) {
            iVar = k.f19914a;
        }
        this.f19913a.add(iVar);
    }

    @Override
    public final String b() {
        if (this.f19913a.size() == 1) {
            return this.f19913a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override
    public final boolean c() {
        if (this.f19913a.size() == 1) {
            return this.f19913a.get(0).c();
        }
        throw new IllegalStateException();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof g) && ((g) obj).f19913a.equals(this.f19913a);
        }
        return true;
    }

    public final int hashCode() {
        return this.f19913a.hashCode();
    }

    @Override
    public final Iterator<i> iterator() {
        return this.f19913a.iterator();
    }

    @Override
    public final Number a() {
        if (this.f19913a.size() == 1) {
            return this.f19913a.get(0).a();
        }
        throw new IllegalStateException();
    }
}
