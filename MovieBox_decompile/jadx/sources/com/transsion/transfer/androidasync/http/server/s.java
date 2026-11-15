package com.transsion.transfer.androidasync.http.server;

import com.transsion.transfer.androidasync.a0;

public class s implements tt.a {

    int f53420a = -1;

    private String f53421b;

    com.transsion.transfer.androidasync.p f53422c;

    public s(String str) {
        this.f53421b = str;
    }

    @Override
    public void H(com.transsion.transfer.androidasync.p pVar, st.a aVar) {
        this.f53422c = pVar;
        pVar.h(aVar);
        pVar.F(new st.d.a());
    }

    @Override
    public void J(com.transsion.transfer.androidasync.http.j jVar, com.transsion.transfer.androidasync.s sVar, st.a aVar) {
        a0.c(this.f53422c, sVar, aVar);
        if (this.f53422c.isPaused()) {
            this.f53422c.resume();
        }
    }

    @Override
    public boolean K() {
        return false;
    }

    @Override
    public String l() {
        return this.f53421b;
    }

    @Override
    public int length() {
        return this.f53420a;
    }
}
