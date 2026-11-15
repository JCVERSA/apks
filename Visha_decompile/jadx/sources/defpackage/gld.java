package defpackage;

public class gld extends w2d {
    @Override
    public void a(Object obj) {
        if (obj instanceof Double) {
            Double d = (Double) obj;
            if (Double.isInfinite(d.doubleValue()) || Double.isNaN(d.doubleValue())) {
                b().r("null");
                return;
            }
        }
        if (obj instanceof Float) {
            Float f = (Float) obj;
            if (Float.isInfinite(f.floatValue()) || Float.isNaN(f.floatValue())) {
                b().r("null");
                return;
            }
        }
        b().r(obj.toString());
    }
}
