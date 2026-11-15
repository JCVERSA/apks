package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class r0i extends r1i {
    public final String a;
    public final String b;

    public r0i(String str, String str2, q0i q0iVar) {
        this.a = str;
        this.b = str2;
    }

    @Override
    public final String a() {
        return this.b;
    }

    @Override
    public final String b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof r1i) {
            r1i r1iVar = (r1i) obj;
            String str = this.a;
            if (str != null ? str.equals(r1iVar.b()) : r1iVar.b() == null) {
                String str2 = this.b;
                if (str2 != null ? str2.equals(r1iVar.a()) : r1iVar.a() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.b;
        return ((iHashCode ^ 1000003) * 1000003) ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "OverlayDisplayUpdateRequest{sessionToken=" + this.a + ", appId=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }
}
