package com.hunantv.imgo.net.entity;

public class a {
    public int a;
    public String b;
    public String c;
    public PlayerAuthDataEntity d;

    public a a(int i) {
        this.a = i;
        return this;
    }

    public a b(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        return "AuthErrorEntity{errCode=" + this.a + ", errorMsg='" + this.b + "', videoId='" + this.c + "', entity=" + this.d + '}';
    }

    public a a(String str) {
        this.b = str;
        return this;
    }

    public a a(PlayerAuthDataEntity playerAuthDataEntity) {
        this.d = playerAuthDataEntity;
        return this;
    }
}
