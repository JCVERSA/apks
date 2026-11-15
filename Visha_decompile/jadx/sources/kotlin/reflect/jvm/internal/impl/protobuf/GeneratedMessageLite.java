package kotlin.reflect.jvm.internal.impl.protobuf;

import defpackage.cx7;
import defpackage.po0;
import defpackage.un6;
import java.io.IOException;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class GeneratedMessageLite extends kotlin.reflect.jvm.internal.impl.protobuf.a implements Serializable {

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[WireFormat.JavaType.values().length];
            a = iArr;
            try {
                iArr[WireFormat.JavaType.MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[WireFormat.JavaType.ENUM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class b extends kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a {
        public po0 b = po0.b;

        public final po0 c() {
            return this.b;
        }

        public abstract b d(GeneratedMessageLite generatedMessageLite);

        public final b e(po0 po0Var) {
            this.b = po0Var;
            return this;
        }
    }

    public static abstract class c extends b implements un6 {
        public kotlin.reflect.jvm.internal.impl.protobuf.e c = kotlin.reflect.jvm.internal.impl.protobuf.e.g();
        public boolean d;

        public final kotlin.reflect.jvm.internal.impl.protobuf.e g() {
            this.c.q();
            this.d = false;
            return this.c;
        }

        public final void h() {
            if (this.d) {
                return;
            }
            this.c = this.c.clone();
            this.d = true;
        }

        public final void i(ExtendableMessage extendableMessage) {
            h();
            this.c.r(extendableMessage.extensions);
        }
    }

    public static final class d implements kotlin.reflect.jvm.internal.impl.protobuf.e.b {
        public final f.b b;
        public final int c;
        public final WireFormat.FieldType d;
        public final boolean e;
        public final boolean f;

        public d(f.b bVar, int i, WireFormat.FieldType fieldType, boolean z, boolean z2) {
            this.b = bVar;
            this.c = i;
            this.d = fieldType;
            this.e = z;
            this.f = z2;
        }

        @Override
        public int compareTo(d dVar) {
            return this.c - dVar.c;
        }

        public f.b b() {
            return this.b;
        }

        @Override
        public g.a c(g.a aVar, g gVar) {
            return ((b) aVar).d((GeneratedMessageLite) gVar);
        }

        @Override
        public WireFormat.JavaType getLiteJavaType() {
            return this.d.getJavaType();
        }

        @Override
        public WireFormat.FieldType getLiteType() {
            return this.d;
        }

        @Override
        public int getNumber() {
            return this.c;
        }

        @Override
        public boolean isPacked() {
            return this.f;
        }

        @Override
        public boolean isRepeated() {
            return this.e;
        }
    }

    public static class e {
        public final g a;
        public final Object b;
        public final g c;
        public final d d;
        public final Class e;
        public final Method f;

        public e(g gVar, Object obj, g gVar2, d dVar, Class cls) {
            if (gVar == null) {
                throw new IllegalArgumentException("Null containingTypeDefaultInstance");
            }
            if (dVar.getLiteType() == WireFormat.FieldType.MESSAGE && gVar2 == null) {
                throw new IllegalArgumentException("Null messageDefaultInstance");
            }
            this.a = gVar;
            this.b = obj;
            this.c = gVar2;
            this.d = dVar;
            this.e = cls;
            if (f.a.class.isAssignableFrom(cls)) {
                this.f = GeneratedMessageLite.getMethodOrDie(cls, "valueOf", Integer.TYPE);
            } else {
                this.f = null;
            }
        }

        public Object a(Object obj) {
            if (!this.d.isRepeated()) {
                return e(obj);
            }
            if (this.d.getLiteJavaType() != WireFormat.JavaType.ENUM) {
                return obj;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                arrayList.add(e(it.next()));
            }
            return arrayList;
        }

        public g b() {
            return this.a;
        }

        public g c() {
            return this.c;
        }

        public int d() {
            return this.d.getNumber();
        }

        public Object e(Object obj) {
            return this.d.getLiteJavaType() == WireFormat.JavaType.ENUM ? GeneratedMessageLite.invokeOrDie(this.f, null, (Integer) obj) : obj;
        }

        public Object f(Object obj) {
            return this.d.getLiteJavaType() == WireFormat.JavaType.ENUM ? Integer.valueOf(((f.a) obj).getNumber()) : obj;
        }
    }

    public GeneratedMessageLite() {
    }

    public static Method getMethodOrDie(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            String name = cls.getName();
            String strValueOf = String.valueOf(str);
            StringBuilder sb = new StringBuilder(name.length() + 45 + strValueOf.length());
            sb.append("Generated message class \"");
            sb.append(name);
            sb.append("\" missing method \"");
            sb.append(strValueOf);
            sb.append("\".");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static <ContainingType extends g, Type> e newRepeatedGeneratedExtension(ContainingType containingtype, g gVar, f.b bVar, int i, WireFormat.FieldType fieldType, boolean z, Class cls) {
        return new e(containingtype, Collections.emptyList(), gVar, new d(bVar, i, fieldType, true, z), cls);
    }

    public static <ContainingType extends g, Type> e newSingularGeneratedExtension(ContainingType containingtype, Type type, g gVar, f.b bVar, int i, WireFormat.FieldType fieldType, Class cls) {
        return new e(containingtype, type, gVar, new d(bVar, i, fieldType, false, false), cls);
    }

    public abstract g getDefaultInstanceForType();

    public cx7 getParserForType() {
        throw new UnsupportedOperationException("This is supposed to be overridden by subclasses.");
    }

    @Override
    public abstract int getSerializedSize();

    @Override
    public abstract boolean isInitialized();

    public void makeExtensionsImmutable() {
    }

    @Override
    public abstract g.a newBuilderForType();

    public boolean parseUnknownField(kotlin.reflect.jvm.internal.impl.protobuf.c cVar, CodedOutputStream codedOutputStream, kotlin.reflect.jvm.internal.impl.protobuf.d dVar, int i) throws IOException {
        return cVar.O(i, codedOutputStream);
    }

    @Override
    public abstract g.a toBuilder();

    @Override
    public abstract void writeTo(CodedOutputStream codedOutputStream) throws IOException;

    public static abstract class ExtendableMessage<MessageType extends ExtendableMessage<MessageType>> extends GeneratedMessageLite implements un6 {
        private final kotlin.reflect.jvm.internal.impl.protobuf.e extensions;

        public class a {
            public final Iterator a;
            public Map.Entry b;
            public final boolean c;

            public a(ExtendableMessage extendableMessage, boolean z, a aVar) {
                this(z);
            }

            public void a(int i, CodedOutputStream codedOutputStream) {
                while (true) {
                    Map.Entry entry = this.b;
                    if (entry == null || ((d) entry.getKey()).getNumber() >= i) {
                        return;
                    }
                    d dVar = (d) this.b.getKey();
                    if (this.c && dVar.getLiteJavaType() == WireFormat.JavaType.MESSAGE && !dVar.isRepeated()) {
                        codedOutputStream.e0(dVar.getNumber(), (g) this.b.getValue());
                    } else {
                        kotlin.reflect.jvm.internal.impl.protobuf.e.z(dVar, this.b.getValue(), codedOutputStream);
                    }
                    if (this.a.hasNext()) {
                        this.b = (Map.Entry) this.a.next();
                    } else {
                        this.b = null;
                    }
                }
            }

            public a(boolean z) {
                Iterator itP = ExtendableMessage.this.extensions.p();
                this.a = itP;
                if (itP.hasNext()) {
                    this.b = (Map.Entry) itP.next();
                }
                this.c = z;
            }
        }

        public ExtendableMessage() {
            this.extensions = kotlin.reflect.jvm.internal.impl.protobuf.e.t();
        }

        private void verifyExtensionContainingType(e eVar) {
            if (eVar.b() != getDefaultInstanceForType()) {
                throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
            }
        }

        public boolean extensionsAreInitialized() {
            return this.extensions.n();
        }

        public int extensionsSerializedSize() {
            return this.extensions.k();
        }

        @Override
        public abstract g getDefaultInstanceForType();

        public final <Type> Type getExtension(e eVar) {
            verifyExtensionContainingType(eVar);
            Object objH = this.extensions.h(eVar.d);
            return objH == null ? (Type) eVar.b : (Type) eVar.a(objH);
        }

        public final <Type> int getExtensionCount(e eVar) {
            verifyExtensionContainingType(eVar);
            return this.extensions.j(eVar.d);
        }

        @Override
        public abstract int getSerializedSize();

        public final <Type> boolean hasExtension(e eVar) {
            verifyExtensionContainingType(eVar);
            return this.extensions.m(eVar.d);
        }

        @Override
        public abstract boolean isInitialized();

        @Override
        public void makeExtensionsImmutable() {
            this.extensions.q();
        }

        @Override
        public abstract g.a newBuilderForType();

        public ExtendableMessage<MessageType>.a newExtensionWriter() {
            return new a(this, false, null);
        }

        @Override
        public boolean parseUnknownField(kotlin.reflect.jvm.internal.impl.protobuf.c cVar, CodedOutputStream codedOutputStream, kotlin.reflect.jvm.internal.impl.protobuf.d dVar, int i) throws IOException {
            return GeneratedMessageLite.parseUnknownField(this.extensions, getDefaultInstanceForType(), cVar, codedOutputStream, dVar, i);
        }

        @Override
        public abstract g.a toBuilder();

        @Override
        public abstract void writeTo(CodedOutputStream codedOutputStream) throws IOException;

        public ExtendableMessage(c cVar) {
            this.extensions = cVar.g();
        }

        public final <Type> Type getExtension(e eVar, int i) {
            verifyExtensionContainingType(eVar);
            return (Type) eVar.e(this.extensions.i(eVar.d, i));
        }
    }

    public GeneratedMessageLite(b bVar) {
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0010  */
    public static <MessageType extends g> boolean parseUnknownField(kotlin.reflect.jvm.internal.impl.protobuf.e eVar, MessageType messagetype, kotlin.reflect.jvm.internal.impl.protobuf.c cVar, CodedOutputStream codedOutputStream, kotlin.reflect.jvm.internal.impl.protobuf.d dVar, int i) throws IOException {
        boolean z;
        boolean z2;
        Object objBuild;
        g gVar;
        int iB = WireFormat.b(i);
        e eVarB = dVar.b(messagetype, WireFormat.a(i));
        if (eVarB == null) {
            z2 = true;
            z = false;
        } else if (iB == kotlin.reflect.jvm.internal.impl.protobuf.e.l(eVarB.d.getLiteType(), false)) {
            z2 = false;
            z = false;
        } else {
            d dVar2 = eVarB.d;
            if (dVar2.e && dVar2.d.isPackable() && iB == kotlin.reflect.jvm.internal.impl.protobuf.e.l(eVarB.d.getLiteType(), true)) {
                z = true;
                z2 = false;
            } else {
                z2 = true;
                z = false;
            }
        }
        if (z2) {
            return cVar.O(i, codedOutputStream);
        }
        if (z) {
            int i2 = cVar.i(cVar.z());
            if (eVarB.d.getLiteType() == WireFormat.FieldType.ENUM) {
                while (cVar.e() > 0) {
                    f.a aVarFindValueByNumber = eVarB.d.b().findValueByNumber(cVar.m());
                    if (aVarFindValueByNumber == null) {
                        return true;
                    }
                    eVar.a(eVarB.d, eVarB.f(aVarFindValueByNumber));
                }
            } else {
                while (cVar.e() > 0) {
                    eVar.a(eVarB.d, kotlin.reflect.jvm.internal.impl.protobuf.e.u(cVar, eVarB.d.getLiteType(), false));
                }
            }
            cVar.h(i2);
        } else {
            int i3 = a.a[eVarB.d.getLiteJavaType().ordinal()];
            if (i3 == 1) {
                g.a builder = (eVarB.d.isRepeated() || (gVar = (g) eVar.h(eVarB.d)) == null) ? null : gVar.toBuilder();
                if (builder == null) {
                    builder = eVarB.c().newBuilderForType();
                }
                if (eVarB.d.getLiteType() == WireFormat.FieldType.GROUP) {
                    cVar.q(eVarB.d(), builder, dVar);
                } else {
                    cVar.u(builder, dVar);
                }
                objBuild = builder.build();
            } else if (i3 != 2) {
                objBuild = kotlin.reflect.jvm.internal.impl.protobuf.e.u(cVar, eVarB.d.getLiteType(), false);
            } else {
                int iM = cVar.m();
                f.a aVarFindValueByNumber2 = eVarB.d.b().findValueByNumber(iM);
                if (aVarFindValueByNumber2 == null) {
                    codedOutputStream.n0(i);
                    codedOutputStream.x0(iM);
                    return true;
                }
                objBuild = aVarFindValueByNumber2;
            }
            if (eVarB.d.isRepeated()) {
                eVar.a(eVarB.d, eVarB.f(objBuild));
            } else {
                eVar.v(eVarB.d, eVarB.f(objBuild));
            }
        }
        return true;
    }
}
