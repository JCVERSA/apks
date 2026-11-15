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

public final class ProtoBuf$TypeAlias extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$TypeAlias> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$TypeAlias defaultInstance;
    private List<ProtoBuf$Annotation> annotation_;
    private int bitField0_;
    private int expandedTypeId_;
    private ProtoBuf$Type expandedType_;
    private int flags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private List<ProtoBuf$TypeParameter> typeParameter_;
    private int underlyingTypeId_;
    private ProtoBuf$Type underlyingType_;
    private final po0 unknownFields;
    private List<Integer> versionRequirement_;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$TypeAlias c(c cVar, d dVar) {
            return new ProtoBuf$TypeAlias(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public int g;
        public int j;
        public int l;
        public int f = 6;
        public List h = Collections.emptyList();
        public ProtoBuf$Type i = ProtoBuf$Type.getDefaultInstance();
        public ProtoBuf$Type k = ProtoBuf$Type.getDefaultInstance();
        public List m = Collections.emptyList();
        public List n = Collections.emptyList();

        public b() {
            r();
        }

        public static b n() {
            return new b();
        }

        private void p() {
            if ((this.e & 4) != 4) {
                this.h = new ArrayList(this.h);
                this.e |= 4;
            }
        }

        private void q() {
            if ((this.e & 256) != 256) {
                this.n = new ArrayList(this.n);
                this.e |= 256;
            }
        }

        private void r() {
        }

        @Override
        public ProtoBuf$TypeAlias build() {
            ProtoBuf$TypeAlias protoBuf$TypeAliasL = l();
            if (protoBuf$TypeAliasL.isInitialized()) {
                return protoBuf$TypeAliasL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$TypeAliasL);
        }

        public ProtoBuf$TypeAlias l() {
            ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias(this);
            int i = this.e;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$TypeAlias.flags_ = this.f;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$TypeAlias.name_ = this.g;
            if ((this.e & 4) == 4) {
                this.h = Collections.unmodifiableList(this.h);
                this.e &= -5;
            }
            protoBuf$TypeAlias.typeParameter_ = this.h;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$TypeAlias.underlyingType_ = this.i;
            if ((i & 16) == 16) {
                i2 |= 8;
            }
            protoBuf$TypeAlias.underlyingTypeId_ = this.j;
            if ((i & 32) == 32) {
                i2 |= 16;
            }
            protoBuf$TypeAlias.expandedType_ = this.k;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$TypeAlias.expandedTypeId_ = this.l;
            if ((this.e & 128) == 128) {
                this.m = Collections.unmodifiableList(this.m);
                this.e &= -129;
            }
            protoBuf$TypeAlias.annotation_ = this.m;
            if ((this.e & 256) == 256) {
                this.n = Collections.unmodifiableList(this.n);
                this.e &= -257;
            }
            protoBuf$TypeAlias.versionRequirement_ = this.n;
            protoBuf$TypeAlias.bitField0_ = i2;
            return protoBuf$TypeAlias;
        }

        public b clone() {
            return n().d(l());
        }

        public final void o() {
            if ((this.e & 128) != 128) {
                this.m = new ArrayList(this.m);
                this.e |= 128;
            }
        }

        public b s(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 32) != 32 || this.k == ProtoBuf$Type.getDefaultInstance()) {
                this.k = protoBuf$Type;
            } else {
                this.k = ProtoBuf$Type.newBuilder(this.k).d(protoBuf$Type).l();
            }
            this.e |= 32;
            return this;
        }

        @Override
        public b d(ProtoBuf$TypeAlias protoBuf$TypeAlias) {
            if (protoBuf$TypeAlias == ProtoBuf$TypeAlias.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$TypeAlias.hasFlags()) {
                x(protoBuf$TypeAlias.getFlags());
            }
            if (protoBuf$TypeAlias.hasName()) {
                y(protoBuf$TypeAlias.getName());
            }
            if (!protoBuf$TypeAlias.typeParameter_.isEmpty()) {
                if (this.h.isEmpty()) {
                    this.h = protoBuf$TypeAlias.typeParameter_;
                    this.e &= -5;
                } else {
                    p();
                    this.h.addAll(protoBuf$TypeAlias.typeParameter_);
                }
            }
            if (protoBuf$TypeAlias.hasUnderlyingType()) {
                v(protoBuf$TypeAlias.getUnderlyingType());
            }
            if (protoBuf$TypeAlias.hasUnderlyingTypeId()) {
                z(protoBuf$TypeAlias.getUnderlyingTypeId());
            }
            if (protoBuf$TypeAlias.hasExpandedType()) {
                s(protoBuf$TypeAlias.getExpandedType());
            }
            if (protoBuf$TypeAlias.hasExpandedTypeId()) {
                w(protoBuf$TypeAlias.getExpandedTypeId());
            }
            if (!protoBuf$TypeAlias.annotation_.isEmpty()) {
                if (this.m.isEmpty()) {
                    this.m = protoBuf$TypeAlias.annotation_;
                    this.e &= -129;
                } else {
                    o();
                    this.m.addAll(protoBuf$TypeAlias.annotation_);
                }
            }
            if (!protoBuf$TypeAlias.versionRequirement_.isEmpty()) {
                if (this.n.isEmpty()) {
                    this.n = protoBuf$TypeAlias.versionRequirement_;
                    this.e &= -257;
                } else {
                    q();
                    this.n.addAll(protoBuf$TypeAlias.versionRequirement_);
                }
            }
            i(protoBuf$TypeAlias);
            e(c().c(protoBuf$TypeAlias.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$TypeAlias protoBuf$TypeAlias = null;
            try {
                try {
                    ProtoBuf$TypeAlias protoBuf$TypeAlias2 = (ProtoBuf$TypeAlias) ProtoBuf$TypeAlias.PARSER.c(cVar, dVar);
                    if (protoBuf$TypeAlias2 != null) {
                        d(protoBuf$TypeAlias2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$TypeAlias protoBuf$TypeAlias3 = (ProtoBuf$TypeAlias) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$TypeAlias = protoBuf$TypeAlias3;
                        if (protoBuf$TypeAlias != null) {
                            d(protoBuf$TypeAlias);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$TypeAlias != null) {
                    d(protoBuf$TypeAlias);
                }
                throw th;
            }
        }

        public b v(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 8) != 8 || this.i == ProtoBuf$Type.getDefaultInstance()) {
                this.i = protoBuf$Type;
            } else {
                this.i = ProtoBuf$Type.newBuilder(this.i).d(protoBuf$Type).l();
            }
            this.e |= 8;
            return this;
        }

        public b w(int i) {
            this.e |= 64;
            this.l = i;
            return this;
        }

        public b x(int i) {
            this.e |= 1;
            this.f = i;
            return this;
        }

        public b y(int i) {
            this.e |= 2;
            this.g = i;
            return this;
        }

        public b z(int i) {
            this.e |= 16;
            this.j = i;
            return this;
        }
    }

    static {
        ProtoBuf$TypeAlias protoBuf$TypeAlias = new ProtoBuf$TypeAlias(true);
        defaultInstance = protoBuf$TypeAlias;
        protoBuf$TypeAlias.initFields();
    }

    public static ProtoBuf$TypeAlias getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 6;
        this.name_ = 0;
        this.typeParameter_ = Collections.emptyList();
        this.underlyingType_ = ProtoBuf$Type.getDefaultInstance();
        this.underlyingTypeId_ = 0;
        this.expandedType_ = ProtoBuf$Type.getDefaultInstance();
        this.expandedTypeId_ = 0;
        this.annotation_ = Collections.emptyList();
        this.versionRequirement_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.n();
    }

    public static ProtoBuf$TypeAlias parseDelimitedFrom(InputStream inputStream, d dVar) throws IOException {
        return (ProtoBuf$TypeAlias) PARSER.a(inputStream, dVar);
    }

    public ProtoBuf$Annotation getAnnotation(int i) {
        return this.annotation_.get(i);
    }

    public int getAnnotationCount() {
        return this.annotation_.size();
    }

    public List<ProtoBuf$Annotation> getAnnotationList() {
        return this.annotation_;
    }

    public ProtoBuf$Type getExpandedType() {
        return this.expandedType_;
    }

    public int getExpandedTypeId() {
        return this.expandedTypeId_;
    }

    public int getFlags() {
        return this.flags_;
    }

    public int getName() {
        return this.name_;
    }

    @Override
    public cx7 getParserForType() {
        return PARSER;
    }

    @Override
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.flags_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(2, this.name_);
        }
        for (int i2 = 0; i2 < this.typeParameter_.size(); i2++) {
            iO += CodedOutputStream.r(3, this.typeParameter_.get(i2));
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.r(4, this.underlyingType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.o(5, this.underlyingTypeId_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.r(6, this.expandedType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.o(7, this.expandedTypeId_);
        }
        for (int i3 = 0; i3 < this.annotation_.size(); i3++) {
            iO += CodedOutputStream.r(8, this.annotation_.get(i3));
        }
        int iP = 0;
        for (int i4 = 0; i4 < this.versionRequirement_.size(); i4++) {
            iP += CodedOutputStream.p(this.versionRequirement_.get(i4).intValue());
        }
        int size = iO + iP + (getVersionRequirementList().size() * 2) + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
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

    public ProtoBuf$Type getUnderlyingType() {
        return this.underlyingType_;
    }

    public int getUnderlyingTypeId() {
        return this.underlyingTypeId_;
    }

    public List<Integer> getVersionRequirementList() {
        return this.versionRequirement_;
    }

    public boolean hasExpandedType() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasExpandedTypeId() {
        return (this.bitField0_ & 32) == 32;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasName() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasUnderlyingType() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasUnderlyingTypeId() {
        return (this.bitField0_ & 8) == 8;
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
        for (int i = 0; i < getTypeParameterCount(); i++) {
            if (!getTypeParameter(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasUnderlyingType() && !getUnderlyingType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasExpandedType() && !getExpandedType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i2 = 0; i2 < getAnnotationCount(); i2++) {
            if (!getAnnotation(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
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
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.Z(2, this.name_);
        }
        for (int i = 0; i < this.typeParameter_.size(); i++) {
            codedOutputStream.c0(3, this.typeParameter_.get(i));
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.c0(4, this.underlyingType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.Z(5, this.underlyingTypeId_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.c0(6, this.expandedType_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.Z(7, this.expandedTypeId_);
        }
        for (int i2 = 0; i2 < this.annotation_.size(); i2++) {
            codedOutputStream.c0(8, this.annotation_.get(i2));
        }
        for (int i3 = 0; i3 < this.versionRequirement_.size(); i3++) {
            codedOutputStream.Z(31, this.versionRequirement_.get(i3).intValue());
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$TypeAlias protoBuf$TypeAlias) {
        return newBuilder().d(protoBuf$TypeAlias);
    }

    @Override
    public ProtoBuf$TypeAlias getDefaultInstanceForType() {
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

    private ProtoBuf$TypeAlias(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$TypeAlias(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$TypeAlias(c cVar, d dVar) throws InvalidProtocolBufferException {
        ProtoBuf$Type.b builder;
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
                            this.bitField0_ |= 1;
                            this.flags_ = cVar.r();
                            continue;
                        case 16:
                            this.bitField0_ |= 2;
                            this.name_ = cVar.r();
                            continue;
                        case 26:
                            if ((i & 4) != 4) {
                                this.typeParameter_ = new ArrayList();
                                i |= 4;
                            }
                            this.typeParameter_.add((ProtoBuf$TypeParameter) cVar.t(ProtoBuf$TypeParameter.PARSER, dVar));
                            continue;
                        case 34:
                            builder = (this.bitField0_ & 4) == 4 ? this.underlyingType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar);
                            this.underlyingType_ = protoBuf$Type;
                            if (builder != null) {
                                builder.d(protoBuf$Type);
                                this.underlyingType_ = builder.l();
                            }
                            this.bitField0_ |= 4;
                            continue;
                        case 40:
                            this.bitField0_ |= 8;
                            this.underlyingTypeId_ = cVar.r();
                            continue;
                        case 50:
                            builder = (this.bitField0_ & 16) == 16 ? this.expandedType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar);
                            this.expandedType_ = protoBuf$Type2;
                            if (builder != null) {
                                builder.d(protoBuf$Type2);
                                this.expandedType_ = builder.l();
                            }
                            this.bitField0_ |= 16;
                            continue;
                        case 56:
                            this.bitField0_ |= 32;
                            this.expandedTypeId_ = cVar.r();
                            continue;
                        case 66:
                            if ((i & 128) != 128) {
                                this.annotation_ = new ArrayList();
                                i |= 128;
                            }
                            this.annotation_.add((ProtoBuf$Annotation) cVar.t(ProtoBuf$Annotation.PARSER, dVar));
                            continue;
                        case 248:
                            if ((i & 256) != 256) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 256;
                            }
                            this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                            continue;
                        case 250:
                            int i2 = cVar.i(cVar.z());
                            if ((i & 256) != 256 && cVar.e() > 0) {
                                this.versionRequirement_ = new ArrayList();
                                i |= 256;
                            }
                            while (cVar.e() > 0) {
                                this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i2);
                            continue;
                        default:
                            if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                break;
                            }
                            break;
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 4) == 4) {
                        this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
                    }
                    if ((i & 128) == 128) {
                        this.annotation_ = Collections.unmodifiableList(this.annotation_);
                    }
                    if ((i & 256) == 256) {
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
        if ((i & 4) == 4) {
            this.typeParameter_ = Collections.unmodifiableList(this.typeParameter_);
        }
        if ((i & 128) == 128) {
            this.annotation_ = Collections.unmodifiableList(this.annotation_);
        }
        if ((i & 256) == 256) {
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
