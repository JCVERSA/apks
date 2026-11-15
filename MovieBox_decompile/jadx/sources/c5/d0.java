package c5;

import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.reflect.Type;
import java.text.DecimalFormat;

public class d0 implements z0 {

    public static final d0 f16512b = new d0();

    private DecimalFormat f16513a;

    public d0() {
        this.f16513a = null;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        j1 j1Var = o0Var.f16619k;
        if (obj == null) {
            j1Var.l0(SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
            j1Var.h0();
            return;
        }
        DecimalFormat decimalFormat = this.f16513a;
        if (decimalFormat == null) {
            j1Var.s(dDoubleValue, true);
        } else {
            j1Var.write(decimalFormat.format(dDoubleValue));
        }
    }

    public d0(DecimalFormat decimalFormat) {
        this.f16513a = decimalFormat;
    }

    public d0(String str) {
        this(new DecimalFormat(str));
    }
}
