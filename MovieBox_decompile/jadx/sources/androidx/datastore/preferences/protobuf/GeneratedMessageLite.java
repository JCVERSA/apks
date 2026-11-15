package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class GeneratedMessageLite extends androidx.datastore.preferences.protobuf.a {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, GeneratedMessageLite> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected i1 unknownFields = i1.c();

    public enum MethodToInvoke {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    protected static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final byte[] asBytes;
        private final Class<?> messageClass;
        private final String messageClassName;

        SerializedForm(n0 n0Var) {
            this.messageClass = n0Var.getClass();
            this.messageClassName = n0Var.getClass().getName();
            this.asBytes = n0Var.toByteArray();
        }

        public static SerializedForm of(n0 n0Var) {
            return new SerializedForm(n0Var);
        }

        private Class<?> resolveMessageClass() throws ClassNotFoundException {
            Class<?> cls = this.messageClass;
            return cls != null ? cls : Class.forName(this.messageClassName);
        }

        protected Object readResolve() throws ObjectStreamException {
            try {
                Field declaredField = resolveMessageClass().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((n0) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException("Unable to understand proto buffer", e10);
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e11);
            } catch (IllegalAccessException e12) {
                throw new RuntimeException("Unable to call parsePartialFrom", e12);
            } catch (NoSuchFieldException e13) {
                throw new RuntimeException("Unable to find DEFAULT_INSTANCE in " + this.messageClassName, e13);
            } catch (SecurityException e14) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.messageClassName, e14);
            }
        }
    }

    public static abstract class a extends androidx.datastore.preferences.protobuf.a.AbstractC0068a {

        private final GeneratedMessageLite f8396a;

        protected GeneratedMessageLite f8397b;

        protected a(GeneratedMessageLite generatedMessageLite) {
            this.f8396a = generatedMessageLite;
            if (generatedMessageLite.z()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.f8397b = w();
        }

        private static void v(Object obj, Object obj2) {
            x0.a().d(obj).mergeFrom(obj, obj2);
        }

        private GeneratedMessageLite w() {
            return this.f8396a.F();
        }

        @Override
        public final boolean isInitialized() {
            return GeneratedMessageLite.y(this.f8397b, false);
        }

        public final GeneratedMessageLite m() {
            GeneratedMessageLite generatedMessageLiteBuildPartial = buildPartial();
            if (generatedMessageLiteBuildPartial.isInitialized()) {
                return generatedMessageLiteBuildPartial;
            }
            throw androidx.datastore.preferences.protobuf.a.AbstractC0068a.l(generatedMessageLiteBuildPartial);
        }

        @Override
        public GeneratedMessageLite buildPartial() {
            if (!this.f8397b.z()) {
                return this.f8397b;
            }
            this.f8397b.A();
            return this.f8397b;
        }

        @Override
        public a e() {
            a aVarNewBuilderForType = getDefaultInstanceForType().newBuilderForType();
            aVarNewBuilderForType.f8397b = buildPartial();
            return aVarNewBuilderForType;
        }

        protected final void p() {
            if (this.f8397b.z()) {
                return;
            }
            q();
        }

        protected void q() {
            GeneratedMessageLite generatedMessageLiteW = w();
            v(generatedMessageLiteW, this.f8397b);
            this.f8397b = generatedMessageLiteW;
        }

        @Override
        public GeneratedMessageLite getDefaultInstanceForType() {
            return this.f8396a;
        }

        @Override
        public a i(i iVar, o oVar) throws IOException {
            p();
            try {
                x0.a().d(this.f8397b).a(this.f8397b, j.f(iVar), oVar);
                return this;
            } catch (RuntimeException e10) {
                if (e10.getCause() instanceof IOException) {
                    throw ((IOException) e10.getCause());
                }
                throw e10;
            }
        }

        @Override
        public a k(byte[] bArr, int i10, int i11) {
            return u(bArr, i10, i11, o.b());
        }

        public a u(byte[] bArr, int i10, int i11, o oVar) throws InvalidProtocolBufferException {
            p();
            try {
                x0.a().d(this.f8397b).c(this.f8397b, bArr, i10, i10 + i11, new e.a(oVar));
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
            } catch (IndexOutOfBoundsException unused) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }
    }

    protected static class b extends androidx.datastore.preferences.protobuf.b {

        private final GeneratedMessageLite f8398b;

        public b(GeneratedMessageLite generatedMessageLite) {
            this.f8398b = generatedMessageLite;
        }

        @Override
        public GeneratedMessageLite b(i iVar, o oVar) {
            return GeneratedMessageLite.H(this.f8398b, iVar, oVar);
        }
    }

    public static abstract class c extends GeneratedMessageLite implements o0 {
        protected s extensions = s.f();

        s K() {
            if (this.extensions.l()) {
                this.extensions = this.extensions.clone();
            }
            return this.extensions;
        }

        @Override
        public n0 getDefaultInstanceForType() {
            return super.getDefaultInstanceForType();
        }

        @Override
        public n0.a newBuilderForType() {
            return super.newBuilderForType();
        }
    }

    public static class d extends m {
    }

    protected static w.d C(w.d dVar) {
        int size = dVar.size();
        return dVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static Object E(n0 n0Var, String str, Object[] objArr) {
        return new z0(n0Var, str, objArr);
    }

    protected static GeneratedMessageLite G(GeneratedMessageLite generatedMessageLite, InputStream inputStream) {
        return j(H(generatedMessageLite, i.g(inputStream), o.b()));
    }

    static GeneratedMessageLite H(GeneratedMessageLite generatedMessageLite, i iVar, o oVar) throws InvalidProtocolBufferException {
        GeneratedMessageLite generatedMessageLiteF = generatedMessageLite.F();
        try {
            b1 b1VarD = x0.a().d(generatedMessageLiteF);
            b1VarD.a(generatedMessageLiteF, j.f(iVar), oVar);
            b1VarD.makeImmutable(generatedMessageLiteF);
            return generatedMessageLiteF;
        } catch (InvalidProtocolBufferException e10) {
            e = e10;
            if (e.getThrownFromInputStream()) {
                e = new InvalidProtocolBufferException((IOException) e);
            }
            throw e.setUnfinishedMessage(generatedMessageLiteF);
        } catch (UninitializedMessageException e11) {
            throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(generatedMessageLiteF);
        } catch (IOException e12) {
            if (e12.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e12.getCause());
            }
            throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(generatedMessageLiteF);
        } catch (RuntimeException e13) {
            if (e13.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e13.getCause());
            }
            throw e13;
        }
    }

    protected static void I(Class cls, GeneratedMessageLite generatedMessageLite) {
        generatedMessageLite.B();
        defaultInstanceMap.put(cls, generatedMessageLite);
    }

    private static GeneratedMessageLite j(GeneratedMessageLite generatedMessageLite) throws InvalidProtocolBufferException {
        if (generatedMessageLite == null || generatedMessageLite.isInitialized()) {
            return generatedMessageLite;
        }
        throw generatedMessageLite.f().asInvalidProtocolBufferException().setUnfinishedMessage(generatedMessageLite);
    }

    private int n(b1 b1Var) {
        return b1Var == null ? x0.a().d(this).getSerializedSize(this) : b1Var.getSerializedSize(this);
    }

    protected static w.d s() {
        return y0.c();
    }

    static GeneratedMessageLite t(Class cls) {
        GeneratedMessageLite defaultInstanceForType = defaultInstanceMap.get(cls);
        if (defaultInstanceForType == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                defaultInstanceForType = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (defaultInstanceForType == null) {
            defaultInstanceForType = ((GeneratedMessageLite) k1.l(cls)).getDefaultInstanceForType();
            if (defaultInstanceForType == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, defaultInstanceForType);
        }
        return defaultInstanceForType;
    }

    static Object x(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e10);
        } catch (InvocationTargetException e11) {
            Throwable cause = e11.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static final boolean y(GeneratedMessageLite generatedMessageLite, boolean z10) {
        byte bByteValue = ((Byte) generatedMessageLite.p(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zIsInitialized = x0.a().d(generatedMessageLite).isInitialized(generatedMessageLite);
        if (z10) {
            generatedMessageLite.q(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, zIsInitialized ? generatedMessageLite : null);
        }
        return zIsInitialized;
    }

    protected void A() {
        x0.a().d(this).makeImmutable(this);
        B();
    }

    void B() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    @Override
    public final a newBuilderForType() {
        return (a) p(MethodToInvoke.NEW_BUILDER);
    }

    GeneratedMessageLite F() {
        return (GeneratedMessageLite) p(MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    void J(int i10) {
        this.memoizedHashCode = i10;
    }

    @Override
    public void a(CodedOutputStream codedOutputStream) {
        x0.a().d(this).b(this, k.g(codedOutputStream));
    }

    @Override
    int c() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    @Override
    int d(b1 b1Var) {
        if (!z()) {
            if (c() != Integer.MAX_VALUE) {
                return c();
            }
            int iN = n(b1Var);
            g(iN);
            return iN;
        }
        int iN2 = n(b1Var);
        if (iN2 >= 0) {
            return iN2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iN2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return x0.a().d(this).equals(this, (GeneratedMessageLite) obj);
        }
        return false;
    }

    @Override
    void g(int i10) {
        if (i10 >= 0) {
            this.memoizedSerializedSize = (i10 & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        } else {
            throw new IllegalStateException("serialized size must be non-negative, was " + i10);
        }
    }

    @Override
    public final v0 getParserForType() {
        return (v0) p(MethodToInvoke.GET_PARSER);
    }

    @Override
    public int getSerializedSize() {
        return d(null);
    }

    public int hashCode() {
        if (z()) {
            return m();
        }
        if (w()) {
            J(m());
        }
        return v();
    }

    Object i() {
        return p(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    @Override
    public final boolean isInitialized() {
        return y(this, true);
    }

    void k() {
        this.memoizedHashCode = 0;
    }

    void l() {
        g(Integer.MAX_VALUE);
    }

    int m() {
        return x0.a().d(this).hashCode(this);
    }

    protected final a o() {
        return (a) p(MethodToInvoke.NEW_BUILDER);
    }

    protected Object p(MethodToInvoke methodToInvoke) {
        return r(methodToInvoke, null, null);
    }

    protected Object q(MethodToInvoke methodToInvoke, Object obj) {
        return r(methodToInvoke, obj, null);
    }

    protected abstract Object r(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    public String toString() {
        return p0.f(this, super.toString());
    }

    @Override
    public final GeneratedMessageLite getDefaultInstanceForType() {
        return (GeneratedMessageLite) p(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    int v() {
        return this.memoizedHashCode;
    }

    boolean w() {
        return v() == 0;
    }

    boolean z() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }
}
