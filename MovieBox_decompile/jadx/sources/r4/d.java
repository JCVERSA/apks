package r4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class d {

    public static final d f70832c = new d("COMPOSITION");

    private final List f70833a;

    private e f70834b;

    public d(String... strArr) {
        this.f70833a = Arrays.asList(strArr);
    }

    private boolean b() {
        List list = this.f70833a;
        return ((String) list.get(list.size() - 1)).equals("**");
    }

    private boolean f(String str) {
        return "__container".equals(str);
    }

    public d a(String str) {
        d dVar = new d(this);
        dVar.f70833a.add(str);
        return dVar;
    }

    public boolean c(String str, int i10) {
        if (i10 >= this.f70833a.size()) {
            return false;
        }
        boolean z10 = i10 == this.f70833a.size() - 1;
        String str2 = (String) this.f70833a.get(i10);
        if (!str2.equals("**")) {
            return (z10 || (i10 == this.f70833a.size() + (-2) && b())) && (str2.equals(str) || str2.equals("*"));
        }
        if (!z10 && ((String) this.f70833a.get(i10 + 1)).equals(str)) {
            return i10 == this.f70833a.size() + (-2) || (i10 == this.f70833a.size() + (-3) && b());
        }
        if (z10) {
            return true;
        }
        int i11 = i10 + 1;
        if (i11 < this.f70833a.size() - 1) {
            return false;
        }
        return ((String) this.f70833a.get(i11)).equals(str);
    }

    public e d() {
        return this.f70834b;
    }

    public int e(String str, int i10) {
        if (f(str)) {
            return 0;
        }
        if (((String) this.f70833a.get(i10)).equals("**")) {
            return (i10 != this.f70833a.size() - 1 && ((String) this.f70833a.get(i10 + 1)).equals(str)) ? 2 : 0;
        }
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (!this.f70833a.equals(dVar.f70833a)) {
            return false;
        }
        e eVar = this.f70834b;
        e eVar2 = dVar.f70834b;
        if (eVar != null) {
            return eVar.equals(eVar2);
        }
        return eVar2 == null;
    }

    public boolean g(String str, int i10) {
        if (f(str)) {
            return true;
        }
        if (i10 >= this.f70833a.size()) {
            return false;
        }
        return ((String) this.f70833a.get(i10)).equals(str) || ((String) this.f70833a.get(i10)).equals("**") || ((String) this.f70833a.get(i10)).equals("*");
    }

    public boolean h(String str, int i10) {
        return "__container".equals(str) || i10 < this.f70833a.size() - 1 || ((String) this.f70833a.get(i10)).equals("**");
    }

    public int hashCode() {
        int iHashCode = this.f70833a.hashCode() * 31;
        e eVar = this.f70834b;
        return iHashCode + (eVar != null ? eVar.hashCode() : 0);
    }

    public d i(e eVar) {
        d dVar = new d(this);
        dVar.f70834b = eVar;
        return dVar;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("KeyPath{keys=");
        sb2.append(this.f70833a);
        sb2.append(",resolved=");
        sb2.append(this.f70834b != null);
        sb2.append('}');
        return sb2.toString();
    }

    private d(d dVar) {
        this.f70833a = new ArrayList(dVar.f70833a);
        this.f70834b = dVar.f70834b;
    }
}
