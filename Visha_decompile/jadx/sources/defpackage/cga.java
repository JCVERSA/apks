package defpackage;

import java.util.List;

public class cga implements nga {
    public List b;

    public cga(List list) {
        this.b = list;
    }

    @Override
    public zfa get(int i) {
        return (zfa) this.b.get(i);
    }

    @Override
    public int size() {
        return this.b.size();
    }
}
