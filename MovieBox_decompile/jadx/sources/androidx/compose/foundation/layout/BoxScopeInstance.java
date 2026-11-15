package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.z0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

public final class BoxScopeInstance implements f {

    public static final BoxScopeInstance f2435a = new BoxScopeInstance();

    private BoxScopeInstance() {
    }

    @Override
    public androidx.compose.ui.f b(androidx.compose.ui.f fVar, final androidx.compose.ui.b bVar) {
        return fVar.e(new BoxChildDataElement(bVar, false, InspectableValueKt.b() ? new Function1<z0, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f64096a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("align");
                z0Var.c(bVar);
            }
        } : InspectableValueKt.a()));
    }
}
