package androidx.compose.ui.focus;

import androidx.collection.MutableScatterSet;
import androidx.collection.w0;
import androidx.compose.ui.node.s0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

public final class FocusInvalidationManager {

    private final Function1 f3884a;

    private final Function0 f3885b;

    private final MutableScatterSet f3886c = w0.a();

    private final MutableScatterSet f3887d = w0.a();

    private final MutableScatterSet f3888e = w0.a();

    private final MutableScatterSet f3889f = w0.a();

    public FocusInvalidationManager(Function1 function1, Function0 function0) {
        this.f3884a = function1;
        this.f3885b = function0;
    }

    public final void c() {
        int i10;
        long[] jArr;
        Object[] objArr;
        long[] jArr2;
        Object[] objArr2;
        r rVarJ1;
        int i11;
        int i12;
        long[] jArr3;
        Object[] objArr3;
        boolean z10;
        Object[] objArr4;
        long[] jArr4;
        long[] jArr5;
        int i13;
        long[] jArr6;
        MutableScatterSet mutableScatterSet = this.f3888e;
        Object[] objArr5 = mutableScatterSet.f1938b;
        long[] jArr7 = mutableScatterSet.f1937a;
        int length = jArr7.length - 2;
        char c10 = 7;
        long j10 = -9187201950435737472L;
        int i14 = 8;
        int i15 = 1;
        if (length >= 0) {
            int i16 = 0;
            while (true) {
                long j11 = jArr7[i16];
                if ((((~j11) << c10) & j11 & j10) != j10) {
                    int i17 = 8 - ((~(i16 - length)) >>> 31);
                    int i18 = 0;
                    while (i18 < i17) {
                        if ((j11 & 255) < 128) {
                            m mVar = (m) objArr5[(i16 << 3) + i18];
                            if (mVar.getNode().j1()) {
                                int iA = s0.a(1024);
                                androidx.compose.ui.f.c node = mVar.getNode();
                                androidx.compose.runtime.collection.b bVar = null;
                                while (node != null) {
                                    if (node instanceof FocusTargetNode) {
                                        this.f3886c.h((FocusTargetNode) node);
                                    } else {
                                        if ((node.e1() & iA) != 0 && (node instanceof androidx.compose.ui.node.i)) {
                                            androidx.compose.ui.f.c cVarD1 = ((androidx.compose.ui.node.i) node).D1();
                                            int i19 = 0;
                                            while (cVarD1 != null) {
                                                if ((cVarD1.e1() & iA) != 0) {
                                                    i19++;
                                                    if (i19 == i15) {
                                                        jArr7 = jArr7;
                                                        node = cVarD1;
                                                    } else {
                                                        if (bVar == null) {
                                                            bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                        }
                                                        if (node != null) {
                                                            bVar.b(node);
                                                            node = null;
                                                        }
                                                        bVar.b(cVarD1);
                                                    }
                                                } else {
                                                    jArr7 = jArr7;
                                                }
                                                cVarD1 = cVarD1.a1();
                                                jArr7 = jArr7;
                                                i15 = 1;
                                            }
                                            jArr6 = jArr7;
                                            int i20 = i15;
                                            if (i19 == i20) {
                                                i15 = i20;
                                                jArr7 = jArr6;
                                            }
                                        }
                                        node = androidx.compose.ui.node.g.g(bVar);
                                        jArr7 = jArr6;
                                        i15 = 1;
                                    }
                                    jArr6 = jArr7;
                                    node = androidx.compose.ui.node.g.g(bVar);
                                    jArr7 = jArr6;
                                    i15 = 1;
                                }
                                jArr5 = jArr7;
                                if (!mVar.getNode().j1()) {
                                    throw new IllegalStateException("visitChildren called on an unattached node");
                                }
                                androidx.compose.runtime.collection.b bVar2 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                androidx.compose.ui.f.c cVarA1 = mVar.getNode().a1();
                                if (cVarA1 == null) {
                                    androidx.compose.ui.node.g.c(bVar2, mVar.getNode());
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
                                                        this.f3886c.h((FocusTargetNode) cVarG);
                                                    } else if ((cVarG.e1() & iA) != 0 && (cVarG instanceof androidx.compose.ui.node.i)) {
                                                        int i21 = 0;
                                                        for (androidx.compose.ui.f.c cVarD2 = ((androidx.compose.ui.node.i) cVarG).D1(); cVarD2 != null; cVarD2 = cVarD2.a1()) {
                                                            if ((cVarD2.e1() & iA) != 0) {
                                                                i21++;
                                                                if (i21 == 1) {
                                                                    cVarG = cVarD2;
                                                                } else {
                                                                    if (bVar3 == null) {
                                                                        bVar3 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                                    }
                                                                    if (cVarG != null) {
                                                                        bVar3.b(cVarG);
                                                                        cVarG = null;
                                                                    }
                                                                    bVar3.b(cVarD2);
                                                                }
                                                            }
                                                        }
                                                        if (i21 == 1) {
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
                            } else {
                                jArr5 = jArr7;
                            }
                            i13 = 8;
                        } else {
                            jArr5 = jArr7;
                            i13 = i14;
                        }
                        j11 >>= i13;
                        i18++;
                        i14 = i13;
                        jArr7 = jArr5;
                        i15 = 1;
                    }
                    jArr4 = jArr7;
                    if (i17 != i14) {
                        break;
                    }
                } else {
                    jArr4 = jArr7;
                }
                if (i16 == length) {
                    break;
                }
                i16++;
                jArr7 = jArr4;
                c10 = 7;
                j10 = -9187201950435737472L;
                i15 = 1;
                i14 = 8;
            }
        }
        this.f3888e.m();
        MutableScatterSet mutableScatterSet2 = this.f3887d;
        Object[] objArr6 = mutableScatterSet2.f1938b;
        long[] jArr8 = mutableScatterSet2.f1937a;
        int length2 = jArr8.length - 2;
        if (length2 >= 0) {
            int i22 = 0;
            while (true) {
                long j12 = jArr8[i22];
                if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i23 = 8 - ((~(i22 - length2)) >>> 31);
                    int i24 = 0;
                    while (i24 < i23) {
                        if ((j12 & 255) < 128) {
                            c cVar = (c) objArr6[(i22 << 3) + i24];
                            if (cVar.getNode().j1()) {
                                int iA2 = s0.a(1024);
                                androidx.compose.ui.f.c node2 = cVar.getNode();
                                boolean z11 = false;
                                boolean z12 = true;
                                FocusTargetNode focusTargetNode = null;
                                androidx.compose.runtime.collection.b bVar4 = null;
                                while (node2 != null) {
                                    if (node2 instanceof FocusTargetNode) {
                                        FocusTargetNode focusTargetNode2 = (FocusTargetNode) node2;
                                        if (focusTargetNode != null) {
                                            z11 = true;
                                        }
                                        if (this.f3886c.a(focusTargetNode2)) {
                                            this.f3889f.h(focusTargetNode2);
                                            z12 = false;
                                        }
                                        jArr3 = jArr8;
                                        objArr3 = objArr6;
                                        focusTargetNode = focusTargetNode2;
                                    } else {
                                        if ((node2.e1() & iA2) == 0 || !(node2 instanceof androidx.compose.ui.node.i)) {
                                            jArr3 = jArr8;
                                            objArr3 = objArr6;
                                            z10 = z11;
                                        } else {
                                            androidx.compose.ui.f.c cVarD3 = ((androidx.compose.ui.node.i) node2).D1();
                                            jArr3 = jArr8;
                                            int i25 = 0;
                                            while (cVarD3 != null) {
                                                if ((cVarD3.e1() & iA2) != 0) {
                                                    i25++;
                                                    objArr4 = objArr6;
                                                    if (i25 == 1) {
                                                        node2 = cVarD3;
                                                    } else {
                                                        androidx.compose.runtime.collection.b bVar5 = bVar4 == null ? new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0) : bVar4;
                                                        if (node2 != null) {
                                                            bVar5.b(node2);
                                                            node2 = null;
                                                        }
                                                        bVar5.b(cVarD3);
                                                        bVar4 = bVar5;
                                                        i25 = i25;
                                                    }
                                                    cVarD3 = cVarD3.a1();
                                                    objArr6 = objArr4;
                                                    z11 = z11;
                                                } else {
                                                    objArr4 = objArr6;
                                                }
                                                z11 = z11;
                                                cVarD3 = cVarD3.a1();
                                                objArr6 = objArr4;
                                                z11 = z11;
                                            }
                                            objArr3 = objArr6;
                                            z10 = z11;
                                            if (i25 == 1) {
                                                jArr8 = jArr3;
                                                objArr6 = objArr3;
                                                z11 = z10;
                                            }
                                        }
                                        z11 = z10;
                                    }
                                    node2 = androidx.compose.ui.node.g.g(bVar4);
                                    jArr8 = jArr3;
                                    objArr6 = objArr3;
                                }
                                jArr2 = jArr8;
                                objArr2 = objArr6;
                                boolean z13 = z11;
                                if (!cVar.getNode().j1()) {
                                    throw new IllegalStateException("visitChildren called on an unattached node");
                                }
                                androidx.compose.runtime.collection.b bVar6 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                androidx.compose.ui.f.c cVarA2 = cVar.getNode().a1();
                                if (cVarA2 == null) {
                                    androidx.compose.ui.node.g.c(bVar6, cVar.getNode());
                                } else {
                                    bVar6.b(cVarA2);
                                }
                                boolean z14 = z13;
                                while (bVar6.q()) {
                                    androidx.compose.ui.f.c cVarG2 = (androidx.compose.ui.f.c) bVar6.v(bVar6.n() - 1);
                                    if ((cVarG2.Z0() & iA2) == 0) {
                                        androidx.compose.ui.node.g.c(bVar6, cVarG2);
                                    } else {
                                        while (true) {
                                            if (cVarG2 != null) {
                                                if ((cVarG2.e1() & iA2) != 0) {
                                                    androidx.compose.runtime.collection.b bVar7 = null;
                                                    while (cVarG2 != null) {
                                                        if (cVarG2 instanceof FocusTargetNode) {
                                                            FocusTargetNode focusTargetNode3 = (FocusTargetNode) cVarG2;
                                                            if (focusTargetNode != null) {
                                                                z14 = true;
                                                            }
                                                            if (this.f3886c.a(focusTargetNode3)) {
                                                                this.f3889f.h(focusTargetNode3);
                                                                z12 = false;
                                                            }
                                                            focusTargetNode = focusTargetNode3;
                                                        } else {
                                                            if ((cVarG2.e1() & iA2) != 0 && (cVarG2 instanceof androidx.compose.ui.node.i)) {
                                                                androidx.compose.ui.f.c cVarD4 = ((androidx.compose.ui.node.i) cVarG2).D1();
                                                                bVar6 = bVar6;
                                                                int i26 = 0;
                                                                while (cVarD4 != null) {
                                                                    if ((cVarD4.e1() & iA2) != 0) {
                                                                        i26++;
                                                                        i12 = iA2;
                                                                        if (i26 == 1) {
                                                                            cVarG2 = cVarD4;
                                                                        } else {
                                                                            if (bVar7 == null) {
                                                                                bVar7 = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                                                                            }
                                                                            if (cVarG2 != null) {
                                                                                bVar7.b(cVarG2);
                                                                                cVarG2 = null;
                                                                            }
                                                                            bVar7.b(cVarD4);
                                                                            i26 = i26;
                                                                        }
                                                                        cVarD4 = cVarD4.a1();
                                                                        iA2 = i12;
                                                                    } else {
                                                                        i12 = iA2;
                                                                    }
                                                                    cVarD4 = cVarD4.a1();
                                                                    iA2 = i12;
                                                                }
                                                                i11 = iA2;
                                                                if (i26 != 1) {
                                                                    cVarG2 = androidx.compose.ui.node.g.g(bVar7);
                                                                }
                                                            }
                                                            bVar6 = bVar6;
                                                            iA2 = i11;
                                                        }
                                                        i11 = iA2;
                                                        cVarG2 = androidx.compose.ui.node.g.g(bVar7);
                                                        bVar6 = bVar6;
                                                        iA2 = i11;
                                                    }
                                                } else {
                                                    cVarG2 = cVarG2.a1();
                                                    iA2 = iA2;
                                                }
                                            }
                                        }
                                    }
                                    bVar6 = bVar6;
                                    iA2 = iA2;
                                }
                                if (z12) {
                                    if (z14) {
                                        rVarJ1 = d.a(cVar);
                                    } else if (focusTargetNode == null || (rVarJ1 = focusTargetNode.J1()) == null) {
                                        rVarJ1 = FocusStateImpl.Inactive;
                                    }
                                    cVar.R0(rVarJ1);
                                }
                            } else {
                                cVar.R0(FocusStateImpl.Inactive);
                                jArr2 = jArr8;
                                objArr2 = objArr6;
                            }
                        } else {
                            jArr2 = jArr8;
                            objArr2 = objArr6;
                        }
                        j12 >>= 8;
                        i24++;
                        jArr8 = jArr2;
                        objArr6 = objArr2;
                    }
                    jArr = jArr8;
                    objArr = objArr6;
                    i10 = 0;
                    if (i23 != 8) {
                        break;
                    }
                } else {
                    jArr = jArr8;
                    objArr = objArr6;
                    i10 = 0;
                }
                if (i22 == length2) {
                    break;
                }
                i22++;
                jArr8 = jArr;
                objArr6 = objArr;
            }
        } else {
            i10 = 0;
        }
        this.f3887d.m();
        MutableScatterSet mutableScatterSet3 = this.f3886c;
        Object[] objArr7 = mutableScatterSet3.f1938b;
        long[] jArr9 = mutableScatterSet3.f1937a;
        int length3 = jArr9.length - 2;
        if (length3 >= 0) {
            int i27 = i10;
            while (true) {
                long j13 = jArr9[i27];
                if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i28 = 8 - ((~(i27 - length3)) >>> 31);
                    for (int i29 = i10; i29 < i28; i29++) {
                        if ((j13 & 255) < 128) {
                            FocusTargetNode focusTargetNode4 = (FocusTargetNode) objArr7[(i27 << 3) + i29];
                            if (focusTargetNode4.j1()) {
                                FocusStateImpl focusStateImplJ1 = focusTargetNode4.J1();
                                focusTargetNode4.O1();
                                if (focusStateImplJ1 != focusTargetNode4.J1() || this.f3889f.a(focusTargetNode4)) {
                                    d.c(focusTargetNode4);
                                }
                            }
                        }
                        j13 >>= 8;
                    }
                    if (i28 != 8) {
                        break;
                    }
                }
                if (i27 == length3) {
                    break;
                } else {
                    i27++;
                }
            }
        }
        this.f3886c.m();
        this.f3889f.m();
        this.f3885b.invoke();
        if (!this.f3888e.d()) {
            g0.a.b("Unprocessed FocusProperties nodes");
        }
        if (!this.f3887d.d()) {
            g0.a.b("Unprocessed FocusEvent nodes");
        }
        if (this.f3886c.d()) {
            return;
        }
        g0.a.b("Unprocessed FocusTarget nodes");
    }

    private final void d(MutableScatterSet mutableScatterSet, Object obj) {
        if (mutableScatterSet.h(obj) && this.f3886c.c() + this.f3887d.c() + this.f3888e.c() == 1) {
            this.f3884a.invoke(new FocusInvalidationManager$scheduleInvalidation$1(this));
        }
    }

    public final boolean b() {
        return this.f3886c.e() || this.f3888e.e() || this.f3887d.e();
    }

    public final void e(c cVar) {
        d(this.f3887d, cVar);
    }

    public final void f(m mVar) {
        d(this.f3888e, mVar);
    }

    public final void g(FocusTargetNode focusTargetNode) {
        d(this.f3886c, focusTargetNode);
    }
}
