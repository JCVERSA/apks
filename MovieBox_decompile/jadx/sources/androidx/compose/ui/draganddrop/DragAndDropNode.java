package androidx.compose.ui.draganddrop;

import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import androidx.compose.ui.node.m1;
import androidx.compose.ui.node.n1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class DragAndDropNode extends androidx.compose.ui.f.c implements m1, d {

    public static final a f3824r = new a(null);

    public static final int f3825s = 8;

    private final Function1 f3826n;

    private final Object f3827o = a.C0037a.f3830a;

    private d f3828p;

    private f f3829q;

    public static final class a {

        private static final class C0037a {

            public static final C0037a f3830a = new C0037a();

            private C0037a() {
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public DragAndDropNode(Function1 function1) {
        this.f3826n = function1;
    }

    @Override
    public void B(b bVar) {
        f fVar = this.f3829q;
        if (fVar != null) {
            fVar.B(bVar);
            return;
        }
        d dVar = this.f3828p;
        if (dVar != null) {
            dVar.B(bVar);
        }
    }

    @Override
    public void C(final b bVar) {
        m1 m1Var;
        d dVar;
        d dVar2 = this.f3828p;
        if (dVar2 == null || !e.d(dVar2, h.a(bVar))) {
            if (getNode().j1()) {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                n1.e(this, new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public final TraversableNode$Companion$TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
                        DragAndDropNode dragAndDropNode2 = dragAndDropNode;
                        if (!androidx.compose.ui.node.g.n(this).getDragAndDropManager().a(dragAndDropNode2) || !e.d(dragAndDropNode2, h.a(bVar))) {
                            return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
                        }
                        objectRef.element = dragAndDropNode;
                        return TraversableNode$Companion$TraverseDescendantsAction.CancelTraversal;
                    }
                });
                m1Var = (m1) objectRef.element;
            } else {
                m1Var = null;
            }
            dVar = (d) m1Var;
        } else {
            dVar = dVar2;
        }
        if (dVar != null && dVar2 == null) {
            e.e(dVar, bVar);
            f fVar = this.f3829q;
            if (fVar != null) {
                fVar.L(bVar);
            }
        } else if (dVar == null && dVar2 != null) {
            f fVar2 = this.f3829q;
            if (fVar2 != null) {
                e.e(fVar2, bVar);
            }
            dVar2.L(bVar);
        } else if (!Intrinsics.c(dVar, dVar2)) {
            if (dVar != null) {
                e.e(dVar, bVar);
            }
            if (dVar2 != null) {
                dVar2.L(bVar);
            }
        } else if (dVar != null) {
            dVar.C(bVar);
        } else {
            f fVar3 = this.f3829q;
            if (fVar3 != null) {
                fVar3.C(bVar);
            }
        }
        this.f3828p = dVar;
    }

    public boolean C1(final b bVar) {
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        e.f(this, new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final TraversableNode$Companion$TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
                if (!dragAndDropNode.j1()) {
                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
                if (!(dragAndDropNode.f3829q == null)) {
                    g0.a.b("DragAndDropTarget self reference must be null at the start of a drag and drop session");
                }
                dragAndDropNode.f3829q = (f) dragAndDropNode.f3826n.invoke(bVar);
                boolean z10 = dragAndDropNode.f3829q != null;
                if (z10) {
                    androidx.compose.ui.node.g.n(this).getDragAndDropManager().b(dragAndDropNode);
                }
                Ref.BooleanRef booleanRef2 = booleanRef;
                booleanRef2.element = booleanRef2.element || z10;
                return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
            }
        });
        return booleanRef.element;
    }

    @Override
    public Object D() {
        return this.f3827o;
    }

    @Override
    public void L(b bVar) {
        f fVar = this.f3829q;
        if (fVar != null) {
            fVar.L(bVar);
        }
        d dVar = this.f3828p;
        if (dVar != null) {
            dVar.L(bVar);
        }
        this.f3828p = null;
    }

    @Override
    public void Y0(final b bVar) {
        e.f(this, new Function1<DragAndDropNode, TraversableNode$Companion$TraverseDescendantsAction>() {
            {
                super(1);
            }

            @Override
            public final TraversableNode$Companion$TraverseDescendantsAction invoke(DragAndDropNode dragAndDropNode) {
                if (!dragAndDropNode.getNode().j1()) {
                    return TraversableNode$Companion$TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
                }
                f fVar = dragAndDropNode.f3829q;
                if (fVar != null) {
                    fVar.Y0(bVar);
                }
                dragAndDropNode.f3829q = null;
                dragAndDropNode.f3828p = null;
                return TraversableNode$Companion$TraverseDescendantsAction.ContinueTraversal;
            }
        });
    }

    @Override
    public void a0(b bVar) {
        f fVar = this.f3829q;
        if (fVar != null) {
            fVar.a0(bVar);
            return;
        }
        d dVar = this.f3828p;
        if (dVar != null) {
            dVar.a0(bVar);
        }
    }

    @Override
    public boolean k0(b bVar) {
        d dVar = this.f3828p;
        if (dVar != null) {
            return dVar.k0(bVar);
        }
        f fVar = this.f3829q;
        if (fVar != null) {
            return fVar.k0(bVar);
        }
        return false;
    }

    @Override
    public void n1() {
        this.f3829q = null;
        this.f3828p = null;
    }
}
