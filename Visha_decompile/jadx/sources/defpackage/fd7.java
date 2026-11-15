package defpackage;

public abstract class fd7 implements go8 {
    private Object value;

    public fd7(Object obj) {
        this.value = obj;
    }

    public void afterChange(af5 af5Var, Object obj, Object obj2) {
        y45.j(af5Var, "property");
    }

    public boolean beforeChange(af5 af5Var, Object obj, Object obj2) {
        y45.j(af5Var, "property");
        return true;
    }

    @Override
    public Object getValue(Object obj, af5 af5Var) {
        y45.j(af5Var, "property");
        return this.value;
    }

    @Override
    public void setValue(Object obj, af5 af5Var, Object obj2) {
        y45.j(af5Var, "property");
        Object obj3 = this.value;
        if (beforeChange(af5Var, obj3, obj2)) {
            this.value = obj2;
            afterChange(af5Var, obj3, obj2);
        }
    }

    public String toString() {
        return "ObservableProperty(value=" + this.value + ')';
    }
}
