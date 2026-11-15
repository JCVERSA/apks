package kotlin.jvm.internal;

import defpackage.be5;
import defpackage.g84;
import defpackage.le5;
import defpackage.xq8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;

public class FunctionReference extends CallableReference implements g84, le5 {
    private final int arity;
    private final int flags;

    public FunctionReference(int i) {
        this(i, CallableReference.NO_RECEIVER, null, null, null, 0);
    }

    @Override
    public be5 computeReflected() {
        return xq8.a(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FunctionReference) {
            FunctionReference functionReference = (FunctionReference) obj;
            return getName().equals(functionReference.getName()) && getSignature().equals(functionReference.getSignature()) && this.flags == functionReference.flags && this.arity == functionReference.arity && y45.e(getBoundReceiver(), functionReference.getBoundReceiver()) && y45.e(getOwner(), functionReference.getOwner());
        }
        if (obj instanceof le5) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override
    public int getArity() {
        return this.arity;
    }

    public int hashCode() {
        return (((getOwner() == null ? 0 : getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        be5 be5VarCompute = compute();
        if (be5VarCompute != this) {
            return be5VarCompute.toString();
        }
        if (MethodDecl.initName.equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }

    public FunctionReference(int i, Object obj) {
        this(i, obj, null, null, null, 0);
    }

    @Override
    public le5 getReflected() {
        return (le5) super.getReflected();
    }

    public FunctionReference(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.arity = i;
        this.flags = i2 >> 1;
    }
}
