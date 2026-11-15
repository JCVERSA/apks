package com.mbridge.msdk.tracker.network;

public abstract class b0 extends Exception {

    public final q f37728a;

    private long f37729b;

    private int f37730c;

    private String f37731d;

    public b0() {
        this.f37730c = 0;
        this.f37731d = "";
        this.f37728a = null;
    }

    public abstract int a();

    void a(long j10) {
        this.f37729b = j10;
    }

    public int b() {
        return this.f37730c;
    }

    public void a(int i10) {
        this.f37730c = i10;
    }

    public b0(q qVar) {
        this.f37730c = 0;
        this.f37731d = "";
        this.f37728a = qVar;
    }

    public b0(String str) {
        super(str);
        this.f37730c = 0;
        this.f37731d = "";
        this.f37728a = null;
    }

    public b0(Throwable th2) {
        super(th2);
        this.f37730c = 0;
        this.f37731d = "";
        this.f37728a = null;
    }
}
