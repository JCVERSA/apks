package defpackage;

import android.net.Uri;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.data.StoredValue;
import com.yandex.div2.DivActionSetStoredValue;
import com.yandex.div2.DivActionTyped;
import com.yandex.div2.DivTypedValue;
import kotlin.NoWhenBranchMatchedException;
import org.json.JSONArray;
import org.json.JSONObject;

public final class ag2 implements uf2 {
    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        if (!(divActionTyped instanceof DivActionTyped.p)) {
            return false;
        }
        c(((DivActionTyped.p) divActionTyped).c(), div2View, oj3Var);
        return true;
    }

    public final StoredValue b(DivTypedValue divTypedValue, String str, oj3 oj3Var) {
        if (divTypedValue instanceof DivTypedValue.h) {
            return new StoredValue.g(str, (String) ((DivTypedValue.h) divTypedValue).c().a.b(oj3Var));
        }
        if (divTypedValue instanceof DivTypedValue.f) {
            return new StoredValue.f(str, ((Number) ((DivTypedValue.f) divTypedValue).c().a.b(oj3Var)).longValue());
        }
        if (divTypedValue instanceof DivTypedValue.b) {
            return new StoredValue.b(str, ((Boolean) ((DivTypedValue.b) divTypedValue).c().a.b(oj3Var)).booleanValue());
        }
        if (divTypedValue instanceof DivTypedValue.g) {
            return new StoredValue.e(str, ((Number) ((DivTypedValue.g) divTypedValue).c().a.b(oj3Var)).doubleValue());
        }
        if (divTypedValue instanceof DivTypedValue.c) {
            return new StoredValue.c(str, k81.d(((Number) ((DivTypedValue.c) divTypedValue).c().a.b(oj3Var)).intValue()), null);
        }
        if (divTypedValue instanceof DivTypedValue.i) {
            vib.a aVar = vib.b;
            String string = ((Uri) ((DivTypedValue.i) divTypedValue).c().a.b(oj3Var)).toString();
            y45.i(string, "value.value.value.evaluate(resolver).toString()");
            return new StoredValue.h(str, aVar.a(string), null);
        }
        if (divTypedValue instanceof DivTypedValue.a) {
            return new StoredValue.a(str, (JSONArray) ((DivTypedValue.a) divTypedValue).c().a.b(oj3Var));
        }
        if (divTypedValue instanceof DivTypedValue.e) {
            return new StoredValue.d(str, (JSONObject) ((DivTypedValue.e) divTypedValue).c().a.b(oj3Var));
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void c(DivActionSetStoredValue divActionSetStoredValue, Div2View div2View, oj3 oj3Var) {
        String str = (String) divActionSetStoredValue.b.b(oj3Var);
        long jLongValue = ((Number) divActionSetStoredValue.a.b(oj3Var)).longValue();
        ey9.a.c(b(divActionSetStoredValue.c, str, oj3Var), jLongValue, div2View);
    }
}
