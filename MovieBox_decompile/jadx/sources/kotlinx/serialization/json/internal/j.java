package kotlinx.serialization.json.internal;

import kotlin.jvm.internal.Intrinsics;

public class j {

    public final h0 f65344a;

    private boolean f65345b;

    public j(h0 writer) {
        Intrinsics.h(writer, "writer");
        this.f65344a = writer;
        this.f65345b = true;
    }

    public final boolean a() {
        return this.f65345b;
    }

    public void b() {
        this.f65345b = true;
    }

    public void c() {
        this.f65345b = false;
    }

    public void d(byte b10) {
        this.f65344a.writeLong(b10);
    }

    public final void e(char c10) {
        this.f65344a.a(c10);
    }

    public void f(double d10) {
        this.f65344a.c(String.valueOf(d10));
    }

    public void g(float f10) {
        this.f65344a.c(String.valueOf(f10));
    }

    public void h(int i10) {
        this.f65344a.writeLong(i10);
    }

    public void i(long j10) {
        this.f65344a.writeLong(j10);
    }

    public final void j(String v10) {
        Intrinsics.h(v10, "v");
        this.f65344a.c(v10);
    }

    public void k(short s10) {
        this.f65344a.writeLong(s10);
    }

    public void l(boolean z10) {
        this.f65344a.c(String.valueOf(z10));
    }

    public final void m(String value) {
        Intrinsics.h(value, "value");
        this.f65344a.b(value);
    }

    protected final void n(boolean z10) {
        this.f65345b = z10;
    }

    public void o() {
    }

    public void p() {
    }
}
