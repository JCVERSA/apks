package com.google.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class GeneratedMessageLite extends com.google.protobuf.a {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map<Object, GeneratedMessageLite> defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected p1 unknownFields = p1.getDefaultInstance();

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

        SerializedForm(s0 s0Var) {
            this.messageClass = s0Var.getClass();
            this.messageClassName = s0Var.getClass().getName();
            this.asBytes = s0Var.toByteArray();
        }

        public static SerializedForm of(s0 s0Var) {
            return new SerializedForm(s0Var);
        }

        @Deprecated
        private Object readResolveFallback() throws ObjectStreamException {
            try {
                Field declaredField = resolveMessageClass().getDeclaredField("defaultInstance");
                declaredField.setAccessible(true);
                return ((s0) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException("Unable to understand proto buffer", e10);
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e11);
            } catch (IllegalAccessException e12) {
                throw new RuntimeException("Unable to call parsePartialFrom", e12);
            } catch (NoSuchFieldException e13) {
                throw new RuntimeException("Unable to find defaultInstance in " + this.messageClassName, e13);
            } catch (SecurityException e14) {
                throw new RuntimeException("Unable to call defaultInstance in " + this.messageClassName, e14);
            }
        }

        private Class<?> resolveMessageClass() throws ClassNotFoundException {
            Class<?> cls = this.messageClass;
            return cls != null ? cls : Class.forName(this.messageClassName);
        }

        protected Object readResolve() throws ObjectStreamException {
            try {
                Field declaredField = resolveMessageClass().getDeclaredField("DEFAULT_INSTANCE");
                declaredField.setAccessible(true);
                return ((s0) declaredField.get(null)).newBuilderForType().mergeFrom(this.asBytes).buildPartial();
            } catch (InvalidProtocolBufferException e10) {
                throw new RuntimeException("Unable to understand proto buffer", e10);
            } catch (ClassNotFoundException e11) {
                throw new RuntimeException("Unable to find proto buffer class: " + this.messageClassName, e11);
            } catch (IllegalAccessException e12) {
                throw new RuntimeException("Unable to call parsePartialFrom", e12);
            } catch (NoSuchFieldException unused) {
                return readResolveFallback();
            } catch (SecurityException e13) {
                throw new RuntimeException("Unable to call DEFAULT_INSTANCE in " + this.messageClassName, e13);
            }
        }
    }

    static class a {
        static final int[] $SwitchMap$com$google$protobuf$WireFormat$JavaType;

        static {
            int[] iArr = new int[WireFormat.JavaType.values().length];
            $SwitchMap$com$google$protobuf$WireFormat$JavaType = iArr;
            try {
                iArr[WireFormat.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$protobuf$WireFormat$JavaType[WireFormat.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class b extends com.google.protobuf.a.AbstractC0428a {
        private final GeneratedMessageLite defaultInstance;
        protected GeneratedMessageLite instance;

        protected b(GeneratedMessageLite generatedMessageLite) {
            this.defaultInstance = generatedMessageLite;
            if (generatedMessageLite.isMutable()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.instance = newMutableInstance();
        }

        private static <MessageType> void mergeFromInstance(MessageType messagetype, MessageType messagetype2) {
            d1.getInstance().schemaFor(messagetype).mergeFrom(messagetype, messagetype2);
        }

        private GeneratedMessageLite newMutableInstance() {
            return this.defaultInstance.newMutableInstance();
        }

        protected final void copyOnWrite() {
            if (this.instance.isMutable()) {
                return;
            }
            copyOnWriteInternal();
        }

        protected void copyOnWriteInternal() {
            GeneratedMessageLite generatedMessageLiteNewMutableInstance = newMutableInstance();
            mergeFromInstance(generatedMessageLiteNewMutableInstance, this.instance);
            this.instance = generatedMessageLiteNewMutableInstance;
        }

        @Override
        public final boolean isInitialized() {
            return GeneratedMessageLite.isInitialized(this.instance, false);
        }

        @Override
        public final GeneratedMessageLite build() {
            GeneratedMessageLite generatedMessageLiteBuildPartial = buildPartial();
            if (generatedMessageLiteBuildPartial.isInitialized()) {
                return generatedMessageLiteBuildPartial;
            }
            throw com.google.protobuf.a.AbstractC0428a.newUninitializedMessageException(generatedMessageLiteBuildPartial);
        }

        @Override
        public GeneratedMessageLite buildPartial() {
            if (!this.instance.isMutable()) {
                return this.instance;
            }
            this.instance.makeImmutable();
            return this.instance;
        }

        @Override
        public final b clear() {
            if (this.defaultInstance.isMutable()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.instance = newMutableInstance();
            return this;
        }

        @Override
        public GeneratedMessageLite getDefaultInstanceForType() {
            return this.defaultInstance;
        }

        @Override
        public b internalMergeFrom(GeneratedMessageLite generatedMessageLite) {
            return mergeFrom(generatedMessageLite);
        }

        @Override
        public b mo293clone() {
            b bVarNewBuilderForType = getDefaultInstanceForType().newBuilderForType();
            bVarNewBuilderForType.instance = buildPartial();
            return bVarNewBuilderForType;
        }

        public b mergeFrom(GeneratedMessageLite generatedMessageLite) {
            if (getDefaultInstanceForType().equals(generatedMessageLite)) {
                return this;
            }
            copyOnWrite();
            mergeFromInstance(this.instance, generatedMessageLite);
            return this;
        }

        @Override
        public b mergeFrom(byte[] bArr, int i10, int i11, o oVar) throws InvalidProtocolBufferException {
            copyOnWrite();
            try {
                d1.getInstance().schemaFor(this.instance).mergeFrom(this.instance, bArr, i10, i10 + i11, new com.google.protobuf.e.b(oVar));
                return this;
            } catch (InvalidProtocolBufferException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e11);
            } catch (IndexOutOfBoundsException unused) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
        }

        @Override
        public b mergeFrom(byte[] bArr, int i10, int i11) throws InvalidProtocolBufferException {
            return mergeFrom(bArr, i10, i11, o.getEmptyRegistry());
        }

        @Override
        public b mergeFrom(i iVar, o oVar) throws IOException {
            copyOnWrite();
            try {
                d1.getInstance().schemaFor(this.instance).mergeFrom(this.instance, j.forCodedInput(iVar), oVar);
                return this;
            } catch (RuntimeException e10) {
                if (e10.getCause() instanceof IOException) {
                    throw ((IOException) e10.getCause());
                }
                throw e10;
            }
        }
    }

    public interface e extends t0 {
        @Override
        s0 getDefaultInstanceForType();

        <Type> Type getExtension(m mVar);

        <Type> Type getExtension(m mVar, int i10);

        <Type> int getExtensionCount(m mVar);

        <Type> boolean hasExtension(m mVar);

        @Override
        boolean isInitialized();
    }

    static final class f implements t.c {
        final y.d enumTypeMap;
        final boolean isPacked;
        final boolean isRepeated;
        final int number;
        final WireFormat.FieldType type;

        f(y.d dVar, int i10, WireFormat.FieldType fieldType, boolean z10, boolean z11) {
            this.enumTypeMap = dVar;
            this.number = i10;
            this.type = fieldType;
            this.isRepeated = z10;
            this.isPacked = z11;
        }

        @Override
        public y.d getEnumType() {
            return this.enumTypeMap;
        }

        @Override
        public WireFormat.JavaType getLiteJavaType() {
            return this.type.getJavaType();
        }

        @Override
        public WireFormat.FieldType getLiteType() {
            return this.type;
        }

        @Override
        public int getNumber() {
            return this.number;
        }

        @Override
        public s0.a internalMergeFrom(s0.a aVar, s0 s0Var) {
            return ((b) aVar).mergeFrom((GeneratedMessageLite) s0Var);
        }

        @Override
        public boolean isPacked() {
            return this.isPacked;
        }

        @Override
        public boolean isRepeated() {
            return this.isRepeated;
        }

        @Override
        public int compareTo(f fVar) {
            return this.number - fVar.number;
        }
    }

    public static class g extends m {
        final s0 containingTypeDefaultInstance;
        final Object defaultValue;
        final f descriptor;
        final s0 messageDefaultInstance;

        g(s0 s0Var, Object obj, s0 s0Var2, f fVar, Class cls) {
            if (s0Var == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (fVar.getLiteType() == WireFormat.FieldType.MESSAGE && s0Var2 == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.containingTypeDefaultInstance = s0Var;
            this.defaultValue = obj;
            this.messageDefaultInstance = s0Var2;
            this.descriptor = fVar;
        }

        Object fromFieldSetType(Object obj) {
            if (!this.descriptor.isRepeated()) {
                return singularFromFieldSetType(obj);
            }
            if (this.descriptor.getLiteJavaType() != WireFormat.JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(singularFromFieldSetType(it.next()));
            }
            return arrayList;
        }

        public s0 getContainingTypeDefaultInstance() {
            return this.containingTypeDefaultInstance;
        }

        @Override
        public Object getDefaultValue() {
            return this.defaultValue;
        }

        @Override
        public WireFormat.FieldType getLiteType() {
            return this.descriptor.getLiteType();
        }

        @Override
        public s0 getMessageDefaultInstance() {
            return this.messageDefaultInstance;
        }

        @Override
        public int getNumber() {
            return this.descriptor.getNumber();
        }

        @Override
        public boolean isRepeated() {
            return this.descriptor.isRepeated;
        }

        Object singularFromFieldSetType(Object obj) {
            return this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM ? this.descriptor.enumTypeMap.findValueByNumber(((Integer) obj).intValue()) : obj;
        }

        Object singularToFieldSetType(Object obj) {
            return this.descriptor.getLiteJavaType() == WireFormat.JavaType.ENUM ? Integer.valueOf(((y.c) obj).getNumber()) : obj;
        }

        Object toFieldSetType(Object obj) {
            if (!this.descriptor.isRepeated()) {
                return singularToFieldSetType(obj);
            }
            if (this.descriptor.getLiteJavaType() != WireFormat.JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(singularToFieldSetType(it.next()));
            }
            return arrayList;
        }
    }

    public static <MessageType extends d, BuilderType, T> g checkIsLite(m mVar) {
        if (mVar.isLite()) {
            return (g) mVar;
        }
        throw new IllegalArgumentException("Expected a lite extension.");
    }

    private static <T extends GeneratedMessageLite> T checkMessageInitialized(T t10) throws InvalidProtocolBufferException {
        if (t10 == null || t10.isInitialized()) {
            return t10;
        }
        throw t10.newUninitializedMessageException().asInvalidProtocolBufferException().setUnfinishedMessage(t10);
    }

    private int computeSerializedSize(i1 i1Var) {
        return i1Var == null ? d1.getInstance().schemaFor(this).getSerializedSize(this) : i1Var.getSerializedSize(this);
    }

    protected static y.a emptyBooleanList() {
        return com.google.protobuf.f.emptyList();
    }

    protected static y.b emptyDoubleList() {
        return l.emptyList();
    }

    protected static y.f emptyFloatList() {
        return u.emptyList();
    }

    protected static y.g emptyIntList() {
        return w.emptyList();
    }

    protected static y.i emptyLongList() {
        return k0.emptyList();
    }

    protected static <E> y.j emptyProtobufList() {
        return e1.emptyList();
    }

    private void ensureUnknownFieldsInitialized() {
        if (this.unknownFields == p1.getDefaultInstance()) {
            this.unknownFields = p1.newInstance();
        }
    }

    static <T extends GeneratedMessageLite> T getDefaultInstance(Class<T> cls) {
        GeneratedMessageLite generatedMessageLite = defaultInstanceMap.get(cls);
        if (generatedMessageLite == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                generatedMessageLite = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e10) {
                throw new IllegalStateException("Class initialization cannot fail.", e10);
            }
        }
        if (generatedMessageLite == null) {
            generatedMessageLite = (T) ((GeneratedMessageLite) s1.allocateInstance(cls)).getDefaultInstanceForType();
            if (generatedMessageLite == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, generatedMessageLite);
        }
        return (T) generatedMessageLite;
    }

    static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException("Generated message class \"" + cls.getName() + "\" missing method \"" + str + "\".", e10);
        }
    }

    static Object invokeOrDie(Method method, Object obj, Object... objArr) {
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

    protected static y.g mutableCopy(y.g gVar) {
        int size = gVar.size();
        return gVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static Object newMessageInfo(s0 s0Var, String str, Object[] objArr) {
        return new g1(s0Var, str, objArr);
    }

    public static <ContainingType extends s0, Type> g newRepeatedGeneratedExtension(ContainingType containingtype, s0 s0Var, y.d dVar, int i10, WireFormat.FieldType fieldType, boolean z10, Class cls) {
        return new g(containingtype, Collections.emptyList(), s0Var, new f(dVar, i10, fieldType, true, z10), cls);
    }

    public static <ContainingType extends s0, Type> g newSingularGeneratedExtension(ContainingType containingtype, Type type, s0 s0Var, y.d dVar, int i10, WireFormat.FieldType fieldType, Class cls) {
        return new g(containingtype, type, s0Var, new f(dVar, i10, fieldType, false, false), cls);
    }

    protected static <T extends GeneratedMessageLite> T parseDelimitedFrom(T t10, InputStream inputStream) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t10, inputStream, o.getEmptyRegistry()));
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, ByteBuffer byteBuffer, o oVar) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parseFrom(t10, i.newInstance(byteBuffer), oVar));
    }

    private static <T extends GeneratedMessageLite> T parsePartialDelimitedFrom(T t10, InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        try {
            int i10 = inputStream.read();
            if (i10 == -1) {
                return null;
            }
            i iVarNewInstance = i.newInstance(new com.google.protobuf.a.AbstractC0428a.C0429a(inputStream, i.readRawVarint32(i10, inputStream)));
            T t11 = (T) parsePartialFrom(t10, iVarNewInstance, oVar);
            try {
                iVarNewInstance.checkLastTagWas(0);
                return t11;
            } catch (InvalidProtocolBufferException e10) {
                throw e10.setUnfinishedMessage(t11);
            }
        } catch (InvalidProtocolBufferException e11) {
            if (e11.getThrownFromInputStream()) {
                throw new InvalidProtocolBufferException((IOException) e11);
            }
            throw e11;
        } catch (IOException e12) {
            throw new InvalidProtocolBufferException(e12);
        }
    }

    static <T extends GeneratedMessageLite> T parsePartialFrom(T t10, i iVar, o oVar) throws InvalidProtocolBufferException {
        T t11 = (T) t10.newMutableInstance();
        try {
            i1 i1VarSchemaFor = d1.getInstance().schemaFor(t11);
            i1VarSchemaFor.mergeFrom(t11, j.forCodedInput(iVar), oVar);
            i1VarSchemaFor.makeImmutable(t11);
            return t11;
        } catch (InvalidProtocolBufferException e10) {
            e = e10;
            if (e.getThrownFromInputStream()) {
                e = new InvalidProtocolBufferException((IOException) e);
            }
            throw e.setUnfinishedMessage(t11);
        } catch (UninitializedMessageException e11) {
            throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(t11);
        } catch (IOException e12) {
            if (e12.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e12.getCause());
            }
            throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(t11);
        } catch (RuntimeException e13) {
            if (e13.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e13.getCause());
            }
            throw e13;
        }
    }

    protected static <T extends GeneratedMessageLite> void registerDefaultInstance(Class<T> cls, T t10) {
        t10.markImmutable();
        defaultInstanceMap.put(cls, t10);
    }

    Object buildMessageInfo() throws Exception {
        return dynamicMethod(MethodToInvoke.BUILD_MESSAGE_INFO);
    }

    void clearMemoizedHashCode() {
        this.memoizedHashCode = 0;
    }

    void clearMemoizedSerializedSize() {
        setMemoizedSerializedSize(Integer.MAX_VALUE);
    }

    int computeHashCode() {
        return d1.getInstance().schemaFor(this).hashCode(this);
    }

    protected final <MessageType extends GeneratedMessageLite, BuilderType extends b> BuilderType createBuilder() {
        return (BuilderType) dynamicMethod(MethodToInvoke.NEW_BUILDER);
    }

    protected Object dynamicMethod(MethodToInvoke methodToInvoke, Object obj) {
        return dynamicMethod(methodToInvoke, obj, null);
    }

    protected abstract Object dynamicMethod(MethodToInvoke methodToInvoke, Object obj, Object obj2);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return d1.getInstance().schemaFor(this).equals(this, (GeneratedMessageLite) obj);
        }
        return false;
    }

    int getMemoizedHashCode() {
        return this.memoizedHashCode;
    }

    @Override
    int getMemoizedSerializedSize() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    @Override
    public final b1 getParserForType() {
        return (b1) dynamicMethod(MethodToInvoke.GET_PARSER);
    }

    @Override
    int getSerializedSize(i1 i1Var) {
        if (!isMutable()) {
            if (getMemoizedSerializedSize() != Integer.MAX_VALUE) {
                return getMemoizedSerializedSize();
            }
            int iComputeSerializedSize = computeSerializedSize(i1Var);
            setMemoizedSerializedSize(iComputeSerializedSize);
            return iComputeSerializedSize;
        }
        int iComputeSerializedSize2 = computeSerializedSize(i1Var);
        if (iComputeSerializedSize2 >= 0) {
            return iComputeSerializedSize2;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + iComputeSerializedSize2);
    }

    public int hashCode() {
        if (isMutable()) {
            return computeHashCode();
        }
        if (hashCodeIsNotMemoized()) {
            setMemoizedHashCode(computeHashCode());
        }
        return getMemoizedHashCode();
    }

    boolean hashCodeIsNotMemoized() {
        return getMemoizedHashCode() == 0;
    }

    @Override
    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    boolean isMutable() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    protected void makeImmutable() {
        d1.getInstance().schemaFor(this).makeImmutable(this);
        markImmutable();
    }

    void markImmutable() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    protected void mergeLengthDelimitedField(int i10, ByteString byteString) {
        ensureUnknownFieldsInitialized();
        this.unknownFields.mergeLengthDelimitedField(i10, byteString);
    }

    protected final void mergeUnknownFields(p1 p1Var) {
        this.unknownFields = p1.mutableCopyOf(this.unknownFields, p1Var);
    }

    protected void mergeVarintField(int i10, int i11) {
        ensureUnknownFieldsInitialized();
        this.unknownFields.mergeVarintField(i10, i11);
    }

    GeneratedMessageLite newMutableInstance() {
        return (GeneratedMessageLite) dynamicMethod(MethodToInvoke.NEW_MUTABLE_INSTANCE);
    }

    protected boolean parseUnknownField(int i10, i iVar) throws IOException {
        if (WireFormat.getTagWireType(i10) == 4) {
            return false;
        }
        ensureUnknownFieldsInitialized();
        return this.unknownFields.mergeFieldFrom(i10, iVar);
    }

    void setMemoizedHashCode(int i10) {
        this.memoizedHashCode = i10;
    }

    @Override
    void setMemoizedSerializedSize(int i10) {
        if (i10 >= 0) {
            this.memoizedSerializedSize = (i10 & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
        } else {
            throw new IllegalStateException("serialized size must be non-negative, was " + i10);
        }
    }

    public String toString() {
        return u0.toString(this, super.toString());
    }

    @Override
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        d1.getInstance().schemaFor(this).writeTo(this, k.forCodedOutput(codedOutputStream));
    }

    protected static final <T extends GeneratedMessageLite> boolean isInitialized(T t10, boolean z10) {
        byte bByteValue = ((Byte) t10.dynamicMethod(MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zIsInitialized = d1.getInstance().schemaFor(t10).isInitialized(t10);
        if (z10) {
            t10.dynamicMethod(MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED, zIsInitialized ? t10 : null);
        }
        return zIsInitialized;
    }

    protected final <MessageType extends GeneratedMessageLite, BuilderType extends b> BuilderType createBuilder(MessageType messagetype) {
        return (BuilderType) createBuilder().mergeFrom((GeneratedMessageLite) messagetype);
    }

    protected Object dynamicMethod(MethodToInvoke methodToInvoke) {
        return dynamicMethod(methodToInvoke, null, null);
    }

    @Override
    public final GeneratedMessageLite getDefaultInstanceForType() {
        return (GeneratedMessageLite) dynamicMethod(MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    @Override
    public final b newBuilderForType() {
        return (b) dynamicMethod(MethodToInvoke.NEW_BUILDER);
    }

    @Override
    public final b toBuilder() {
        return ((b) dynamicMethod(MethodToInvoke.NEW_BUILDER)).mergeFrom(this);
    }

    protected static class c extends com.google.protobuf.b {
        private final GeneratedMessageLite defaultInstance;

        public c(GeneratedMessageLite generatedMessageLite) {
            this.defaultInstance = generatedMessageLite;
        }

        @Override
        public GeneratedMessageLite parsePartialFrom(i iVar, o oVar) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parsePartialFrom(this.defaultInstance, iVar, oVar);
        }

        @Override
        public GeneratedMessageLite parsePartialFrom(byte[] bArr, int i10, int i11, o oVar) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parsePartialFrom(this.defaultInstance, bArr, i10, i11, oVar);
        }
    }

    protected static y.i mutableCopy(y.i iVar) {
        int size = iVar.size();
        return iVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return (T) parseFrom(t10, byteBuffer, o.getEmptyRegistry());
    }

    protected static <T extends GeneratedMessageLite> T parseDelimitedFrom(T t10, InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialDelimitedFrom(t10, inputStream, oVar));
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, ByteString byteString) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parseFrom(t10, byteString, o.getEmptyRegistry()));
    }

    public static abstract class d extends GeneratedMessageLite implements e {
        protected t extensions = t.emptySet();

        protected class a {
            private final Iterator<Map.Entry<f, Object>> iter;
            private final boolean messageSetWireFormat;
            private Map.Entry<f, Object> next;

            a(d dVar, boolean z10, a aVar) {
                this(z10);
            }

            public void writeUntil(int i10, CodedOutputStream codedOutputStream) throws IOException {
                while (true) {
                    Map.Entry<f, Object> entry = this.next;
                    if (entry == null || entry.getKey().getNumber() >= i10) {
                        return;
                    }
                    f key = this.next.getKey();
                    if (this.messageSetWireFormat && key.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !key.isRepeated()) {
                        codedOutputStream.writeMessageSetExtension(key.getNumber(), (s0) this.next.getValue());
                    } else {
                        t.writeField(key, this.next.getValue(), codedOutputStream);
                    }
                    if (this.iter.hasNext()) {
                        this.next = this.iter.next();
                    } else {
                        this.next = null;
                    }
                }
            }

            private a(boolean z10) {
                Iterator it = d.this.extensions.iterator();
                this.iter = it;
                if (it.hasNext()) {
                    this.next = (Map.Entry) it.next();
                }
                this.messageSetWireFormat = z10;
            }
        }

        private void eagerlyMergeMessageSetExtension(i iVar, g gVar, o oVar, int i10) throws IOException {
            parseExtension(iVar, oVar, gVar, WireFormat.makeTag(i10, 2), i10);
        }

        private void mergeMessageSetExtensionFromBytes(ByteString byteString, o oVar, g gVar) throws IOException {
            s0 s0Var = (s0) this.extensions.getField(gVar.descriptor);
            s0.a builder = s0Var != null ? s0Var.toBuilder() : null;
            if (builder == null) {
                builder = gVar.getMessageDefaultInstance().newBuilderForType();
            }
            builder.mergeFrom(byteString, oVar);
            ensureExtensionsAreMutable().setField(gVar.descriptor, gVar.singularToFieldSetType(builder.build()));
        }

        private <MessageType extends s0> void mergeMessageSetExtensionFromCodedStream(MessageType messagetype, i iVar, o oVar) throws IOException {
            int uInt32 = 0;
            ByteString bytes = null;
            g gVarFindLiteExtensionByNumber = null;
            while (true) {
                int tag = iVar.readTag();
                if (tag == 0) {
                    break;
                }
                if (tag == WireFormat.MESSAGE_SET_TYPE_ID_TAG) {
                    uInt32 = iVar.readUInt32();
                    if (uInt32 != 0) {
                        gVarFindLiteExtensionByNumber = oVar.findLiteExtensionByNumber(messagetype, uInt32);
                    }
                } else if (tag == WireFormat.MESSAGE_SET_MESSAGE_TAG) {
                    if (uInt32 == 0 || gVarFindLiteExtensionByNumber == null) {
                        bytes = iVar.readBytes();
                    } else {
                        eagerlyMergeMessageSetExtension(iVar, gVarFindLiteExtensionByNumber, oVar, uInt32);
                        bytes = null;
                    }
                } else if (!iVar.skipField(tag)) {
                    break;
                }
            }
            iVar.checkLastTagWas(WireFormat.MESSAGE_SET_ITEM_END_TAG);
            if (bytes == null || uInt32 == 0) {
                return;
            }
            if (gVarFindLiteExtensionByNumber != null) {
                mergeMessageSetExtensionFromBytes(bytes, oVar, gVarFindLiteExtensionByNumber);
            } else {
                mergeLengthDelimitedField(uInt32, bytes);
            }
        }

        /* JADX WARN: Code duplicated, block: B:4:0x0008  */
        private boolean parseExtension(i iVar, o oVar, g gVar, int i10, int i11) throws IOException {
            boolean z10;
            boolean z11;
            Object objBuild;
            s0 s0Var;
            int tagWireType = WireFormat.getTagWireType(i10);
            if (gVar == null) {
                z11 = true;
                z10 = false;
            } else if (tagWireType == t.getWireFormatForFieldType(gVar.descriptor.getLiteType(), false)) {
                z11 = false;
                z10 = false;
            } else {
                f fVar = gVar.descriptor;
                if (fVar.isRepeated && fVar.type.isPackable() && tagWireType == t.getWireFormatForFieldType(gVar.descriptor.getLiteType(), true)) {
                    z10 = true;
                    z11 = false;
                } else {
                    z11 = true;
                    z10 = false;
                }
            }
            if (z11) {
                return parseUnknownField(i10, iVar);
            }
            ensureExtensionsAreMutable();
            if (z10) {
                int iPushLimit = iVar.pushLimit(iVar.readRawVarint32());
                if (gVar.descriptor.getLiteType() == WireFormat.FieldType.ENUM) {
                    while (iVar.getBytesUntilLimit() > 0) {
                        y.c cVarFindValueByNumber = gVar.descriptor.getEnumType().findValueByNumber(iVar.readEnum());
                        if (cVarFindValueByNumber == null) {
                            return true;
                        }
                        this.extensions.addRepeatedField(gVar.descriptor, gVar.singularToFieldSetType(cVarFindValueByNumber));
                    }
                } else {
                    while (iVar.getBytesUntilLimit() > 0) {
                        this.extensions.addRepeatedField(gVar.descriptor, t.readPrimitiveField(iVar, gVar.descriptor.getLiteType(), false));
                    }
                }
                iVar.popLimit(iPushLimit);
            } else {
                int i12 = a.$SwitchMap$com$google$protobuf$WireFormat$JavaType[gVar.descriptor.getLiteJavaType().ordinal()];
                if (i12 == 1) {
                    s0.a builder = (gVar.descriptor.isRepeated() || (s0Var = (s0) this.extensions.getField(gVar.descriptor)) == null) ? null : s0Var.toBuilder();
                    if (builder == null) {
                        builder = gVar.getMessageDefaultInstance().newBuilderForType();
                    }
                    if (gVar.descriptor.getLiteType() == WireFormat.FieldType.GROUP) {
                        iVar.readGroup(gVar.getNumber(), builder, oVar);
                    } else {
                        iVar.readMessage(builder, oVar);
                    }
                    objBuild = builder.build();
                } else if (i12 != 2) {
                    objBuild = t.readPrimitiveField(iVar, gVar.descriptor.getLiteType(), false);
                } else {
                    int i13 = iVar.readEnum();
                    y.c cVarFindValueByNumber2 = gVar.descriptor.getEnumType().findValueByNumber(i13);
                    if (cVarFindValueByNumber2 == null) {
                        mergeVarintField(i11, i13);
                        return true;
                    }
                    objBuild = cVarFindValueByNumber2;
                }
                if (gVar.descriptor.isRepeated()) {
                    this.extensions.addRepeatedField(gVar.descriptor, gVar.singularToFieldSetType(objBuild));
                } else {
                    this.extensions.setField(gVar.descriptor, gVar.singularToFieldSetType(objBuild));
                }
            }
            return true;
        }

        private void verifyExtensionContainingType(g gVar) {
            if (gVar.getContainingTypeDefaultInstance() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        t ensureExtensionsAreMutable() {
            if (this.extensions.isImmutable()) {
                this.extensions = this.extensions.m294clone();
            }
            return this.extensions;
        }

        protected boolean extensionsAreInitialized() {
            return this.extensions.isInitialized();
        }

        protected int extensionsSerializedSize() {
            return this.extensions.getSerializedSize();
        }

        protected int extensionsSerializedSizeAsMessageSet() {
            return this.extensions.getMessageSetSerializedSize();
        }

        @Override
        public s0 getDefaultInstanceForType() {
            return super.getDefaultInstanceForType();
        }

        @Override
        public final <Type> Type getExtension(m mVar) {
            g gVarCheckIsLite = GeneratedMessageLite.checkIsLite(mVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            Object field = this.extensions.getField(gVarCheckIsLite.descriptor);
            return field == null ? (Type) gVarCheckIsLite.defaultValue : (Type) gVarCheckIsLite.fromFieldSetType(field);
        }

        @Override
        public final <Type> int getExtensionCount(m mVar) {
            g gVarCheckIsLite = GeneratedMessageLite.checkIsLite(mVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            return this.extensions.getRepeatedFieldCount(gVarCheckIsLite.descriptor);
        }

        @Override
        public final <Type> boolean hasExtension(m mVar) {
            g gVarCheckIsLite = GeneratedMessageLite.checkIsLite(mVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            return this.extensions.hasField(gVarCheckIsLite.descriptor);
        }

        protected final void mergeExtensionFields(d dVar) {
            if (this.extensions.isImmutable()) {
                this.extensions = this.extensions.m294clone();
            }
            this.extensions.mergeFrom(dVar.extensions);
        }

        @Override
        public s0.a newBuilderForType() {
            return super.newBuilderForType();
        }

        protected com.google.protobuf.GeneratedMessageLite$d.a newExtensionWriter() {
            return new a(this, false, null);
        }

        protected com.google.protobuf.GeneratedMessageLite$d.a newMessageSetExtensionWriter() {
            return new a(this, true, null);
        }

        protected <MessageType extends s0> boolean parseUnknownField(MessageType messagetype, i iVar, o oVar, int i10) throws IOException {
            int tagFieldNumber = WireFormat.getTagFieldNumber(i10);
            return parseExtension(iVar, oVar, oVar.findLiteExtensionByNumber(messagetype, tagFieldNumber), i10, tagFieldNumber);
        }

        protected <MessageType extends s0> boolean parseUnknownFieldAsMessageSet(MessageType messagetype, i iVar, o oVar, int i10) throws IOException {
            if (i10 != WireFormat.MESSAGE_SET_ITEM_TAG) {
                return WireFormat.getTagWireType(i10) == 2 ? parseUnknownField(messagetype, iVar, oVar, i10) : iVar.skipField(i10);
            }
            mergeMessageSetExtensionFromCodedStream(messagetype, iVar, oVar);
            return true;
        }

        @Override
        public s0.a toBuilder() {
            return super.toBuilder();
        }

        @Override
        public final <Type> Type getExtension(m mVar, int i10) {
            g gVarCheckIsLite = GeneratedMessageLite.checkIsLite(mVar);
            verifyExtensionContainingType(gVarCheckIsLite);
            return (Type) gVarCheckIsLite.singularFromFieldSetType(this.extensions.getRepeatedField(gVarCheckIsLite.descriptor, i10));
        }
    }

    protected static y.f mutableCopy(y.f fVar) {
        int size = fVar.size();
        return fVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, ByteString byteString, o oVar) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t10, byteString, oVar));
    }

    protected static y.b mutableCopy(y.b bVar) {
        int size = bVar.size();
        return bVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, byte[] bArr) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t10, bArr, 0, bArr.length, o.getEmptyRegistry()));
    }

    @Override
    public int getSerializedSize() {
        return getSerializedSize(null);
    }

    protected static y.a mutableCopy(y.a aVar) {
        int size = aVar.size();
        return aVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, byte[] bArr, o oVar) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t10, bArr, 0, bArr.length, oVar));
    }

    protected static <E> y.j mutableCopy(y.j jVar) {
        int size = jVar.size();
        return jVar.mutableCopyWithCapacity(size == 0 ? 10 : size * 2);
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, InputStream inputStream) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t10, i.newInstance(inputStream), o.getEmptyRegistry()));
    }

    public static <T extends GeneratedMessageLite> T parsePartialFrom(T t10, byte[] bArr, int i10, int i11, o oVar) throws InvalidProtocolBufferException {
        T t11 = (T) t10.newMutableInstance();
        try {
            i1 i1VarSchemaFor = d1.getInstance().schemaFor(t11);
            i1VarSchemaFor.mergeFrom(t11, bArr, i10, i10 + i11, new com.google.protobuf.e.b(oVar));
            i1VarSchemaFor.makeImmutable(t11);
            return t11;
        } catch (InvalidProtocolBufferException e10) {
            e = e10;
            if (e.getThrownFromInputStream()) {
                e = new InvalidProtocolBufferException((IOException) e);
            }
            throw e.setUnfinishedMessage(t11);
        } catch (UninitializedMessageException e11) {
            throw e11.asInvalidProtocolBufferException().setUnfinishedMessage(t11);
        } catch (IOException e12) {
            if (e12.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e12.getCause());
            }
            throw new InvalidProtocolBufferException(e12).setUnfinishedMessage(t11);
        } catch (IndexOutOfBoundsException unused) {
            throw InvalidProtocolBufferException.truncatedMessage().setUnfinishedMessage(t11);
        }
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, InputStream inputStream, o oVar) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t10, i.newInstance(inputStream), oVar));
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, i iVar) throws InvalidProtocolBufferException {
        return (T) parseFrom(t10, iVar, o.getEmptyRegistry());
    }

    protected static <T extends GeneratedMessageLite> T parseFrom(T t10, i iVar, o oVar) throws InvalidProtocolBufferException {
        return (T) checkMessageInitialized(parsePartialFrom(t10, iVar, oVar));
    }

    protected static <T extends GeneratedMessageLite> T parsePartialFrom(T t10, i iVar) throws InvalidProtocolBufferException {
        return (T) parsePartialFrom(t10, iVar, o.getEmptyRegistry());
    }

    private static <T extends GeneratedMessageLite> T parsePartialFrom(T t10, ByteString byteString, o oVar) throws InvalidProtocolBufferException {
        i iVarNewCodedInput = byteString.newCodedInput();
        T t11 = (T) parsePartialFrom(t10, iVarNewCodedInput, oVar);
        try {
            iVarNewCodedInput.checkLastTagWas(0);
            return t11;
        } catch (InvalidProtocolBufferException e10) {
            throw e10.setUnfinishedMessage(t11);
        }
    }
}
