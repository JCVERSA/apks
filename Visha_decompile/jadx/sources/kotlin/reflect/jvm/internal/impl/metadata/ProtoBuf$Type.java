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

public final class ProtoBuf$Type extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Type> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$Type defaultInstance;
    private int abbreviatedTypeId_;
    private ProtoBuf$Type abbreviatedType_;
    private List<Argument> argument_;
    private int bitField0_;
    private int className_;
    private int flags_;
    private int flexibleTypeCapabilitiesId_;
    private int flexibleUpperBoundId_;
    private ProtoBuf$Type flexibleUpperBound_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private boolean nullable_;
    private int outerTypeId_;
    private ProtoBuf$Type outerType_;
    private int typeAliasName_;
    private int typeParameterName_;
    private int typeParameter_;
    private final po0 unknownFields;

    public static final class Argument extends GeneratedMessageLite implements un6 {
        public static cx7 PARSER = new a();
        private static final Argument defaultInstance;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private Projection projection_;
        private int typeId_;
        private ProtoBuf$Type type_;
        private final po0 unknownFields;

        public enum Projection implements f.a {
            IN(0, 0),
            OUT(1, 1),
            INV(2, 2),
            STAR(3, 3);

            private static f.b internalValueMap = new a();
            private final int value;

            public static class a implements f.b {
                @Override
                public Projection findValueByNumber(int i) {
                    return Projection.valueOf(i);
                }
            }

            Projection(int i, int i2) {
                this.value = i2;
            }

            @Override
            public final int getNumber() {
                return this.value;
            }

            public static Projection valueOf(int i) {
                if (i == 0) {
                    return IN;
                }
                if (i == 1) {
                    return OUT;
                }
                if (i == 2) {
                    return INV;
                }
                if (i != 3) {
                    return null;
                }
                return STAR;
            }
        }

        public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
            @Override
            public Argument c(c cVar, d dVar) {
                return new Argument(cVar, dVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b implements un6 {
            public int c;
            public Projection d = Projection.INV;
            public ProtoBuf$Type e = ProtoBuf$Type.getDefaultInstance();
            public int f;

            public b() {
                k();
            }

            public static b j() {
                return new b();
            }

            private void k() {
            }

            @Override
            public Argument build() {
                Argument argumentH = h();
                if (argumentH.isInitialized()) {
                    return argumentH;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(argumentH);
            }

            public Argument h() {
                Argument argument = new Argument(this);
                int i = this.c;
                int i2 = (i & 1) != 1 ? 0 : 1;
                argument.projection_ = this.d;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                argument.type_ = this.e;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                argument.typeId_ = this.f;
                argument.bitField0_ = i2;
                return argument;
            }

            public b clone() {
                return j().d(h());
            }

            @Override
            public b d(Argument argument) {
                if (argument == Argument.getDefaultInstance()) {
                    return this;
                }
                if (argument.hasProjection()) {
                    o(argument.getProjection());
                }
                if (argument.hasType()) {
                    n(argument.getType());
                }
                if (argument.hasTypeId()) {
                    p(argument.getTypeId());
                }
                e(c().c(argument.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            @Override
            public b b(c cVar, d dVar) throws Throwable {
                Argument argument = null;
                try {
                    try {
                        Argument argument2 = (Argument) Argument.PARSER.c(cVar, dVar);
                        if (argument2 != null) {
                            d(argument2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        Argument argument3 = (Argument) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            argument = argument3;
                            if (argument != null) {
                                d(argument);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (argument != null) {
                        d(argument);
                    }
                    throw th;
                }
            }

            public b n(ProtoBuf$Type protoBuf$Type) {
                if ((this.c & 2) != 2 || this.e == ProtoBuf$Type.getDefaultInstance()) {
                    this.e = protoBuf$Type;
                } else {
                    this.e = ProtoBuf$Type.newBuilder(this.e).d(protoBuf$Type).l();
                }
                this.c |= 2;
                return this;
            }

            public b o(Projection projection) {
                projection.getClass();
                this.c |= 1;
                this.d = projection;
                return this;
            }

            public b p(int i) {
                this.c |= 4;
                this.f = i;
                return this;
            }
        }

        static {
            Argument argument = new Argument(true);
            defaultInstance = argument;
            argument.initFields();
        }

        public static Argument getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.projection_ = Projection.INV;
            this.type_ = ProtoBuf$Type.getDefaultInstance();
            this.typeId_ = 0;
        }

        public static b newBuilder() {
            return b.j();
        }

        @Override
        public cx7 getParserForType() {
            return PARSER;
        }

        public Projection getProjection() {
            return this.projection_;
        }

        @Override
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iH = (this.bitField0_ & 1) == 1 ? CodedOutputStream.h(1, this.projection_.getNumber()) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iH += CodedOutputStream.r(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iH += CodedOutputStream.o(3, this.typeId_);
            }
            int size = iH + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public ProtoBuf$Type getType() {
            return this.type_;
        }

        public int getTypeId() {
            return this.typeId_;
        }

        public boolean hasProjection() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean hasType() {
            return (this.bitField0_ & 2) == 2;
        }

        public boolean hasTypeId() {
            return (this.bitField0_ & 4) == 4;
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
            if (!hasType() || getType().isInitialized()) {
                this.memoizedIsInitialized = (byte) 1;
                return true;
            }
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }

        @Override
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.R(1, this.projection_.getNumber());
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.c0(2, this.type_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.Z(3, this.typeId_);
            }
            codedOutputStream.h0(this.unknownFields);
        }

        public static b newBuilder(Argument argument) {
            return newBuilder().d(argument);
        }

        @Override
        public Argument getDefaultInstanceForType() {
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

        private Argument(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.c();
        }

        private Argument(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = po0.b;
        }

        private Argument(c cVar, d dVar) throws InvalidProtocolBufferException {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            initFields();
            po0.b bVarQ = po0.q();
            CodedOutputStream codedOutputStreamI = CodedOutputStream.I(bVarQ, 1);
            boolean z = false;
            while (!z) {
                try {
                    try {
                        try {
                            int iJ = cVar.J();
                            if (iJ != 0) {
                                if (iJ == 8) {
                                    int iM = cVar.m();
                                    Projection projectionValueOf = Projection.valueOf(iM);
                                    if (projectionValueOf == null) {
                                        codedOutputStreamI.n0(iJ);
                                        codedOutputStreamI.n0(iM);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.projection_ = projectionValueOf;
                                    }
                                } else if (iJ == 18) {
                                    b builder = (this.bitField0_ & 2) == 2 ? this.type_.toBuilder() : null;
                                    ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar);
                                    this.type_ = protoBuf$Type;
                                    if (builder != null) {
                                        builder.d(protoBuf$Type);
                                        this.type_ = builder.l();
                                    }
                                    this.bitField0_ |= 2;
                                } else if (iJ != 24) {
                                    if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                    }
                                } else {
                                    this.bitField0_ |= 4;
                                    this.typeId_ = cVar.r();
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
            try {
                codedOutputStreamI.H();
            } catch (IOException unused2) {
            } finally {
                this.unknownFields = bVarQ.g();
            }
            makeExtensionsImmutable();
        }
    }

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$Type c(c cVar, d dVar) {
            return new ProtoBuf$Type(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public boolean g;
        public int h;
        public int j;
        public int k;
        public int l;
        public int m;
        public int n;
        public int p;
        public int r;
        public int s;
        public List f = Collections.emptyList();
        public ProtoBuf$Type i = ProtoBuf$Type.getDefaultInstance();
        public ProtoBuf$Type o = ProtoBuf$Type.getDefaultInstance();
        public ProtoBuf$Type q = ProtoBuf$Type.getDefaultInstance();

        public b() {
            p();
        }

        public static b n() {
            return new b();
        }

        private void o() {
            if ((this.e & 1) != 1) {
                this.f = new ArrayList(this.f);
                this.e |= 1;
            }
        }

        private void p() {
        }

        public b A(boolean z) {
            this.e |= 2;
            this.g = z;
            return this;
        }

        public b B(int i) {
            this.e |= 1024;
            this.p = i;
            return this;
        }

        public b C(int i) {
            this.e |= 256;
            this.n = i;
            return this;
        }

        public b E(int i) {
            this.e |= 64;
            this.l = i;
            return this;
        }

        public b F(int i) {
            this.e |= 128;
            this.m = i;
            return this;
        }

        @Override
        public ProtoBuf$Type build() {
            ProtoBuf$Type protoBuf$TypeL = l();
            if (protoBuf$TypeL.isInitialized()) {
                return protoBuf$TypeL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$TypeL);
        }

        public ProtoBuf$Type l() {
            ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(this);
            int i = this.e;
            if ((i & 1) == 1) {
                this.f = Collections.unmodifiableList(this.f);
                this.e &= -2;
            }
            protoBuf$Type.argument_ = this.f;
            int i2 = (i & 2) != 2 ? 0 : 1;
            protoBuf$Type.nullable_ = this.g;
            if ((i & 4) == 4) {
                i2 |= 2;
            }
            protoBuf$Type.flexibleTypeCapabilitiesId_ = this.h;
            if ((i & 8) == 8) {
                i2 |= 4;
            }
            protoBuf$Type.flexibleUpperBound_ = this.i;
            if ((i & 16) == 16) {
                i2 |= 8;
            }
            protoBuf$Type.flexibleUpperBoundId_ = this.j;
            if ((i & 32) == 32) {
                i2 |= 16;
            }
            protoBuf$Type.className_ = this.k;
            if ((i & 64) == 64) {
                i2 |= 32;
            }
            protoBuf$Type.typeParameter_ = this.l;
            if ((i & 128) == 128) {
                i2 |= 64;
            }
            protoBuf$Type.typeParameterName_ = this.m;
            if ((i & 256) == 256) {
                i2 |= 128;
            }
            protoBuf$Type.typeAliasName_ = this.n;
            if ((i & 512) == 512) {
                i2 |= 256;
            }
            protoBuf$Type.outerType_ = this.o;
            if ((i & 1024) == 1024) {
                i2 |= 512;
            }
            protoBuf$Type.outerTypeId_ = this.p;
            if ((i & 2048) == 2048) {
                i2 |= 1024;
            }
            protoBuf$Type.abbreviatedType_ = this.q;
            if ((i & 4096) == 4096) {
                i2 |= 2048;
            }
            protoBuf$Type.abbreviatedTypeId_ = this.r;
            if ((i & 8192) == 8192) {
                i2 |= 4096;
            }
            protoBuf$Type.flags_ = this.s;
            protoBuf$Type.bitField0_ = i2;
            return protoBuf$Type;
        }

        public b clone() {
            return n().d(l());
        }

        public b q(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 2048) != 2048 || this.q == ProtoBuf$Type.getDefaultInstance()) {
                this.q = protoBuf$Type;
            } else {
                this.q = ProtoBuf$Type.newBuilder(this.q).d(protoBuf$Type).l();
            }
            this.e |= 2048;
            return this;
        }

        public b r(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 8) != 8 || this.i == ProtoBuf$Type.getDefaultInstance()) {
                this.i = protoBuf$Type;
            } else {
                this.i = ProtoBuf$Type.newBuilder(this.i).d(protoBuf$Type).l();
            }
            this.e |= 8;
            return this;
        }

        @Override
        public b d(ProtoBuf$Type protoBuf$Type) {
            if (protoBuf$Type == ProtoBuf$Type.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$Type.argument_.isEmpty()) {
                if (this.f.isEmpty()) {
                    this.f = protoBuf$Type.argument_;
                    this.e &= -2;
                } else {
                    o();
                    this.f.addAll(protoBuf$Type.argument_);
                }
            }
            if (protoBuf$Type.hasNullable()) {
                A(protoBuf$Type.getNullable());
            }
            if (protoBuf$Type.hasFlexibleTypeCapabilitiesId()) {
                y(protoBuf$Type.getFlexibleTypeCapabilitiesId());
            }
            if (protoBuf$Type.hasFlexibleUpperBound()) {
                r(protoBuf$Type.getFlexibleUpperBound());
            }
            if (protoBuf$Type.hasFlexibleUpperBoundId()) {
                z(protoBuf$Type.getFlexibleUpperBoundId());
            }
            if (protoBuf$Type.hasClassName()) {
                w(protoBuf$Type.getClassName());
            }
            if (protoBuf$Type.hasTypeParameter()) {
                E(protoBuf$Type.getTypeParameter());
            }
            if (protoBuf$Type.hasTypeParameterName()) {
                F(protoBuf$Type.getTypeParameterName());
            }
            if (protoBuf$Type.hasTypeAliasName()) {
                C(protoBuf$Type.getTypeAliasName());
            }
            if (protoBuf$Type.hasOuterType()) {
                u(protoBuf$Type.getOuterType());
            }
            if (protoBuf$Type.hasOuterTypeId()) {
                B(protoBuf$Type.getOuterTypeId());
            }
            if (protoBuf$Type.hasAbbreviatedType()) {
                q(protoBuf$Type.getAbbreviatedType());
            }
            if (protoBuf$Type.hasAbbreviatedTypeId()) {
                v(protoBuf$Type.getAbbreviatedTypeId());
            }
            if (protoBuf$Type.hasFlags()) {
                x(protoBuf$Type.getFlags());
            }
            i(protoBuf$Type);
            e(c().c(protoBuf$Type.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$Type protoBuf$Type = null;
            try {
                try {
                    ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) ProtoBuf$Type.PARSER.c(cVar, dVar);
                    if (protoBuf$Type2 != null) {
                        d(protoBuf$Type2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$Type protoBuf$Type3 = (ProtoBuf$Type) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Type = protoBuf$Type3;
                        if (protoBuf$Type != null) {
                            d(protoBuf$Type);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Type != null) {
                    d(protoBuf$Type);
                }
                throw th;
            }
        }

        public b u(ProtoBuf$Type protoBuf$Type) {
            if ((this.e & 512) != 512 || this.o == ProtoBuf$Type.getDefaultInstance()) {
                this.o = protoBuf$Type;
            } else {
                this.o = ProtoBuf$Type.newBuilder(this.o).d(protoBuf$Type).l();
            }
            this.e |= 512;
            return this;
        }

        public b v(int i) {
            this.e |= 4096;
            this.r = i;
            return this;
        }

        public b w(int i) {
            this.e |= 32;
            this.k = i;
            return this;
        }

        public b x(int i) {
            this.e |= 8192;
            this.s = i;
            return this;
        }

        public b y(int i) {
            this.e |= 4;
            this.h = i;
            return this;
        }

        public b z(int i) {
            this.e |= 16;
            this.j = i;
            return this;
        }
    }

    static {
        ProtoBuf$Type protoBuf$Type = new ProtoBuf$Type(true);
        defaultInstance = protoBuf$Type;
        protoBuf$Type.initFields();
    }

    public static ProtoBuf$Type getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.argument_ = Collections.emptyList();
        this.nullable_ = false;
        this.flexibleTypeCapabilitiesId_ = 0;
        this.flexibleUpperBound_ = getDefaultInstance();
        this.flexibleUpperBoundId_ = 0;
        this.className_ = 0;
        this.typeParameter_ = 0;
        this.typeParameterName_ = 0;
        this.typeAliasName_ = 0;
        this.outerType_ = getDefaultInstance();
        this.outerTypeId_ = 0;
        this.abbreviatedType_ = getDefaultInstance();
        this.abbreviatedTypeId_ = 0;
        this.flags_ = 0;
    }

    public static b newBuilder() {
        return b.n();
    }

    public ProtoBuf$Type getAbbreviatedType() {
        return this.abbreviatedType_;
    }

    public int getAbbreviatedTypeId() {
        return this.abbreviatedTypeId_;
    }

    public Argument getArgument(int i) {
        return this.argument_.get(i);
    }

    public int getArgumentCount() {
        return this.argument_.size();
    }

    public List<Argument> getArgumentList() {
        return this.argument_;
    }

    public int getClassName() {
        return this.className_;
    }

    public int getFlags() {
        return this.flags_;
    }

    public int getFlexibleTypeCapabilitiesId() {
        return this.flexibleTypeCapabilitiesId_;
    }

    public ProtoBuf$Type getFlexibleUpperBound() {
        return this.flexibleUpperBound_;
    }

    public int getFlexibleUpperBoundId() {
        return this.flexibleUpperBoundId_;
    }

    public boolean getNullable() {
        return this.nullable_;
    }

    public ProtoBuf$Type getOuterType() {
        return this.outerType_;
    }

    public int getOuterTypeId() {
        return this.outerTypeId_;
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
        int iO = (this.bitField0_ & 4096) == 4096 ? CodedOutputStream.o(1, this.flags_) : 0;
        for (int i2 = 0; i2 < this.argument_.size(); i2++) {
            iO += CodedOutputStream.r(2, this.argument_.get(i2));
        }
        if ((this.bitField0_ & 1) == 1) {
            iO += CodedOutputStream.a(3, this.nullable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(4, this.flexibleTypeCapabilitiesId_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.r(5, this.flexibleUpperBound_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(6, this.className_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.o(7, this.typeParameter_);
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.o(8, this.flexibleUpperBoundId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            iO += CodedOutputStream.o(9, this.typeParameterName_);
        }
        if ((this.bitField0_ & 256) == 256) {
            iO += CodedOutputStream.r(10, this.outerType_);
        }
        if ((this.bitField0_ & 512) == 512) {
            iO += CodedOutputStream.o(11, this.outerTypeId_);
        }
        if ((this.bitField0_ & 128) == 128) {
            iO += CodedOutputStream.o(12, this.typeAliasName_);
        }
        if ((this.bitField0_ & 1024) == 1024) {
            iO += CodedOutputStream.r(13, this.abbreviatedType_);
        }
        if ((this.bitField0_ & 2048) == 2048) {
            iO += CodedOutputStream.o(14, this.abbreviatedTypeId_);
        }
        int iExtensionsSerializedSize = iO + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public int getTypeAliasName() {
        return this.typeAliasName_;
    }

    public int getTypeParameter() {
        return this.typeParameter_;
    }

    public int getTypeParameterName() {
        return this.typeParameterName_;
    }

    public boolean hasAbbreviatedType() {
        return (this.bitField0_ & 1024) == 1024;
    }

    public boolean hasAbbreviatedTypeId() {
        return (this.bitField0_ & 2048) == 2048;
    }

    public boolean hasClassName() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasFlags() {
        return (this.bitField0_ & 4096) == 4096;
    }

    public boolean hasFlexibleTypeCapabilitiesId() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasFlexibleUpperBound() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasFlexibleUpperBoundId() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasNullable() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasOuterType() {
        return (this.bitField0_ & 256) == 256;
    }

    public boolean hasOuterTypeId() {
        return (this.bitField0_ & 512) == 512;
    }

    public boolean hasTypeAliasName() {
        return (this.bitField0_ & 128) == 128;
    }

    public boolean hasTypeParameter() {
        return (this.bitField0_ & 32) == 32;
    }

    public boolean hasTypeParameterName() {
        return (this.bitField0_ & 64) == 64;
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
        for (int i = 0; i < getArgumentCount(); i++) {
            if (!getArgument(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasFlexibleUpperBound() && !getFlexibleUpperBound().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasOuterType() && !getOuterType().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasAbbreviatedType() && !getAbbreviatedType().isInitialized()) {
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
        if ((this.bitField0_ & 4096) == 4096) {
            codedOutputStream.Z(1, this.flags_);
        }
        for (int i = 0; i < this.argument_.size(); i++) {
            codedOutputStream.c0(2, this.argument_.get(i));
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.K(3, this.nullable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.Z(4, this.flexibleTypeCapabilitiesId_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.c0(5, this.flexibleUpperBound_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.Z(6, this.className_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.Z(7, this.typeParameter_);
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.Z(8, this.flexibleUpperBoundId_);
        }
        if ((this.bitField0_ & 64) == 64) {
            codedOutputStream.Z(9, this.typeParameterName_);
        }
        if ((this.bitField0_ & 256) == 256) {
            codedOutputStream.c0(10, this.outerType_);
        }
        if ((this.bitField0_ & 512) == 512) {
            codedOutputStream.Z(11, this.outerTypeId_);
        }
        if ((this.bitField0_ & 128) == 128) {
            codedOutputStream.Z(12, this.typeAliasName_);
        }
        if ((this.bitField0_ & 1024) == 1024) {
            codedOutputStream.c0(13, this.abbreviatedType_);
        }
        if ((this.bitField0_ & 2048) == 2048) {
            codedOutputStream.Z(14, this.abbreviatedTypeId_);
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Type protoBuf$Type) {
        return newBuilder().d(protoBuf$Type);
    }

    @Override
    public ProtoBuf$Type getDefaultInstanceForType() {
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

    private ProtoBuf$Type(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$Type(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$Type(c cVar, d dVar) throws InvalidProtocolBufferException {
        b builder;
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        po0.b bVarQ = po0.q();
        CodedOutputStream codedOutputStreamI = CodedOutputStream.I(bVarQ, 1);
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                try {
                    try {
                        int iJ = cVar.J();
                        switch (iJ) {
                            case 0:
                                break;
                            case 8:
                                this.bitField0_ |= 4096;
                                this.flags_ = cVar.r();
                                continue;
                            case 18:
                                if (!z2) {
                                    this.argument_ = new ArrayList();
                                    z2 = true;
                                }
                                this.argument_.add((Argument) cVar.t(Argument.PARSER, dVar));
                                continue;
                            case 24:
                                this.bitField0_ |= 1;
                                this.nullable_ = cVar.j();
                                continue;
                            case 32:
                                this.bitField0_ |= 2;
                                this.flexibleTypeCapabilitiesId_ = cVar.r();
                                continue;
                            case 42:
                                builder = (this.bitField0_ & 4) == 4 ? this.flexibleUpperBound_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type = (ProtoBuf$Type) cVar.t(PARSER, dVar);
                                this.flexibleUpperBound_ = protoBuf$Type;
                                if (builder != null) {
                                    builder.d(protoBuf$Type);
                                    this.flexibleUpperBound_ = builder.l();
                                }
                                this.bitField0_ |= 4;
                                continue;
                            case 48:
                                this.bitField0_ |= 16;
                                this.className_ = cVar.r();
                                continue;
                            case 56:
                                this.bitField0_ |= 32;
                                this.typeParameter_ = cVar.r();
                                continue;
                            case 64:
                                this.bitField0_ |= 8;
                                this.flexibleUpperBoundId_ = cVar.r();
                                continue;
                            case 72:
                                this.bitField0_ |= 64;
                                this.typeParameterName_ = cVar.r();
                                continue;
                            case 82:
                                builder = (this.bitField0_ & 256) == 256 ? this.outerType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type2 = (ProtoBuf$Type) cVar.t(PARSER, dVar);
                                this.outerType_ = protoBuf$Type2;
                                if (builder != null) {
                                    builder.d(protoBuf$Type2);
                                    this.outerType_ = builder.l();
                                }
                                this.bitField0_ |= 256;
                                continue;
                            case 88:
                                this.bitField0_ |= 512;
                                this.outerTypeId_ = cVar.r();
                                continue;
                            case 96:
                                this.bitField0_ |= 128;
                                this.typeAliasName_ = cVar.r();
                                continue;
                            case 106:
                                builder = (this.bitField0_ & 1024) == 1024 ? this.abbreviatedType_.toBuilder() : null;
                                ProtoBuf$Type protoBuf$Type3 = (ProtoBuf$Type) cVar.t(PARSER, dVar);
                                this.abbreviatedType_ = protoBuf$Type3;
                                if (builder != null) {
                                    builder.d(protoBuf$Type3);
                                    this.abbreviatedType_ = builder.l();
                                }
                                this.bitField0_ |= 1024;
                                continue;
                            case 112:
                                this.bitField0_ |= 2048;
                                this.abbreviatedTypeId_ = cVar.r();
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
                    }
                } catch (IOException e2) {
                    throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                }
            } catch (Throwable th) {
                if (z2) {
                    this.argument_ = Collections.unmodifiableList(this.argument_);
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
        if (z2) {
            this.argument_ = Collections.unmodifiableList(this.argument_);
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
