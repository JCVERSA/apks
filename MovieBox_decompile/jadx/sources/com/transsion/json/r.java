package com.transsion.json;

import java.util.Arrays;

public class r {

    final String[] f44740a;

    boolean f44741b;

    boolean f44742c;

    public r(String str, boolean z10) {
        this.f44741b = false;
        this.f44742c = true;
        this.f44740a = str.split("\\.");
        this.f44741b = str.indexOf(42) >= 0;
        this.f44742c = z10;
    }

    public boolean a() {
        return this.f44742c;
    }

    public boolean b(q qVar) {
        int i10 = 0;
        int i11 = 0;
        while (i10 < qVar.c()) {
            String str = (String) qVar.b().get(i10);
            String[] strArr = this.f44740a;
            if (i11 >= strArr.length || !strArr[i11].equals("*")) {
                String[] strArr2 = this.f44740a;
                if (i11 >= strArr2.length || !strArr2[i11].equals(str)) {
                    int i12 = i11 - 1;
                    if (i12 < 0 || !this.f44740a[i12].equals("*")) {
                        return false;
                    }
                    i10++;
                } else {
                    i10++;
                }
            }
            i11++;
        }
        if (i11 <= 0 || !this.f44740a[i11 - 1].equals("*")) {
            return i10 >= qVar.c() && qVar.c() > 0;
        }
        return i10 >= qVar.c() && i11 >= this.f44740a.length;
    }

    public boolean c() {
        return this.f44741b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f44740a, ((r) obj).f44740a);
    }

    public int hashCode() {
        String[] strArr = this.f44740a;
        if (strArr != null) {
            return Arrays.hashCode(strArr);
        }
        return 0;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        int i10 = 0;
        while (true) {
            String[] strArr = this.f44740a;
            if (i10 >= strArr.length) {
                sb2.append("]");
                return sb2.toString();
            }
            sb2.append(strArr[i10]);
            if (i10 < this.f44740a.length - 1) {
                sb2.append(",");
            }
            i10++;
        }
    }
}
