package androidx.compose.foundation.relocation;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.node.n1;
import y.i;

abstract class c {
    public static final a b(androidx.compose.ui.node.f fVar) {
        if (!fVar.getNode().j1()) {
            return null;
        }
        a aVar = (a) n1.a(fVar, BringIntoViewResponderNode.f2850q);
        return aVar == null ? e.b(fVar) : aVar;
    }

    public static final i c(l lVar, l lVar2, i iVar) {
        return iVar.q(lVar.O(lVar2, false).j());
    }
}
