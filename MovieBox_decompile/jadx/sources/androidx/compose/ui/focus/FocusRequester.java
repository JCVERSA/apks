package androidx.compose.ui.focus;

import androidx.compose.ui.node.s0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class FocusRequester {

    public static final a f3914b = new a(null);

    private static final FocusRequester f3915c = new FocusRequester();

    private static final FocusRequester f3916d = new FocusRequester();

    private final androidx.compose.runtime.collection.b f3917a = new androidx.compose.runtime.collection.b(new q[16], 0);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FocusRequester a() {
            return FocusRequester.f3916d;
        }

        public final FocusRequester b() {
            return FocusRequester.f3915c;
        }

        private a() {
        }
    }

    public final boolean c(Function1 function1) {
        a aVar = f3914b;
        if (this == aVar.b()) {
            throw new IllegalStateException("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
        }
        if (this == aVar.a()) {
            throw new IllegalStateException("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
        }
        if (!this.f3917a.q()) {
            throw new IllegalStateException("\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
        }
        androidx.compose.runtime.collection.b bVar = this.f3917a;
        int iN = bVar.n();
        if (iN <= 0) {
            return false;
        }
        Object[] objArrM = bVar.m();
        int i10 = 0;
        boolean z10 = false;
        do {
            q qVar = (q) objArrM[i10];
            int iA = s0.a(1024);
            if (!qVar.getNode().j1()) {
                throw new IllegalStateException("visitChildren called on an unattached node");
            }
            androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
            androidx.compose.ui.f.c cVarA1 = qVar.getNode().a1();
            if (cVarA1 == null) {
                androidx.compose.ui.node.g.c(bVar2, qVar.getNode());
            } else {
                bVar2.b(cVarA1);
            }
            while (bVar2.q()) {
                androidx.compose.ui.f.c cVarG = (androidx.compose.ui.f.c) bVar2.v(bVar2.n() - 1);
                if ((cVarG.Z0() & iA) == 0) {
                    androidx.compose.ui.node.g.c(bVar2, cVarG);
                } else {
                    while (cVarG != null) {
                        if ((cVarG.e1() & iA) != 0) {
                            androidx.compose.runtime.collection.b bVar3 = null;
                            while (cVarG != null) {
                                if (cVarG instanceof FocusTargetNode) {
                                    FocusTargetNode focusTargetNode = (FocusTargetNode) cVarG;
                                    if (focusTargetNode.H1().t() ? ((Boolean) function1.invoke(focusTargetNode)).booleanValue() : TwoDimensionalFocusSearchKt.k(focusTargetNode, b.f3928b.b(), function1)) {
                                        z10 = true;
                                        break;
                                    }
                                } else if (((cVarG.e1() & iA) != 0) && (cVarG instanceof androidx.compose.ui.node.i)) {
                                    int i11 = 0;
                                    for (androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD1 != null; cVarD1 = cVarD1.a1()) {
                                        if ((cVarD1.e1() & iA) != 0) {
                                            i11++;
                                            if (i11 == 1) {
                                                cVarG = cVarD1;
                                            } else {
                                                if (bVar3 == null) {
                                                    bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                }
                                                if (cVarG != null) {
                                                    bVar3.b(cVarG);
                                                    cVarG = null;
                                                }
                                                bVar3.b(cVarD1);
                                            }
                                        }
                                    }
                                    if (i11 == 1) {
                                    }
                                }
                                cVarG = androidx.compose.ui.node.g.g(bVar3);
                            }
                            break;
                        }
                        cVarG = cVarG.a1();
                    }
                }
            }
            i10++;
        } while (i10 < iN);
        return z10;
    }

    public final boolean d() {
        return c(new Function1<FocusTargetNode, Boolean>() {
            @Override
            public final Boolean invoke(FocusTargetNode focusTargetNode) {
                return Boolean.valueOf(FocusTransactionsKt.j(focusTargetNode));
            }
        });
    }
}
