package defpackage;

import java.util.List;
import java.util.Map;

public final class jbg implements euf {
    public final Map a;
    public final Map b;
    public final Map c;
    public final vyi d;
    public final sdg e;

    public jbg(Map map, Map map2, Map map3, vyi vyiVar, sdg sdgVar) {
        this.a = map;
        this.b = map2;
        this.c = map3;
        this.d = vyiVar;
        this.e = sdgVar;
    }

    @Override
    public final kxg a(int i, String str) {
        kxg kxgVarA;
        kxg kxgVar = (kxg) this.a.get(str);
        if (kxgVar != null) {
            return kxgVar;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            kzg kzgVar = (kzg) this.c.get(str);
            if (kzgVar != null) {
                return new lxg(kzgVar, new m2i() {
                    @Override
                    public final Object apply(Object obj) {
                        return new juf((List) obj);
                    }
                });
            }
            kxgVarA = (kxg) this.b.get(str);
            if (kxgVarA == null) {
                return null;
            }
        } else if (this.e.e() == null || (kxgVarA = ((euf) this.d.zzb()).a(i, str)) == null) {
            return null;
        }
        return new lxg(kxgVarA, new m2i() {
            @Override
            public final Object apply(Object obj) {
                return new juf((buf) obj);
            }
        });
    }
}
