package androidx.compose.ui.layout;

import androidx.compose.ui.node.NodeCoordinator;

public abstract class m {
    public static final y.i a(l lVar) {
        y.i iVarA;
        l lVarR = lVar.R();
        return (lVarR == null || (iVarA = k.a(lVarR, lVar, false, 2, null)) == null) ? new y.i(0.0f, 0.0f, o0.t.g(lVar.k()), o0.t.f(lVar.k())) : iVarA;
    }

    public static final y.i b(l lVar) {
        return k.a(d(lVar), lVar, false, 2, null);
    }

    public static final y.i c(l lVar) {
        l lVarD = d(lVar);
        float fG = o0.t.g(lVarD.k());
        float f10 = o0.t.f(lVarD.k());
        y.i iVarB = b(lVar);
        float f11 = iVarB.f();
        if (f11 < 0.0f) {
            f11 = 0.0f;
        }
        if (f11 > fG) {
            f11 = fG;
        }
        float fI = iVarB.i();
        if (fI < 0.0f) {
            fI = 0.0f;
        }
        if (fI > f10) {
            fI = f10;
        }
        float fG2 = iVarB.g();
        if (fG2 < 0.0f) {
            fG2 = 0.0f;
        }
        if (fG2 <= fG) {
            fG = fG2;
        }
        float fC = iVarB.c();
        float f12 = fC >= 0.0f ? fC : 0.0f;
        if (f12 <= f10) {
            f10 = f12;
        }
        if (f11 == fG || fI == f10) {
            return y.i.f76004e.a();
        }
        long jL = lVarD.L(y.h.a(f11, fI));
        long jL2 = lVarD.L(y.h.a(fG, fI));
        long jL3 = lVarD.L(y.h.a(fG, f10));
        long jL4 = lVarD.L(y.h.a(f11, f10));
        float fM = y.g.m(jL);
        float fM2 = y.g.m(jL2);
        float fM3 = y.g.m(jL4);
        float fM4 = y.g.m(jL3);
        float fMin = Math.min(fM, Math.min(fM2, Math.min(fM3, fM4)));
        float fMax = Math.max(fM, Math.max(fM2, Math.max(fM3, fM4)));
        float fN = y.g.n(jL);
        float fN2 = y.g.n(jL2);
        float fN3 = y.g.n(jL4);
        float fN4 = y.g.n(jL3);
        return new y.i(fMin, Math.min(fN, Math.min(fN2, Math.min(fN3, fN4))), fMax, Math.max(fN, Math.max(fN2, Math.max(fN3, fN4))));
    }

    public static final l d(l lVar) {
        l lVar2;
        l lVarR = lVar.R();
        while (true) {
            l lVar3 = lVarR;
            lVar2 = lVar;
            lVar = lVar3;
            if (lVar == null) {
                break;
            }
            lVarR = lVar.R();
        }
        NodeCoordinator nodeCoordinator = lVar2 instanceof NodeCoordinator ? (NodeCoordinator) lVar2 : null;
        if (nodeCoordinator == null) {
            return lVar2;
        }
        NodeCoordinator nodeCoordinatorZ1 = nodeCoordinator.Z1();
        while (true) {
            NodeCoordinator nodeCoordinator2 = nodeCoordinatorZ1;
            NodeCoordinator nodeCoordinator3 = nodeCoordinator;
            nodeCoordinator = nodeCoordinator2;
            if (nodeCoordinator == null) {
                return nodeCoordinator3;
            }
            nodeCoordinatorZ1 = nodeCoordinator.Z1();
        }
    }

    public static final long e(l lVar) {
        return lVar.Y(y.g.f75999b.c());
    }

    public static final long f(l lVar) {
        return lVar.L(y.g.f75999b.c());
    }
}
