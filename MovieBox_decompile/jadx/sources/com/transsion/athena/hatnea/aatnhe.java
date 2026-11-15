package com.transsion.athena.hatnea;

import java.util.List;

public class aatnhe {

    public int f41628a;

    public String f41629b;

    public List<athena> f41630c;

    public String f41631d;

    public static class athena {

        public int f41632a;

        public int f41633b;

        public long f41634c;

        athena(int i10, int i11, long j10) {
            this.f41632a = i10;
            this.f41633b = i11;
            this.f41634c = j10;
        }

        public String a() {
            return this.f41633b + "-" + this.f41634c;
        }

        public String toString() {
            return "{appId=" + this.f41632a + ", type=" + this.f41633b + ", version=" + this.f41634c + '}';
        }
    }

    aatnhe() {
    }

    aatnhe(String str) {
        this.f41631d = str;
    }
}
