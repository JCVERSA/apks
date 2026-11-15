package kotlin.jvm.internal;

import defpackage.be5;
import defpackage.ff5;
import defpackage.hf5;
import defpackage.ke5;
import defpackage.xq8;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import kotlin.reflect.KParameter;
import kotlin.reflect.KVisibility;

public abstract class CallableReference implements be5, Serializable {
    public static final Object NO_RECEIVER = NoReceiver.b;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient be5 reflected;
    private final String signature;

    public static class NoReceiver implements Serializable {
        public static final NoReceiver b = new NoReceiver();

        private NoReceiver() {
        }

        private Object readResolve() throws ObjectStreamException {
            return b;
        }
    }

    public CallableReference() {
        this(NO_RECEIVER);
    }

    @Override
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public be5 compute() {
        be5 be5Var = this.reflected;
        if (be5Var != null) {
            return be5Var;
        }
        be5 be5VarComputeReflected = computeReflected();
        this.reflected = be5VarComputeReflected;
        return be5VarComputeReflected;
    }

    public abstract be5 computeReflected();

    @Override
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    @Override
    public String getName() {
        return this.name;
    }

    public ke5 getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? xq8.c(cls) : xq8.b(cls);
    }

    @Override
    public List<KParameter> getParameters() {
        return getReflected().getParameters();
    }

    public be5 getReflected() {
        be5 be5VarCompute = compute();
        if (be5VarCompute != this) {
            return be5VarCompute;
        }
        throw new KotlinReflectionNotSupportedError();
    }

    @Override
    public ff5 getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        return this.signature;
    }

    @Override
    public List<hf5> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override
    public KVisibility getVisibility() {
        return getReflected().getVisibility();
    }

    @Override
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public CallableReference(Object obj) {
        this(obj, null, null, null, false);
    }

    public CallableReference(Object obj, Class cls, String str, String str2, boolean z) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z;
    }
}
