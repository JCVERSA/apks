package defpackage;

import com.google.android.gms.internal.play_billing.t;
import com.google.android.gms.internal.play_billing.u;
import java.util.Objects;

public final class ujj extends t {
    public final vkj i;

    public ujj(vkj vkjVar) {
        Objects.requireNonNull(vkjVar);
        this.i = vkjVar;
    }

    @Override
    public final String a() {
        u uVar = (u) this.i.b.get();
        if (uVar == null) {
            return "Completer object has been garbage collected, future will fail soon";
        }
        return "tag=[" + String.valueOf(uVar.a) + "]";
    }
}
