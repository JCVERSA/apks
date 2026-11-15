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
import kotlin.reflect.jvm.internal.impl.protobuf.f;

public final class ProtoBuf$VersionRequirement extends GeneratedMessageLite implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$VersionRequirement defaultInstance;
    private int bitField0_;
    private int errorCode_;
    private Level level_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int message_;
    private final po0 unknownFields;
    private int versionFull_;
    private VersionKind versionKind_;
    private int version_;

    public enum Level implements f.a {
        WARNING(0, 0),
        ERROR(1, 1),
        HIDDEN(2, 2);

        private static f.b internalValueMap = new a();
        private final int value;

        public static class a implements f.b {
            @Override
            public Level findValueByNumber(int i) {
                return Level.valueOf(i);
            }
        }

        Level(int i, int i2) {
            this.value = i2;
        }

        @Override
        public final int getNumber() {
            return this.value;
        }

        public static Level valueOf(int i) {
            if (i == 0) {
                return WARNING;
            }
            if (i == 1) {
                return ERROR;
            }
            if (i != 2) {
                return null;
            }
            return HIDDEN;
        }
    }

    public enum VersionKind implements f.a {
        LANGUAGE_VERSION(0, 0),
        COMPILER_VERSION(1, 1),
        API_VERSION(2, 2);

        private static f.b internalValueMap = new a();
        private final int value;

        public static class a implements f.b {
            @Override
            public VersionKind findValueByNumber(int i) {
                return VersionKind.valueOf(i);
            }
        }

        VersionKind(int i, int i2) {
            this.value = i2;
        }

        @Override
        public final int getNumber() {
            return this.value;
        }

        public static VersionKind valueOf(int i) {
            if (i == 0) {
                return LANGUAGE_VERSION;
            }
            if (i == 1) {
                return COMPILER_VERSION;
            }
            if (i != 2) {
                return null;
            }
            return API_VERSION;
        }
    }

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$VersionRequirement c(c cVar, d dVar) {
            return new ProtoBuf$VersionRequirement(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b implements un6 {
        public int c;
        public int d;
        public int e;
        public int g;
        public int h;
        public Level f = Level.ERROR;
        public VersionKind i = VersionKind.LANGUAGE_VERSION;

        public b() {
            k();
        }

        public static b j() {
            return new b();
        }

        private void k() {
        }

        @Override
        public ProtoBuf$VersionRequirement build() {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirementH = h();
            if (protoBuf$VersionRequirementH.isInitialized()) {
                return protoBuf$VersionRequirementH;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$VersionRequirementH);
        }

        public ProtoBuf$VersionRequirement h() {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement(this);
            int i = this.c;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$VersionRequirement.version_ = this.d;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$VersionRequirement.versionFull_ = this.e;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$VersionRequirement.level_ = this.f;
            if ((i & 8) == 8) {
                i2 |= 8;
            }
            protoBuf$VersionRequirement.errorCode_ = this.g;
            if ((i & 16) == 16) {
                i2 |= 16;
            }
            protoBuf$VersionRequirement.message_ = this.h;
            if ((i & 32) == 32) {
                i2 |= 32;
            }
            protoBuf$VersionRequirement.versionKind_ = this.i;
            protoBuf$VersionRequirement.bitField0_ = i2;
            return protoBuf$VersionRequirement;
        }

        public b clone() {
            return j().d(h());
        }

        @Override
        public b d(ProtoBuf$VersionRequirement protoBuf$VersionRequirement) {
            if (protoBuf$VersionRequirement == ProtoBuf$VersionRequirement.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$VersionRequirement.hasVersion()) {
                q(protoBuf$VersionRequirement.getVersion());
            }
            if (protoBuf$VersionRequirement.hasVersionFull()) {
                r(protoBuf$VersionRequirement.getVersionFull());
            }
            if (protoBuf$VersionRequirement.hasLevel()) {
                o(protoBuf$VersionRequirement.getLevel());
            }
            if (protoBuf$VersionRequirement.hasErrorCode()) {
                n(protoBuf$VersionRequirement.getErrorCode());
            }
            if (protoBuf$VersionRequirement.hasMessage()) {
                p(protoBuf$VersionRequirement.getMessage());
            }
            if (protoBuf$VersionRequirement.hasVersionKind()) {
                s(protoBuf$VersionRequirement.getVersionKind());
            }
            e(c().c(protoBuf$VersionRequirement.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$VersionRequirement protoBuf$VersionRequirement = null;
            try {
                try {
                    ProtoBuf$VersionRequirement protoBuf$VersionRequirement2 = (ProtoBuf$VersionRequirement) ProtoBuf$VersionRequirement.PARSER.c(cVar, dVar);
                    if (protoBuf$VersionRequirement2 != null) {
                        d(protoBuf$VersionRequirement2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$VersionRequirement protoBuf$VersionRequirement3 = (ProtoBuf$VersionRequirement) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$VersionRequirement = protoBuf$VersionRequirement3;
                        if (protoBuf$VersionRequirement != null) {
                            d(protoBuf$VersionRequirement);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$VersionRequirement != null) {
                    d(protoBuf$VersionRequirement);
                }
                throw th;
            }
        }

        public b n(int i) {
            this.c |= 8;
            this.g = i;
            return this;
        }

        public b o(Level level) {
            level.getClass();
            this.c |= 4;
            this.f = level;
            return this;
        }

        public b p(int i) {
            this.c |= 16;
            this.h = i;
            return this;
        }

        public b q(int i) {
            this.c |= 1;
            this.d = i;
            return this;
        }

        public b r(int i) {
            this.c |= 2;
            this.e = i;
            return this;
        }

        public b s(VersionKind versionKind) {
            versionKind.getClass();
            this.c |= 32;
            this.i = versionKind;
            return this;
        }
    }

    static {
        ProtoBuf$VersionRequirement protoBuf$VersionRequirement = new ProtoBuf$VersionRequirement(true);
        defaultInstance = protoBuf$VersionRequirement;
        protoBuf$VersionRequirement.initFields();
    }

    public static ProtoBuf$VersionRequirement getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.version_ = 0;
        this.versionFull_ = 0;
        this.level_ = Level.ERROR;
        this.errorCode_ = 0;
        this.message_ = 0;
        this.versionKind_ = VersionKind.LANGUAGE_VERSION;
    }

    public static b newBuilder() {
        return b.j();
    }

    public int getErrorCode() {
        return this.errorCode_;
    }

    public Level getLevel() {
        return this.level_;
    }

    public int getMessage() {
        return this.message_;
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
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.version_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            iO += CodedOutputStream.o(2, this.versionFull_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iO += CodedOutputStream.h(3, this.level_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            iO += CodedOutputStream.o(4, this.errorCode_);
        }
        if ((this.bitField0_ & 16) == 16) {
            iO += CodedOutputStream.o(5, this.message_);
        }
        if ((this.bitField0_ & 32) == 32) {
            iO += CodedOutputStream.h(6, this.versionKind_.getNumber());
        }
        int size = iO + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public int getVersion() {
        return this.version_;
    }

    public int getVersionFull() {
        return this.versionFull_;
    }

    public VersionKind getVersionKind() {
        return this.versionKind_;
    }

    public boolean hasErrorCode() {
        return (this.bitField0_ & 8) == 8;
    }

    public boolean hasLevel() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasMessage() {
        return (this.bitField0_ & 16) == 16;
    }

    public boolean hasVersion() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasVersionFull() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasVersionKind() {
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
        this.memoizedIsInitialized = (byte) 1;
        return true;
    }

    @Override
    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        getSerializedSize();
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.Z(1, this.version_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.Z(2, this.versionFull_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.R(3, this.level_.getNumber());
        }
        if ((this.bitField0_ & 8) == 8) {
            codedOutputStream.Z(4, this.errorCode_);
        }
        if ((this.bitField0_ & 16) == 16) {
            codedOutputStream.Z(5, this.message_);
        }
        if ((this.bitField0_ & 32) == 32) {
            codedOutputStream.R(6, this.versionKind_.getNumber());
        }
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$VersionRequirement protoBuf$VersionRequirement) {
        return newBuilder().d(protoBuf$VersionRequirement);
    }

    @Override
    public ProtoBuf$VersionRequirement getDefaultInstanceForType() {
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

    private ProtoBuf$VersionRequirement(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.c();
    }

    private ProtoBuf$VersionRequirement(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$VersionRequirement(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                            this.version_ = cVar.r();
                        } else if (iJ == 16) {
                            this.bitField0_ |= 2;
                            this.versionFull_ = cVar.r();
                        } else if (iJ == 24) {
                            int iM = cVar.m();
                            Level levelValueOf = Level.valueOf(iM);
                            if (levelValueOf == null) {
                                codedOutputStreamI.n0(iJ);
                                codedOutputStreamI.n0(iM);
                            } else {
                                this.bitField0_ |= 4;
                                this.level_ = levelValueOf;
                            }
                        } else if (iJ == 32) {
                            this.bitField0_ |= 8;
                            this.errorCode_ = cVar.r();
                        } else if (iJ == 40) {
                            this.bitField0_ |= 16;
                            this.message_ = cVar.r();
                        } else if (iJ != 48) {
                            if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                            }
                        } else {
                            int iM2 = cVar.m();
                            VersionKind versionKindValueOf = VersionKind.valueOf(iM2);
                            if (versionKindValueOf == null) {
                                codedOutputStreamI.n0(iJ);
                                codedOutputStreamI.n0(iM2);
                            } else {
                                this.bitField0_ |= 32;
                                this.versionKind_ = versionKindValueOf;
                            }
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
