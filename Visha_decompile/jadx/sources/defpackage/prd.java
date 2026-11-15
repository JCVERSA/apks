package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.util.LinkedList;
import java.util.List;

public class prd {
    public final LinkedList a = new LinkedList();

    public List a() {
        return this.a;
    }

    public prd b(String str) {
        this.a.add(str);
        return this;
    }

    public int c() {
        return this.a.size();
    }

    public String d() {
        return (String) this.a.removeLast();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || prd.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((prd) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[ ");
        boolean z = false;
        for (String str : this.a) {
            if (z) {
                sb.append(Consts.DOT);
            }
            sb.append(str);
            z = true;
        }
        sb.append(" ]");
        return sb.toString();
    }
}
