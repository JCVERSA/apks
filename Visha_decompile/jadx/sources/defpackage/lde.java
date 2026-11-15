package defpackage;

import java.util.List;

public final class lde implements iqe {
    public final List a;

    public lde(List list) {
        this.a = list;
        boolean z = false;
        if (!list.isEmpty()) {
            long j = ((kde) list.get(0)).b;
            for (int i = 1; i < list.size(); i++) {
                if (((kde) list.get(i)).a < j) {
                    z = true;
                    break;
                }
                j = ((kde) list.get(i)).b;
            }
        }
        n7g.d(!z);
    }

    @Override
    public final void a(une uneVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || lde.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((lde) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=".concat(this.a.toString());
    }
}
