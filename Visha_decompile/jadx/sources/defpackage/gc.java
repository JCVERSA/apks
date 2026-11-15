package defpackage;

import java.util.List;

public class gc implements tc {
    public final List a;

    public gc(List list) {
        this.a = list;
    }

    @Override
    public boolean g() {
        return this.a.size() == 1 && ((dg5) this.a.get(0)).i();
    }

    @Override
    public ab0 h() {
        return ((dg5) this.a.get(0)).i() ? new jc8(this.a) : new dy7(this.a);
    }

    @Override
    public List i() {
        return this.a;
    }
}
