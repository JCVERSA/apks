package com.transsion.json.b;

public class o extends a {

    protected final n f44677a;

    public o(n nVar) {
        this.f44677a = nVar;
    }

    @Override
    public void a(Object obj) {
        b().t().addFirst(obj);
        this.f44677a.a(obj);
        b().t().removeFirst();
    }

    @Override
    public Boolean a() {
        n nVar = this.f44677a;
        return Boolean.valueOf((nVar instanceof g) && ((g) nVar).a().booleanValue());
    }
}
