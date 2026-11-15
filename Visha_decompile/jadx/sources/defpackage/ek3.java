package defpackage;

import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import org.apache.commons.text.StringSubstitutor;

public class ek3 extends t3 implements to8 {
    public final a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ek3(a aVar, eh5 eh5Var, to8 to8Var) {
        super(eh5Var, to8Var);
        if (aVar == null) {
            b(0);
        }
        if (eh5Var == null) {
            b(1);
        }
        this.c = aVar;
    }

    public static void b(int i) {
        String str = i != 2 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 2 ? 3 : 2];
        if (i == 1) {
            objArr[0] = "receiverType";
        } else if (i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else if (i != 3) {
            objArr[0] = "callableDescriptor";
        } else {
            objArr[0] = "newType";
        }
        if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver";
        } else {
            objArr[1] = "getDeclarationDescriptor";
        }
        if (i != 2) {
            if (i != 3) {
                objArr[2] = MethodDecl.initName;
            } else {
                objArr[2] = "replaceType";
            }
        }
        String str2 = String.format(str, objArr);
        if (i == 2) {
            throw new IllegalStateException(str2);
        }
    }

    public String toString() {
        return getType() + ": Ext {" + this.c + StringSubstitutor.DEFAULT_VAR_END;
    }
}
