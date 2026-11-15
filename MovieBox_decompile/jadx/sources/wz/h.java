package wz;

public class h implements org.mvel2.a {

    private final org.mvel2.a[] f74786a;

    public h(org.mvel2.a... aVarArr) {
        this.f74786a = aVarArr;
    }

    @Override
    public boolean a(Class cls) {
        for (org.mvel2.a aVar : this.f74786a) {
            if (aVar.a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Object b(Object obj) {
        for (org.mvel2.a aVar : this.f74786a) {
            if (aVar.a(obj.getClass())) {
                return aVar.b(obj);
            }
        }
        return null;
    }
}
