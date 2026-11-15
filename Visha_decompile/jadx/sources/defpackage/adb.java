package defpackage;

import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.reflect.TypesJVMKt;

public final class adb implements TypeVariable, Type {
    public final hf5 b;

    public adb(hf5 hf5Var) {
        y45.j(hf5Var, "typeParameter");
        this.b = hf5Var;
    }

    public boolean equals(Object obj) {
        if (obj instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) obj;
            if (y45.e(getName(), typeVariable.getName()) && y45.e(getGenericDeclaration(), typeVariable.getGenericDeclaration())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Type[] getBounds() {
        List upperBounds = this.b.getUpperBounds();
        ArrayList arrayList = new ArrayList(z71.v(upperBounds, 10));
        Iterator it = upperBounds.iterator();
        while (it.hasNext()) {
            arrayList.add(TypesJVMKt.c((ff5) it.next(), true));
        }
        return (Type[]) arrayList.toArray(new Type[0]);
    }

    @Override
    public GenericDeclaration getGenericDeclaration() {
        throw new NotImplementedError("An operation is not implemented: " + ("getGenericDeclaration() is not yet supported for type variables created from KType: " + this.b));
    }

    @Override
    public String getName() {
        return this.b.getName();
    }

    @Override
    public String getTypeName() {
        return getName();
    }

    public int hashCode() {
        return getGenericDeclaration().hashCode() ^ getName().hashCode();
    }

    public String toString() {
        return getTypeName();
    }
}
