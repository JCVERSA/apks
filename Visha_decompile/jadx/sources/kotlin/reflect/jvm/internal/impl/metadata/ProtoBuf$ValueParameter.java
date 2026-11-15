package kotlin.reflect.jvm.internal.impl.metadata;

import defpackage.cx7;
import defpackage.po0;
import defpackage.un6;
import java.io.IOException;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.c;
import kotlin.reflect.jvm.internal.impl.protobuf.d;

public final class ProtoBuf$ValueParameter extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$ValueParameter> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$ValueParameter defaultInstance;
    private int bitField0_;
    private int flags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private int typeId_;
    private ProtoBuf$Type type_;
    private final po0 unknownFields;
    private int varargElementTypeId_;
    private ProtoBuf$Type varargElementType_;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$ValueParameter c(c cVar, d dVar) {
            return new ProtoBuf$ValueParameter(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public int f;
        public int g;
        public int i;
        public int k;
        public ProtoBuf$Type h = ProtoBuf$Type.getDefaultInstance();
        public ProtoBuf$Type j = ProtoBuf$Type.getDefaultInstance();

        public b() {
            o();
        }

        public static b n() {
            return new b();
        }

        private void o() {
        }

        @Override
        public ProtoBuf$ValueParameter build() {
            ProtoBuf$ValueParameter protoBuf$ValueParameterL = l();
            if (protoBuf$ValueParameterL.isInitialized()) {
                return protoBuf$ValueParameterL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$ValueParameterL);
        }

        public ProtoBuf$ValueParameter l() {
            ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter(this);
            int i = this.e;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$ValueParameter.flags_ = this.f;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$ValueParameter.name_ = this.g;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$ValueParameter.type_ = this.h;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$ValueParameter.typeId_ = this.i;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$ValueParameter.varargElementType_ = this.j;
            if ((i & 32) == 32) {
                i2 |= 32;
            }
            protoBuf$ValueParameter.varargElementTypeId_ = this.k;
            protoBuf$ValueParameter.bitField0_ = i2;
            return protoBuf$ValueParameter;
        }

        public b clone() {
            return n().d(l());
        }

        @Override
        public b d(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
            if (protoBuf$ValueParameter == ProtoBuf$ValueParameter.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$ValueParameter.hasFlags()) {
                t(protoBuf$ValueParameter.getFlags());
            }
            if (protoBuf$ValueParameter.hasName()) {
                u(protoBuf$ValueParameter.getName());
            }
            if (protoBuf$ValueParameter.hasType()) {
                r(protoBuf$ValueParameter.getType());
            }
            if (protoBuf$ValueParameter.hasTypeId()) {
                v(protoBuf$ValueParameter.getTypeId());
            }
            if (protoBuf$ValueParameter.hasVarargElementType()) {
                s(protoBuf$ValueParameter.getVarargElementType());
            }
            if (protoBuf$ValueParameter.hasVarargElementTypeId()) {
                w(protoBuf$ValueParameter.getVarargElementTypeId());
            }
            i(protoBuf$ValueParameter);
            e(c().c(protoBuf$ValueParameter.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$ValueParameter protoBuf$ValueParameter = null;
            try {
                try {
                    ProtoBuf$ValueParameter protoBuf$ValueParameter2 = (ProtoBuf$ValueParameter) ProtoBuf$ValueParameter.PARSER.c(cVar, dVar);
                    if (protoBuf$ValueParameter2 != null) {
                        d(protoBuf$ValueParameter2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$ValueParameter protoBuf$ValueParameter3 = (ProtoBuf$ValueParameter) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$ValueParameter = protoBuf$ValueParameter3;
                        if (protoBuf$ValueParameter != null) {
                            d(protoBuf$ValueParameter);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$ValueParameter != null) {
                    d(protoBuf$ValueParameter);
                }
                throw th;
            }
        }

        public b r(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 4) != 4 || this.h == ProtoBuf$Type.getDefaultInstance()) {
                this.h = protoBuf$Type;
            } else {
                this.h = ProtoBuf$Type.newBuilder(this.h).d(protoBuf$Type).l();
            }
            this.e |= 4;
            return this;
        }

        public b s(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 16) != 16 || this.j == ProtoBuf$Type.getDefaultInstance()) {
                this.j = protoBuf$Type;
            } else {
                this.j = ProtoBuf$Type.newBuilder(this.j).d(protoBuf$Type).l();
            }
            this.e |= 16;
            return this;
        }

        public b t(int i) {
            this.e |= 1;
            this.f = i;
            return this;
        }

        public b u(int i) {
            this.e |= 2;
            this.g = i;
            return this;
        }

        public b v(int i) {
            this.e |= 8;
            this.i = i;
            return this;
        }

        public b w(int i) {
            this.e |= 32;
            this.k = i;
            return this;
        }
    }

    static {
        ProtoBuf$ValueParameter protoBuf$ValueParameter = new ProtoBuf$ValueParameter(true);
        defaultInstance = protoBuf$ValueParameter;
        protoBuf$ValueParameter.initFields();
    }

    public static ProtoBuf$ValueParameter getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 0;
        this.name_ = 0;
        this.type_ = ProtoBuf$Type.getDefaultInstance();
        this.typeId_ = 0;
        this.varargElementType_ = ProtoBuf$Type.getDefaultInstance();
        this.varargElementTypeId_ = 0;
    }

    public static b newBuilder() {
        return b.n();
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
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.r(3, this.type_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.r(4, this.varargElementType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.o(5, this.typeId_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.o(6, this.varargElementTypeId_);
        }
        int iExtensionsSerializedSize = iO + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$Type getType() {
        return this.type_;
    }

    public int getTypeId() {
        return this.typeId_;
    }

    public ProtoBuf$Type getVarargElementType() {
        return this.varargElementType_;
    }

    public int getVarargElementTypeId() {
        return this.varargElementTypeId_;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasName() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasType() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasTypeId() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasVarargElementType() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasVarargElementTypeId() {
        return (this.bitField0_ & 32) == 32;
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
        if (hasType() && !getType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasVarargElementType() && !getVarargElementType().isInitialized()) {
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
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.Z(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.c0(3, this.type_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.c0(4, this.varargElementType_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.Z(5, this.typeId_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.Z(6, this.varargElementTypeId_);
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$ValueParameter protoBuf$ValueParameter) {
        return newBuilder().d(protoBuf$ValueParameter);
    }

    @Override
    public ProtoBuf$ValueParameter getDefaultInstanceForType() {
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

    private ProtoBuf$ValueParameter(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$ValueParameter(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$ValueParameter(c cVar, d dVar) throws InvalidProtocolBufferException {
        ProtoBuf$Type.b builder;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        po0.b bVarQ = po0.q();
        CodedOutputStream codedOutputStreamI = CodedOutputStream.I(bVarQ, 1);
        boolean z = false;
        while (!z) {
            try {
                try {
                    int iJ = cVar.J();
                    if (iJ != 0) {
                        if (iJ == 8) {
                            this.bitField0_ |= 1;
                            this.flags_ = cVar.r();
                        } else if (iJ != 16) {
                            if (iJ == 26) {
                                builder = (this.bitField0_ & 4) == 4 ? this.type_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar);
                                this.type_ = protoBuf$Type;
                                if (builder != null) {
                                    builder.d(protoBuf$Type);
                                    this.type_ = builder.l();
                                }
                                this.bitField0_ |= 4;
                            } else if (iJ == 34) {
                                builder = (this.bitField0_ & 16) == 16 ? this.varargElementType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar);
                                this.varargElementType_ = protoBuf$Type2;
                                if (builder != null) {
                                    builder.d(protoBuf$Type2);
                                    this.varargElementType_ = builder.l();
                                }
                                this.bitField0_ |= 16;
                            } else if (iJ == 40) {
                                this.bitField0_ |= 8;
                                this.typeId_ = cVar.r();
                            } else if (iJ != 48) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                this.bitField0_ |= 32;
                                this.varargElementTypeId_ = cVar.r();
                            }
                        } else {
                            this.bitField0_ |= 2;
                            this.name_ = cVar.r();
                        }
                    }
                    z = true;
                } catch (Throwable th) {
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
        try {
            codedOutputStreamI.H();
        } catch (IOException unused2) {
        } finally {
            this.unknownFields = bVarQ.g();
        }
        makeExtensionsImmutable();
    }
}
