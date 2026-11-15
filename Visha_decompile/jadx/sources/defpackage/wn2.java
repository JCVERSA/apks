package defpackage;

import com.yandex.div2.DivTemplate;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public class wn2 extends iga {
    public final iq0 d;
    public final iga.a e;

    public wn2(lx7 lx7Var, iq0 iq0Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(lx7Var, (i & 2) != 0 ? new iq0(new zy4(), kga.a.a()) : iq0Var);
    }

    public static final DivTemplate j(hx7 hx7Var, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        return DivTemplate.a.a(hx7Var, z, jSONObject);
    }

    @Override
    public iga.a d() {
        return this.e;
    }

    @Override
    public iq0 a() {
        return this.d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wn2(lx7 lx7Var, iq0 iq0Var) {
        super(lx7Var, iq0Var);
        y45.j(lx7Var, "logger");
        y45.j(iq0Var, "templateProvider");
        this.d = iq0Var;
        this.e = new iga.a() {
            @Override
            public final Object a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
                return wn2.j(hx7Var, z, jSONObject);
            }
        };
    }
}
