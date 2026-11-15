package defpackage;

import com.yandex.div.storage.templates.TemplatesContainer;
import com.yandex.div.storage.util.CardErrorTransformer;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class vea implements CardErrorTransformer {
    public static final a c = new a(null);
    public final TemplatesContainer a;
    public final lx7 b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public vea(TemplatesContainer templatesContainer, lx7 lx7Var) {
        y45.j(templatesContainer, "templateContainer");
        y45.j(lx7Var, "internalLogger");
        this.a = templatesContainer;
        this.b = lx7Var;
    }
}
