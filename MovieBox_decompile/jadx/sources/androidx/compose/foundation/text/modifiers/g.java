package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.layout.l;
import androidx.compose.ui.layout.s;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.node.a0;
import androidx.compose.ui.node.m;
import androidx.compose.ui.node.n;
import androidx.compose.ui.node.p;
import androidx.compose.ui.node.x;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.d0;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class g extends androidx.compose.ui.node.i implements x, n, p {

    private h f3012p;

    private Function1 f3013q;

    private final TextAnnotatedStringNode f3014r;

    public g(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i10, boolean z10, int i11, int i12, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, bVar, function1, i10, z10, i11, i12, list, function2, hVar, x1Var, function3);
    }

    public final void I1(AnnotatedString annotatedString, d0 d0Var, List list, int i10, int i11, boolean z10, androidx.compose.ui.text.font.h.b bVar, int i12, Function1 function1, Function1 function2, h hVar, x1 x1Var) {
        TextAnnotatedStringNode textAnnotatedStringNode = this.f3014r;
        textAnnotatedStringNode.J1(textAnnotatedStringNode.S1(x1Var, d0Var), this.f3014r.U1(annotatedString), this.f3014r.T1(d0Var, list, i10, i11, z10, bVar, i12), this.f3014r.R1(function1, function2, hVar, this.f3013q));
        a0.b(this);
    }

    @Override
    public void n(z.c cVar) {
        this.f3014r.K1(cVar);
    }

    @Override
    public void w0() {
        m.a(this);
    }

    @Override
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j10) {
        return this.f3014r.P1(xVar, sVar, j10);
    }

    public g(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i10, boolean z10, int i11, int i12, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, bVar, (i13 & 8) != 0 ? null : function1, (i13 & 16) != 0 ? androidx.compose.ui.text.style.p.f6133a.a() : i10, (i13 & 32) != 0 ? true : z10, (i13 & 64) != 0 ? Integer.MAX_VALUE : i11, (i13 & 128) != 0 ? 1 : i12, (i13 & 256) != 0 ? null : list, (i13 & 512) != 0 ? null : function2, (i13 & 1024) != 0 ? null : hVar, (i13 & 2048) != 0 ? null : x1Var, (i13 & 4096) != 0 ? null : function3, null);
    }

    private g(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, Function1 function1, int i10, boolean z10, int i11, int i12, List list, Function1 function2, h hVar, x1 x1Var, Function1 function3) {
        this.f3013q = function3;
        this.f3014r = (TextAnnotatedStringNode) C1(new TextAnnotatedStringNode(annotatedString, d0Var, bVar, function1, i10, z10, i11, i12, list, function2, this.f3012p, x1Var, this.f3013q, null));
        throw new IllegalArgumentException("Do not use SelectionCapableStaticTextModifier unless selectionController != null");
    }

    @Override
    public void v(l lVar) {
    }
}
