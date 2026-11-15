package kotlin.reflect.jvm.internal.impl.metadata;

import defpackage.cx7;
import defpackage.nj8;
import defpackage.oj5;
import defpackage.pj5;
import defpackage.po0;
import defpackage.un6;
import java.io.IOException;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.c;
import kotlin.reflect.jvm.internal.impl.protobuf.d;

public final class ProtoBuf$StringTable extends GeneratedMessageLite implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$StringTable defaultInstance;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private pj5 string_;
    private final po0 unknownFields;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$StringTable c(c cVar, d dVar) {
            return new ProtoBuf$StringTable(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b implements un6 {
        public int c;
        public pj5 d = oj5.c;

        public b() {
            l();
        }

        public static b j() {
            return new b();
        }

        private void l() {
        }

        @Override
        public ProtoBuf$StringTable build() {
            ProtoBuf$StringTable protoBuf$StringTableH = h();
            if (protoBuf$StringTableH.isInitialized()) {
                return protoBuf$StringTableH;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$StringTableH);
        }

        public ProtoBuf$StringTable h() {
            ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable(this);
            if ((this.c & 1) == 1) {
                this.d = this.d.getUnmodifiableView();
                this.c &= -2;
            }
            protoBuf$StringTable.string_ = this.d;
            return protoBuf$StringTable;
        }

        public b clone() {
            return j().d(h());
        }

        public final void k() {
            if ((this.c & 1) != 1) {
                this.d = new oj5(this.d);
                this.c |= 1;
            }
        }

        @Override
        public b d(ProtoBuf$StringTable protoBuf$StringTable) {
            if (protoBuf$StringTable == ProtoBuf$StringTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$StringTable.string_.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = protoBuf$StringTable.string_;
                    this.c &= -2;
                } else {
                    k();
                    this.d.addAll(protoBuf$StringTable.string_);
                }
            }
            e(c().c(protoBuf$StringTable.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$StringTable protoBuf$StringTable = null;
            try {
                try {
                    ProtoBuf$StringTable protoBuf$StringTable2 = (ProtoBuf$StringTable) ProtoBuf$StringTable.PARSER.c(cVar, dVar);
                    if (protoBuf$StringTable2 != null) {
                        d(protoBuf$StringTable2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$StringTable protoBuf$StringTable3 = (ProtoBuf$StringTable) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$StringTable = protoBuf$StringTable3;
                        if (protoBuf$StringTable != null) {
                            d(protoBuf$StringTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$StringTable != null) {
                    d(protoBuf$StringTable);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$StringTable protoBuf$StringTable = new ProtoBuf$StringTable(true);
        defaultInstance = protoBuf$StringTable;
        protoBuf$StringTable.initFields();
    }

    public static ProtoBuf$StringTable getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.string_ = oj5.c;
    }

    public static b newBuilder() {
        return b.j();
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
        int iE = 0;
        for (int i2 = 0; i2 < this.string_.size(); i2++) {
            iE += CodedOutputStream.e(this.string_.getByteString(i2));
        }
        int size = iE + getStringList().size() + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public String getString(int i) {
        return (String) this.string_.get(i);
    }

    public nj8 getStringList() {
        return this.string_;
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
        for (int i = 0; i < this.string_.size(); i++) {
            codedOutputStream.N(1, this.string_.getByteString(i));
        }
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$StringTable protoBuf$StringTable) {
        return newBuilder().d(protoBuf$StringTable);
    }

    @Override
    public ProtoBuf$StringTable getDefaultInstanceForType() {
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

    private ProtoBuf$StringTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.c();
    }

    private ProtoBuf$StringTable(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$StringTable(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                        if (iJ != 0) {
                            if (iJ != 10) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                po0 po0VarK = cVar.k();
                                if (!z2) {
                                    this.string_ = new oj5();
                                    z2 = true;
                                }
                                this.string_.g(po0VarK);
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
                if (z2) {
                    this.string_ = this.string_.getUnmodifiableView();
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
            this.string_ = this.string_.getUnmodifiableView();
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
