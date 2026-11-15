package com.transsion.http.impl;

public class j implements Runnable {
    final String a;
    final l b;

    public j(l lVar, String str) {
        this.b = lVar;
        this.a = str;
    }

    @Override
    public void run() {
        l lVar = this.b;
        lVar.c.E(lVar.b, this.a);
    }
}
