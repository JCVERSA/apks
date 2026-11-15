package com.therouter.inject;

import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final Class f39784a;

    private String f39785b;

    public a(Class clazz, Object... params) {
        Intrinsics.h(clazz, "clazz");
        Intrinsics.h(params, "params");
        this.f39784a = clazz;
        for (Object obj : params) {
            if (obj != null) {
                this.f39785b = this.f39785b + obj;
            }
        }
    }

    public final Class a() {
        return this.f39784a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return super.equals(obj);
        }
        a aVar = (a) obj;
        return Intrinsics.c(a(), aVar.a()) && Intrinsics.c(this.f39785b, aVar.f39785b);
    }

    public int hashCode() {
        int iHashCode = a().hashCode();
        String str = this.f39785b;
        if (str == null) {
            str = "";
        }
        int iHashCode2 = str.hashCode();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(iHashCode);
        sb2.append(iHashCode2);
        return sb2.toString().hashCode();
    }
}
