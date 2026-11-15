package defpackage;

public class cpd extends w2d {
    public final mod a;

    public cpd(mod modVar) {
        this.a = modVar;
    }

    @Override
    public void a(Object obj) {
        b().t().addFirst(obj);
        this.a.a(obj);
        b().t().removeFirst();
    }

    @Override
    public Boolean a() {
        mod modVar = this.a;
        return Boolean.valueOf((modVar instanceof rfd) && ((rfd) modVar).a().booleanValue());
    }
}
