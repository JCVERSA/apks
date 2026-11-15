package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class vk0 {
    private final op1.b a;
    private final op1.b b;
    private final op1.b c;
    private final op1.b d;

    public vk0(op1.b bVar, op1.b bVar2, op1.b bVar3, op1.b bVar4) {
        y45.j(bVar, "impressionTrackingSuccessReportType");
        y45.j(bVar2, "impressionTrackingStartReportType");
        y45.j(bVar3, "impressionTrackingFailureReportType");
        y45.j(bVar4, "forcedImpressionTrackingFailureReportType");
        this.a = bVar;
        this.b = bVar2;
        this.c = bVar3;
        this.d = bVar4;
    }

    public final op1.b a() {
        return this.d;
    }

    public final op1.b b() {
        return this.c;
    }

    public final op1.b c() {
        return this.b;
    }

    public final op1.b d() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vk0)) {
            return false;
        }
        vk0 vk0Var = (vk0) obj;
        return this.a == vk0Var.a && this.b == vk0Var.b && this.c == vk0Var.c && this.d == vk0Var.d;
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ImpressionTrackingReportTypes(impressionTrackingSuccessReportType=" + this.a + ", impressionTrackingStartReportType=" + this.b + ", impressionTrackingFailureReportType=" + this.c + ", forcedImpressionTrackingFailureReportType=" + this.d + ")";
    }
}
