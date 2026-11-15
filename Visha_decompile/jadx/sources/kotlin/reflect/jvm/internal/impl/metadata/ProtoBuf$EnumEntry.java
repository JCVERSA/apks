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

public final class ProtoBuf$EnumEntry extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$EnumEntry> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$EnumEntry defaultInstance;
    private int bitField0_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private int name_;
    private final po0 unknownFields;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$EnumEntry c(c cVar, d dVar) {
            return new ProtoBuf$EnumEntry(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public int f;

        public b() {
            o();
        }

        public static b n() {
            return new b();
        }

        private void o() {
        }

        @Override
        public ProtoBuf$EnumEntry build() {
            ProtoBuf$EnumEntry protoBuf$EnumEntryL = l();
            if (protoBuf$EnumEntryL.isInitialized()) {
                return protoBuf$EnumEntryL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$EnumEntryL);
        }

        public ProtoBuf$EnumEntry l() {
            ProtoBuf$EnumEntry protoBuf$EnumEntry = new ProtoBuf$EnumEntry(this);
            int i = (this.e & 1) != 1 ? 0 : 1;
            protoBuf$EnumEntry.name_ = this.f;
            protoBuf$EnumEntry.bitField0_ = i;
            return protoBuf$EnumEntry;
        }

        public b clone() {
            return n().d(l());
        }

        @Override
        public b d(ProtoBuf$EnumEntry protoBuf$EnumEntry) {
            if (protoBuf$EnumEntry == ProtoBuf$EnumEntry.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$EnumEntry.hasName()) {
                r(protoBuf$EnumEntry.getName());
            }
            i(protoBuf$EnumEntry);
            e(c().c(protoBuf$EnumEntry.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$EnumEntry protoBuf$EnumEntry = null;
            try {
                try {
                    ProtoBuf$EnumEntry protoBuf$EnumEntry2 = (ProtoBuf$EnumEntry) ProtoBuf$EnumEntry.PARSER.c(cVar, dVar);
                    if (protoBuf$EnumEntry2 != null) {
                        d(protoBuf$EnumEntry2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$EnumEntry protoBuf$EnumEntry3 = (ProtoBuf$EnumEntry) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$EnumEntry = protoBuf$EnumEntry3;
                        if (protoBuf$EnumEntry != null) {
                            d(protoBuf$EnumEntry);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$EnumEntry != null) {
                    d(protoBuf$EnumEntry);
                }
                throw th;
            }
        }

        public b r(int i) {
            this.e |= 1;
            this.f = i;
            return this;
        }
    }

    static {
        ProtoBuf$EnumEntry protoBuf$EnumEntry = new ProtoBuf$EnumEntry(true);
        defaultInstance = protoBuf$EnumEntry;
        protoBuf$EnumEntry.initFields();
    }

    public static ProtoBuf$EnumEntry getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.name_ = 0;
    }

    public static b newBuilder() {
        return b.n();
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
        int iO = ((this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.name_) : 0) + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iO;
        return iO;
    }

    public boolean hasName() {
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
            codedOutputStream.Z(1, this.name_);
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$EnumEntry protoBuf$EnumEntry) {
        return newBuilder().d(protoBuf$EnumEntry);
    }

    @Override
    public ProtoBuf$EnumEntry getDefaultInstanceForType() {
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

    private ProtoBuf$EnumEntry(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$EnumEntry(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$EnumEntry(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                            if (iJ != 8) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                this.bitField0_ |= 1;
                                this.name_ = cVar.r();
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
