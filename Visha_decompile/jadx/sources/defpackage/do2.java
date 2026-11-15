package defpackage;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivPatch;
import java.util.List;
import java.util.Map;

public final class do2 {
    public final Map a;
    public final Expression b;

    public do2(DivPatch divPatch) {
        y45.j(divPatch, "divPatch");
        this.a = w71.b();
        this.b = divPatch.b;
        for (DivPatch.Change change : divPatch.a) {
            Map map = this.a;
            String str = change.a;
            List listK = change.b;
            if (listK == null) {
                listK = y71.k();
            }
            map.put(str, listK);
        }
    }

    public final Expression a() {
        return this.b;
    }

    public final Map b() {
        return this.a;
    }
}
