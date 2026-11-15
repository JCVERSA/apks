package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class w {

    public View f14781b;

    public final Map f14780a = new HashMap();

    final ArrayList f14782c = new ArrayList();

    @Deprecated
    public w() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.f14781b == wVar.f14781b && this.f14780a.equals(wVar.f14780a);
    }

    public int hashCode() {
        return (this.f14781b.hashCode() * 31) + this.f14780a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f14781b + "\n") + "    values:";
        for (String str2 : this.f14780a.keySet()) {
            str = str + "    " + str2 + ": " + this.f14780a.get(str2) + "\n";
        }
        return str;
    }

    public w(View view) {
        this.f14781b = view;
    }
}
