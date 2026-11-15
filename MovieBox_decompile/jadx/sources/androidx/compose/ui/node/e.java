package androidx.compose.ui.node;

public abstract class e {
    public static final Object a(d dVar, androidx.compose.runtime.q qVar) {
        if (!dVar.getNode().j1()) {
            g0.a.b("Cannot read CompositionLocal because the Modifier node is not currently attached.");
        }
        return g.m(dVar).G().a(qVar);
    }
}
