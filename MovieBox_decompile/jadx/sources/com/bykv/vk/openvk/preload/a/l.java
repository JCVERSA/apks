package com.bykv.vk.openvk.preload.a;

import java.util.Map;
import java.util.Set;

public final class l extends i {

    private final com.bykv.vk.openvk.preload.a.b.g<String, i> f19915a = new com.bykv.vk.openvk.preload.a.b.g<>();

    public final void a(String str, i iVar) {
        com.bykv.vk.openvk.preload.a.b.g<String, i> gVar = this.f19915a;
        if (iVar == null) {
            iVar = k.f19914a;
        }
        gVar.put(str, iVar);
    }

    public final Set<Map.Entry<String, i>> d() {
        return this.f19915a.entrySet();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof l) && ((l) obj).f19915a.equals(this.f19915a);
        }
        return true;
    }

    public final int hashCode() {
        return this.f19915a.hashCode();
    }
}
