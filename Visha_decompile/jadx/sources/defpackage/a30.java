package defpackage;

import java.util.List;
import org.apache.commons.text.StringSubstitutor;

public final class a30 extends nd0 {
    public final List a;

    public a30(List list) {
        if (list == null) {
            throw new NullPointerException("Null logRequests");
        }
        this.a = list;
    }

    @Override
    public List c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof nd0) {
            return this.a.equals(((nd0) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.a + StringSubstitutor.DEFAULT_VAR_END;
    }
}
