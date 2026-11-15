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

public final class ProtoBuf$TypeTable extends GeneratedMessageLite implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$TypeTable defaultInstance;
    private int bitField0_;
    private int firstNullable_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List<ProtoBuf$Type> type_;
    private final po0 unknownFields;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$TypeTable c(c cVar, d dVar) {
            return new ProtoBuf$TypeTable(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b implements un6 {
        public int c;
        public List d = Collections.emptyList();
        public int e = -1;

        public b() {
            l();
        }

        public static b j() {
            return new b();
        }

        private void l() {
        }

        @Override
        public ProtoBuf$TypeTable build() {
            ProtoBuf$TypeTable protoBuf$TypeTableH = h();
            if (protoBuf$TypeTableH.isInitialized()) {
                return protoBuf$TypeTableH;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$TypeTableH);
        }

        public ProtoBuf$TypeTable h() {
            ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable(this);
            int i = this.c;
            if ((i & 1) == 1) {
                this.d = Collections.unmodifiableList(this.d);
                this.c &= -2;
            }
            protoBuf$TypeTable.type_ = this.d;
            int i2 = (i & 2) != 2 ? 0 : 1;
            protoBuf$TypeTable.firstNullable_ = this.e;
            protoBuf$TypeTable.bitField0_ = i2;
            return protoBuf$TypeTable;
        }

        public b clone() {
            return j().d(h());
        }

        public final void k() {
            if ((this.c & 1) != 1) {
                this.d = new ArrayList(this.d);
                this.c |= 1;
            }
        }

        @Override
        public b d(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if (protoBuf$TypeTable == ProtoBuf$TypeTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$TypeTable.type_.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = protoBuf$TypeTable.type_;
                    this.c &= -2;
                } else {
                    k();
                    this.d.addAll(protoBuf$TypeTable.type_);
                }
            }
            if (protoBuf$TypeTable.hasFirstNullable()) {
                o(protoBuf$TypeTable.getFirstNullable());
            }
            e(c().c(protoBuf$TypeTable.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$TypeTable protoBuf$TypeTable = null;
            try {
                try {
                    ProtoBuf$TypeTable protoBuf$TypeTable2 = (ProtoBuf$TypeTable) ProtoBuf$TypeTable.PARSER.c(cVar, dVar);
                    if (protoBuf$TypeTable2 != null) {
                        d(protoBuf$TypeTable2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$TypeTable protoBuf$TypeTable3 = (ProtoBuf$TypeTable) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$TypeTable = protoBuf$TypeTable3;
                        if (protoBuf$TypeTable != null) {
                            d(protoBuf$TypeTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$TypeTable != null) {
                    d(protoBuf$TypeTable);
                }
                throw th;
            }
        }

        public b o(int i) {
            this.c |= 2;
            this.e = i;
            return this;
        }
    }

    static {
        ProtoBuf$TypeTable protoBuf$TypeTable = new ProtoBuf$TypeTable(true);
        defaultInstance = protoBuf$TypeTable;
        protoBuf$TypeTable.initFields();
    }

    public static ProtoBuf$TypeTable getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.type_ = Collections.emptyList();
        this.firstNullable_ = -1;
    }

    public static b newBuilder() {
        return b.j();
    }

    public int getFirstNullable() {
        return this.firstNullable_;
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
        int iO = 0;
        for (int i2 = 0; i2 < this.type_.size(); i2++) {
            iO += CodedOutputStream.r(1, this.type_.get(i2));
        }
        if ((this.bitField0_ & 1) == 1) {
            iO += CodedOutputStream.o(2, this.firstNullable_);
        }
        int size = iO + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public ProtoBuf$Type getType(int i) {
        return this.type_.get(i);
    }

    public int getTypeCount() {
        return this.type_.size();
    }

    public List<ProtoBuf$Type> getTypeList() {
        return this.type_;
    }

    public boolean hasFirstNullable() {
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
        for (int i = 0; i < getTypeCount(); i++) {
            if (!getType(i).isInitialized()) {
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
        for (int i = 0; i < this.type_.size(); i++) {
            codedOutputStream.c0(1, this.type_.get(i));
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.Z(2, this.firstNullable_);
        }
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$TypeTable protoBuf$TypeTable) {
        return newBuilder().d(protoBuf$TypeTable);
    }

    @Override
    public ProtoBuf$TypeTable getDefaultInstanceForType() {
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

    private ProtoBuf$TypeTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.c();
    }

    private ProtoBuf$TypeTable(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$TypeTable(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                    int iJ = cVar.J();
                    if (iJ != 0) {
                        if (iJ == 10) {
                            if (!z2) {
                                this.type_ = new ArrayList();
                                z2 = true;
                            }
                            this.type_.add((ProtoBuf$Type) cVar.t(ProtoBuf$Type.PARSER, dVar));
                        } else if (iJ != 16) {
                            if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                            }
                        } else {
                            this.bitField0_ |= 1;
                            this.firstNullable_ = cVar.r();
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (z2) {
                        this.type_ = Collections.unmodifiableList(this.type_);
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
        if (z2) {
            this.type_ = Collections.unmodifiableList(this.type_);
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
