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

public final class ProtoBuf$VersionRequirementTable extends GeneratedMessageLite implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$VersionRequirementTable defaultInstance;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List<ProtoBuf$VersionRequirement> requirement_;
    private final po0 unknownFields;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$VersionRequirementTable c(c cVar, d dVar) {
            return new ProtoBuf$VersionRequirementTable(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b implements un6 {
        public int c;
        public List d = Collections.emptyList();

        public b() {
            l();
        }

        public static b j() {
            return new b();
        }

        private void l() {
        }

        @Override
        public ProtoBuf$VersionRequirementTable build() {
            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTableH = h();
            if (protoBuf$VersionRequirementTableH.isInitialized()) {
                return protoBuf$VersionRequirementTableH;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$VersionRequirementTableH);
        }

        public ProtoBuf$VersionRequirementTable h() {
            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = new ProtoBuf$VersionRequirementTable(this);
            if ((this.c & 1) == 1) {
                this.d = Collections.unmodifiableList(this.d);
                this.c &= -2;
            }
            protoBuf$VersionRequirementTable.requirement_ = this.d;
            return protoBuf$VersionRequirementTable;
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
        public b d(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            if (protoBuf$VersionRequirementTable == ProtoBuf$VersionRequirementTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$VersionRequirementTable.requirement_.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = protoBuf$VersionRequirementTable.requirement_;
                    this.c &= -2;
                } else {
                    k();
                    this.d.addAll(protoBuf$VersionRequirementTable.requirement_);
                }
            }
            e(c().c(protoBuf$VersionRequirementTable.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = null;
            try {
                try {
                    ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable2 = (ProtoBuf$VersionRequirementTable) ProtoBuf$VersionRequirementTable.PARSER.c(cVar, dVar);
                    if (protoBuf$VersionRequirementTable2 != null) {
                        d(protoBuf$VersionRequirementTable2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable3 = (ProtoBuf$VersionRequirementTable) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$VersionRequirementTable = protoBuf$VersionRequirementTable3;
                        if (protoBuf$VersionRequirementTable != null) {
                            d(protoBuf$VersionRequirementTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$VersionRequirementTable != null) {
                    d(protoBuf$VersionRequirementTable);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = new ProtoBuf$VersionRequirementTable(true);
        defaultInstance = protoBuf$VersionRequirementTable;
        protoBuf$VersionRequirementTable.initFields();
    }

    public static ProtoBuf$VersionRequirementTable getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.requirement_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.j();
    }

    @Override
    public cx7 getParserForType() {
        return PARSER;
    }

    public int getRequirementCount() {
        return this.requirement_.size();
    }

    public List<ProtoBuf$VersionRequirement> getRequirementList() {
        return this.requirement_;
    }

    @Override
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iR = 0;
        for (int i2 = 0; i2 < this.requirement_.size(); i2++) {
            iR += CodedOutputStream.r(1, this.requirement_.get(i2));
        }
        int size = iR + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
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
        for (int i = 0; i < this.requirement_.size(); i++) {
            codedOutputStream.c0(1, this.requirement_.get(i));
        }
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
        return newBuilder().d(protoBuf$VersionRequirementTable);
    }

    @Override
    public ProtoBuf$VersionRequirementTable getDefaultInstanceForType() {
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

    private ProtoBuf$VersionRequirementTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.c();
    }

    private ProtoBuf$VersionRequirementTable(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$VersionRequirementTable(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                                if (!z2) {
                                    this.requirement_ = new ArrayList();
                                    z2 = true;
                                }
                                this.requirement_.add((ProtoBuf$VersionRequirement) cVar.t(ProtoBuf$VersionRequirement.PARSER, dVar));
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
                    this.requirement_ = Collections.unmodifiableList(this.requirement_);
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
            this.requirement_ = Collections.unmodifiableList(this.requirement_);
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
