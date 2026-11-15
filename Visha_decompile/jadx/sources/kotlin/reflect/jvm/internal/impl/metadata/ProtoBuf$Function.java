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

public final class ProtoBuf$Function extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Function> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$Function defaultInstance;
    private int bitField0_;
    private int contextReceiverTypeIdMemoizedSerializedSize;
    private List<Integer> contextReceiverTypeId_;
    private List<ProtoBuf$Type> contextReceiverType_;
    private ProtoBuf$Contract contract_;
    private int flags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private int oldFlags_;
    private int receiverTypeId_;
    private ProtoBuf$Type receiverType_;
    private int returnTypeId_;
    private ProtoBuf$Type returnType_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private ProtoBuf$TypeTable typeTable_;
    private final po0 unknownFields;
    private List<ProtoBuf$ValueParameter> valueParameter_;
    private List<Integer> versionRequirement_;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$Function c(c cVar, d dVar) {
            return new ProtoBuf$Function(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public int h;
        public int j;
        public int m;
        public int f = 6;
        public int g = 6;
        public ProtoBuf$Type i = ProtoBuf$Type.getDefaultInstance();
        public List k = Collections.emptyList();
        public ProtoBuf$Type l = ProtoBuf$Type.getDefaultInstance();
        public List n = Collections.emptyList();
        public List o = Collections.emptyList();
        public List p = Collections.emptyList();
        public ProtoBuf$TypeTable q = ProtoBuf$TypeTable.getDefaultInstance();
        public List r = Collections.emptyList();
        public ProtoBuf$Contract s = ProtoBuf$Contract.getDefaultInstance();

        public b() {
            t();
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
            if ((this.e & 1024) != 1024) {
                this.p = new ArrayList(this.p);
                this.e |= 1024;
            }
        }

        private void s() {
            if ((this.e & 4096) != 4096) {
                this.r = new ArrayList(this.r);
                this.e |= 4096;
            }
        }

        private void t() {
        }

        public b A(int i) {
            this.e |= 1;
            this.f = i;
            return this;
        }

        public b B(int i) {
            this.e |= 4;
            this.h = i;
            return this;
        }

        public b C(int i) {
            this.e |= 2;
            this.g = i;
            return this;
        }

        public b E(int i) {
            this.e |= 128;
            this.m = i;
            return this;
        }

        public b F(int i) {
            this.e |= 16;
            this.j = i;
            return this;
        }

        @Override
        public ProtoBuf$Function build() {
            ProtoBuf$Function protoBuf$FunctionL = l();
            if (protoBuf$FunctionL.isInitialized()) {
                return protoBuf$FunctionL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$FunctionL);
        }

        public ProtoBuf$Function l() {
            ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function(this);
            int i = this.e;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Function.flags_ = this.f;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Function.oldFlags_ = this.g;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Function.name_ = this.h;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Function.returnType_ = this.i;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Function.returnTypeId_ = this.j;
            if ((this.e & 32) == 32) {
                this.k = Collections.unmodifiableList(this.k);
                this.e &= -33;
            }
            protoBuf$Function.typeParameter_ = this.k;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Function.receiverType_ = this.l;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Function.receiverTypeId_ = this.m;
            if ((this.e & 256) == 256) {
                this.n = Collections.unmodifiableList(this.n);
                this.e &= -257;
            }
            protoBuf$Function.contextReceiverType_ = this.n;
            if ((this.e & 512) == 512) {
                this.o = Collections.unmodifiableList(this.o);
                this.e &= -513;
            }
            protoBuf$Function.contextReceiverTypeId_ = this.o;
            if ((this.e & 1024) == 1024) {
                this.p = Collections.unmodifiableList(this.p);
                this.e &= -1025;
            }
            protoBuf$Function.valueParameter_ = this.p;
            if ((i & 2048) == 2048) {
                i2 |= 128;
            }
            protoBuf$Function.typeTable_ = this.q;
            if ((this.e & 4096) == 4096) {
                this.r = Collections.unmodifiableList(this.r);
                this.e &= -4097;
            }
            protoBuf$Function.versionRequirement_ = this.r;
            if ((i & 8192) == 8192) {
                i2 |= 256;
            }
            protoBuf$Function.contract_ = this.s;
            protoBuf$Function.bitField0_ = i2;
            return protoBuf$Function;
        }

        public b clone() {
            return n().d(l());
        }

        public b u(ProtoBuf$Contract protoBuf$Contract) {
            if ((this.e & 8192) != 8192 || this.s == ProtoBuf$Contract.getDefaultInstance()) {
                this.s = protoBuf$Contract;
            } else {
                this.s = ProtoBuf$Contract.newBuilder(this.s).d(protoBuf$Contract).h();
            }
            this.e |= 8192;
            return this;
        }

        @Override
        public b d(ProtoBuf$Function protoBuf$Function) {
            if (protoBuf$Function == ProtoBuf$Function.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Function.hasFlags()) {
                A(protoBuf$Function.getFlags());
            }
            if (protoBuf$Function.hasOldFlags()) {
                C(protoBuf$Function.getOldFlags());
            }
            if (protoBuf$Function.hasName()) {
                B(protoBuf$Function.getName());
            }
            if (protoBuf$Function.hasReturnType()) {
                y(protoBuf$Function.getReturnType());
            }
            if (protoBuf$Function.hasReturnTypeId()) {
                F(protoBuf$Function.getReturnTypeId());
            }
            if (!protoBuf$Function.typeParameter_.isEmpty()) {
                if (this.k.isEmpty()) {
                    this.k = protoBuf$Function.typeParameter_;
                    this.e &= -33;
                } else {
                    q();
                    this.k.addAll(protoBuf$Function.typeParameter_);
                }
            }
            if (protoBuf$Function.hasReceiverType()) {
                x(protoBuf$Function.getReceiverType());
            }
            if (protoBuf$Function.hasReceiverTypeId()) {
                E(protoBuf$Function.getReceiverTypeId());
            }
            if (!protoBuf$Function.contextReceiverType_.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$Function.contextReceiverType_;
                    this.e &= -257;
                } else {
                    p();
                    this.n.addAll(protoBuf$Function.contextReceiverType_);
                }
            }
            if (!protoBuf$Function.contextReceiverTypeId_.isEmpty()) {
                if (this.o.isEmpty()) {
                    this.o = protoBuf$Function.contextReceiverTypeId_;
                    this.e &= -513;
                } else {
                    o();
                    this.o.addAll(protoBuf$Function.contextReceiverTypeId_);
                }
            }
            if (!protoBuf$Function.valueParameter_.isEmpty()) {
                if (this.p.isEmpty()) {
                    this.p = protoBuf$Function.valueParameter_;
                    this.e &= -1025;
                } else {
                    r();
                    this.p.addAll(protoBuf$Function.valueParameter_);
                }
            }
            if (protoBuf$Function.hasTypeTable()) {
                z(protoBuf$Function.getTypeTable());
            }
            if (!protoBuf$Function.versionRequirement_.isEmpty()) {
                if (this.r.isEmpty()) {
                    this.r = protoBuf$Function.versionRequirement_;
                    this.e &= -4097;
                } else {
                    s();
                    this.r.addAll(protoBuf$Function.versionRequirement_);
                }
            }
            if (protoBuf$Function.hasContract()) {
                u(protoBuf$Function.getContract());
            }
            i(protoBuf$Function);
            e(c().c(protoBuf$Function.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$Function protoBuf$Function = null;
            try {
                try {
                    ProtoBuf$Function protoBuf$Function2 = (ProtoBuf$Function) ProtoBuf$Function.PARSER.c(cVar, dVar);
                    if (protoBuf$Function2 != null) {
                        d(protoBuf$Function2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$Function protoBuf$Function3 = (ProtoBuf$Function) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Function = protoBuf$Function3;
                        if (protoBuf$Function != null) {
                            d(protoBuf$Function);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Function != null) {
                    d(protoBuf$Function);
                }
                throw th;
            }
        }

        public b x(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 64) != 64 || this.l == ProtoBuf$Type.getDefaultInstance()) {
                this.l = protoBuf$Type;
            } else {
                this.l = ProtoBuf$Type.newBuilder(this.l).d(protoBuf$Type).l();
            }
            this.e |= 64;
            return this;
        }

        public b y(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 8) != 8 || this.i == ProtoBuf$Type.getDefaultInstance()) {
                this.i = protoBuf$Type;
            } else {
                this.i = ProtoBuf$Type.newBuilder(this.i).d(protoBuf$Type).l();
            }
            this.e |= 8;
            return this;
        }

        public b z(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.e & 2048) != 2048 || this.q == ProtoBuf$TypeTable.getDefaultInstance()) {
                this.q = protoBuf$TypeTable;
            } else {
                this.q = ProtoBuf$TypeTable.newBuilder(this.q).d(protoBuf$TypeTable).h();
            }
            this.e |= 2048;
            return this;
        }
    }

    static {
        ProtoBuf$Function protoBuf$Function = new ProtoBuf$Function(true);
        defaultInstance = protoBuf$Function;
        protoBuf$Function.initFields();
    }

    public static ProtoBuf$Function getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 6;
        this.oldFlags_ = 6;
        this.name_ = 0;
        this.returnType_ = ProtoBuf$Type.getDefaultInstance();
        this.returnTypeId_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.receiverType_ = ProtoBuf$Type.getDefaultInstance();
        this.receiverTypeId_ = 0;
        this.contextReceiverType_ = Collections.emptyList();
        this.contextReceiverTypeId_ = Collections.emptyList();
        this.valueParameter_ = Collections.emptyList();
        this.typeTable_ = ProtoBuf$TypeTable.getDefaultInstance();
        this.versionRequirement_ = Collections.emptyList();
        this.contract_ = ProtoBuf$Contract.getDefaultInstance();
    }

    public static b newBuilder() {
        return b.n();
    }

    public static ProtoBuf$Function parseFrom(InputStream inputStream, d dVar) throws IOException {
        return (ProtoBuf$Function) PARSER.b(inputStream, dVar);
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

    public ProtoBuf$Contract getContract() {
        return this.contract_;
    }

    public int getFlags() {
        return this.flags_;
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
        for (int i3 = 0; i3 < this.valueParameter_.size(); i3++) {
            iO += CodedOutputStream.r(6, this.valueParameter_.get(i3));
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(7, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            iO += CodedOutputStream.o(8, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            iO += CodedOutputStream.o(9, this.flags_);
        }
        for (int i4 = 0; i4 < this.contextReceiverType_.size(); i4++) {
            iO += CodedOutputStream.r(10, this.contextReceiverType_.get(i4));
        }
        int iP = 0;
        for (int i5 = 0; i5 < this.contextReceiverTypeId_.size(); i5++) {
            iP += CodedOutputStream.p(this.contextReceiverTypeId_.get(i5).intValue());
        }
        int iR = iO + iP;
        if (!getContextReceiverTypeIdList().isEmpty()) {
            iR = iR + 1 + CodedOutputStream.p(iP);
        }
        this.contextReceiverTypeIdMemoizedSerializedSize = iP;
        if ((this.bitField0_ & 128) == 128) {
            iR += CodedOutputStream.r(30, this.typeTable_);
        }
        int iP2 = 0;
        for (int i6 = 0; i6 < this.versionRequirement_.size(); i6++) {
            iP2 += CodedOutputStream.p(this.versionRequirement_.get(i6).intValue());
        }
        int size = iR + iP2 + (getVersionRequirementList().size() * 2);
        if ((this.bitField0_ & 256) == 256) {
            size += CodedOutputStream.r(32, this.contract_);
        }
        int iExtensionsSerializedSize = size + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
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

    public ProtoBuf$ValueParameter getValueParameter(int i) {
        return this.valueParameter_.get(i);
    }

    public int getValueParameterCount() {
        return this.valueParameter_.size();
    }

    public List<ProtoBuf$ValueParameter> getValueParameterList() {
        return this.valueParameter_;
    }

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    public boolean hasContract() {
        return (this.bitField0_ & 256) == 256;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
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

    public boolean hasTypeTable() {
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
        for (int i3 = 0; i3 < getValueParameterCount(); i3++) {
            if (!getValueParameter(i3).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasTypeTable() && !getTypeTable().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasContract() && !getContract().isInitialized()) {
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
        for (int i2 = 0; i2 < this.valueParameter_.size(); i2++) {
            codedOutputStream.c0(6, this.valueParameter_.get(i2));
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.Z(7, this.returnTypeId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.Z(8, this.receiverTypeId_);
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.Z(9, this.flags_);
        }
        for (int i3 = 0; i3 < this.contextReceiverType_.size(); i3++) {
            codedOutputStream.c0(10, this.contextReceiverType_.get(i3));
        }
        if (getContextReceiverTypeIdList().size() > 0) {
            codedOutputStream.n0(90);
            codedOutputStream.n0(this.contextReceiverTypeIdMemoizedSerializedSize);
        }
        for (int i4 = 0; i4 < this.contextReceiverTypeId_.size(); i4++) {
            codedOutputStream.a0(this.contextReceiverTypeId_.get(i4).intValue());
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.c0(30, this.typeTable_);
        }
        for (int i5 = 0; i5 < this.versionRequirement_.size(); i5++) {
            codedOutputStream.Z(31, this.versionRequirement_.get(i5).intValue());
        }
        if ((this.bitField0_ & 256) == 256) {
            codedOutputStream.c0(32, this.contract_);
        }
        aVarNewExtensionWriter.a(19000, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Function protoBuf$Function) {
        return newBuilder().d(protoBuf$Function);
    }

    @Override
    public ProtoBuf$Function getDefaultInstanceForType() {
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

    private ProtoBuf$Function(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$Function(boolean z) {
        this.contextReceiverTypeIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$Function(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                            int i3 = (i == true ? 1 : 0) & 1024;
                            i = i;
                            if (i3 != 1024) {
                                this.valueParameter_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 1024;
                            }
                            this.valueParameter_.add((ProtoBuf$ValueParameter) cVar.t(ProtoBuf$ValueParameter.PARSER, dVar));
                            continue;
                        case 56:
                            this.bitField0_ |= 16;
                            this.returnTypeId_ = cVar.r();
                            continue;
                        case 64:
                            this.bitField0_ |= 64;
                            this.receiverTypeId_ = cVar.r();
                            continue;
                        case 72:
                            this.bitField0_ |= 1;
                            this.flags_ = cVar.r();
                            continue;
                        case 82:
                            int i4 = (i == true ? 1 : 0) & 256;
                            i = i;
                            if (i4 != 256) {
                                this.contextReceiverType_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 256;
                            }
                            this.contextReceiverType_.add((ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar));
                            continue;
                        case 88:
                            int i5 = (i == true ? 1 : 0) & 512;
                            i = i;
                            if (i5 != 512) {
                                this.contextReceiverTypeId_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 512;
                            }
                            this.contextReceiverTypeId_.add(Integer.valueOf(cVar.r()));
                            continue;
                        case 90:
                            int i6 = cVar.i(cVar.z());
                            int i7 = (i == true ? 1 : 0) & 512;
                            i = i;
                            if (i7 != 512 && cVar.e() > 0) {
                                i = i;
                                this.contextReceiverTypeId_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 512;
                            }
                            i = i;
                            while (cVar.e() > 0) {
                                this.contextReceiverTypeId_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i6);
                            continue;
                        case 242:
                            ProtoBuf$TypeTable.b builder3 = (this.bitField0_ & 128) == 128 ? this.typeTable_.toBuilder() : null;
                            ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) cVar.t(ProtoBuf$TypeTable.PARSER, dVar);
                            this.typeTable_ = protoBuf$TypeTable;
                            if (builder3 != null) {
                                builder3.d(protoBuf$TypeTable);
                                this.typeTable_ = builder3.h();
                            }
                            this.bitField0_ |= 128;
                            continue;
                        case 248:
                            int i8 = (i == true ? 1 : 0) & 4096;
                            i = i;
                            if (i8 != 4096) {
                                this.versionRequirement_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 4096;
                            }
                            this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                            continue;
                        case 250:
                            int i9 = cVar.i(cVar.z());
                            int i10 = (i == true ? 1 : 0) & 4096;
                            i = i;
                            if (i10 != 4096 && cVar.e() > 0) {
                                i = i;
                                this.versionRequirement_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 4096;
                            }
                            i = i;
                            while (cVar.e() > 0) {
                                this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i9);
                            continue;
                        case 258:
                            ProtoBuf$Contract.b builder4 = (this.bitField0_ & 256) == 256 ? this.contract_.toBuilder() : null;
                            ProtoBuf$Contract protoBuf$Contract = (ProtoBuf$Contract) cVar.t(ProtoBuf$Contract.PARSER, dVar);
                            this.contract_ = protoBuf$Contract;
                            if (builder4 != null) {
                                builder4.d(protoBuf$Contract);
                                this.contract_ = builder4.h();
                            }
                            this.bitField0_ |= 256;
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
                if (((i == true ? 1 : 0) & 1024) == 1024) {
                    this.valueParameter_ = Collections.unmodifiableList(this.valueParameter_);
                }
                if (((i == true ? 1 : 0) & 256) == 256) {
                    this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
                }
                if (((i == true ? 1 : 0) & 512) == 512) {
                    this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
                }
                if (((i == true ? 1 : 0) & 4096) == 4096) {
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
        if (((i == true ? 1 : 0) & 1024) == 1024) {
            this.valueParameter_ = Collections.unmodifiableList(this.valueParameter_);
        }
        if (((i == true ? 1 : 0) & 256) == 256) {
            this.contextReceiverType_ = Collections.unmodifiableList(this.contextReceiverType_);
        }
        if (((i == true ? 1 : 0) & 512) == 512) {
            this.contextReceiverTypeId_ = Collections.unmodifiableList(this.contextReceiverTypeId_);
        }
        if (((i == true ? 1 : 0) & 4096) == 4096) {
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
