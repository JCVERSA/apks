package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class i0i extends t0i {
    public final String a;
    public final String b;

    public i0i(String str, String str2, h0i h0iVar) {
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
        if (obj instanceof t0i) {
            t0i t0iVar = (t0i) obj;
            String str = this.a;
            if (str != null ? str.equals(t0iVar.b()) : t0iVar.b() == null) {
                String str2 = this.b;
                if (str2 != null ? str2.equals(t0iVar.a()) : t0iVar.a() == null) {
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
        return "OverlayDisplayDismissRequest{sessionToken=" + this.a + ", appId=" + this.b + StringSubstitutor.DEFAULT_VAR_END;
    }
}
