package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class o0i extends o1i {
    public final int a;
    public final String b;

    public o0i(int i, String str, n0i n0iVar) {
        this.a = i;
        this.b = str;
    }

    @Override
    public final int a() {
        return this.a;
    }

    @Override
    public final String b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof o1i) {
            o1i o1iVar = (o1i) obj;
            if (this.a == o1iVar.a() && ((str = this.b) != null ? str.equals(o1iVar.b()) : o1iVar.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.b;
        return ((this.a ^ 1000003) * 1000003) ^ (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "OverlayDisplayState{statusCode=" + this.a + ", sessionToken=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }
}
