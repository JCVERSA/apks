package androidx.compose.ui.node;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ObserverNodeOwnerScope implements z0 {

    public static final a f5054b = new a(null);

    public static final int f5055c = 8;

    private static final Function1 f5056d = new Function1<ObserverNodeOwnerScope, Unit>() {
        @Override
        public Object invoke(Object obj) {
            invoke((ObserverNodeOwnerScope) obj);
            return Unit.f64096a;
        }

        public final void invoke(ObserverNodeOwnerScope observerNodeOwnerScope) {
            if (observerNodeOwnerScope.isValidOwnerScope()) {
                observerNodeOwnerScope.b().Z();
            }
        }
    };

    private final u0 f5057a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Function1 a() {
            return ObserverNodeOwnerScope.f5056d;
        }

        private a() {
        }
    }

    public ObserverNodeOwnerScope(u0 u0Var) {
        this.f5057a = u0Var;
    }

    public final u0 b() {
        return this.f5057a;
    }

    @Override
    public boolean isValidOwnerScope() {
        return this.f5057a.getNode().j1();
    }
}
