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

public final class ProtoBuf$QualifiedNameTable extends GeneratedMessageLite implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$QualifiedNameTable defaultInstance;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List<QualifiedName> qualifiedName_;
    private final po0 unknownFields;

    public static final class QualifiedName extends GeneratedMessageLite implements un6 {
        public static cx7 PARSER = new a();
        private static final QualifiedName defaultInstance;
        private int bitField0_;
        private Kind kind_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int parentQualifiedName_;
        private int shortName_;
        private final po0 unknownFields;

        public enum Kind implements f.a {
            CLASS(0, 0),
            PACKAGE(1, 1),
            LOCAL(2, 2);

            private static f.b internalValueMap = new a();
            private final int value;

            public static class a implements f.b {
                @Override
                public Kind findValueByNumber(int i) {
                    return Kind.valueOf(i);
                }
            }

            Kind(int i, int i2) {
                this.value = i2;
            }

            @Override
            public final int getNumber() {
                return this.value;
            }

            public static Kind valueOf(int i) {
                if (i == 0) {
                    return CLASS;
                }
                if (i == 1) {
                    return PACKAGE;
                }
                if (i != 2) {
                    return null;
                }
                return LOCAL;
            }
        }

        public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
            @Override
            public QualifiedName c(c cVar, d dVar) {
                return new QualifiedName(cVar, dVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b implements un6 {
            public int c;
            public int e;
            public int d = -1;
            public Kind f = Kind.PACKAGE;

            public b() {
                k();
            }

            public static b j() {
                return new b();
            }

            private void k() {
            }

            @Override
            public QualifiedName build() {
                QualifiedName qualifiedNameH = h();
                if (qualifiedNameH.isInitialized()) {
                    return qualifiedNameH;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(qualifiedNameH);
            }

            public QualifiedName h() {
                QualifiedName qualifiedName = new QualifiedName(this);
                int i = this.c;
                int i2 = (i & 1) != 1 ? 0 : 1;
                qualifiedName.parentQualifiedName_ = this.d;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                qualifiedName.shortName_ = this.e;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                qualifiedName.kind_ = this.f;
                qualifiedName.bitField0_ = i2;
                return qualifiedName;
            }

            public b clone() {
                return j().d(h());
            }

            @Override
            public b d(QualifiedName qualifiedName) {
                if (qualifiedName == QualifiedName.getDefaultInstance()) {
                    return this;
                }
                if (qualifiedName.hasParentQualifiedName()) {
                    o(qualifiedName.getParentQualifiedName());
                }
                if (qualifiedName.hasShortName()) {
                    p(qualifiedName.getShortName());
                }
                if (qualifiedName.hasKind()) {
                    n(qualifiedName.getKind());
                }
                e(c().c(qualifiedName.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            @Override
            public b b(c cVar, d dVar) throws Throwable {
                QualifiedName qualifiedName = null;
                try {
                    try {
                        QualifiedName qualifiedName2 = (QualifiedName) QualifiedName.PARSER.c(cVar, dVar);
                        if (qualifiedName2 != null) {
                            d(qualifiedName2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        QualifiedName qualifiedName3 = (QualifiedName) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            qualifiedName = qualifiedName3;
                            if (qualifiedName != null) {
                                d(qualifiedName);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (qualifiedName != null) {
                        d(qualifiedName);
                    }
                    throw th;
                }
            }

            public b n(Kind kind) {
                kind.getClass();
                this.c |= 4;
                this.f = kind;
                return this;
            }

            public b o(int i) {
                this.c |= 1;
                this.d = i;
                return this;
            }

            public b p(int i) {
                this.c |= 2;
                this.e = i;
                return this;
            }
        }

        static {
            QualifiedName qualifiedName = new QualifiedName(true);
            defaultInstance = qualifiedName;
            qualifiedName.initFields();
        }

        public static QualifiedName getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.parentQualifiedName_ = -1;
            this.shortName_ = 0;
            this.kind_ = Kind.PACKAGE;
        }

        public static b newBuilder() {
            return b.j();
        }

        public Kind getKind() {
            return this.kind_;
        }

        public int getParentQualifiedName() {
            return this.parentQualifiedName_;
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
            int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.parentQualifiedName_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iO += CodedOutputStream.o(2, this.shortName_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iO += CodedOutputStream.h(3, this.kind_.getNumber());
            }
            int size = iO + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public int getShortName() {
            return this.shortName_;
        }

        public boolean hasKind() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean hasParentQualifiedName() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean hasShortName() {
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
            if (hasShortName()) {
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
                codedOutputStream.Z(1, this.parentQualifiedName_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.Z(2, this.shortName_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.R(3, this.kind_.getNumber());
            }
            codedOutputStream.h0(this.unknownFields);
        }

        public static b newBuilder(QualifiedName qualifiedName) {
            return newBuilder().d(qualifiedName);
        }

        @Override
        public QualifiedName getDefaultInstanceForType() {
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

        private QualifiedName(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.c();
        }

        private QualifiedName(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = po0.b;
        }

        private QualifiedName(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                                    this.bitField0_ |= 1;
                                    this.parentQualifiedName_ = cVar.r();
                                } else if (iJ == 16) {
                                    this.bitField0_ |= 2;
                                    this.shortName_ = cVar.r();
                                } else if (iJ != 24) {
                                    if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                    }
                                } else {
                                    int iM = cVar.m();
                                    Kind kindValueOf = Kind.valueOf(iM);
                                    if (kindValueOf == null) {
                                        codedOutputStreamI.n0(iJ);
                                        codedOutputStreamI.n0(iM);
                                    } else {
                                        this.bitField0_ |= 4;
                                        this.kind_ = kindValueOf;
                                    }
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
        public ProtoBuf$QualifiedNameTable c(c cVar, d dVar) {
            return new ProtoBuf$QualifiedNameTable(cVar, dVar);
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
        public ProtoBuf$QualifiedNameTable build() {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTableH = h();
            if (protoBuf$QualifiedNameTableH.isInitialized()) {
                return protoBuf$QualifiedNameTableH;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$QualifiedNameTableH);
        }

        public ProtoBuf$QualifiedNameTable h() {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable(this);
            if ((this.c & 1) == 1) {
                this.d = Collections.unmodifiableList(this.d);
                this.c &= -2;
            }
            protoBuf$QualifiedNameTable.qualifiedName_ = this.d;
            return protoBuf$QualifiedNameTable;
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
        public b d(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
            if (protoBuf$QualifiedNameTable == ProtoBuf$QualifiedNameTable.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$QualifiedNameTable.qualifiedName_.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = protoBuf$QualifiedNameTable.qualifiedName_;
                    this.c &= -2;
                } else {
                    k();
                    this.d.addAll(protoBuf$QualifiedNameTable.qualifiedName_);
                }
            }
            e(c().c(protoBuf$QualifiedNameTable.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = null;
            try {
                try {
                    ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable2 = (ProtoBuf$QualifiedNameTable) ProtoBuf$QualifiedNameTable.PARSER.c(cVar, dVar);
                    if (protoBuf$QualifiedNameTable2 != null) {
                        d(protoBuf$QualifiedNameTable2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable3 = (ProtoBuf$QualifiedNameTable) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$QualifiedNameTable = protoBuf$QualifiedNameTable3;
                        if (protoBuf$QualifiedNameTable != null) {
                            d(protoBuf$QualifiedNameTable);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$QualifiedNameTable != null) {
                    d(protoBuf$QualifiedNameTable);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = new ProtoBuf$QualifiedNameTable(true);
        defaultInstance = protoBuf$QualifiedNameTable;
        protoBuf$QualifiedNameTable.initFields();
    }

    public static ProtoBuf$QualifiedNameTable getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.qualifiedName_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.j();
    }

    @Override
    public cx7 getParserForType() {
        return PARSER;
    }

    public QualifiedName getQualifiedName(int i) {
        return this.qualifiedName_.get(i);
    }

    public int getQualifiedNameCount() {
        return this.qualifiedName_.size();
    }

    @Override
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iR = 0;
        for (int i2 = 0; i2 < this.qualifiedName_.size(); i2++) {
            iR += CodedOutputStream.r(1, this.qualifiedName_.get(i2));
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
        for (int i = 0; i < getQualifiedNameCount(); i++) {
            if (!getQualifiedName(i).isInitialized()) {
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
        for (int i = 0; i < this.qualifiedName_.size(); i++) {
            codedOutputStream.c0(1, this.qualifiedName_.get(i));
        }
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
        return newBuilder().d(protoBuf$QualifiedNameTable);
    }

    @Override
    public ProtoBuf$QualifiedNameTable getDefaultInstanceForType() {
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

    private ProtoBuf$QualifiedNameTable(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.c();
    }

    private ProtoBuf$QualifiedNameTable(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$QualifiedNameTable(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                                    this.qualifiedName_ = new ArrayList();
                                    z2 = true;
                                }
                                this.qualifiedName_.add((QualifiedName) cVar.t(QualifiedName.PARSER, dVar));
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
                    this.qualifiedName_ = Collections.unmodifiableList(this.qualifiedName_);
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
            this.qualifiedName_ = Collections.unmodifiableList(this.qualifiedName_);
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
