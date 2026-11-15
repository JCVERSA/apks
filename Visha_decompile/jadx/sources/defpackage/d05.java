package defpackage;

import java.util.Arrays;
import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

public final class d05 extends PluginGeneratedSerialDescriptor {
    public final boolean m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d05(String str, od4 od4Var) {
        super(str, od4Var, 1);
        y45.j(str, "name");
        y45.j(od4Var, "generatedSerializer");
        this.m = true;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d05) {
            a aVar = (a) obj;
            if (y45.e(h(), aVar.h())) {
                d05 d05Var = (d05) obj;
                if (d05Var.isInline() && Arrays.equals(o(), d05Var.o()) && e() == aVar.e()) {
                    int iE = e();
                    for (int i = 0; i < iE; i++) {
                        if (y45.e(d(i).h(), aVar.d(i).h()) && y45.e(d(i).getKind(), aVar.d(i).getKind())) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public int hashCode() {
        return super.hashCode() * 31;
    }

    @Override
    public boolean isInline() {
        return this.m;
    }
}
