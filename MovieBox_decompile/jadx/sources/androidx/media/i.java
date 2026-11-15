package androidx.media;

import android.text.TextUtils;

class i implements c {

    private String f9464a;

    private int f9465b;

    private int f9466c;

    i(String str, int i10, int i11) {
        this.f9464a = str;
        this.f9465b = i10;
        this.f9466c = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f9465b < 0 || iVar.f9465b < 0) {
            return TextUtils.equals(this.f9464a, iVar.f9464a) && this.f9466c == iVar.f9466c;
        }
        return TextUtils.equals(this.f9464a, iVar.f9464a) && this.f9465b == iVar.f9465b && this.f9466c == iVar.f9466c;
    }

    public int hashCode() {
        return androidx.core.util.d.b(this.f9464a, Integer.valueOf(this.f9466c));
    }
}
