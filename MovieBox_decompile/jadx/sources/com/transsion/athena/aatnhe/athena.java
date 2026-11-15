package com.transsion.athena.aatnhe;

import android.text.TextUtils;
import java.util.Objects;

public class athena {

    public String f41413a;

    public String f41414b;

    public int f41415c;

    public int f41416d;

    public int f41417e;

    public boolean f41418f;

    public athena() {
    }

    public String a() {
        return this.f41413a + "-" + this.f41414b + "-" + this.f41416d + "-" + this.f41415c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof athena) {
            return TextUtils.equals(a(), ((athena) obj).a());
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f41413a, this.f41414b, Integer.valueOf(this.f41415c), Integer.valueOf(this.f41416d), Integer.valueOf(this.f41417e), Boolean.valueOf(this.f41418f));
    }

    public athena(String str, String str2, int i10, int i11, int i12, boolean z10) {
        this.f41413a = str;
        this.f41414b = str2;
        this.f41415c = i10;
        this.f41416d = i11;
        this.f41417e = i12;
        this.f41418f = z10;
    }
}
