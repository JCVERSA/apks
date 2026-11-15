package com.transsion.usercenter.laboratory;

import com.transsion.ad.db.mcc.LocalMcc;
import kotlin.jvm.internal.Intrinsics;

public final class g1 {

    private boolean f54745a;

    private final LocalMcc f54746b;

    public g1(boolean z10, LocalMcc localMcc) {
        Intrinsics.h(localMcc, "localMcc");
        this.f54745a = z10;
        this.f54746b = localMcc;
    }

    public final LocalMcc a() {
        return this.f54746b;
    }

    public final boolean b() {
        return this.f54745a;
    }

    public final void c(boolean z10) {
        this.f54745a = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g1)) {
            return false;
        }
        g1 g1Var = (g1) obj;
        return this.f54745a == g1Var.f54745a && Intrinsics.c(this.f54746b, g1Var.f54746b);
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(this.f54745a) * 31) + this.f54746b.hashCode();
    }

    public String toString() {
        return "NationalInformationEntity(isChecked=" + this.f54745a + ", localMcc=" + this.f54746b + ")";
    }
}
