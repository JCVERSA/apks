package defpackage;

import java.util.Arrays;
import java.util.List;

public abstract class y80 implements tc {
    public final List a;

    public y80(List list) {
        this.a = list;
    }

    @Override
    public boolean g() {
        if (this.a.isEmpty()) {
            return true;
        }
        return this.a.size() == 1 && ((dg5) this.a.get(0)).i();
    }

    @Override
    public List i() {
        return this.a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.a.isEmpty()) {
            sb.append("values=");
            sb.append(Arrays.toString(this.a.toArray()));
        }
        return sb.toString();
    }
}
