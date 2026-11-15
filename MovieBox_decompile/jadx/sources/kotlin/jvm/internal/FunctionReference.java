package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;

public class FunctionReference extends CallableReference implements FunctionBase, KFunction {
    private final int arity;

    @SinceKotlin
    private final int flags;

    public FunctionReference(int i10) {
        this(i10, CallableReference.NO_RECEIVER, null, null, null, 0);
    }

    @Override
    @SinceKotlin
    protected KCallable computeReflected() {
        return Reflection.a(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FunctionReference) {
            FunctionReference functionReference = (FunctionReference) obj;
            return getName().equals(functionReference.getName()) && getSignature().equals(functionReference.getSignature()) && this.flags == functionReference.flags && this.arity == functionReference.arity && Intrinsics.c(getBoundReceiver(), functionReference.getBoundReceiver()) && Intrinsics.c(getOwner(), functionReference.getOwner());
        }
        if (obj instanceof KFunction) {
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
    @SinceKotlin
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override
    @SinceKotlin
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override
    @SinceKotlin
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override
    @SinceKotlin
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override
    @SinceKotlin
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        KCallable kCallableCompute = compute();
        if (kCallableCompute != this) {
            return kCallableCompute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }

    @SinceKotlin
    public FunctionReference(int i10, Object obj) {
        this(i10, obj, null, null, null, 0);
    }

    @Override
    @SinceKotlin
    public KFunction getReflected() {
        return (KFunction) super.getReflected();
    }

    @SinceKotlin
    public FunctionReference(int i10, Object obj, Class cls, String str, String str2, int i11) {
        super(obj, cls, str, str2, (i11 & 1) == 1);
        this.arity = i10;
        this.flags = i11 >> 1;
    }
}
