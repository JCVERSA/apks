package defpackage;

import android.content.Context;
import org.apache.commons.text.StringSubstitutor;

public final class avi extends b1j {
    public final Context a;
    public final k2j b;

    public avi(Context context, k2j k2jVar) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        this.a = context;
        this.b = k2jVar;
    }

    @Override
    public final Context a() {
        return this.a;
    }

    @Override
    public final k2j b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        k2j k2jVar;
        if (obj == this) {
            return true;
        }
        if (obj instanceof b1j) {
            b1j b1jVar = (b1j) obj;
            if (this.a.equals(b1jVar.a()) && ((k2jVar = this.b) != null ? k2jVar.equals(b1jVar.b()) : b1jVar.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        k2j k2jVar = this.b;
        return (k2jVar == null ? 0 : k2jVar.hashCode()) ^ iHashCode;
    }

    public final String toString() {
        return "FlagsContext{context=" + this.a.toString() + ", hermeticFileOverrides=" + String.valueOf(this.b) + StringSubstitutor.DEFAULT_VAR_END;
    }
}
