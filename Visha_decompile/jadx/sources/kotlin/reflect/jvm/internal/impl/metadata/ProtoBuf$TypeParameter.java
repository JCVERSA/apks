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
import kotlin.reflect.jvm.internal.impl.protobuf.f;

public final class ProtoBuf$TypeParameter extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$TypeParameter> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$TypeParameter defaultInstance;
    private int bitField0_;
    private int id_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private boolean reified_;
    private final po0 unknownFields;
    private int upperBoundIdMemoizedSerializedSize;
    private List<Integer> upperBoundId_;
    private List<ProtoBuf$Type> upperBound_;
    private Variance variance_;

    public enum Variance implements f.a {
        IN(0, 0),
        OUT(1, 1),
        INV(2, 2);

        private static f.b internalValueMap = new a();
        private final int value;

        public static class a implements f.b {
            @Override
            public Variance findValueByNumber(int i) {
                return Variance.valueOf(i);
            }
        }

        Variance(int i, int i2) {
            this.value = i2;
        }

        @Override
        public final int getNumber() {
            return this.value;
        }

        public static Variance valueOf(int i) {
            if (i == 0) {
                return IN;
            }
            if (i == 1) {
                return OUT;
            }
            if (i != 2) {
                return null;
            }
            return INV;
        }
    }

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$TypeParameter c(c cVar, d dVar) {
            return new ProtoBuf$TypeParameter(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public int f;
        public int g;
        public boolean h;
        public Variance i = Variance.INV;
        public List j = Collections.emptyList();
        public List k = Collections.emptyList();

        public b() {
            q();
        }

        public static b n() {
            return new b();
        }

        private void q() {
        }

        @Override
        public ProtoBuf$TypeParameter build() {
            ProtoBuf$TypeParameter protoBuf$TypeParameterL = l();
            if (protoBuf$TypeParameterL.isInitialized()) {
                return protoBuf$TypeParameterL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$TypeParameterL);
        }

        public ProtoBuf$TypeParameter l() {
            ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter(this);
            int i = this.e;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$TypeParameter.id_ = this.f;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$TypeParameter.name_ = this.g;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$TypeParameter.reified_ = this.h;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$TypeParameter.variance_ = this.i;
            if ((this.e & 16) == 16) {
                this.j = Collections.unmodifiableList(this.j);
                this.e &= -17;
            }
            protoBuf$TypeParameter.upperBound_ = this.j;
            if ((this.e & 32) == 32) {
                this.k = Collections.unmodifiableList(this.k);
                this.e &= -33;
            }
            protoBuf$TypeParameter.upperBoundId_ = this.k;
            protoBuf$TypeParameter.bitField0_ = i2;
            return protoBuf$TypeParameter;
        }

        public b clone() {
            return n().d(l());
        }

        public final void o() {
            if ((this.e & 32) != 32) {
                this.k = new ArrayList(this.k);
                this.e |= 32;
            }
        }

        public final void p() {
            if ((this.e & 16) != 16) {
                this.j = new ArrayList(this.j);
                this.e |= 16;
            }
        }

        @Override
        public b d(ProtoBuf$TypeParameter protoBuf$TypeParameter) {
            if (protoBuf$TypeParameter == ProtoBuf$TypeParameter.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$TypeParameter.hasId()) {
                t(protoBuf$TypeParameter.getId());
            }
            if (protoBuf$TypeParameter.hasName()) {
                u(protoBuf$TypeParameter.getName());
            }
            if (protoBuf$TypeParameter.hasReified()) {
                v(protoBuf$TypeParameter.getReified());
            }
            if (protoBuf$TypeParameter.hasVariance()) {
                w(protoBuf$TypeParameter.getVariance());
            }
            if (!protoBuf$TypeParameter.upperBound_.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$TypeParameter.upperBound_;
                    this.e &= -17;
                } else {
                    p();
                    this.j.addAll(protoBuf$TypeParameter.upperBound_);
                }
            }
            if (!protoBuf$TypeParameter.upperBoundId_.isEmpty()) {
                if (this.k.isEmpty()) {
                    this.k = protoBuf$TypeParameter.upperBoundId_;
                    this.e &= -33;
                } else {
                    o();
                    this.k.addAll(protoBuf$TypeParameter.upperBoundId_);
                }
            }
            i(protoBuf$TypeParameter);
            e(c().c(protoBuf$TypeParameter.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$TypeParameter protoBuf$TypeParameter = null;
            try {
                try {
                    ProtoBuf$TypeParameter protoBuf$TypeParameter2 = (ProtoBuf$TypeParameter) ProtoBuf$TypeParameter.PARSER.c(cVar, dVar);
                    if (protoBuf$TypeParameter2 != null) {
                        d(protoBuf$TypeParameter2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$TypeParameter protoBuf$TypeParameter3 = (ProtoBuf$TypeParameter) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$TypeParameter = protoBuf$TypeParameter3;
                        if (protoBuf$TypeParameter != null) {
                            d(protoBuf$TypeParameter);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$TypeParameter != null) {
                    d(protoBuf$TypeParameter);
                }
                throw th;
            }
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

        public b v(boolean z) {
            this.e |= 4;
            this.h = z;
            return this;
        }

        public b w(Variance variance) {
            variance.getClass();
            this.e |= 8;
            this.i = variance;
            return this;
        }
    }

    static {
        ProtoBuf$TypeParameter protoBuf$TypeParameter = new ProtoBuf$TypeParameter(true);
        defaultInstance = protoBuf$TypeParameter;
        protoBuf$TypeParameter.initFields();
    }

    public static ProtoBuf$TypeParameter getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.id_ = 0;
        this.name_ = 0;
        this.reified_ = false;
        this.variance_ = Variance.INV;
        this.upperBound_ = Collections.emptyList();
        this.upperBoundId_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.n();
    }

    public int getId() {
        return this.id_;
    }

    public int getName() {
        return this.name_;
    }

    @Override
    public cx7 getParserForType() {
        return PARSER;
    }

    public boolean getReified() {
        return this.reified_;
    }

    @Override
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.id_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.a(3, this.reified_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.h(4, this.variance_.getNumber());
        }
        for (int i2 = 0; i2 < this.upperBound_.size(); i2++) {
            iO += CodedOutputStream.r(5, this.upperBound_.get(i2));
        }
        int iP = 0;
        for (int i3 = 0; i3 < this.upperBoundId_.size(); i3++) {
            iP += CodedOutputStream.p(this.upperBoundId_.get(i3).intValue());
        }
        int iP2 = iO + iP;
        if (!getUpperBoundIdList().isEmpty()) {
            iP2 = iP2 + 1 + CodedOutputStream.p(iP);
        }
        this.upperBoundIdMemoizedSerializedSize = iP;
        int iExtensionsSerializedSize = iP2 + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$Type getUpperBound(int i) {
        return this.upperBound_.get(i);
    }

    public int getUpperBoundCount() {
        return this.upperBound_.size();
    }

    public List<Integer> getUpperBoundIdList() {
        return this.upperBoundId_;
    }

    public List<ProtoBuf$Type> getUpperBoundList() {
        return this.upperBound_;
    }

    public Variance getVariance() {
        return this.variance_;
    }

    public boolean hasId() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasName() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasReified() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasVariance() {
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
        if (!hasId()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (!hasName()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getUpperBoundCount(); i++) {
            if (!getUpperBound(i).isInitialized()) {
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
            codedOutputStream.Z(1, this.id_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.Z(2, this.name_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.K(3, this.reified_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.R(4, this.variance_.getNumber());
        }
        for (int i = 0; i < this.upperBound_.size(); i++) {
            codedOutputStream.c0(5, this.upperBound_.get(i));
        }
        if (getUpperBoundIdList().size() > 0) {
            codedOutputStream.n0(50);
            codedOutputStream.n0(this.upperBoundIdMemoizedSerializedSize);
        }
        for (int i2 = 0; i2 < this.upperBoundId_.size(); i2++) {
            codedOutputStream.a0(this.upperBoundId_.get(i2).intValue());
        }
        aVarNewExtensionWriter.a(1000, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$TypeParameter protoBuf$TypeParameter) {
        return newBuilder().d(protoBuf$TypeParameter);
    }

    @Override
    public ProtoBuf$TypeParameter getDefaultInstanceForType() {
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

    private ProtoBuf$TypeParameter(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.upperBoundIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$TypeParameter(boolean z) {
        this.upperBoundIdMemoizedSerializedSize = -1;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$TypeParameter(c cVar, d dVar) throws InvalidProtocolBufferException {
        this.upperBoundIdMemoizedSerializedSize = -1;
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
                    if (iJ != 0) {
                        if (iJ == 8) {
                            this.bitField0_ |= 1;
                            this.id_ = cVar.r();
                        } else if (iJ == 16) {
                            this.bitField0_ |= 2;
                            this.name_ = cVar.r();
                        } else if (iJ == 24) {
                            this.bitField0_ |= 4;
                            this.reified_ = cVar.j();
                        } else if (iJ == 32) {
                            int iM = cVar.m();
                            Variance varianceValueOf = Variance.valueOf(iM);
                            if (varianceValueOf == null) {
                                codedOutputStreamI.n0(iJ);
                                codedOutputStreamI.n0(iM);
                            } else {
                                this.bitField0_ |= 8;
                                this.variance_ = varianceValueOf;
                            }
                        } else if (iJ == 42) {
                            if ((i & 16) != 16) {
                                this.upperBound_ = new ArrayList();
                                i |= 16;
                            }
                            this.upperBound_.add((ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar));
                        } else if (iJ == 48) {
                            if ((i & 32) != 32) {
                                this.upperBoundId_ = new ArrayList();
                                i |= 32;
                            }
                            this.upperBoundId_.add(Integer.valueOf(cVar.r()));
                        } else if (iJ != 50) {
                            if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                            }
                        } else {
                            int i2 = cVar.i(cVar.z());
                            if ((i & 32) != 32 && cVar.e() > 0) {
                                this.upperBoundId_ = new ArrayList();
                                i |= 32;
                            }
                            while (cVar.e() > 0) {
                                this.upperBoundId_.add(Integer.valueOf(cVar.r()));
                            }
                            cVar.h(i2);
                        }
                    }
                    z = true;
                } catch (InvalidProtocolBufferException e) {
                    throw e.setUnfinishedMessage(this);
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if ((i & 16) == 16) {
                    this.upperBound_ = Collections.unmodifiableList(this.upperBound_);
                }
                if ((i & 32) == 32) {
                    this.upperBoundId_ = Collections.unmodifiableList(this.upperBoundId_);
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
        if ((i & 16) == 16) {
            this.upperBound_ = Collections.unmodifiableList(this.upperBound_);
        }
        if ((i & 32) == 32) {
            this.upperBoundId_ = Collections.unmodifiableList(this.upperBoundId_);
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
