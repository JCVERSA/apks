package kotlin.jvm.internal;

import defpackage.af5;
import defpackage.be5;
import defpackage.y45;

public abstract class PropertyReference extends CallableReference implements af5 {
    private final boolean syntheticJavaProperty;

    public PropertyReference() {
        this.syntheticJavaProperty = false;
    }

    @Override
    public be5 compute() {
        return this.syntheticJavaProperty ? this : super.compute();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof PropertyReference) {
            PropertyReference propertyReference = (PropertyReference) obj;
            return getOwner().equals(propertyReference.getOwner()) && getName().equals(propertyReference.getName()) && getSignature().equals(propertyReference.getSignature()) && y45.e(getBoundReceiver(), propertyReference.getBoundReceiver());
        }
        if (obj instanceof af5) {
            return obj.equals(compute());
        }
        return false;
    }

    public abstract af5.b getGetter();

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        be5 be5VarCompute = compute();
        if (be5VarCompute != this) {
            return be5VarCompute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }

    @Override
    public af5 getReflected() {
        if (this.syntheticJavaProperty) {
            throw new UnsupportedOperationException("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
        }
        return (af5) super.getReflected();
    }

    public PropertyReference(Object obj) {
        super(obj);
        this.syntheticJavaProperty = false;
    }

    public PropertyReference(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
        this.syntheticJavaProperty = (i & 2) == 2;
    }
}
