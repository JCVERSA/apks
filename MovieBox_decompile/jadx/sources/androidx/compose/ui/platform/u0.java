package androidx.compose.ui.platform;

import java.util.Map;
import kotlin.jvm.functions.Function0;

public final class u0 implements androidx.compose.runtime.saveable.b {

    private final Function0 f5554a;

    private final androidx.compose.runtime.saveable.b f5555b;

    public u0(androidx.compose.runtime.saveable.b bVar, Function0 function0) {
        this.f5554a = function0;
        this.f5555b = bVar;
    }

    @Override
    public boolean a(Object obj) {
        return this.f5555b.a(obj);
    }

    @Override
    public androidx.compose.runtime.saveable.b.a b(String str, Function0 function0) {
        return this.f5555b.b(str, function0);
    }

    public final void c() {
        this.f5554a.invoke();
    }

    @Override
    public Map e() {
        return this.f5555b.e();
    }

    @Override
    public Object f(String str) {
        return this.f5555b.f(str);
    }
}
