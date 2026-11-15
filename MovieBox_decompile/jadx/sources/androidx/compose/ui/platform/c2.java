package androidx.compose.ui.platform;

import androidx.compose.ui.semantics.SemanticsNode;
import java.util.List;

public final class c2 {

    private final androidx.compose.ui.semantics.i f5442a;

    private final androidx.collection.f0 f5443b = androidx.collection.r.b();

    public c2(SemanticsNode semanticsNode, androidx.collection.o oVar) {
        this.f5442a = semanticsNode.w();
        List listT = semanticsNode.t();
        int size = listT.size();
        for (int i10 = 0; i10 < size; i10++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) listT.get(i10);
            if (oVar.a(semanticsNode2.o())) {
                this.f5443b.f(semanticsNode2.o());
            }
        }
    }

    public final androidx.collection.f0 a() {
        return this.f5443b;
    }

    public final androidx.compose.ui.semantics.i b() {
        return this.f5442a;
    }
}
