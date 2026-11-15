package f5;

import b5.b2;
import c5.j1;
import c5.o0;
import c5.z0;
import com.alibaba.fastjson.JSONObject;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import javax.money.Monetary;
import org.javamoney.moneta.Money;

public class a implements z0, b2 {

    public static final a f60038a = new a();

    @Override
    public int b() {
        return 0;
    }

    @Override
    public void c(o0 o0Var, Object obj, Object obj2, Type type, int i10) {
        Money money = (Money) obj;
        if (money == null) {
            o0Var.C();
            return;
        }
        j1 j1Var = o0Var.f16619k;
        j1Var.T('{', "numberStripped", money.getNumberStripped());
        j1Var.S(',', "currency", money.getCurrency().getCurrencyCode());
        j1Var.write(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE);
    }

    @Override
    public Object d(a5.a aVar, Type type, Object obj) {
        String string;
        JSONObject jSONObjectH0 = aVar.h0();
        Object obj2 = jSONObjectH0.get("currency");
        if (obj2 instanceof JSONObject) {
            string = ((JSONObject) obj2).getString("currencyCode");
        } else {
            string = obj2 instanceof String ? (String) obj2 : null;
        }
        Object obj3 = jSONObjectH0.get("numberStripped");
        if ((obj3 instanceof BigDecimal) || (obj3 instanceof Integer) || (obj3 instanceof BigInteger)) {
            return Money.of((Number) obj3, Monetary.getCurrency(string, new String[0]));
        }
        throw new UnsupportedOperationException();
    }
}
