package com.transsion.json.b;

public class k extends a {
    @Override
    public void a(Object obj) {
        if (obj instanceof Double) {
            Double d10 = (Double) obj;
            if (Double.isInfinite(d10.doubleValue()) || Double.isNaN(d10.doubleValue())) {
                b().r("null");
                return;
            }
        }
        if (obj instanceof Float) {
            Float f10 = (Float) obj;
            if (Float.isInfinite(f10.floatValue()) || Float.isNaN(f10.floatValue())) {
                b().r("null");
                return;
            }
        }
        b().r(obj.toString());
    }
}
