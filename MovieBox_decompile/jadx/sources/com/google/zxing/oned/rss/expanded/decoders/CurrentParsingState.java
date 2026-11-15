package com.google.zxing.oned.rss.expanded.decoders;

final class CurrentParsingState {

    private int f32099a = 0;

    private State f32100b = State.NUMERIC;

    private enum State {
        NUMERIC,
        ALPHA,
        ISO_IEC_646
    }

    CurrentParsingState() {
    }

    int a() {
        return this.f32099a;
    }

    void b(int i10) {
        this.f32099a += i10;
    }

    boolean c() {
        return this.f32100b == State.ALPHA;
    }

    boolean d() {
        return this.f32100b == State.ISO_IEC_646;
    }

    void e() {
        this.f32100b = State.ALPHA;
    }

    void f() {
        this.f32100b = State.ISO_IEC_646;
    }

    void g() {
        this.f32100b = State.NUMERIC;
    }

    void h(int i10) {
        this.f32099a = i10;
    }
}
