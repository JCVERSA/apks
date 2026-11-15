package com.transsion.json;

public class u {

    private a f44747a;

    private int f44748b = 0;

    private String f44749c;

    public u(a aVar) {
        this.f44747a = aVar;
    }

    public void a() {
        this.f44748b = Math.max(this.f44748b - 1, 0);
    }

    public void b(String str) {
        this.f44749c = str;
    }

    public a c() {
        return this.f44747a;
    }

    public void d() {
        this.f44748b++;
    }

    public boolean e() {
        return this.f44748b != 0;
    }
}
