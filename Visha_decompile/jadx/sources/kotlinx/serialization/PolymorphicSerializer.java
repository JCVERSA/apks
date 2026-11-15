package kotlinx.serialization;

import defpackage.c74;
import defpackage.de5;
import defpackage.dx0;
import defpackage.e74;
import defpackage.hz9;
import defpackage.id9;
import defpackage.mc8;
import defpackage.mh1;
import defpackage.p3;
import defpackage.qn0;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import defpackage.zfb;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.descriptors.a;
import org.mozilla.javascript.ES6Iterator;

public final class PolymorphicSerializer extends p3 {
    public final de5 a;
    public List b;
    public final yi5 c;

    public PolymorphicSerializer(de5 de5Var) {
        y45.j(de5Var, "baseClass");
        this.a = de5Var;
        this.b = y71.k();
        this.c = b.b(LazyThreadSafetyMode.PUBLICATION, new c74() {
            {
                super(0);
            }

            @Override
            public final a invoke() {
                final PolymorphicSerializer polymorphicSerializer = this.this$0;
                return mh1.c(SerialDescriptorsKt.c("kotlinx.serialization.Polymorphic", mc8.a.a, new a[0], new e74() {
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((dx0) obj);
                        return zfb.a;
                    }

                    public final void invoke(dx0 dx0Var) {
                        y45.j(dx0Var, "$this$buildSerialDescriptor");
                        dx0.b(dx0Var, "type", qn0.D(hz9.a).getDescriptor(), null, false, 12, null);
                        dx0.b(dx0Var, ES6Iterator.VALUE_PROPERTY, SerialDescriptorsKt.d("kotlinx.serialization.Polymorphic<" + polymorphicSerializer.e().o() + '>', id9.a.a, new a[0], null, 8, null), null, false, 12, null);
                        dx0Var.h(polymorphicSerializer.b);
                    }
                }), this.this$0.e());
            }
        });
    }

    @Override
    public de5 e() {
        return this.a;
    }

    @Override
    public a getDescriptor() {
        return (a) this.c.getValue();
    }

    public String toString() {
        return "kotlinx.serialization.PolymorphicSerializer(baseClass: " + e() + ')';
    }
}
