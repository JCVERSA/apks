package kotlinx.serialization.internal;

import defpackage.c74;
import defpackage.ca3;
import defpackage.ef5;
import defpackage.hi;
import defpackage.hu1;
import defpackage.y45;
import defpackage.yi5;
import java.util.Arrays;
import kotlin.b;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.a;
import org.mozilla.javascript.ES6Iterator;

public final class EnumSerializer implements ef5 {
    public final Enum[] a;
    public a b;
    public final yi5 c;

    public EnumSerializer(final String str, Enum[] enumArr) {
        y45.j(str, "serialName");
        y45.j(enumArr, "values");
        this.a = enumArr;
        this.c = b.a(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final a invoke() {
                a aVar = this.this$0.b;
                return aVar == null ? this.this$0.c(str) : aVar;
            }
        });
    }

    public final a c(String str) {
        EnumDescriptor enumDescriptor = new EnumDescriptor(str, this.a.length);
        for (Enum r0 : this.a) {
            PluginGeneratedSerialDescriptor.l(enumDescriptor, r0.name(), false, 2, null);
        }
        return enumDescriptor;
    }

    @Override
    public Enum deserialize(hu1 hu1Var) {
        y45.j(hu1Var, "decoder");
        int iQ = hu1Var.q(getDescriptor());
        if (iQ >= 0) {
            Enum[] enumArr = this.a;
            if (iQ < enumArr.length) {
                return enumArr[iQ];
            }
        }
        throw new SerializationException(iQ + " is not among valid " + getDescriptor().h() + " enum values, values size is " + this.a.length);
    }

    @Override
    public void serialize(ca3 ca3Var, Enum r4) {
        y45.j(ca3Var, "encoder");
        y45.j(r4, ES6Iterator.VALUE_PROPERTY);
        int iK0 = hi.k0(this.a, r4);
        if (iK0 != -1) {
            ca3Var.f(getDescriptor(), iK0);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(r4);
        sb.append(" is not a valid enum ");
        sb.append(getDescriptor().h());
        sb.append(", must be one of ");
        String string = Arrays.toString(this.a);
        y45.i(string, "toString(this)");
        sb.append(string);
        throw new SerializationException(sb.toString());
    }

    @Override
    public a getDescriptor() {
        return (a) this.c.getValue();
    }

    public String toString() {
        return "kotlinx.serialization.internal.EnumSerializer<" + getDescriptor().h() + '>';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EnumSerializer(String str, Enum[] enumArr, a aVar) {
        this(str, enumArr);
        y45.j(str, "serialName");
        y45.j(enumArr, "values");
        y45.j(aVar, "descriptor");
        this.b = aVar;
    }
}
