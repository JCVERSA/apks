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

public final class ProtoBuf$Expression extends GeneratedMessageLite implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$Expression defaultInstance;
    private List<ProtoBuf$Expression> andArgument_;
    private int bitField0_;
    private ConstantValue constantValue_;
    private int flags_;
    private int isInstanceTypeId_;
    private ProtoBuf$Type isInstanceType_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List<ProtoBuf$Expression> orArgument_;
    private final po0 unknownFields;
    private int valueParameterReference_;

    public enum ConstantValue implements f.a {
        TRUE(0, 0),
        FALSE(1, 1),
        NULL(2, 2);

        private static f.b internalValueMap = new a();
        private final int value;

        public static class a implements f.b {
            @Override
            public ConstantValue findValueByNumber(int i) {
                return ConstantValue.valueOf(i);
            }
        }

        ConstantValue(int i, int i2) {
            this.value = i2;
        }

        @Override
        public final int getNumber() {
            return this.value;
        }

        public static ConstantValue valueOf(int i) {
            if (i == 0) {
                return TRUE;
            }
            if (i == 1) {
                return FALSE;
            }
            if (i != 2) {
                return null;
            }
            return NULL;
        }
    }

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$Expression c(c cVar, d dVar) {
            return new ProtoBuf$Expression(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b implements un6 {
        public int c;
        public int d;
        public int e;
        public int h;
        public ConstantValue f = ConstantValue.TRUE;
        public ProtoBuf$Type g = ProtoBuf$Type.getDefaultInstance();
        public List i = Collections.emptyList();
        public List j = Collections.emptyList();

        public b() {
            m();
        }

        public static b j() {
            return new b();
        }

        private void m() {
        }

        @Override
        public ProtoBuf$Expression build() {
            ProtoBuf$Expression protoBuf$ExpressionH = h();
            if (protoBuf$ExpressionH.isInitialized()) {
                return protoBuf$ExpressionH;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$ExpressionH);
        }

        public ProtoBuf$Expression h() {
            ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression(this);
            int i = this.c;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$Expression.flags_ = this.d;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$Expression.valueParameterReference_ = this.e;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$Expression.constantValue_ = this.f;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$Expression.isInstanceType_ = this.g;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$Expression.isInstanceTypeId_ = this.h;
            if ((this.c & 32) == 32) {
                this.i = Collections.unmodifiableList(this.i);
                this.c &= -33;
            }
            protoBuf$Expression.andArgument_ = this.i;
            if ((this.c & 64) == 64) {
                this.j = Collections.unmodifiableList(this.j);
                this.c &= -65;
            }
            protoBuf$Expression.orArgument_ = this.j;
            protoBuf$Expression.bitField0_ = i2;
            return protoBuf$Expression;
        }

        public b clone() {
            return j().d(h());
        }

        public final void k() {
            if ((this.c & 32) != 32) {
                this.i = new ArrayList(this.i);
                this.c |= 32;
            }
        }

        public final void l() {
            if ((this.c & 64) != 64) {
                this.j = new ArrayList(this.j);
                this.c |= 64;
            }
        }

        @Override
        public b d(ProtoBuf$Expression protoBuf$Expression) {
            if (protoBuf$Expression == ProtoBuf$Expression.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Expression.hasFlags()) {
                r(protoBuf$Expression.getFlags());
            }
            if (protoBuf$Expression.hasValueParameterReference()) {
                t(protoBuf$Expression.getValueParameterReference());
            }
            if (protoBuf$Expression.hasConstantValue()) {
                q(protoBuf$Expression.getConstantValue());
            }
            if (protoBuf$Expression.hasIsInstanceType()) {
                p(protoBuf$Expression.getIsInstanceType());
            }
            if (protoBuf$Expression.hasIsInstanceTypeId()) {
                s(protoBuf$Expression.getIsInstanceTypeId());
            }
            if (!protoBuf$Expression.andArgument_.isEmpty()) {
                if (this.i.isEmpty()) {
                    this.i = protoBuf$Expression.andArgument_;
                    this.c &= -33;
                } else {
                    k();
                    this.i.addAll(protoBuf$Expression.andArgument_);
                }
            }
            if (!protoBuf$Expression.orArgument_.isEmpty()) {
                if (this.j.isEmpty()) {
                    this.j = protoBuf$Expression.orArgument_;
                    this.c &= -65;
                } else {
                    l();
                    this.j.addAll(protoBuf$Expression.orArgument_);
                }
            }
            e(c().c(protoBuf$Expression.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$Expression protoBuf$Expression = null;
            try {
                try {
                    ProtoBuf$Expression protoBuf$Expression2 = (ProtoBuf$Expression) ProtoBuf$Expression.PARSER.c(cVar, dVar);
                    if (protoBuf$Expression2 != null) {
                        d(protoBuf$Expression2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$Expression protoBuf$Expression3 = (ProtoBuf$Expression) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Expression = protoBuf$Expression3;
                        if (protoBuf$Expression != null) {
                            d(protoBuf$Expression);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Expression != null) {
                    d(protoBuf$Expression);
                }
                throw th;
            }
        }

        public b p(ProtoBuf$Type protoBuf$Type) {
            if ((this.c & 8) != 8 || this.g == ProtoBuf$Type.getDefaultInstance()) {
                this.g = protoBuf$Type;
            } else {
                this.g = ProtoBuf$Type.newBuilder(this.g).d(protoBuf$Type).l();
            }
            this.c |= 8;
            return this;
        }

        public b q(ConstantValue constantValue) {
            constantValue.getClass();
            this.c |= 4;
            this.f = constantValue;
            return this;
        }

        public b r(int i) {
            this.c |= 1;
            this.d = i;
            return this;
        }

        public b s(int i) {
            this.c |= 16;
            this.h = i;
            return this;
        }

        public b t(int i) {
            this.c |= 2;
            this.e = i;
            return this;
        }
    }

    static {
        ProtoBuf$Expression protoBuf$Expression = new ProtoBuf$Expression(true);
        defaultInstance = protoBuf$Expression;
        protoBuf$Expression.initFields();
    }

    public static ProtoBuf$Expression getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.flags_ = 0;
        this.valueParameterReference_ = 0;
        this.constantValue_ = ConstantValue.TRUE;
        this.isInstanceType_ = ProtoBuf$Type.getDefaultInstance();
        this.isInstanceTypeId_ = 0;
        this.andArgument_ = Collections.emptyList();
        this.orArgument_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.j();
    }

    public ProtoBuf$Expression getAndArgument(int i) {
        return this.andArgument_.get(i);
    }

    public int getAndArgumentCount() {
        return this.andArgument_.size();
    }

    public ConstantValue getConstantValue() {
        return this.constantValue_;
    }

    public int getFlags() {
        return this.flags_;
    }

    public ProtoBuf$Type getIsInstanceType() {
        return this.isInstanceType_;
    }

    public int getIsInstanceTypeId() {
        return this.isInstanceTypeId_;
    }

    public ProtoBuf$Expression getOrArgument(int i) {
        return this.orArgument_.get(i);
    }

    public int getOrArgumentCount() {
        return this.orArgument_.size();
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
            iO += CodedOutputStream.o(2, this.valueParameterReference_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.h(3, this.constantValue_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.r(4, this.isInstanceType_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(5, this.isInstanceTypeId_);
        }
        for (int i2 = 0; i2 < this.andArgument_.size(); i2++) {
            iO += CodedOutputStream.r(6, this.andArgument_.get(i2));
        }
        for (int i3 = 0; i3 < this.orArgument_.size(); i3++) {
            iO += CodedOutputStream.r(7, this.orArgument_.get(i3));
        }
        int size = iO + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public int getValueParameterReference() {
        return this.valueParameterReference_;
    }

    public boolean hasConstantValue() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasIsInstanceType() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasIsInstanceTypeId() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasValueParameterReference() {
        return (this.bitField0_ & 2) == 2;
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
        if (hasIsInstanceType() && !getIsInstanceType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getAndArgumentCount(); i++) {
            if (!getAndArgument(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < getOrArgumentCount(); i2++) {
            if (!getOrArgument(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.Z(1, this.flags_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.Z(2, this.valueParameterReference_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.R(3, this.constantValue_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.c0(4, this.isInstanceType_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.Z(5, this.isInstanceTypeId_);
        }
        for (int i = 0; i < this.andArgument_.size(); i++) {
            codedOutputStream.c0(6, this.andArgument_.get(i));
        }
        for (int i2 = 0; i2 < this.orArgument_.size(); i2++) {
            codedOutputStream.c0(7, this.orArgument_.get(i2));
        }
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Expression protoBuf$Expression) {
        return newBuilder().d(protoBuf$Expression);
    }

    @Override
    public ProtoBuf$Expression getDefaultInstanceForType() {
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

    private ProtoBuf$Expression(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.c();
    }

    private ProtoBuf$Expression(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$Expression(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                            this.flags_ = cVar.r();
                        } else if (iJ == 16) {
                            this.bitField0_ |= 2;
                            this.valueParameterReference_ = cVar.r();
                        } else if (iJ == 24) {
                            int iM = cVar.m();
                            ConstantValue constantValueValueOf = ConstantValue.valueOf(iM);
                            if (constantValueValueOf == null) {
                                codedOutputStreamI.n0(iJ);
                                codedOutputStreamI.n0(iM);
                            } else {
                                this.bitField0_ |= 4;
                                this.constantValue_ = constantValueValueOf;
                            }
                        } else if (iJ == 34) {
                            ProtoBuf$Type.b builder = (this.bitField0_ & 8) == 8 ? this.isInstanceType_.toBuilder() : null;
                            ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar);
                            this.isInstanceType_ = protoBuf$Type;
                            if (builder != null) {
                                builder.d(protoBuf$Type);
                                this.isInstanceType_ = builder.l();
                            }
                            this.bitField0_ |= 8;
                        } else if (iJ == 40) {
                            this.bitField0_ |= 16;
                            this.isInstanceTypeId_ = cVar.r();
                        } else if (iJ == 50) {
                            if ((i & 32) != 32) {
                                this.andArgument_ = new ArrayList();
                                i |= 32;
                            }
                            this.andArgument_.add((ProtoBuf$Expression) cVar.t(PARSER, dVar));
                        } else if (iJ != 58) {
                            if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                            }
                        } else {
                            if ((i & 64) != 64) {
                                this.orArgument_ = new ArrayList();
                                i |= 64;
                            }
                            this.orArgument_.add((ProtoBuf$Expression) cVar.t(PARSER, dVar));
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((i & 32) == 32) {
                        this.andArgument_ = Collections.unmodifiableList(this.andArgument_);
                    }
                    if ((i & 64) == 64) {
                        this.orArgument_ = Collections.unmodifiableList(this.orArgument_);
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
            this.andArgument_ = Collections.unmodifiableList(this.andArgument_);
        }
        if ((i & 64) == 64) {
            this.orArgument_ = Collections.unmodifiableList(this.orArgument_);
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
