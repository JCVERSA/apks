package com.transsion.usercenter.profile.report;

import kotlin.jvm.internal.Intrinsics;

public final class c {

    private String f55112a;

    private boolean f55113b;

    public c(String reportName, boolean z10) {
        Intrinsics.h(reportName, "reportName");
        this.f55112a = reportName;
        this.f55113b = z10;
    }

    public final String a() {
        return this.f55112a;
    }

    public final boolean b() {
        return this.f55113b;
    }

    public final void c(boolean z10) {
        this.f55113b = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f55112a, cVar.f55112a) && this.f55113b == cVar.f55113b;
    }

    public int hashCode() {
        return (this.f55112a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f55113b);
    }

    public String toString() {
        return "ReportBean(reportName=" + this.f55112a + ", isChecked=" + this.f55113b + ")";
    }
}
