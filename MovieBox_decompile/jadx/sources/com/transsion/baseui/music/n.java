package com.transsion.baseui.music;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class n {

    private String f42318a;

    private String f42319b;

    private String f42320c;

    private long f42321d;

    private long f42322e;

    private long f42323f;

    private long f42324g;

    private long f42325h;

    private int f42326i;

    private int f42327j;

    public n() {
        this(null, null, null, 0L, 0L, 0L, 0L, 0L, 0, 0, 1023, null);
    }

    public final int a() {
        return this.f42327j;
    }

    public final long b() {
        return this.f42324g;
    }

    public final long c() {
        return this.f42325h;
    }

    public final String d() {
        return this.f42318a;
    }

    public final String e() {
        return this.f42319b;
    }

    public final long f() {
        return this.f42322e;
    }

    public final long g() {
        return this.f42321d;
    }

    public final String h() {
        return this.f42320c;
    }

    public final long i() {
        return this.f42323f;
    }

    public final int j() {
        return this.f42326i;
    }

    public final void k(int i10) {
        this.f42327j = i10;
    }

    public final void l(long j10) {
        this.f42324g = j10;
    }

    public final void m(long j10) {
        this.f42325h = j10;
    }

    public final void n(String str) {
        this.f42319b = str;
    }

    public final void o(long j10) {
        this.f42322e = j10;
    }

    public final void p(long j10) {
        this.f42321d = j10;
    }

    public final void q(String str) {
        this.f42320c = str;
    }

    public final void r(long j10) {
        this.f42323f = j10;
    }

    public final void s(int i10) {
        this.f42326i = i10;
    }

    public n(String str, String str2, String str3, long j10, long j11, long j12, long j13, long j14, int i10, int i11) {
        this.f42318a = str;
        this.f42319b = str2;
        this.f42320c = str3;
        this.f42321d = j10;
        this.f42322e = j11;
        this.f42323f = j12;
        this.f42324g = j13;
        this.f42325h = j14;
        this.f42326i = i10;
        this.f42327j = i11;
    }

    public n(String str, String str2, String str3, long j10, long j11, long j12, long j13, long j14, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) == 0 ? str3 : null, (i12 & 8) != 0 ? 0L : j10, (i12 & 16) != 0 ? 0L : j11, (i12 & 32) != 0 ? 0L : j12, (i12 & 64) != 0 ? 0L : j13, (i12 & 128) == 0 ? j14 : 0L, (i12 & 256) != 0 ? 0 : i10, (i12 & 512) == 0 ? i11 : 0);
    }
}
