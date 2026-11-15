package kotlin.reflect.jvm.internal.impl.renderer;

import defpackage.by6;
import defpackage.dv7;
import defpackage.e81;
import defpackage.hcb;
import defpackage.ns8;
import defpackage.p54;
import defpackage.px0;
import defpackage.qw0;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y82;
import java.util.ArrayList;

public interface a {

    public static final class C0405a implements a {
        public static final C0405a a = new C0405a();

        @Override
        public String a(px0 px0Var, DescriptorRenderer descriptorRenderer) {
            y45.j(px0Var, "classifier");
            y45.j(descriptorRenderer, "renderer");
            if (px0Var instanceof hcb) {
                by6 name = ((hcb) px0Var).getName();
                y45.i(name, "classifier.name");
                return descriptorRenderer.x(name, false);
            }
            p54 p54VarM = y82.m(px0Var);
            y45.i(p54VarM, "getFqName(classifier)");
            return descriptorRenderer.w(p54VarM);
        }
    }

    public static final class b implements a {
        public static final b a = new b();

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, px0] */
        /* JADX WARN: Type inference failed for: r1v1, types: [gy6, xt1] */
        /* JADX WARN: Type inference failed for: r1v2, types: [xt1] */
        @Override
        public String a(px0 px0Var, DescriptorRenderer descriptorRenderer) {
            y45.j(px0Var, "classifier");
            y45.j(descriptorRenderer, "renderer");
            if (px0Var instanceof hcb) {
                by6 name = ((hcb) px0Var).getName();
                y45.i(name, "classifier.name");
                return descriptorRenderer.x(name, false);
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(px0Var.getName());
                px0Var = px0Var.b();
            } while (px0Var instanceof qw0);
            return ns8.c(e81.R(arrayList));
        }
    }

    public static final class c implements a {
        public static final c a = new c();

        @Override
        public String a(px0 px0Var, DescriptorRenderer descriptorRenderer) {
            y45.j(px0Var, "classifier");
            y45.j(descriptorRenderer, "renderer");
            return b(px0Var);
        }

        public final String b(px0 px0Var) {
            by6 name = px0Var.getName();
            y45.i(name, "descriptor.name");
            String strB = ns8.b(name);
            if (px0Var instanceof hcb) {
                return strB;
            }
            xt1 xt1VarB = px0Var.b();
            y45.i(xt1VarB, "descriptor.containingDeclaration");
            String strC = c(xt1VarB);
            if (strC == null || y45.e(strC, "")) {
                return strB;
            }
            return strC + '.' + strB;
        }

        public final String c(xt1 xt1Var) {
            if (xt1Var instanceof qw0) {
                return b((px0) xt1Var);
            }
            if (!(xt1Var instanceof dv7)) {
                return null;
            }
            p54 p54VarJ = ((dv7) xt1Var).d().j();
            y45.i(p54VarJ, "descriptor.fqName.toUnsafe()");
            return ns8.a(p54VarJ);
        }
    }

    String a(px0 px0Var, DescriptorRenderer descriptorRenderer);
}
