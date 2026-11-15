package com.transsion.subtitle.fragment;

import kotlin.jvm.internal.Intrinsics;

public final class i {

    private final String f52833a;

    private final int f52834b;

    private final int f52835c;

    public i(String name, int i10, int i11) {
        Intrinsics.h(name, "name");
        this.f52833a = name;
        this.f52834b = i10;
        this.f52835c = i11;
    }

    public final int a() {
        return this.f52835c;
    }

    public final String b() {
        return this.f52833a;
    }

    public final int c() {
        return this.f52834b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Intrinsics.c(this.f52833a, iVar.f52833a) && this.f52834b == iVar.f52834b && this.f52835c == iVar.f52835c;
    }

    public int hashCode() {
        return (((this.f52833a.hashCode() * 31) + this.f52834b) * 31) + this.f52835c;
    }

    public String toString() {
        return "SubtitleSearchKeyword(name=" + this.f52833a + ", season=" + this.f52834b + ", episode=" + this.f52835c + ")";
    }
}
