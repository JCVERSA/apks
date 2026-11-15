package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.layout.l;
import androidx.compose.ui.semantics.SemanticsNode;
import o0.r;

final class i {

    private final SemanticsNode f5595a;

    private final int f5596b;

    private final r f5597c;

    private final l f5598d;

    public i(SemanticsNode semanticsNode, int i10, r rVar, l lVar) {
        this.f5595a = semanticsNode;
        this.f5596b = i10;
        this.f5597c = rVar;
        this.f5598d = lVar;
    }

    public final l a() {
        return this.f5598d;
    }

    public final int b() {
        return this.f5596b;
    }

    public final SemanticsNode c() {
        return this.f5595a;
    }

    public final r d() {
        return this.f5597c;
    }

    public String toString() {
        return "ScrollCaptureCandidate(node=" + this.f5595a + ", depth=" + this.f5596b + ", viewportBoundsInWindow=" + this.f5597c + ", coordinates=" + this.f5598d + ')';
    }
}
