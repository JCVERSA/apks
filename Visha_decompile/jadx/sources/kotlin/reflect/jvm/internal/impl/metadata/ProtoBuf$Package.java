package kotlin.reflect.jvm.internal.impl.metadata;

import defpackage.cx7;
import defpackage.po0;
import defpackage.un6;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.c;
import kotlin.reflect.jvm.internal.impl.protobuf.d;

public final class ProtoBuf$Package extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$Package> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$Package defaultInstance;
    private int bitField0_;
    private List<ProtoBuf$Function> function_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private List<ProtoBuf$Property> property_;
    private List<ProtoBuf$TypeAlias> typeAlias_;
    private ProtoBuf$TypeTable typeTable_;
    private final po0 unknownFields;
    private ProtoBuf$VersionRequirementTable versionRequirementTable_;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$Package c(c cVar, d dVar) {
            return new ProtoBuf$Package(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public List f = Collections.emptyList();
        public List g = Collections.emptyList();
        public List h = Collections.emptyList();
        public ProtoBuf$TypeTable i = ProtoBuf$TypeTable.getDefaultInstance();
        public ProtoBuf$VersionRequirementTable j = ProtoBuf$VersionRequirementTable.getDefaultInstance();

        public b() {
            r();
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
            if ((this.e & 2) != 2) {
                this.g = new ArrayList(this.g);
                this.e |= 2;
            }
        }

        private void q() {
            if ((this.e & 4) != 4) {
                this.h = new ArrayList(this.h);
                this.e |= 4;
            }
        }

        private void r() {
        }

        @Override
        public ProtoBuf$Package build() {
            ProtoBuf$Package protoBuf$PackageL = l();
            if (protoBuf$PackageL.isInitialized()) {
                return protoBuf$PackageL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$PackageL);
        }

        public ProtoBuf$Package l() {
            ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package(this);
            int i = this.e;
            if ((i & 1) == 1) {
                this.f = Collections.unmodifiableList(this.f);
                this.e &= -2;
            }
            protoBuf$Package.function_ = this.f;
            if ((this.e & 2) == 2) {
                this.g = Collections.unmodifiableList(this.g);
                this.e &= -3;
            }
            protoBuf$Package.property_ = this.g;
            if ((this.e & 4) == 4) {
                this.h = Collections.unmodifiableList(this.h);
                this.e &= -5;
            }
            protoBuf$Package.typeAlias_ = this.h;
            int i2 = (i & 8) != 8 ? 0 : 1;
            protoBuf$Package.typeTable_ = this.i;
            if ((i & 16) == 16) {
                i2 |= 2;
            }
            protoBuf$Package.versionRequirementTable_ = this.j;
            protoBuf$Package.bitField0_ = i2;
            return protoBuf$Package;
        }

        public b clone() {
            return n().d(l());
        }

        @Override
        public b d(ProtoBuf$Package protoBuf$Package) {
            if (protoBuf$Package == ProtoBuf$Package.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$Package.function_.isEmpty()) {
                if (this.f.isEmpty()) {
                    this.f = protoBuf$Package.function_;
                    this.e &= -2;
                } else {
                    o();
                    this.f.addAll(protoBuf$Package.function_);
                }
            }
            if (!protoBuf$Package.property_.isEmpty()) {
                if (this.g.isEmpty()) {
                    this.g = protoBuf$Package.property_;
                    this.e &= -3;
                } else {
                    p();
                    this.g.addAll(protoBuf$Package.property_);
                }
            }
            if (!protoBuf$Package.typeAlias_.isEmpty()) {
                if (this.h.isEmpty()) {
                    this.h = protoBuf$Package.typeAlias_;
                    this.e &= -5;
                } else {
                    q();
                    this.h.addAll(protoBuf$Package.typeAlias_);
                }
            }
            if (protoBuf$Package.hasTypeTable()) {
                u(protoBuf$Package.getTypeTable());
            }
            if (protoBuf$Package.hasVersionRequirementTable()) {
                v(protoBuf$Package.getVersionRequirementTable());
            }
            i(protoBuf$Package);
            e(c().c(protoBuf$Package.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$Package protoBuf$Package = null;
            try {
                try {
                    ProtoBuf$Package protoBuf$Package2 = (ProtoBuf$Package) ProtoBuf$Package.PARSER.c(cVar, dVar);
                    if (protoBuf$Package2 != null) {
                        d(protoBuf$Package2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$Package protoBuf$Package3 = (ProtoBuf$Package) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Package = protoBuf$Package3;
                        if (protoBuf$Package != null) {
                            d(protoBuf$Package);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Package != null) {
                    d(protoBuf$Package);
                }
                throw th;
            }
        }

        public b u(ProtoBuf$TypeTable protoBuf$TypeTable) {
            if ((this.e & 8) != 8 || this.i == ProtoBuf$TypeTable.getDefaultInstance()) {
                this.i = protoBuf$TypeTable;
            } else {
                this.i = ProtoBuf$TypeTable.newBuilder(this.i).d(protoBuf$TypeTable).h();
            }
            this.e |= 8;
            return this;
        }

        public b v(ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable) {
            if ((this.e & 16) != 16 || this.j == ProtoBuf$VersionRequirementTable.getDefaultInstance()) {
                this.j = protoBuf$VersionRequirementTable;
            } else {
                this.j = ProtoBuf$VersionRequirementTable.newBuilder(this.j).d(protoBuf$VersionRequirementTable).h();
            }
            this.e |= 16;
            return this;
        }
    }

    static {
        ProtoBuf$Package protoBuf$Package = new ProtoBuf$Package(true);
        defaultInstance = protoBuf$Package;
        protoBuf$Package.initFields();
    }

    public static ProtoBuf$Package getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.function_ = Collections.emptyList();
        this.property_ = Collections.emptyList();
        this.typeAlias_ = Collections.emptyList();
        this.typeTable_ = ProtoBuf$TypeTable.getDefaultInstance();
        this.versionRequirementTable_ = ProtoBuf$VersionRequirementTable.getDefaultInstance();
    }

    public static b newBuilder() {
        return b.n();
    }

    public static ProtoBuf$Package parseFrom(InputStream inputStream, d dVar) throws IOException {
        return (ProtoBuf$Package) PARSER.b(inputStream, dVar);
    }

    public ProtoBuf$Function getFunction(int i) {
        return this.function_.get(i);
    }

    public int getFunctionCount() {
        return this.function_.size();
    }

    public List<ProtoBuf$Function> getFunctionList() {
        return this.function_;
    }

    @Override
    public cx7 getParserForType() {
        return PARSER;
    }

    public ProtoBuf$Property getProperty(int i) {
        return this.property_.get(i);
    }

    public int getPropertyCount() {
        return this.property_.size();
    }

    public List<ProtoBuf$Property> getPropertyList() {
        return this.property_;
    }

    @Override
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iR = 0;
        for (int i2 = 0; i2 < this.function_.size(); i2++) {
            iR += CodedOutputStream.r(3, this.function_.get(i2));
        }
        for (int i3 = 0; i3 < this.property_.size(); i3++) {
            iR += CodedOutputStream.r(4, this.property_.get(i3));
        }
        for (int i4 = 0; i4 < this.typeAlias_.size(); i4++) {
            iR += CodedOutputStream.r(5, this.typeAlias_.get(i4));
        }
        if ((this.bitField0_ & 1) == 1) {
            iR += CodedOutputStream.r(30, this.typeTable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            iR += CodedOutputStream.r(32, this.versionRequirementTable_);
        }
        int iExtensionsSerializedSize = iR + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$TypeAlias getTypeAlias(int i) {
        return this.typeAlias_.get(i);
    }

    public int getTypeAliasCount() {
        return this.typeAlias_.size();
    }

    public List<ProtoBuf$TypeAlias> getTypeAliasList() {
        return this.typeAlias_;
    }

    public ProtoBuf$TypeTable getTypeTable() {
        return this.typeTable_;
    }

    public ProtoBuf$VersionRequirementTable getVersionRequirementTable() {
        return this.versionRequirementTable_;
    }

    public boolean hasTypeTable() {
        return (this.bitField0_ & 1) == 1;
    }

    public boolean hasVersionRequirementTable() {
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
        for (int i = 0; i < getFunctionCount(); i++) {
            if (!getFunction(i).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i2 = 0; i2 < getPropertyCount(); i2++) {
            if (!getProperty(i2).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        for (int i3 = 0; i3 < getTypeAliasCount(); i3++) {
            if (!getTypeAlias(i3).isInitialized()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
        }
        if (hasTypeTable() && !getTypeTable().isInitialized()) {
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
        for (int i = 0; i < this.function_.size(); i++) {
            codedOutputStream.c0(3, this.function_.get(i));
        }
        for (int i2 = 0; i2 < this.property_.size(); i2++) {
            codedOutputStream.c0(4, this.property_.get(i2));
        }
        for (int i3 = 0; i3 < this.typeAlias_.size(); i3++) {
            codedOutputStream.c0(5, this.typeAlias_.get(i3));
        }
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.c0(30, this.typeTable_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.c0(32, this.versionRequirementTable_);
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Package protoBuf$Package) {
        return newBuilder().d(protoBuf$Package);
    }

    @Override
    public ProtoBuf$Package getDefaultInstanceForType() {
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

    private ProtoBuf$Package(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$Package(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$Package(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                        if (iJ == 26) {
                            int i2 = (i == true ? 1 : 0) & 1;
                            i = i;
                            if (i2 != 1) {
                                this.function_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 1;
                            }
                            this.function_.add((ProtoBuf$Function) cVar.t(ProtoBuf$Function.PARSER, dVar));
                        } else if (iJ == 34) {
                            int i3 = (i == true ? 1 : 0) & 2;
                            i = i;
                            if (i3 != 2) {
                                this.property_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 2;
                            }
                            this.property_.add((ProtoBuf$Property) cVar.t(ProtoBuf$Property.PARSER, dVar));
                        } else if (iJ != 42) {
                            if (iJ == 242) {
                                ProtoBuf$TypeTable.b builder = (this.bitField0_ & 1) == 1 ? this.typeTable_.toBuilder() : null;
                                ProtoBuf$TypeTable protoBuf$TypeTable = (ProtoBuf$TypeTable) cVar.t(ProtoBuf$TypeTable.PARSER, dVar);
                                this.typeTable_ = protoBuf$TypeTable;
                                if (builder != null) {
                                    builder.d(protoBuf$TypeTable);
                                    this.typeTable_ = builder.h();
                                }
                                this.bitField0_ |= 1;
                            } else if (iJ != 258) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                ProtoBuf$VersionRequirementTable.b builder2 = (this.bitField0_ & 2) == 2 ? this.versionRequirementTable_.toBuilder() : null;
                                ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = (ProtoBuf$VersionRequirementTable) cVar.t(ProtoBuf$VersionRequirementTable.PARSER, dVar);
                                this.versionRequirementTable_ = protoBuf$VersionRequirementTable;
                                if (builder2 != null) {
                                    builder2.d(protoBuf$VersionRequirementTable);
                                    this.versionRequirementTable_ = builder2.h();
                                }
                                this.bitField0_ |= 2;
                            }
                        } else {
                            int i4 = (i == true ? 1 : 0) & 4;
                            i = i;
                            if (i4 != 4) {
                                this.typeAlias_ = new ArrayList();
                                i = (i == true ? 1 : 0) | 4;
                            }
                            this.typeAlias_.add((ProtoBuf$TypeAlias) cVar.t(ProtoBuf$TypeAlias.PARSER, dVar));
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (((i == true ? 1 : 0) & 1) == 1) {
                        this.function_ = Collections.unmodifiableList(this.function_);
                    }
                    if (((i == true ? 1 : 0) & 2) == 2) {
                        this.property_ = Collections.unmodifiableList(this.property_);
                    }
                    if (((i == true ? 1 : 0) & 4) == 4) {
                        this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
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
        if (((i == true ? 1 : 0) & 1) == 1) {
            this.function_ = Collections.unmodifiableList(this.function_);
        }
        if (((i == true ? 1 : 0) & 2) == 2) {
            this.property_ = Collections.unmodifiableList(this.property_);
        }
        if (((i == true ? 1 : 0) & 4) == 4) {
            this.typeAlias_ = Collections.unmodifiableList(this.typeAlias_);
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
