package kotlinx.serialization.internal;

import defpackage.c74;
import defpackage.e28;
import defpackage.gd9;
import defpackage.i81;
import defpackage.id9;
import defpackage.y45;
import defpackage.yi5;
import kotlin.b;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.a;

public final class EnumDescriptor extends PluginGeneratedSerialDescriptor {
    public final id9 m;
    public final yi5 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnumDescriptor(final String str, final int i) {
        super(str, null, i, 2, null);
        y45.j(str, "name");
        this.m = id9.b.a;
        this.n = b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final a[] invoke() {
                int i2 = i;
                a[] aVarArr = new a[i2];
                for (int i3 = 0; i3 < i2; i3++) {
                    aVarArr[i3] = SerialDescriptorsKt.d(str + '.' + this.f(i3), kotlinx.serialization.descriptors.b.d.a, new a[0], null, 8, null);
                }
                return aVarArr;
            }
        });
    }

    @Override
    public a d(int i) {
        return s()[i];
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return aVar.getKind() == id9.b.a && y45.e(h(), aVar.h()) && y45.e(e28.a(this), e28.a(aVar));
    }

    @Override
    public id9 getKind() {
        return this.m;
    }

    @Override
    public int hashCode() {
        int iHashCode = h().hashCode();
        int iHashCode2 = 1;
        for (String str : gd9.b(this)) {
            int i = iHashCode2 * 31;
            iHashCode2 = i + (str != null ? str.hashCode() : 0);
        }
        return (iHashCode * 31) + iHashCode2;
    }

    public final a[] s() {
        return (a[]) this.n.getValue();
    }

    @Override
    public String toString() {
        return i81.y0(gd9.b(this), ", ", h() + '(', ")", 0, null, null, 56, null);
    }
}
