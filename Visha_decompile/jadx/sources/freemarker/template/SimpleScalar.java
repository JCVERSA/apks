package freemarker.template;

import defpackage.mga;
import java.io.Serializable;

public final class SimpleScalar implements mga, Serializable {
    private final String value;

    public SimpleScalar(String str) {
        this.value = str;
    }

    public static SimpleScalar newInstanceOrNull(String str) {
        if (str != null) {
            return new SimpleScalar(str);
        }
        return null;
    }

    @Override
    public String getAsString() {
        String str = this.value;
        return str == null ? "" : str;
    }

    public String toString() {
        return this.value;
    }
}
