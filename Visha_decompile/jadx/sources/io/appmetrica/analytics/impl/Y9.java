package io.appmetrica.analytics.impl;

import org.json.JSONObject;

public final class Y9 {
    public final String a;
    public final int b;
    public final boolean c;

    public Y9(JSONObject jSONObject) {
        this.a = jSONObject.getString("name");
        this.c = jSONObject.getBoolean("required");
        this.b = jSONObject.optInt("version", -1);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Y9.class != obj.getClass()) {
            return false;
        }
        Y9 y9 = (Y9) obj;
        if (this.b != y9.b || this.c != y9.c) {
            return false;
        }
        String str = this.a;
        if (str != null) {
            return str.equals(y9.a);
        }
        return y9.a == null;
    }

    public final int hashCode() {
        String str = this.a;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.b) * 31) + (this.c ? 1 : 0);
    }

    public Y9(String str, int i, boolean z) {
        this.a = str;
        this.b = i;
        this.c = z;
    }
}
