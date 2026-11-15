package a5;

import java.lang.reflect.Type;

public class g {

    public Object f176a;

    public final g f177b;

    public final Object f178c;

    public final int f179d;

    public Type f180e;

    private transient String f181f;

    public g(g gVar, Object obj, Object obj2) {
        this.f177b = gVar;
        this.f176a = obj;
        this.f178c = obj2;
        this.f179d = gVar == null ? 0 : gVar.f179d + 1;
    }

    public String toString() {
        if (this.f181f == null) {
            if (this.f177b == null) {
                this.f181f = "$";
            } else if (this.f178c instanceof Integer) {
                this.f181f = this.f177b.toString() + "[" + this.f178c + "]";
            } else {
                this.f181f = this.f177b.toString() + "." + this.f178c;
            }
        }
        return this.f181f;
    }
}
