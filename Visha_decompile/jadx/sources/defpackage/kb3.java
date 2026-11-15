package defpackage;

import freemarker.core.Environment;

public class kb3 implements pfa {
    public final ofa b;
    public final Environment c;

    public kb3(Environment environment, ofa ofaVar) {
        this.c = environment;
        this.b = ofaVar;
    }

    @Override
    public zfa get(String str) {
        return this.b.get(str);
    }

    @Override
    public boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override
    public bfa keys() {
        return ((pfa) this.c.J).keys();
    }

    @Override
    public int size() {
        return ((pfa) this.c.J).size();
    }

    @Override
    public bfa values() {
        return ((pfa) this.c.J).values();
    }
}
