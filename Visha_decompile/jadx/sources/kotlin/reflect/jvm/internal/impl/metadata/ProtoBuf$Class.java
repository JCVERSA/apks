package kotlin.reflect.jvm.internal.impl.metadata;

import defpackage.cx7;
import defpackage.po0;
import defpackage.un6;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.c;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.f;
import org.mozilla.classfile.ByteCode;

public final class ProtoBuf$Class extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Class> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$Class defaultInstance;
    private int bitField0_;
    private int companionObjectName_;
    private List<ProtoBuf$Constructor> constructor_;
    private int contextReceiverTypeIdMemoizedSerializedSize;
    private List<Integer> contextReceiverTypeId_;
    private List<ProtoBuf$Type> contextReceiverType_;
    private List<ProtoBuf$EnumEntry> enumEntry_;
    private int flags_;
    private int fqName_;
    private List<ProtoBuf$Function> function_;
    private int inlineClassUnderlyingPropertyName_;
    private int inlineClassUnderlyingTypeId_;
    private ProtoBuf$Type inlineClassUnderlyingType_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int multiFieldValueClassUnderlyingNameMemoizedSerializedSize;
    private List<Integer> multiFieldValueClassUnderlyingName_;
    private int multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize;
    private List<Integer> multiFieldValueClassUnderlyingTypeId_;
    private List<ProtoBuf$Type> multiFieldValueClassUnderlyingType_;
    private int nestedClassNameMemoizedSerializedSize;
    private List<Integer> nestedClassName_;
    private List<ProtoBuf$Property> property_;
    private int sealedSubclassFqNameMemoizedSerializedSize;
    private List<Integer> sealedSubclassFqName_;
    private int supertypeIdMemoizedSerializedSize;
    private List<Integer> supertypeId_;
    private List<ProtoBuf$Type> supertype_;
    private List<ProtoBuf$TypeAlias> typeAlias_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private ProtoBuf$TypeTable typeTable_;
    private final po0 unknownFields;
    private ProtoBuf$VersionRequirementTable versionRequirementTable_;
    private List<Integer> versionRequirement_;

    public enum Kind implements f.a {
        CLASS(0, 0),
        INTERFACE(1, 1),
        ENUM_CLASS(2, 2),
        ENUM_ENTRY(3, 3),
        ANNOTATION_CLASS(4, 4),
        OBJECT(5, 5),
        COMPANION_OBJECT(6, 6);

        private static f.b internalValueMap = new a();
        private final int value;

        public static class a implements f.b {
            @Override
            public Kind findValueByNumber(int i) {
                return Kind.valueOf(i);
            }
        }

        Kind(int i, int i2) {
            this.value = i2;
        }

        @Override
        public final int getNumber() {
            return this.value;
        }

        public static Kind valueOf(int i) {
            switch (i) {
                case 0:
                    return CLASS;
                case 1:
                    return INTERFACE;
                case 2:
                    return ENUM_CLASS;
                case 3:
                    return ENUM_ENTRY;
                case 4:
                    return ANNOTATION_CLASS;
                case 5:
                    return OBJECT;
                case 6:
                    return COMPANION_OBJECT;
                default:
                    return null;
            }
        }
    }

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$Class c(c cVar, d dVar) {
            return new ProtoBuf$Class(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public int g;
        public int h;
        public int u;
        public int w;
        public int f = 6;
        public List i = Collections.emptyList();
        public List j = Collections.emptyList();
        public List k = Collections.emptyList();
        public List l = Collections.emptyList();
        public List m = Collections.emptyList();
        public List n = Collections.emptyList();
        public List o = Collections.emptyList();
        public List p = Collections.emptyList();
        public List q = Collections.emptyList();
        public List r = Collections.emptyList();
        public List s = Collections.emptyList();
        public List t = Collections.emptyList();
        public ProtoBuf$Type v = ProtoBuf$Type.getDefaultInstance();
        public List x = Collections.emptyList();
        public List y = Collections.emptyList();
        public List z = Collections.emptyList();
        public ProtoBuf$TypeTable A = ProtoBuf$TypeTable.getDefaultInstance();
        public List B = Collections.emptyList();
        public ProtoBuf$VersionRequirementTable C = ProtoBuf$VersionRequirementTable.getDefaultInstance();

        public b() {
            F();
        }

        private void F() {
        }

        public static b n() {
            return new b();
        }

        public final void A() {
            if ((this.e & 16) != 16) {
                this.j = new ArrayList(this.j);
                this.e |= 16;
            }
        }

        public final void B() {
            if ((this.e & 4096) != 4096) {
                this.r = new ArrayList(this.r);
                this.e |= 4096;
            }
        }

        public final void C() {
            if ((this.e & 8) != 8) {
                this.i = new ArrayList(this.i);
                this.e |= 8;
            }
        }

        public final void E() {
            if ((this.e & 4194304) != 4194304) {
                this.B = new ArrayList(this.B);
                this.e |= 4194304;
            }
        }

        @Override
        public b d(ProtoBuf$Class protoBuf$Class) {
            if (protoBuf$Class == ProtoBuf$Class.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Class.hasFlags()) {
                M(protoBuf$Class.getFlags());
            }
            if (protoBuf$Class.hasFqName()) {
                N(protoBuf$Class.getFqName());
            }
            if (protoBuf$Class.hasCompanionObjectName()) {
                L(protoBuf$Class.getCompanionObjectName());
            }
            if (!protoBuf$Class.typeParameter_.isEmpty()) {
                if (this.i.isEmpty()) {
                    this.i = protoBuf$Class.typeParameter_;
                    this.e &= -9;
                } else {
                    C();
                    this.i.addAll(protoBuf$Class.typeParameter_);
                }
            }
            if (!protoBuf$Class.supertype_.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$Class.supertype_;
                    this.e &= -17;
                } else {
                    A();
                    this.j.addAll(protoBuf$Class.supertype_);
                }
            }
            if (!protoBuf$Class.supertypeId_.isEmpty()) {
                if (this.k.isEmpty()) {
                    this.k = protoBuf$Class.supertypeId_;
                    this.e &= -33;
                } else {
                    z();
                    this.k.addAll(protoBuf$Class.supertypeId_);
                }
            }
            if (!protoBuf$Class.nestedClassName_.isEmpty()) {
                if (this.l.isEmpty()) {
                    this.l = protoBuf$Class.nestedClassName_;
                    this.e &= -65;
                } else {
                    w();
                    this.l.addAll(protoBuf$Class.nestedClassName_);
                }
            }
            if (!protoBuf$Class.contextReceiverType_.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$Class.contextReceiverType_;
                    this.e &= -129;
                } else {
                    q();
                    this.m.addAll(protoBuf$Class.contextReceiverType_);
                }
            }
            if (!protoBuf$Class.contextReceiverTypeId_.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$Class.contextReceiverTypeId_;
                    this.e &= -257;
                } else {
                    p();
                    this.n.addAll(protoBuf$Class.contextReceiverTypeId_);
                }
            }
            if (!protoBuf$Class.constructor_.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Class.constructor_;
                    this.e &= -513;
                } else {
                    o();
                    this.o.addAll(protoBuf$Class.constructor_);
                }
            }
            if (!protoBuf$Class.function_.isEmpty()) {
                if (this.p.isEmpty()) {
                    this.p = protoBuf$Class.function_;
                    this.e &= -1025;
                } else {
                    s();
                    this.p.addAll(protoBuf$Class.function_);
                }
            }
            if (!protoBuf$Class.property_.isEmpty()) {
                if (this.q.isEmpty()) {
                    this.q = protoBuf$Class.property_;
                    this.e &= -2049;
                } else {
                    x();
                    this.q.addAll(protoBuf$Class.property_);
                }
            }
            if (!protoBuf$Class.typeAlias_.isEmpty()) {
                if (this.r.isEmpty()) {
                    this.r = protoBuf$Class.typeAlias_;
                    this.e &= -4097;
                } else {
                    B();
                    this.r.addAll(protoBuf$Class.typeAlias_);
                }
            }
            if (!protoBuf$Class.enumEntry_.isEmpty()) {
                if (this.s.isEmpty()) {
                    this.s = protoBuf$Class.enumEntry_;
                    this.e &= -8193;
                } else {
                    r();
                    this.s.addAll(protoBuf$Class.enumEntry_);
                }
            }
            if (!protoBuf$Class.sealedSubclassFqName_.isEmpty()) {
                if (this.t.isEmpty()) {
                    this.t = protoBuf$Class.sealedSubclassFqName_;
                    this.e &= -16385;
                } else {
                    y();
                    this.t.addAll(protoBuf$Class.sealedSubclassFqName_);
                }
            }
            if (protoBuf$Class.hasInlineClassUnderlyingPropertyName()) {
                O(protoBuf$Class.getInlineClassUnderlyingPropertyName());
            }
            if (protoBuf$Class.hasInlineClassUnderlyingType()) {
                I(protoBuf$Class.getInlineClassUnderlyingType());
            }
            if (protoBuf$Class.hasInlineClassUnderlyingTypeId()) {
                P(protoBuf$Class.getInlineClassUnderlyingTypeId());
            }
            if (!protoBuf$Class.multiFieldValueClassUnderlyingName_.isEmpty()) {
                if (this.x.isEmpty()) {
                    this.x = protoBuf$Class.multiFieldValueClassUnderlyingName_;
                    this.e &= -262145;
                } else {
                    t();
                    this.x.addAll(protoBuf$Class.multiFieldValueClassUnderlyingName_);
                }
            }
            if (!protoBuf$Class.multiFieldValueClassUnderlyingType_.isEmpty()) {
                if (this.y.isEmpty()) {
                    this.y = protoBuf$Class.multiFieldValueClassUnderlyingType_;
                    this.e &= -524289;
                } else {
                    v();
                    this.y.addAll(protoBuf$Class.multiFieldValueClassUnderlyingType_);
                }
            }
            if (!protoBuf$Class.multiFieldValueClassUnderlyingTypeId_.isEmpty()) {
                if (this.z.isEmpty()) {
                    this.z = protoBuf$Class.multiFieldValueClassUnderlyingTypeId_;
                    this.e &= -1048577;
                } else {
                    u();
                    this.z.addAll(protoBuf$Class.multiFieldValueClassUnderlyingTypeId_);
                }
            }
            if (protoBuf$Class.hasTypeTable()) {
                J(protoBuf$Class.getTypeTable());
            }
            if (!protoBuf$Class.versionRequirement_.isEmpty()) {
                if (this.B.isEmpty()) {
                    this.B = protoBuf$Class.versionRequirement_;
                    this.e &= -4194305;
                } else {
                    E();
                    this.B.addAll(protoBuf$Class.versionRequirement_);
                }
            }
            if (protoBuf$Class.hasVersionRequirementTable()) {
                K(protoBuf$Class.getVersionRequirementTable());
            }
            i(protoBuf$Class);
            e(c().c(protoBuf$Class.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$Class protoBuf$Class = null;
            try {
                try {
                    ProtoBuf$Class protoBuf$Class2 = (ProtoBuf$Class) ProtoBuf$Class.PARSER.c(cVar, dVar);
                    if (protoBuf$Class2 != null) {
                        d(protoBuf$Class2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$Class protoBuf$Class3 = (ProtoBuf$Class) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Class = protoBuf$Class3;
                        if (protoBuf$Class != null) {
                            d(protoBuf$Class);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Class != null) {
                    d(protoBuf$Class);
                }
                throw th;
            }
        }

        public b I(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 65536) != 65536 || this.v == ProtoBuf$Type.getDefaultInstance()) {
                this.v = protoBuf$Type;
            } else {
                this.v = ProtoBuf$Type.newBuilder(this.v).d(protoBuf$Type).l();
            }
            this.e |= 65536;
            return this;
        }

        public b J(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.e & 2097152) != 2097152 || this.A == ProtoBuf$TypeTable.getDefaultInstance()) {
                this.A = protoBuf$TypeTable;
            } else {
                this.A = ProtoBuf$TypeTable.newBuilder(this.A).d(protoBuf$TypeTable).h();
            }
            this.e |= 2097152;
            return this;
        }

        public b K(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            if ((this.e & 8388608) != 8388608 || this.C == ProtoBuf$VersionRequirementTable.getDefaultInstance()) {
                this.C = protoBuf$VersionRequirementTable;
            } else {
                this.C = ProtoBuf$VersionRequirementTable.newBuilder(this.C).d(protoBuf$VersionRequirementTable).h();
            }
            this.e |= 8388608;
            return this;
        }

        public b L(int i) {
            this.e |= 4;
            this.h = i;
            return this;
        }

        public b M(int i) {
            this.e |= 1;
            this.f = i;
            return this;
        }

        public b N(int i) {
            this.e |= 2;
            this.g = i;
            return this;
        }

        public b O(int i) {
            this.e |= 32768;
            this.u = i;
            return this;
        }

        public b P(int i) {
            this.e |= 131072;
            this.w = i;
            return this;
        }

        @Override
        public ProtoBuf$Class build() {
            ProtoBuf$Class protoBuf$ClassL = l();
            if (protoBuf$ClassL.isInitialized()) {
                return protoBuf$ClassL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$ClassL);
        }

        public ProtoBuf$Class l() {
            ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(this);
            int i = this.e;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Class.flags_ = this.f;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Class.fqName_ = this.g;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Class.companionObjectName_ = this.h;
            if ((this.e & 8) == 8) {
                this.i = Collections.unmodifiableList(this.i);
                this.e &= -9;
            }
            protoBuf$Class.typeParameter_ = this.i;
            if ((this.e & 16) == 16) {
                this.j = Collections.unmodifiableList(this.j);
                this.e &= -17;
            }
            protoBuf$Class.supertype_ = this.j;
            if ((this.e & 32) == 32) {
                this.k = Collections.unmodifiableList(this.k);
                this.e &= -33;
            }
            protoBuf$Class.supertypeId_ = this.k;
            if ((this.e & 64) == 64) {
                this.l = Collections.unmodifiableList(this.l);
                this.e &= -65;
            }
            protoBuf$Class.nestedClassName_ = this.l;
            if ((this.e & 128) == 128) {
                this.m = Collections.unmodifiableList(this.m);
                this.e &= -129;
            }
            protoBuf$Class.contextReceiverType_ = this.m;
            if ((this.e & 256) == 256) {
                this.n = Collections.unmodifiableList(this.n);
                this.e &= -257;
            }
            protoBuf$Class.contextReceiverTypeId_ = this.n;
            if ((this.e & 512) == 512) {
                this.o = Collections.unmodifiableList(this.o);
                this.e &= -513;
            }
            protoBuf$Class.constructor_ = this.o;
            if ((this.e & 1024) == 1024) {
                this.p = Collections.unmodifiableList(this.p);
                this.e &= -1025;
            }
            protoBuf$Class.function_ = this.p;
            if ((this.e & 2048) == 2048) {
                this.q = Collections.unmodifiableList(this.q);
                this.e &= -2049;
            }
            protoBuf$Class.property_ = this.q;
            if ((this.e & 4096) == 4096) {
                this.r = Collections.unmodifiableList(this.r);
                this.e &= -4097;
            }
            protoBuf$Class.typeAlias_ = this.r;
            if ((this.e & 8192) == 8192) {
                this.s = Collections.unmodifiableList(this.s);
                this.e &= -8193;
            }
            protoBuf$Class.enumEntry_ = this.s;
            if ((this.e & 16384) == 16384) {
                this.t = Collections.unmodifiableList(this.t);
                this.e &= -16385;
            }
            protoBuf$Class.sealedSubclassFqName_ = this.t;
            if ((i & 32768) == 32768) {
                i2 |= 8;
            }
            protoBuf$Class.inlineClassUnderlyingPropertyName_ = this.u;
            if ((i & 65536) == 65536) {
                i2 |= 16;
            }
            protoBuf$Class.inlineClassUnderlyingType_ = this.v;
            if ((i & 131072) == 131072) {
                i2 |= 32;
            }
            protoBuf$Class.inlineClassUnderlyingTypeId_ = this.w;
            if ((this.e & 262144) == 262144) {
                this.x = Collections.unmodifiableList(this.x);
                this.e &= -262145;
            }
            protoBuf$Class.multiFieldValueClassUnderlyingName_ = this.x;
            if ((this.e & 524288) == 524288) {
                this.y = Collections.unmodifiableList(this.y);
                this.e &= -524289;
            }
            protoBuf$Class.multiFieldValueClassUnderlyingType_ = this.y;
            if ((this.e & 1048576) == 1048576) {
                this.z = Collections.unmodifiableList(this.z);
                this.e &= -1048577;
            }
            protoBuf$Class.multiFieldValueClassUnderlyingTypeId_ = this.z;
            if ((i & 2097152) == 2097152) {
                i2 |= 64;
            }
            protoBuf$Class.typeTable_ = this.A;
            if ((this.e & 4194304) == 4194304) {
                this.B = Collections.unmodifiableList(this.B);
                this.e &= -4194305;
            }
            protoBuf$Class.versionRequirement_ = this.B;
            if ((i & 8388608) == 8388608) {
                i2 |= 128;
            }
            protoBuf$Class.versionRequirementTable_ = this.C;
            protoBuf$Class.bitField0_ = i2;
            return protoBuf$Class;
        }

        public b clone() {
            return n().d(l());
        }

        public final void o() {
            if ((this.e & 512) != 512) {
                this.o = new ArrayList(this.o);
                this.e |= 512;
            }
        }

        public final void p() {
            if ((this.e & 256) != 256) {
                this.n = new ArrayList(this.n);
                this.e |= 256;
            }
        }

        public final void q() {
            if ((this.e & 128) != 128) {
                this.m = new ArrayList(this.m);
                this.e |= 128;
            }
        }

        public final void r() {
            if ((this.e & 8192) != 8192) {
                this.s = new ArrayList(this.s);
                this.e |= 8192;
            }
        }

        public final void s() {
            if ((this.e & 1024) != 1024) {
                this.p = new ArrayList(this.p);
                this.e |= 1024;
            }
        }

        public final void t() {
            if ((this.e & 262144) != 262144) {
                this.x = new ArrayList(this.x);
                this.e |= 262144;
            }
        }

        public final void u() {
            if ((this.e & 1048576) != 1048576) {
                this.z = new ArrayList(this.z);
                this.e |= 1048576;
            }
        }

        public final void v() {
            if ((this.e & 524288) != 524288) {
                this.y = new ArrayList(this.y);
                this.e |= 524288;
            }
        }

        public final void w() {
            if ((this.e & 64) != 64) {
                this.l = new ArrayList(this.l);
                this.e |= 64;
            }
        }

        public final void x() {
            if ((this.e & 2048) != 2048) {
                this.q = new ArrayList(this.q);
                this.e |= 2048;
            }
        }

        public final void y() {
            if ((this.e & 16384) != 16384) {
                this.t = new ArrayList(this.t);
                this.e |= 16384;
            }
        }

        public final void z() {
            if ((this.e & 32) != 32) {
                this.k = new ArrayList(this.k);
                this.e |= 32;
            }
        }
    }

    static {
        ProtoBuf$Class protoBuf$Class = new ProtoBuf$Class(true);
        defaultInstance = protoBuf$Class;
        protoBuf$Class.initFields();
    }

    public static ProtoBuf$Class getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 6;
        this.fqName_ = 0;
        this.companionObjectName_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.supertype_ = Collections.emptyList();
        this.supertypeId_ = Collections.emptyList();
        this.nestedClassName_ = Collections.emptyList();
        this.contextReceiverType_ = Collections.emptyList();
        this.contextReceiverTypeId_ = Collections.emptyList();
        this.constructor_ = Collections.emptyList();
        this.function_ = Collections.emptyList();
        this.property_ = Collections.emptyList();
        this.typeAlias_ = Collections.emptyList();
        this.enumEntry_ = Collections.emptyList();
        this.sealedSubclassFqName_ = Collections.emptyList();
        this.inlineClassUnderlyingPropertyName_ = 0;
        this.inlineClassUnderlyingType_ = ProtoBuf$Type.getDefaultInstance();
        this.inlineClassUnderlyingTypeId_ = 0;
        this.multiFieldValueClassUnderlyingName_ = Collections.emptyList();
        this.multiFieldValueClassUnderlyingType_ = Collections.emptyList();
        this.multiFieldValueClassUnderlyingTypeId_ = Collections.emptyList();
        this.typeTable_ = ProtoBuf$TypeTable.getDefaultInstance();
        this.versionRequirement_ = Collections.emptyList();
        this.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.getDefaultInstance();
    }

    public static b newBuilder() {
        return b.n();
    }

    public static ProtoBuf$Class parseFrom(InputStream inputStream, d dVar) throws IOException {
        return (ProtoBuf$Class) PARSER.b(inputStream, dVar);
    }

    public int getCompanionObjectName() {
        return this.companionObjectName_;
    }

    public ProtoBuf$Constructor getConstructor(int i) {
        return this.constructor_.get(i);
    }

    public int getConstructorCount() {
        return this.constructor_.size();
    }

    public List<ProtoBuf$Constructor> getConstructorList() {
        return this.constructor_;
    }

    public ProtoBuf$Type getContextReceiverType(int i) {
        return this.contextReceiverType_.get(i);
    }

    public int getContextReceiverTypeCount() {
        return this.contextReceiverType_.size();
    }

    public List<Integer> getContextReceiverTypeIdList() {
        return this.contextReceiverTypeId_;
    }

    public List<ProtoBuf$Type> getContextReceiverTypeList() {
        return this.contextReceiverType_;
    }

    public ProtoBuf$EnumEntry getEnumEntry(int i) {
        return this.enumEntry_.get(i);
    }

    public int getEnumEntryCount() {
        return this.enumEntry_.size();
    }

    public List<ProtoBuf$EnumEntry> getEnumEntryList() {
        return this.enumEntry_;
    }

    public int getFlags() {
        return this.flags_;
    }

    public int getFqName() {
        return this.fqName_;
    }

    public ProtoBuf$Function getFunction(int i) {
        return this.function_.get(i);
    }

    public int getFunctionCount() {
        return this.function_.size();
    }

    public List<ProtoBuf$Function> getFunctionList() {
        return this.function_;
    }

    public int getInlineClassUnderlyingPropertyName() {
        return this.inlineClassUnderlyingPropertyName_;
    }

    public ProtoBuf$Type getInlineClassUnderlyingType() {
        return this.inlineClassUnderlyingType_;
    }

    public int getInlineClassUnderlyingTypeId() {
        return this.inlineClassUnderlyingTypeId_;
    }

    public int getMultiFieldValueClassUnderlyingNameCount() {
        return this.multiFieldValueClassUnderlyingName_.size();
    }

    public List<Integer> getMultiFieldValueClassUnderlyingNameList() {
        return this.multiFieldValueClassUnderlyingName_;
    }

    public ProtoBuf$Type getMultiFieldValueClassUnderlyingType(int i) {
        return this.multiFieldValueClassUnderlyingType_.get(i);
    }

    public int getMultiFieldValueClassUnderlyingTypeCount() {
        return this.multiFieldValueClassUnderlyingType_.size();
    }

    public int getMultiFieldValueClassUnderlyingTypeIdCount() {
        return this.multiFieldValueClassUnderlyingTypeId_.size();
    }

    public List<Integer> getMultiFieldValueClassUnderlyingTypeIdList() {
        return this.multiFieldValueClassUnderlyingTypeId_;
    }

    public List<ProtoBuf$Type> getMultiFieldValueClassUnderlyingTypeList() {
        return this.multiFieldValueClassUnderlyingType_;
    }

    public List<Integer> getNestedClassNameList() {
        return this.nestedClassName_;
    }

    @Override
    public cx7 getParserForType() {
        return PARSER;
    }

    public ProtoBuf$Property getProperty(int i) {
        return this.property_.get(i);
    }

    public int getPropertyCount() {
        return this.property_.size();
    }

    public List<ProtoBuf$Property> getPropertyList() {
        return this.property_;
    }

    public List<Integer> getSealedSubclassFqNameList() {
        return this.sealedSubclassFqName_;
    }

    @Override
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.flags_) : 0;
        int iP = 0;
        for (int i2 = 0; i2 < this.supertypeId_.size(); i2++) {
            iP += CodedOutputStream.p(this.supertypeId_.get(i2).intValue());
        }
        int iR = iO + iP;
        if (!getSupertypeIdList().isEmpty()) {
            iR = iR + 1 + CodedOutputStream.p(iP);
        }
        this.supertypeIdMemoizedSerializedSize = iP;
        if ((this.bitField0_ & 2) == 2) {
            iR += CodedOutputStream.o(3, this.fqName_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iR += CodedOutputStream.o(4, this.companionObjectName_);
        }
        for (int i3 = 0; i3 < this.typeParameter_.size(); i3++) {
            iR += CodedOutputStream.r(5, this.typeParameter_.get(i3));
        }
        for (int i4 = 0; i4 < this.supertype_.size(); i4++) {
            iR += CodedOutputStream.r(6, this.supertype_.get(i4));
        }
        int iP2 = 0;
        for (int i5 = 0; i5 < this.nestedClassName_.size(); i5++) {
            iP2 += CodedOutputStream.p(this.nestedClassName_.get(i5).intValue());
        }
        int iR2 = iR + iP2;
        if (!getNestedClassNameList().isEmpty()) {
            iR2 = iR2 + 1 + CodedOutputStream.p(iP2);
        }
        this.nestedClassNameMemoizedSerializedSize = iP2;
        for (int i6 = 0; i6 < this.constructor_.size(); i6++) {
            iR2 += CodedOutputStream.r(8, this.constructor_.get(i6));
        }
        for (int i7 = 0; i7 < this.function_.size(); i7++) {
            iR2 += CodedOutputStream.r(9, this.function_.get(i7));
        }
        for (int i8 = 0; i8 < this.property_.size(); i8++) {
            iR2 += CodedOutputStream.r(10, this.property_.get(i8));
        }
        for (int i9 = 0; i9 < this.typeAlias_.size(); i9++) {
            iR2 += CodedOutputStream.r(11, this.typeAlias_.get(i9));
        }
        for (int i10 = 0; i10 < this.enumEntry_.size(); i10++) {
            iR2 += CodedOutputStream.r(13, this.enumEntry_.get(i10));
        }
        int iP3 = 0;
        for (int i11 = 0; i11 < this.sealedSubclassFqName_.size(); i11++) {
            iP3 += CodedOutputStream.p(this.sealedSubclassFqName_.get(i11).intValue());
        }
        int iR3 = iR2 + iP3;
        if (!getSealedSubclassFqNameList().isEmpty()) {
            iR3 = iR3 + 2 + CodedOutputStream.p(iP3);
        }
        this.sealedSubclassFqNameMemoizedSerializedSize = iP3;
        if ((this.bitField0_ & 8) == 8) {
            iR3 += CodedOutputStream.o(17, this.inlineClassUnderlyingPropertyName_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iR3 += CodedOutputStream.r(18, this.inlineClassUnderlyingType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iR3 += CodedOutputStream.o(19, this.inlineClassUnderlyingTypeId_);
        }
        for (int i12 = 0; i12 < this.contextReceiverType_.size(); i12++) {
            iR3 += CodedOutputStream.r(20, this.contextReceiverType_.get(i12));
        }
        int iP4 = 0;
        for (int i13 = 0; i13 < this.contextReceiverTypeId_.size(); i13++) {
            iP4 += CodedOutputStream.p(this.contextReceiverTypeId_.get(i13).intValue());
        }
        int iP5 = iR3 + iP4;
        if (!getContextReceiverTypeIdList().isEmpty()) {
            iP5 = iP5 + 2 + CodedOutputStream.p(iP4);
        }
        this.contextReceiverTypeIdMemoizedSerializedSize = iP4;
        int iP6 = 0;
        for (int i14 = 0; i14 < this.multiFieldValueClassUnderlyingName_.size(); i14++) {
            iP6 += CodedOutputStream.p(this.multiFieldValueClassUnderlyingName_.get(i14).intValue());
        }
        int iR4 = iP5 + iP6;
        if (!getMultiFieldValueClassUnderlyingNameList().isEmpty()) {
            iR4 = iR4 + 2 + CodedOutputStream.p(iP6);
        }
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = iP6;
        for (int i15 = 0; i15 < this.multiFieldValueClassUnderlyingType_.size(); i15++) {
            iR4 += CodedOutputStream.r(23, this.multiFieldValueClassUnderlyingType_.get(i15));
        }
        int iP7 = 0;
        for (int i16 = 0; i16 < this.multiFieldValueClassUnderlyingTypeId_.size(); i16++) {
            iP7 += CodedOutputStream.p(this.multiFieldValueClassUnderlyingTypeId_.get(i16).intValue());
        }
        int iR5 = iR4 + iP7;
        if (!getMultiFieldValueClassUnderlyingTypeIdList().isEmpty()) {
            iR5 = iR5 + 2 + CodedOutputStream.p(iP7);
        }
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = iP7;
        if ((this.bitField0_ & 64) == 64) {
            iR5 += CodedOutputStream.r(30, this.typeTable_);
        }
        int iP8 = 0;
        for (int i17 = 0; i17 < this.versionRequirement_.size(); i17++) {
            iP8 += CodedOutputStream.p(this.versionRequirement_.get(i17).intValue());
        }
        int size = iR5 + iP8 + (getVersionRequirementList().size() * 2);
        if ((this.bitField0_ & 128) == 128) {
            size += CodedOutputStream.r(32, this.versionRequirementTable_);
        }
        int iExtensionsSerializedSize = size + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$Type getSupertype(int i) {
        return this.supertype_.get(i);
    }

    public int getSupertypeCount() {
        return this.supertype_.size();
    }

    public List<Integer> getSupertypeIdList() {
        return this.supertypeId_;
    }

    public List<ProtoBuf$Type> getSupertypeList() {
        return this.supertype_;
    }

    public ProtoBuf$TypeAlias getTypeAlias(int i) {
        return this.typeAlias_.get(i);
    }

    public int getTypeAliasCount() {
        return this.typeAlias_.size();
    }

    public List<ProtoBuf$TypeAlias> getTypeAliasList() {
        return this.typeAlias_;
    }

    public ProtoBuf$TypeParameter getTypeParameter(int i) {
        return this.typeParameter_.get(i);
    }

    public int getTypeParameterCount() {
        return this.typeParameter_.size();
    }

    public List<ProtoBuf$TypeParameter> getTypeParameterList() {
        return this.typeParameter_;
    }

    public ProtoBuf$TypeTable getTypeTable() {
        return this.typeTable_;
    }

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    public ProtoBuf$VersionRequirementTable getVersionRequirementTable() {
        return this.versionRequirementTable_;
    }

    public boolean hasCompanionObjectName() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasFqName() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasInlineClassUnderlyingPropertyName() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasInlineClassUnderlyingType() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasInlineClassUnderlyingTypeId() {
        return (this.bitField0_ & 32) == 32;
    }

    public boolean hasTypeTable() {
        return (this.bitField0_ & 64) == 64;
    }

    public boolean hasVersionRequirementTable() {
        return (this.bitField0_ & 128) == 128;
    }

    @Override
    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        if (!hasFqName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getTypeParameterCount(); i++) {
            if (!getTypeParameter(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < getSupertypeCount(); i2++) {
            if (!getSupertype(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < getContextReceiverTypeCount(); i3++) {
            if (!getContextReceiverType(i3).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i4 = 0; i4 < getConstructorCount(); i4++) {
            if (!getConstructor(i4).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i5 = 0; i5 < getFunctionCount(); i5++) {
            if (!getFunction(i5).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < getPropertyCount(); i6++) {
            if (!getProperty(i6).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i7 = 0; i7 < getTypeAliasCount(); i7++) {
            if (!getTypeAlias(i7).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i8 = 0; i8 < getEnumEntryCount(); i8++) {
            if (!getEnumEntry(i8).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasInlineClassUnderlyingType() && !getInlineClassUnderlyingType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i9 = 0; i9 < getMultiFieldValueClassUnderlyingTypeCount(); i9++) {
            if (!getMultiFieldValueClassUnderlyingType(i9).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasTypeTable() && !getTypeTable().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (extensionsAreInitialized()) {
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }
        this.memoizedIsInitialized = (byte) 0;
        return false;
    }

    @Override
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        GeneratedMessageLite.ExtendableMessage<MessageType>.a aVarNewExtensionWriter = newExtensionWriter();
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.Z(1, this.flags_);
        }
        if (getSupertypeIdList().size() > 0) {
            codedOutputStream.n0(18);
            codedOutputStream.n0(this.supertypeIdMemoizedSerializedSize);
        }
        for (int i = 0; i < this.supertypeId_.size(); i++) {
            codedOutputStream.a0(this.supertypeId_.get(i).intValue());
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.Z(3, this.fqName_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.Z(4, this.companionObjectName_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            codedOutputStream.c0(5, this.typeParameter_.get(i2));
        }
        for (int i3 = 0; i3 < this.supertype_.size(); i3++) {
            codedOutputStream.c0(6, this.supertype_.get(i3));
        }
        if (getNestedClassNameList().size() > 0) {
            codedOutputStream.n0(58);
            codedOutputStream.n0(this.nestedClassNameMemoizedSerializedSize);
        }
        for (int i4 = 0; i4 < this.nestedClassName_.size(); i4++) {
            codedOutputStream.a0(this.nestedClassName_.get(i4).intValue());
        }
        for (int i5 = 0; i5 < this.constructor_.size(); i5++) {
            codedOutputStream.c0(8, this.constructor_.get(i5));
        }
        for (int i6 = 0; i6 < this.function_.size(); i6++) {
            codedOutputStream.c0(9, this.function_.get(i6));
        }
        for (int i7 = 0; i7 < this.property_.size(); i7++) {
            codedOutputStream.c0(10, this.property_.get(i7));
        }
        for (int i8 = 0; i8 < this.typeAlias_.size(); i8++) {
            codedOutputStream.c0(11, this.typeAlias_.get(i8));
        }
        for (int i9 = 0; i9 < this.enumEntry_.size(); i9++) {
            codedOutputStream.c0(13, this.enumEntry_.get(i9));
        }
        if (getSealedSubclassFqNameList().size() > 0) {
            codedOutputStream.n0(130);
            codedOutputStream.n0(this.sealedSubclassFqNameMemoizedSerializedSize);
        }
        for (int i10 = 0; i10 < this.sealedSubclassFqName_.size(); i10++) {
            codedOutputStream.a0(this.sealedSubclassFqName_.get(i10).intValue());
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.Z(17, this.inlineClassUnderlyingPropertyName_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.c0(18, this.inlineClassUnderlyingType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.Z(19, this.inlineClassUnderlyingTypeId_);
        }
        for (int i11 = 0; i11 < this.contextReceiverType_.size(); i11++) {
            codedOutputStream.c0(20, this.contextReceiverType_.get(i11));
        }
        if (getContextReceiverTypeIdList().size() > 0) {
            codedOutputStream.n0(170);
            codedOutputStream.n0(this.contextReceiverTypeIdMemoizedSerializedSize);
        }
        for (int i12 = 0; i12 < this.contextReceiverTypeId_.size(); i12++) {
            codedOutputStream.a0(this.contextReceiverTypeId_.get(i12).intValue());
        }
        if (getMultiFieldValueClassUnderlyingNameList().size() > 0) {
            codedOutputStream.n0(178);
            codedOutputStream.n0(this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize);
        }
        for (int i13 = 0; i13 < this.multiFieldValueClassUnderlyingName_.size(); i13++) {
            codedOutputStream.a0(this.multiFieldValueClassUnderlyingName_.get(i13).intValue());
        }
        for (int i14 = 0; i14 < this.multiFieldValueClassUnderlyingType_.size(); i14++) {
            codedOutputStream.c0(23, this.multiFieldValueClassUnderlyingType_.get(i14));
        }
        if (getMultiFieldValueClassUnderlyingTypeIdList().size() > 0) {
            codedOutputStream.n0(194);
            codedOutputStream.n0(this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize);
        }
        for (int i15 = 0; i15 < this.multiFieldValueClassUnderlyingTypeId_.size(); i15++) {
            codedOutputStream.a0(this.multiFieldValueClassUnderlyingTypeId_.get(i15).intValue());
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.c0(30, this.typeTable_);
        }
        for (int i16 = 0; i16 < this.versionRequirement_.size(); i16++) {
            codedOutputStream.Z(31, this.versionRequirement_.get(i16).intValue());
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.c0(32, this.versionRequirementTable_);
        }
        aVarNewExtensionWriter.a(19000, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Class protoBuf$Class) {
        return newBuilder().d(protoBuf$Class);
    }

    @Override
    public ProtoBuf$Class getDefaultInstanceForType() {
        return defaultInstance;
    }

    @Override
    public b newBuilderForType() {
        return newBuilder();
    }

    @Override
    public b toBuilder() {
        return newBuilder(this);
    }

    private ProtoBuf$Class(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$Class(boolean z) {
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ProtoBuf$Class(c cVar, d dVar) throws InvalidProtocolBufferException {
        boolean z;
        this.supertypeIdMemoizedSerializedSize = -1;
        this.nestedClassNameMemoizedSerializedSize = -1;
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.sealedSubclassFqNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingNameMemoizedSerializedSize = -1;
        this.multiFieldValueClassUnderlyingTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        po0.b bVarQ = po0.q();
        CodedOutputStream codedOutputStreamI = CodedOutputStream.I(bVarQ, 1);
        boolean z2 = false;
        int i = 0;
        while (!z2) {
            try {
                try {
                    int iJ = cVar.J();
                    switch (iJ) {
                        case 0:
                            z = true;
                            z2 = true;
                            continue;
                        case 8:
                            z = true;
                            this.bitField0_ |= 1;
                            this.flags_ = cVar.r();
                            continue;
                        case 16:
                            if ((i & 32) != 32) {
                                this.supertypeId_ = new ArrayList();
                                i |= 32;
                            }
                            this.supertypeId_.add(Integer.valueOf(cVar.r()));
                            break;
                        case 18:
                            int i2 = cVar.i(cVar.z());
                            if ((i & 32) != 32 && cVar.e() > 0) {
                                this.supertypeId_ = new ArrayList();
                                i |= 32;
                            }
                            while (cVar.e() > 0) {
                                this.supertypeId_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i2);
                            break;
                        case 24:
                            this.bitField0_ |= 2;
                            this.fqName_ = cVar.r();
                            break;
                        case 32:
                            this.bitField0_ |= 4;
                            this.companionObjectName_ = cVar.r();
                            break;
                        case 42:
                            if ((i & 8) != 8) {
                                this.typeParameter_ = new ArrayList();
                                i |= 8;
                            }
                            this.typeParameter_.add((ProtoBuf$TypeParameter) cVar.t(ProtoBuf$TypeParameter.PARSER, dVar));
                            break;
                        case 50:
                            if ((i & 16) != 16) {
                                this.supertype_ = new ArrayList();
                                i |= 16;
                            }
                            this.supertype_.add((ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar));
                            break;
                        case 56:
                            if ((i & 64) != 64) {
                                this.nestedClassName_ = new ArrayList();
                                i |= 64;
                            }
                            this.nestedClassName_.add(Integer.valueOf(cVar.r()));
                            break;
                        case 58:
                            int i3 = cVar.i(cVar.z());
                            if ((i & 64) != 64 && cVar.e() > 0) {
                                this.nestedClassName_ = new ArrayList();
                                i |= 64;
                            }
                            while (cVar.e() > 0) {
                                this.nestedClassName_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i3);
                            break;
                        case 66:
                            if ((i & 512) != 512) {
                                this.constructor_ = new ArrayList();
                                i |= 512;
                            }
                            this.constructor_.add((ProtoBuf$Constructor) cVar.t(ProtoBuf$Constructor.PARSER, dVar));
                            break;
                        case 74:
                            if ((i & 1024) != 1024) {
                                this.function_ = new ArrayList();
                                i |= 1024;
                            }
                            this.function_.add((ProtoBuf$Function) cVar.t(ProtoBuf$Function.PARSER, dVar));
                            break;
                        case 82:
                            if ((i & 2048) != 2048) {
                                this.property_ = new ArrayList();
                                i |= 2048;
                            }
                            this.property_.add((ProtoBuf$Property) cVar.t(ProtoBuf$Property.PARSER, dVar));
                            break;
                        case 90:
                            if ((i & 4096) != 4096) {
                                this.typeAlias_ = new ArrayList();
                                i |= 4096;
                            }
                            this.typeAlias_.add((ProtoBuf$TypeAlias) cVar.t(ProtoBuf$TypeAlias.PARSER, dVar));
                            break;
                        case 106:
                            if ((i & 8192) != 8192) {
                                this.enumEntry_ = new ArrayList();
                                i |= 8192;
                            }
                            this.enumEntry_.add((ProtoBuf$EnumEntry) cVar.t(ProtoBuf$EnumEntry.PARSER, dVar));
                            break;
                        case 128:
                            if ((i & 16384) != 16384) {
                                this.sealedSubclassFqName_ = new ArrayList();
                                i |= 16384;
                            }
                            this.sealedSubclassFqName_.add(Integer.valueOf(cVar.r()));
                            break;
                        case 130:
                            int i4 = cVar.i(cVar.z());
                            if ((i & 16384) != 16384 && cVar.e() > 0) {
                                this.sealedSubclassFqName_ = new ArrayList();
                                i |= 16384;
                            }
                            while (cVar.e() > 0) {
                                this.sealedSubclassFqName_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i4);
                            break;
                        case 136:
                            this.bitField0_ |= 8;
                            this.inlineClassUnderlyingPropertyName_ = cVar.r();
                            break;
                        case 146:
                            ProtoBuf$Type.b builder = (this.bitField0_ & 16) == 16 ? this.inlineClassUnderlyingType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar);
                            this.inlineClassUnderlyingType_ = protoBuf$Type;
                            if (builder != 0) {
                                builder.d(protoBuf$Type);
                                this.inlineClassUnderlyingType_ = builder.l();
                            }
                            this.bitField0_ |= 16;
                            break;
                        case 152:
                            this.bitField0_ |= 32;
                            this.inlineClassUnderlyingTypeId_ = cVar.r();
                            break;
                        case 162:
                            if ((i & 128) != 128) {
                                this.contextReceiverType_ = new ArrayList();
                                i |= 128;
                            }
                            this.contextReceiverType_.add((ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar));
                            break;
                        case ByteCode.JSR:
                            if ((i & 256) != 256) {
                                this.contextReceiverTypeId_ = new ArrayList();
                                i |= 256;
                            }
                            this.contextReceiverTypeId_.add(Integer.valueOf(cVar.r()));
                            break;
                        case 170:
                            int i5 = cVar.i(cVar.z());
                            if ((i & 256) != 256 && cVar.e() > 0) {
                                this.contextReceiverTypeId_ = new ArrayList();
                                i |= 256;
                            }
                            while (cVar.e() > 0) {
                                this.contextReceiverTypeId_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i5);
                            break;
                        case 176:
                            if ((i & 262144) != 262144) {
                                this.multiFieldValueClassUnderlyingName_ = new ArrayList();
                                i |= 262144;
                            }
                            this.multiFieldValueClassUnderlyingName_.add(Integer.valueOf(cVar.r()));
                            break;
                        case 178:
                            int i6 = cVar.i(cVar.z());
                            if ((i & 262144) != 262144 && cVar.e() > 0) {
                                this.multiFieldValueClassUnderlyingName_ = new ArrayList();
                                i |= 262144;
                            }
                            while (cVar.e() > 0) {
                                this.multiFieldValueClassUnderlyingName_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i6);
                            break;
                        case ByteCode.INVOKEDYNAMIC:
                            if ((i & 524288) != 524288) {
                                this.multiFieldValueClassUnderlyingType_ = new ArrayList();
                                i |= 524288;
                            }
                            this.multiFieldValueClassUnderlyingType_.add((ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar));
                            break;
                        case 192:
                            if ((i & 1048576) != 1048576) {
                                this.multiFieldValueClassUnderlyingTypeId_ = new ArrayList();
                                i |= 1048576;
                            }
                            this.multiFieldValueClassUnderlyingTypeId_.add(Integer.valueOf(cVar.r()));
                            break;
                        case 194:
                            int i7 = cVar.i(cVar.z());
                            if ((i & 1048576) != 1048576 && cVar.e() > 0) {
                                this.multiFieldValueClassUnderlyingTypeId_ = new ArrayList();
                                i |= 1048576;
                            }
                            while (cVar.e() > 0) {
                                this.multiFieldValueClassUnderlyingTypeId_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i7);
                            break;
                        case 242:
                            ProtoBuf$TypeTable.b builder2 = (this.bitField0_ & 64) == 64 ? this.typeTable_.toBuilder() : null;
                            ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) cVar.t(ProtoBuf$TypeTable.PARSER, dVar);
                            this.typeTable_ = protoBuf$TypeTable;
                            if (builder2 != 0) {
                                builder2.d(protoBuf$TypeTable);
                                this.typeTable_ = builder2.h();
                            }
                            this.bitField0_ |= 64;
                            break;
                        case 248:
                            if ((i & 4194304) != 4194304) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 4194304;
                            }
                            this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                            break;
                        case 250:
                            int i8 = cVar.i(cVar.z());
                            if ((i & 4194304) != 4194304 && cVar.e() > 0) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 4194304;
                            }
                            while (cVar.e() > 0) {
                                this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i8);
                            break;
                        case 258:
                            ProtoBuf$VersionRequirementTable.b builder3 = (this.bitField0_ & 128) == 128 ? this.versionRequirementTable_.toBuilder() : null;
                            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = (ProtoBuf$VersionRequirementTable) cVar.t(ProtoBuf$VersionRequirementTable.PARSER, dVar);
                            this.versionRequirementTable_ = protoBuf$VersionRequirementTable;
                            if (builder3 != 0) {
                                builder3.d(protoBuf$VersionRequirementTable);
                                this.versionRequirementTable_ = builder3.h();
                            }
                            this.bitField0_ |= 128;
                            break;
                        default:
                            if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                z2 = true;
                            }
                            break;
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 32) == 32) {
                        this.supertypeId_ = Collections.unmodifiableList(this.supertypeId_);
                    }
                    if ((i & 8) == 8) {
                        this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                    }
                    if ((i & 16) == 16) {
                        this.supertype_ = Collections.unmodifiableList(this.supertype_);
                    }
                    if ((i & 64) == 64) {
                        this.nestedClassName_ = Collections.unmodifiableList(this.nestedClassName_);
                    }
                    if ((i & 512) == 512) {
                        this.constructor_ = Collections.unmodifiableList(this.constructor_);
                    }
                    if ((i & 1024) == 1024) {
                        this.function_ = Collections.unmodifiableList(this.function_);
                    }
                    if ((i & 2048) == 2048) {
                        this.property_ = Collections.unmodifiableList(this.property_);
                    }
                    if ((i & 4096) == 4096) {
                        this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
                    }
                    if ((i & 8192) == 8192) {
                        this.enumEntry_ = Collections.unmodifiableList(this.enumEntry_);
                    }
                    if ((i & 16384) == 16384) {
                        this.sealedSubclassFqName_ = Collections.unmodifiableList(this.sealedSubclassFqName_);
                    }
                    if ((i & 128) == 128) {
                        this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
                    }
                    if ((i & 256) == 256) {
                        this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
                    }
                    if ((i & 262144) == 262144) {
                        this.multiFieldValueClassUnderlyingName_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingName_);
                    }
                    if ((i & 524288) == 524288) {
                        this.multiFieldValueClassUnderlyingType_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingType_);
                    }
                    if ((i & 1048576) == 1048576) {
                        this.multiFieldValueClassUnderlyingTypeId_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingTypeId_);
                    }
                    if ((i & 4194304) == 4194304) {
                        this.versionRequirement_ = Collections.unmodifiableList(this.versionRequirement_);
                    }
                    try {
                        codedOutputStreamI.H();
                    } catch (IOException unused) {
                    } finally {
                        this.unknownFields = bVarQ.g();
                    }
                    makeExtensionsImmutable();
                    throw th;
                }
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(this);
            } catch (IOException e2) {
                throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
            }
        }
        if ((i & 32) == 32) {
            this.supertypeId_ = Collections.unmodifiableList(this.supertypeId_);
        }
        if ((i & 8) == 8) {
            this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
        }
        if ((i & 16) == 16) {
            this.supertype_ = Collections.unmodifiableList(this.supertype_);
        }
        if ((i & 64) == 64) {
            this.nestedClassName_ = Collections.unmodifiableList(this.nestedClassName_);
        }
        if ((i & 512) == 512) {
            this.constructor_ = Collections.unmodifiableList(this.constructor_);
        }
        if ((i & 1024) == 1024) {
            this.function_ = Collections.unmodifiableList(this.function_);
        }
        if ((i & 2048) == 2048) {
            this.property_ = Collections.unmodifiableList(this.property_);
        }
        if ((i & 4096) == 4096) {
            this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
        }
        if ((i & 8192) == 8192) {
            this.enumEntry_ = Collections.unmodifiableList(this.enumEntry_);
        }
        if ((i & 16384) == 16384) {
            this.sealedSubclassFqName_ = Collections.unmodifiableList(this.sealedSubclassFqName_);
        }
        if ((i & 128) == 128) {
            this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
        }
        if ((i & 256) == 256) {
            this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
        }
        if ((i & 262144) == 262144) {
            this.multiFieldValueClassUnderlyingName_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingName_);
        }
        if ((i & 524288) == 524288) {
            this.multiFieldValueClassUnderlyingType_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingType_);
        }
        if ((i & 1048576) == 1048576) {
            this.multiFieldValueClassUnderlyingTypeId_ = Collections.unmodifiableList(this.multiFieldValueClassUnderlyingTypeId_);
        }
        if ((i & 4194304) == 4194304) {
            this.versionRequirement_ = Collections.unmodifiableList(this.versionRequirement_);
        }
        try {
            codedOutputStreamI.H();
        } catch (IOException unused2) {
        } finally {
            this.unknownFields = bVarQ.g();
        }
        makeExtensionsImmutable();
    }
}
