package com.yandex.div.core.expression.variables;

import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.DivData;
import defpackage.bob;
import defpackage.e74;
import defpackage.ei2;
import defpackage.qc2;
import defpackage.qnb;
import defpackage.snb;
import defpackage.vj3;
import defpackage.xc3;
import defpackage.y45;
import defpackage.zfb;
import kotlin.jvm.internal.Ref$ObjectRef;

public abstract class TwoWayVariableBinder {
    public final xc3 a;
    public final com.yandex.div.core.expression.a b;

    public interface a {
        void a(Object obj);

        void b(e74 e74Var);
    }

    public TwoWayVariableBinder(xc3 xc3Var, com.yandex.div.core.expression.a aVar) {
        y45.j(xc3Var, "errorCollectors");
        y45.j(aVar, "expressionsRuntimeProvider");
        this.a = xc3Var;
        this.b = aVar;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0045  */
    public qc2 a(final com.yandex.div.core.view2.a aVar, final String str, final a aVar2, DivStatePath divStatePath) {
        snb snbVarG;
        y45.j(aVar, "bindingContext");
        y45.j(str, "variableName");
        y45.j(aVar2, "callbacks");
        y45.j(divStatePath, "path");
        final Div2View div2ViewA = aVar.a();
        DivData divData = div2ViewA.getDivData();
        if (divData == null) {
            return qc2.A1;
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ei2 dataTag = div2ViewA.getDataTag();
        RuntimeStore runtimeStoreE = aVar.e();
        if (runtimeStoreE == null) {
            snbVarG = this.b.h(dataTag, divData, div2ViewA).g();
        } else {
            vj3 vj3VarJ = runtimeStoreE.j(aVar.b());
            snbVarG = vj3VarJ != null ? vj3VarJ.g() : null;
            if (snbVarG == null) {
                snbVarG = this.b.h(dataTag, divData, div2ViewA).g();
            }
        }
        snb snbVar = snbVarG;
        aVar2.b(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m136invoke(obj);
                return zfb.a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public final void m136invoke(Object obj) {
                if (y45.e(ref$ObjectRef.element, obj)) {
                    return;
                }
                ref$ObjectRef.element = obj;
                bob.a.d(div2ViewA, str, this.b(obj), aVar.b());
            }
        });
        return snbVar.h(str, this.a.a(dataTag, divData), true, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((qnb) obj);
                return zfb.a;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            public final void invoke(qnb qnbVar) {
                y45.j(qnbVar, "changed");
                Object objC = qnbVar.c();
                T t = objC;
                if (objC == null) {
                    t = 0;
                }
                if (y45.e(ref$ObjectRef.element, t)) {
                    return;
                }
                ref$ObjectRef.element = t;
                aVar2.a(t);
            }
        });
    }

    public abstract String b(Object obj);
}
