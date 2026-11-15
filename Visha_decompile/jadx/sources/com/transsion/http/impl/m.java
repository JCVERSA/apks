package com.transsion.http.impl;

public class m implements Runnable {
    final String a;
    final o b;

    public m(o oVar, String str) {
        this.b = oVar;
        this.a = str;
    }

    @Override
    public void run() {
        o oVar = this.b;
        oVar.d.D(oVar.b, this.a, oVar.c);
    }
}
