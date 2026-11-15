package kotlin.reflect.jvm.internal.impl.metadata;

import defpackage.cx7;
import defpackage.po0;
import defpackage.un6;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.c;
import kotlin.reflect.jvm.internal.impl.protobuf.d;

public final class ProtoBuf$Property extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Property> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$Property defaultInstance;
    private int bitField0_;
    private int contextReceiverTypeIdMemoizedSerializedSize;
    private List<Integer> contextReceiverTypeId_;
    private List<ProtoBuf$Type> contextReceiverType_;
    private int flags_;
    private int getterFlags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private int oldFlags_;
    private int receiverTypeId_;
    private ProtoBuf$Type receiverType_;
    private int returnTypeId_;
    private ProtoBuf$Type returnType_;
    private int setterFlags_;
    private ProtoBuf$ValueParameter setterValueParameter_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private final po0 unknownFields;
    private List<Integer> versionRequirement_;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$Property c(c cVar, d dVar) {
            return new ProtoBuf$Property(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public int h;
        public int j;
        public int m;
        public int q;
        public int r;
        public int f = 518;
        public int g = 2054;
        public ProtoBuf$Type i = ProtoBuf$Type.getDefaultInstance();
        public List k = Collections.emptyList();
        public ProtoBuf$Type l = ProtoBuf$Type.getDefaultInstance();
        public List n = Collections.emptyList();
        public List o = Collections.emptyList();
        public ProtoBuf$ValueParameter p = ProtoBuf$ValueParameter.getDefaultInstance();
        public List s = Collections.emptyList();

        public b() {
            s();
        }

        public static b n() {
            return new b();
        }

        private void o() {
            if ((this.e & 512) != 512) {
                this.o = new ArrayList(this.o);
                this.e |= 512;
            }
        }

        private void p() {
            if ((this.e & 256) != 256) {
                this.n = new ArrayList(this.n);
                this.e |= 256;
            }
        }

        private void q() {
            if ((this.e & 32) != 32) {
                this.k = new ArrayList(this.k);
                this.e |= 32;
            }
        }

        private void r() {
            if ((this.e & 8192) != 8192) {
                this.s = new ArrayList(this.s);
                this.e |= 8192;
            }
        }

        private void s() {
        }

        public b A(int i) {
            this.e |= 4;
            this.h = i;
            return this;
        }

        public b B(int i) {
            this.e |= 2;
            this.g = i;
            return this;
        }

        public b C(int i) {
            this.e |= 128;
            this.m = i;
            return this;
        }

        public b E(int i) {
            this.e |= 16;
            this.j = i;
            return this;
        }

        public b F(int i) {
            this.e |= 4096;
            this.r = i;
            return this;
        }

        @Override
        public ProtoBuf$Property build() {
            ProtoBuf$Property protoBuf$PropertyL = l();
            if (protoBuf$PropertyL.isInitialized()) {
                return protoBuf$PropertyL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$PropertyL);
        }

        public ProtoBuf$Property l() {
            ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(this);
            int i = this.e;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Property.flags_ = this.f;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Property.oldFlags_ = this.g;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Property.name_ = this.h;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Property.returnType_ = this.i;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Property.returnTypeId_ = this.j;
            if ((this.e & 32) == 32) {
                this.k = Collections.unmodifiableList(this.k);
                this.e &= -33;
            }
            protoBuf$Property.typeParameter_ = this.k;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Property.receiverType_ = this.l;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Property.receiverTypeId_ = this.m;
            if ((this.e & 256) == 256) {
                this.n = Collections.unmodifiableList(this.n);
                this.e &= -257;
            }
            protoBuf$Property.contextReceiverType_ = this.n;
            if ((this.e & 512) == 512) {
                this.o = Collections.unmodifiableList(this.o);
                this.e &= -513;
            }
            protoBuf$Property.contextReceiverTypeId_ = this.o;
            if ((i & 1024) == 1024) {
                i2 |= 128;
            }
            protoBuf$Property.setterValueParameter_ = this.p;
            if ((i & 2048) == 2048) {
                i2 |= 256;
            }
            protoBuf$Property.getterFlags_ = this.q;
            if ((i & 4096) == 4096) {
                i2 |= 512;
            }
            protoBuf$Property.setterFlags_ = this.r;
            if ((this.e & 8192) == 8192) {
                this.s = Collections.unmodifiableList(this.s);
                this.e &= -8193;
            }
            protoBuf$Property.versionRequirement_ = this.s;
            protoBuf$Property.bitField0_ = i2;
            return protoBuf$Property;
        }

        public b clone() {
            return n().d(l());
        }

        @Override
        public b d(ProtoBuf$Property protoBuf$Property) {
            if (protoBuf$Property == ProtoBuf$Property.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Property.hasFlags()) {
                y(protoBuf$Property.getFlags());
            }
            if (protoBuf$Property.hasOldFlags()) {
                B(protoBuf$Property.getOldFlags());
            }
            if (protoBuf$Property.hasName()) {
                A(protoBuf$Property.getName());
            }
            if (protoBuf$Property.hasReturnType()) {
                w(protoBuf$Property.getReturnType());
            }
            if (protoBuf$Property.hasReturnTypeId()) {
                E(protoBuf$Property.getReturnTypeId());
            }
            if (!protoBuf$Property.typeParameter_.isEmpty()) {
                if (this.k.isEmpty()) {
                    this.k = protoBuf$Property.typeParameter_;
                    this.e &= -33;
                } else {
                    q();
                    this.k.addAll(protoBuf$Property.typeParameter_);
                }
            }
            if (protoBuf$Property.hasReceiverType()) {
                v(protoBuf$Property.getReceiverType());
            }
            if (protoBuf$Property.hasReceiverTypeId()) {
                C(protoBuf$Property.getReceiverTypeId());
            }
            if (!protoBuf$Property.contextReceiverType_.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$Property.contextReceiverType_;
                    this.e &= -257;
                } else {
                    p();
                    this.n.addAll(protoBuf$Property.contextReceiverType_);
                }
            }
            if (!protoBuf$Property.contextReceiverTypeId_.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Property.contextReceiverTypeId_;
                    this.e &= -513;
                } else {
                    o();
                    this.o.addAll(protoBuf$Property.contextReceiverTypeId_);
                }
            }
            if (protoBuf$Property.hasSetterValueParameter()) {
                x(protoBuf$Property.getSetterValueParameter());
            }
            if (protoBuf$Property.hasGetterFlags()) {
                z(protoBuf$Property.getGetterFlags());
            }
            if (protoBuf$Property.hasSetterFlags()) {
                F(protoBuf$Property.getSetterFlags());
            }
            if (!protoBuf$Property.versionRequirement_.isEmpty()) {
                if (this.s.isEmpty()) {
                    this.s = protoBuf$Property.versionRequirement_;
                    this.e &= -8193;
                } else {
                    r();
                    this.s.addAll(protoBuf$Property.versionRequirement_);
                }
            }
            i(protoBuf$Property);
            e(c().c(protoBuf$Property.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$Property protoBuf$Property = null;
            try {
                try {
                    ProtoBuf$Property protoBuf$Property2 = (ProtoBuf$Property) ProtoBuf$Property.PARSER.c(cVar, dVar);
                    if (protoBuf$Property2 != null) {
                        d(protoBuf$Property2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$Property protoBuf$Property3 = (ProtoBuf$Property) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Property = protoBuf$Property3;
                        if (protoBuf$Property != null) {
                            d(protoBuf$Property);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Property != null) {
                    d(protoBuf$Property);
                }
                throw th;
            }
        }

        public b v(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 64) != 64 || this.l == ProtoBuf$Type.getDefaultInstance()) {
                this.l = protoBuf$Type;
            } else {
                this.l = ProtoBuf$Type.newBuilder(this.l).d(protoBuf$Type).l();
            }
            this.e |= 64;
            return this;
        }

        public b w(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 8) != 8 || this.i == ProtoBuf$Type.getDefaultInstance()) {
                this.i = protoBuf$Type;
            } else {
                this.i = ProtoBuf$Type.newBuilder(this.i).d(protoBuf$Type).l();
            }
            this.e |= 8;
            return this;
        }

        public b x(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            if ((this.e & 1024) != 1024 || this.p == ProtoBuf$ValueParameter.getDefaultInstance()) {
                this.p = protoBuf$ValueParameter;
            } else {
                this.p = ProtoBuf$ValueParameter.newBuilder(this.p).d(protoBuf$ValueParameter).l();
            }
            this.e |= 1024;
            return this;
        }

        public b y(int i) {
            this.e |= 1;
            this.f = i;
            return this;
        }

        public b z(int i) {
            this.e |= 2048;
            this.q = i;
            return this;
        }
    }

    static {
        ProtoBuf$Property protoBuf$Property = new ProtoBuf$Property(true);
        defaultInstance = protoBuf$Property;
        protoBuf$Property.initFields();
    }

    public static ProtoBuf$Property getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 518;
        this.oldFlags_ = 2054;
        this.name_ = 0;
        this.returnType_ = ProtoBuf$Type.getDefaultInstance();
        this.returnTypeId_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.receiverType_ = ProtoBuf$Type.getDefaultInstance();
        this.receiverTypeId_ = 0;
        this.contextReceiverType_ = Collections.emptyList();
        this.contextReceiverTypeId_ = Collections.emptyList();
        this.setterValueParameter_ = ProtoBuf$ValueParameter.getDefaultInstance();
        this.getterFlags_ = 0;
        this.setterFlags_ = 0;
        this.versionRequirement_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.n();
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

    public int getFlags() {
        return this.flags_;
    }

    public int getGetterFlags() {
        return this.getterFlags_;
    }

    public int getName() {
        return this.name_;
    }

    public int getOldFlags() {
        return this.oldFlags_;
    }

    @Override
    public cx7 getParserForType() {
        return PARSER;
    }

    public ProtoBuf$Type getReceiverType() {
        return this.receiverType_;
    }

    public int getReceiverTypeId() {
        return this.receiverTypeId_;
    }

    public ProtoBuf$Type getReturnType() {
        return this.returnType_;
    }

    public int getReturnTypeId() {
        return this.returnTypeId_;
    }

    @Override
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 2) == 2 ? CodedOutputStream.o(1, this.oldFlags_) : 0;
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.o(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.r(3, this.returnType_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            iO += CodedOutputStream.r(4, this.typeParameter_.get(i2));
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.r(5, this.receiverType_);
        }
        if ((this.bitField0_ & 128) == 128) {
            iO += CodedOutputStream.r(6, this.setterValueParameter_);
        }
        if ((this.bitField0_ & 256) == 256) {
            iO += CodedOutputStream.o(7, this.getterFlags_);
        }
        if ((this.bitField0_ & 512) == 512) {
            iO += CodedOutputStream.o(8, this.setterFlags_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(9, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            iO += CodedOutputStream.o(10, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            iO += CodedOutputStream.o(11, this.flags_);
        }
        for (int i3 = 0; i3 < this.contextReceiverType_.size(); i3++) {
            iO += CodedOutputStream.r(12, this.contextReceiverType_.get(i3));
        }
        int iP = 0;
        for (int i4 = 0; i4 < this.contextReceiverTypeId_.size(); i4++) {
            iP += CodedOutputStream.p(this.contextReceiverTypeId_.get(i4).intValue());
        }
        int iP2 = iO + iP;
        if (!getContextReceiverTypeIdList().isEmpty()) {
            iP2 = iP2 + 1 + CodedOutputStream.p(iP);
        }
        this.contextReceiverTypeIdMemoizedSerializedSize = iP;
        int iP3 = 0;
        for (int i5 = 0; i5 < this.versionRequirement_.size(); i5++) {
            iP3 += CodedOutputStream.p(this.versionRequirement_.get(i5).intValue());
        }
        int size = iP2 + iP3 + (getVersionRequirementList().size() * 2) + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public int getSetterFlags() {
        return this.setterFlags_;
    }

    public ProtoBuf$ValueParameter getSetterValueParameter() {
        return this.setterValueParameter_;
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

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasGetterFlags() {
        return (this.bitField0_ & 256) == 256;
    }

    public boolean hasName() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasOldFlags() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasReceiverType() {
        return (this.bitField0_ & 32) == 32;
    }

    public boolean hasReceiverTypeId() {
        return (this.bitField0_ & 64) == 64;
    }

    public boolean hasReturnType() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasReturnTypeId() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasSetterFlags() {
        return (this.bitField0_ & 512) == 512;
    }

    public boolean hasSetterValueParameter() {
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
        if (!hasName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasReturnType() && !getReturnType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getTypeParameterCount(); i++) {
            if (!getTypeParameter(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasReceiverType() && !getReceiverType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < getContextReceiverTypeCount(); i2++) {
            if (!getContextReceiverType(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasSetterValueParameter() && !getSetterValueParameter().isInitialized()) {
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
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.Z(1, this.oldFlags_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.Z(2, this.name_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.c0(3, this.returnType_);
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            codedOutputStream.c0(4, this.typeParameter_.get(i));
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.c0(5, this.receiverType_);
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.c0(6, this.setterValueParameter_);
        }
        if ((this.bitField0_ & 256) == 256) {
            codedOutputStream.Z(7, this.getterFlags_);
        }
        if ((this.bitField0_ & 512) == 512) {
            codedOutputStream.Z(8, this.setterFlags_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.Z(9, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.Z(10, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.Z(11, this.flags_);
        }
        for (int i2 = 0; i2 < this.contextReceiverType_.size(); i2++) {
            codedOutputStream.c0(12, this.contextReceiverType_.get(i2));
        }
        if (getContextReceiverTypeIdList().size() > 0) {
            codedOutputStream.n0(106);
            codedOutputStream.n0(this.contextReceiverTypeIdMemoizedSerializedSize);
        }
        for (int i3 = 0; i3 < this.contextReceiverTypeId_.size(); i3++) {
            codedOutputStream.a0(this.contextReceiverTypeId_.get(i3).intValue());
        }
        for (int i4 = 0; i4 < this.versionRequirement_.size(); i4++) {
            codedOutputStream.Z(31, this.versionRequirement_.get(i4).intValue());
        }
        aVarNewExtensionWriter.a(19000, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Property protoBuf$Property) {
        return newBuilder().d(protoBuf$Property);
    }

    @Override
    public ProtoBuf$Property getDefaultInstanceForType() {
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

    private ProtoBuf$Property(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$Property(boolean z) {
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$Property(c cVar, d dVar) throws InvalidProtocolBufferException {
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        po0.b bVarQ = po0.q();
        CodedOutputStream codedOutputStreamI = CodedOutputStream.I(bVarQ, 1);
        boolean z = false;
        int i = 0;
        while (!z) {
            try {
                try {
                    int iJ = cVar.J();
                    switch (iJ) {
                        case 0:
                            break;
                        case 8:
                            this.bitField0_ |= 2;
                            this.oldFlags_ = cVar.r();
                            continue;
                        case 16:
                            this.bitField0_ |= 4;
                            this.name_ = cVar.r();
                            continue;
                        case 26:
                            ProtoBuf$Type.b builder = (this.bitField0_ & 8) == 8 ? this.returnType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar);
                            this.returnType_ = protoBuf$Type;
                            if (builder != null) {
                                builder.d(protoBuf$Type);
                                this.returnType_ = builder.l();
                            }
                            this.bitField0_ |= 8;
                            continue;
                        case 34:
                            int i2 = (i == true ? 1 : 0) & 32;
                            i = i;
                            if (i2 != 32) {
                                this.typeParameter_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 32;
                            }
                            this.typeParameter_.add((ProtoBuf$TypeParameter) cVar.t(ProtoBuf$TypeParameter.PARSER, dVar));
                            continue;
                        case 42:
                            ProtoBuf$Type.b builder2 = (this.bitField0_ & 32) == 32 ? this.receiverType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar);
                            this.receiverType_ = protoBuf$Type2;
                            if (builder2 != null) {
                                builder2.d(protoBuf$Type2);
                                this.receiverType_ = builder2.l();
                            }
                            this.bitField0_ |= 32;
                            continue;
                        case 50:
                            ProtoBuf$ValueParameter.b builder3 = (this.bitField0_ & 128) == 128 ? this.setterValueParameter_.toBuilder() : null;
                            ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) cVar.t(ProtoBuf$ValueParameter.PARSER, dVar);
                            this.setterValueParameter_ = protoBuf$ValueParameter;
                            if (builder3 != null) {
                                builder3.d(protoBuf$ValueParameter);
                                this.setterValueParameter_ = builder3.l();
                            }
                            this.bitField0_ |= 128;
                            continue;
                        case 56:
                            this.bitField0_ |= 256;
                            this.getterFlags_ = cVar.r();
                            continue;
                        case 64:
                            this.bitField0_ |= 512;
                            this.setterFlags_ = cVar.r();
                            continue;
                        case 72:
                            this.bitField0_ |= 16;
                            this.returnTypeId_ = cVar.r();
                            continue;
                        case 80:
                            this.bitField0_ |= 64;
                            this.receiverTypeId_ = cVar.r();
                            continue;
                        case 88:
                            this.bitField0_ |= 1;
                            this.flags_ = cVar.r();
                            continue;
                        case 98:
                            int i3 = (i == true ? 1 : 0) & 256;
                            i = i;
                            if (i3 != 256) {
                                this.contextReceiverType_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 256;
                            }
                            this.contextReceiverType_.add((ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar));
                            continue;
                        case 104:
                            int i4 = (i == true ? 1 : 0) & 512;
                            i = i;
                            if (i4 != 512) {
                                this.contextReceiverTypeId_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 512;
                            }
                            this.contextReceiverTypeId_.add(Integer.valueOf(cVar.r()));
                            continue;
                        case 106:
                            int i5 = cVar.i(cVar.z());
                            int i6 = (i == true ? 1 : 0) & 512;
                            i = i;
                            if (i6 != 512 && cVar.e() > 0) {
                                i = i;
                                this.contextReceiverTypeId_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 512;
                            }
                            i = i;
                            while (cVar.e() > 0) {
                                this.contextReceiverTypeId_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i5);
                            continue;
                        case 248:
                            int i7 = (i == true ? 1 : 0) & 8192;
                            i = i;
                            if (i7 != 8192) {
                                this.versionRequirement_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 8192;
                            }
                            this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                            continue;
                        case 250:
                            int i8 = cVar.i(cVar.z());
                            int i9 = (i == true ? 1 : 0) & 8192;
                            i = i;
                            if (i9 != 8192 && cVar.e() > 0) {
                                i = i;
                                this.versionRequirement_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 8192;
                            }
                            i = i;
                            while (cVar.e() > 0) {
                                this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i8);
                            continue;
                        default:
                            if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                break;
                            }
                            break;
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if (((i == true ? 1 : 0) & 32) == 32) {
                    this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                }
                if (((i == true ? 1 : 0) & 256) == 256) {
                    this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
                }
                if (((i == true ? 1 : 0) & 512) == 512) {
                    this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if (((i == true ? 1 : 0) & 8192) == 8192) {
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
        }
        if (((i == true ? 1 : 0) & 32) == 32) {
            this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
        }
        if (((i == true ? 1 : 0) & 256) == 256) {
            this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
        }
        if (((i == true ? 1 : 0) & 512) == 512) {
            this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
        }
        if (((i == true ? 1 : 0) & 8192) == 8192) {
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
