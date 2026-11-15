package com.transsion.mbwidget.data;

import com.transsion.moviedetailapi.bean.Subject;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    private final int f44899a;

    private final Subject f44900b;

    public b(int i10, Subject subject) {
        Intrinsics.h(subject, "subject");
        this.f44899a = i10;
        this.f44900b = subject;
    }

    public final int a() {
        return this.f44899a;
    }

    public final Subject b() {
        return this.f44900b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f44899a == bVar.f44899a && Intrinsics.c(this.f44900b, bVar.f44900b);
    }

    public int hashCode() {
        return (this.f44899a * 31) + this.f44900b.hashCode();
    }

    public String toString() {
        return "ShowItem(position=" + this.f44899a + ", subject=" + this.f44900b + ")";
    }
}
