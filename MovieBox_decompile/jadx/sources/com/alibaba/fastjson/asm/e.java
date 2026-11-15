package com.alibaba.fastjson.asm;

final class e {

    int f17484a;

    int f17485b;

    int f17486c;

    long f17487d;

    String f17488e;

    String f17489f;

    String f17490g;

    int f17491h;

    e f17492i;

    e() {
    }

    boolean a(e eVar) {
        int i10 = this.f17485b;
        if (i10 != 1) {
            if (i10 != 15) {
                if (i10 == 12) {
                    return eVar.f17488e.equals(this.f17488e) && eVar.f17489f.equals(this.f17489f);
                }
                if (i10 != 13) {
                    switch (i10) {
                        case 3:
                        case 4:
                            return eVar.f17486c == this.f17486c;
                        case 5:
                        case 6:
                            break;
                        case 7:
                        case 8:
                            break;
                        default:
                            return eVar.f17488e.equals(this.f17488e) && eVar.f17489f.equals(this.f17489f) && eVar.f17490g.equals(this.f17490g);
                    }
                }
            }
            return eVar.f17487d == this.f17487d;
        }
        return eVar.f17488e.equals(this.f17488e);
    }

    void b(int i10) {
        this.f17485b = 3;
        this.f17486c = i10;
        this.f17491h = (3 + i10) & Integer.MAX_VALUE;
    }

    void c(int i10, String str, String str2, String str3) {
        this.f17485b = i10;
        this.f17488e = str;
        this.f17489f = str2;
        this.f17490g = str3;
        if (i10 != 1 && i10 != 7 && i10 != 8) {
            if (i10 == 12) {
                this.f17491h = (i10 + (str.hashCode() * str2.hashCode())) & Integer.MAX_VALUE;
                return;
            } else if (i10 != 13) {
                this.f17491h = (i10 + (str.hashCode() * str2.hashCode() * str3.hashCode())) & Integer.MAX_VALUE;
                return;
            }
        }
        this.f17491h = (i10 + str.hashCode()) & Integer.MAX_VALUE;
    }

    e(int i10, e eVar) {
        this.f17484a = i10;
        this.f17485b = eVar.f17485b;
        this.f17486c = eVar.f17486c;
        this.f17487d = eVar.f17487d;
        this.f17488e = eVar.f17488e;
        this.f17489f = eVar.f17489f;
        this.f17490g = eVar.f17490g;
        this.f17491h = eVar.f17491h;
    }
}
