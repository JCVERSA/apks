package com.transsion.api.gateway.dns;

import java.math.BigInteger;
import java.util.Arrays;

public class d {

    public final int f41396a;

    public String f41397b;

    public int f41398c;

    public int f41399d;

    public boolean f41400e;

    public String f41401f;

    public BigInteger f41402g;

    public d(String str, int i10) {
        this.f41398c = 0;
        this.f41399d = 0;
        this.f41400e = false;
        char[] cArr = new char[16];
        Arrays.fill(cArr, 'f');
        this.f41401f = new String(cArr);
        this.f41402g = new BigInteger(this.f41401f, 16);
        this.f41397b = str;
        this.f41396a = i10;
    }

    public d(d dVar) {
        this.f41398c = 0;
        this.f41399d = 0;
        this.f41400e = false;
        char[] cArr = new char[16];
        Arrays.fill(cArr, 'f');
        this.f41401f = new String(cArr);
        this.f41402g = new BigInteger(this.f41401f, 16);
        this.f41397b = dVar.f41397b;
        this.f41396a = dVar.f41396a;
        this.f41398c = dVar.f41398c;
        this.f41399d = dVar.f41399d;
        this.f41400e = dVar.f41400e;
        this.f41402g = dVar.f41402g;
        this.f41401f = dVar.f41401f;
    }
}
