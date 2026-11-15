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

public final class ProtoBuf$Constructor extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Constructor> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$Constructor defaultInstance;
    private int bitField0_;
    private int flags_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private final po0 unknownFields;
    private List<ProtoBuf$ValueParameter> valueParameter_;
    private List<Integer> versionRequirement_;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$Constructor c(c cVar, d dVar) {
            return new ProtoBuf$Constructor(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public int f = 6;
        public List g = Collections.emptyList();
        public List h = Collections.emptyList();

        public b() {
            q();
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
        }

        @Override
        public ProtoBuf$Constructor build() {
            ProtoBuf$Constructor protoBuf$ConstructorL = l();
            if (protoBuf$ConstructorL.isInitialized()) {
                return protoBuf$ConstructorL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$ConstructorL);
        }

        public ProtoBuf$Constructor l() {
            ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor(this);
            int i = (this.e & 1) != 1 ? 0 : 1;
            protoBuf$Constructor.flags_ = this.f;
            if ((this.e & 2) == 2) {
                this.g = Collections.unmodifiableList(this.g);
                this.e &= -3;
            }
            protoBuf$Constructor.valueParameter_ = this.g;
            if ((this.e & 4) == 4) {
                this.h = Collections.unmodifiableList(this.h);
                this.e &= -5;
            }
            protoBuf$Constructor.versionRequirement_ = this.h;
            protoBuf$Constructor.bitField0_ = i;
            return protoBuf$Constructor;
        }

        public b clone() {
            return n().d(l());
        }

        public final void o() {
            if ((this.e & 2) != 2) {
                this.g = new ArrayList(this.g);
                this.e |= 2;
            }
        }

        @Override
        public b d(ProtoBuf$Constructor protoBuf$Constructor) {
            if (protoBuf$Constructor == ProtoBuf$Constructor.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Constructor.hasFlags()) {
                t(protoBuf$Constructor.getFlags());
            }
            if (!protoBuf$Constructor.valueParameter_.isEmpty()) {
                if (this.g.isEmpty()) {
                    this.g = protoBuf$Constructor.valueParameter_;
                    this.e &= -3;
                } else {
                    o();
                    this.g.addAll(protoBuf$Constructor.valueParameter_);
                }
            }
            if (!protoBuf$Constructor.versionRequirement_.isEmpty()) {
                if (this.h.isEmpty()) {
                    this.h = protoBuf$Constructor.versionRequirement_;
                    this.e &= -5;
                } else {
                    p();
                    this.h.addAll(protoBuf$Constructor.versionRequirement_);
                }
            }
            i(protoBuf$Constructor);
            e(c().c(protoBuf$Constructor.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$Constructor protoBuf$Constructor = null;
            try {
                try {
                    ProtoBuf$Constructor protoBuf$Constructor2 = (ProtoBuf$Constructor) ProtoBuf$Constructor.PARSER.c(cVar, dVar);
                    if (protoBuf$Constructor2 != null) {
                        d(protoBuf$Constructor2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$Constructor protoBuf$Constructor3 = (ProtoBuf$Constructor) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Constructor = protoBuf$Constructor3;
                        if (protoBuf$Constructor != null) {
                            d(protoBuf$Constructor);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Constructor != null) {
                    d(protoBuf$Constructor);
                }
                throw th;
            }
        }

        public b t(int i) {
            this.e |= 1;
            this.f = i;
            return this;
        }
    }

    static {
        ProtoBuf$Constructor protoBuf$Constructor = new ProtoBuf$Constructor(true);
        defaultInstance = protoBuf$Constructor;
        protoBuf$Constructor.initFields();
    }

    public static ProtoBuf$Constructor getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 6;
        this.valueParameter_ = Collections.emptyList();
        this.versionRequirement_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.n();
    }

    public int getFlags() {
        return this.flags_;
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
        for (int i2 = 0; i2 < this.valueParameter_.size(); i2++) {
            iO += CodedOutputStream.r(2, this.valueParameter_.get(i2));
        }
        int iP = 0;
        for (int i3 = 0; i3 < this.versionRequirement_.size(); i3++) {
            iP += CodedOutputStream.p(this.versionRequirement_.get(i3).intValue());
        }
        int size = iO + iP + (getVersionRequirementList().size() * 2) + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
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

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
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
        for (int i = 0; i < getValueParameterCount(); i++) {
            if (!getValueParameter(i).isInitialized()) {
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
        for (int i = 0; i < this.valueParameter_.size(); i++) {
            codedOutputStream.c0(2, this.valueParameter_.get(i));
        }
        for (int i2 = 0; i2 < this.versionRequirement_.size(); i2++) {
            codedOutputStream.Z(31, this.versionRequirement_.get(i2).intValue());
        }
        aVarNewExtensionWriter.a(19000, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Constructor protoBuf$Constructor) {
        return newBuilder().d(protoBuf$Constructor);
    }

    @Override
    public ProtoBuf$Constructor getDefaultInstanceForType() {
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

    private ProtoBuf$Constructor(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$Constructor(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$Constructor(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                    try {
                        int iJ = cVar.J();
                        if (iJ != 0) {
                            if (iJ == 8) {
                                this.bitField0_ |= 1;
                                this.flags_ = cVar.r();
                            } else if (iJ == 18) {
                                if ((i & 2) != 2) {
                                    this.valueParameter_ = new ArrayList();
                                    i |= 2;
                                }
                                this.valueParameter_.add((ProtoBuf$ValueParameter) cVar.t(ProtoBuf$ValueParameter.PARSER, dVar));
                            } else if (iJ == 248) {
                                if ((i & 4) != 4) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 4;
                                }
                                this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                            } else if (iJ != 250) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                int i2 = cVar.i(cVar.z());
                                if ((i & 4) != 4 && cVar.e() > 0) {
                                    this.versionRequirement_ = new ArrayList();
                                    i |= 4;
                                }
                                while (cVar.e() > 0) {
                                    this.versionRequirement_.add(Integer.valueOf(cVar.r()));
                                }
                                cVar.h(i2);
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    }
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i & 2) == 2) {
                    this.valueParameter_ = Collections.unmodifiableList(this.valueParameter_);
                }
                if ((i & 4) == 4) {
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
        if ((i & 2) == 2) {
            this.valueParameter_ = Collections.unmodifiableList(this.valueParameter_);
        }
        if ((i & 4) == 4) {
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
