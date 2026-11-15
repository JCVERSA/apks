package com.transsion.json;

public class s implements p {

    private final StringBuilder f44743a;

    public s(StringBuilder sb2) {
        this.f44743a = sb2;
    }

    @Override
    public p a(String str) {
        this.f44743a.append(str);
        return this;
    }

    @Override
    public int b(String str, int i10, int i11, String str2) {
        this.f44743a.append((CharSequence) str, i10, i11);
        this.f44743a.append(str2);
        return i11 + 1;
    }

    public String toString() {
        return this.f44743a.toString();
    }

    @Override
    public int a(String str, int i10, int i11) {
        this.f44743a.append((CharSequence) str, i10, i11);
        return i11;
    }
}
