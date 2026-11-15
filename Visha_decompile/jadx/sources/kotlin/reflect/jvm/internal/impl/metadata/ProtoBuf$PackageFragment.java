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

public final class ProtoBuf$PackageFragment extends GeneratedMessageLite.ExtendableMessage<ProtoBuf$PackageFragment> implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$PackageFragment defaultInstance;
    private int bitField0_;
    private List<ProtoBuf$Class> class__;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private ProtoBuf$Package package_;
    private ProtoBuf$QualifiedNameTable qualifiedNames_;
    private ProtoBuf$StringTable strings_;
    private final po0 unknownFields;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$PackageFragment c(c cVar, d dVar) {
            return new ProtoBuf$PackageFragment(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.c implements un6 {
        public int e;
        public ProtoBuf$StringTable f = ProtoBuf$StringTable.getDefaultInstance();
        public ProtoBuf$QualifiedNameTable g = ProtoBuf$QualifiedNameTable.getDefaultInstance();
        public ProtoBuf$Package h = ProtoBuf$Package.getDefaultInstance();
        public List i = Collections.emptyList();

        public b() {
            p();
        }

        public static b n() {
            return new b();
        }

        private void p() {
        }

        @Override
        public ProtoBuf$PackageFragment build() {
            ProtoBuf$PackageFragment protoBuf$PackageFragmentL = l();
            if (protoBuf$PackageFragmentL.isInitialized()) {
                return protoBuf$PackageFragmentL;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$PackageFragmentL);
        }

        public ProtoBuf$PackageFragment l() {
            ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment(this);
            int i = this.e;
            int i2 = (i & 1) != 1 ? 0 : 1;
            protoBuf$PackageFragment.strings_ = this.f;
            if ((i & 2) == 2) {
                i2 |= 2;
            }
            protoBuf$PackageFragment.qualifiedNames_ = this.g;
            if ((i & 4) == 4) {
                i2 |= 4;
            }
            protoBuf$PackageFragment.package_ = this.h;
            if ((this.e & 8) == 8) {
                this.i = Collections.unmodifiableList(this.i);
                this.e &= -9;
            }
            protoBuf$PackageFragment.class__ = this.i;
            protoBuf$PackageFragment.bitField0_ = i2;
            return protoBuf$PackageFragment;
        }

        public b clone() {
            return n().d(l());
        }

        public final void o() {
            if ((this.e & 8) != 8) {
                this.i = new ArrayList(this.i);
                this.e |= 8;
            }
        }

        @Override
        public b d(ProtoBuf$PackageFragment protoBuf$PackageFragment) {
            if (protoBuf$PackageFragment == ProtoBuf$PackageFragment.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$PackageFragment.hasStrings()) {
                u(protoBuf$PackageFragment.getStrings());
            }
            if (protoBuf$PackageFragment.hasQualifiedNames()) {
                t(protoBuf$PackageFragment.getQualifiedNames());
            }
            if (protoBuf$PackageFragment.hasPackage()) {
                s(protoBuf$PackageFragment.getPackage());
            }
            if (!protoBuf$PackageFragment.class__.isEmpty()) {
                if (this.i.isEmpty()) {
                    this.i = protoBuf$PackageFragment.class__;
                    this.e &= -9;
                } else {
                    o();
                    this.i.addAll(protoBuf$PackageFragment.class__);
                }
            }
            i(protoBuf$PackageFragment);
            e(c().c(protoBuf$PackageFragment.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$PackageFragment protoBuf$PackageFragment = null;
            try {
                try {
                    ProtoBuf$PackageFragment protoBuf$PackageFragment2 = (ProtoBuf$PackageFragment) ProtoBuf$PackageFragment.PARSER.c(cVar, dVar);
                    if (protoBuf$PackageFragment2 != null) {
                        d(protoBuf$PackageFragment2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$PackageFragment protoBuf$PackageFragment3 = (ProtoBuf$PackageFragment) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$PackageFragment = protoBuf$PackageFragment3;
                        if (protoBuf$PackageFragment != null) {
                            d(protoBuf$PackageFragment);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$PackageFragment != null) {
                    d(protoBuf$PackageFragment);
                }
                throw th;
            }
        }

        public b s(ProtoBuf$Package protoBuf$Package) {
            if ((this.e & 4) != 4 || this.h == ProtoBuf$Package.getDefaultInstance()) {
                this.h = protoBuf$Package;
            } else {
                this.h = ProtoBuf$Package.newBuilder(this.h).d(protoBuf$Package).l();
            }
            this.e |= 4;
            return this;
        }

        public b t(ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable) {
            if ((this.e & 2) != 2 || this.g == ProtoBuf$QualifiedNameTable.getDefaultInstance()) {
                this.g = protoBuf$QualifiedNameTable;
            } else {
                this.g = ProtoBuf$QualifiedNameTable.newBuilder(this.g).d(protoBuf$QualifiedNameTable).h();
            }
            this.e |= 2;
            return this;
        }

        public b u(ProtoBuf$StringTable protoBuf$StringTable) {
            if ((this.e & 1) != 1 || this.f == ProtoBuf$StringTable.getDefaultInstance()) {
                this.f = protoBuf$StringTable;
            } else {
                this.f = ProtoBuf$StringTable.newBuilder(this.f).d(protoBuf$StringTable).h();
            }
            this.e |= 1;
            return this;
        }
    }

    static {
        ProtoBuf$PackageFragment protoBuf$PackageFragment = new ProtoBuf$PackageFragment(true);
        defaultInstance = protoBuf$PackageFragment;
        protoBuf$PackageFragment.initFields();
    }

    public static ProtoBuf$PackageFragment getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.strings_ = ProtoBuf$StringTable.getDefaultInstance();
        this.qualifiedNames_ = ProtoBuf$QualifiedNameTable.getDefaultInstance();
        this.package_ = ProtoBuf$Package.getDefaultInstance();
        this.class__ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.n();
    }

    public static ProtoBuf$PackageFragment parseFrom(InputStream inputStream, d dVar) throws IOException {
        return (ProtoBuf$PackageFragment) PARSER.b(inputStream, dVar);
    }

    public ProtoBuf$Class getClass_(int i) {
        return this.class__.get(i);
    }

    public int getClass_Count() {
        return this.class__.size();
    }

    public List<ProtoBuf$Class> getClass_List() {
        return this.class__;
    }

    public ProtoBuf$Package getPackage() {
        return this.package_;
    }

    @Override
    public cx7 getParserForType() {
        return PARSER;
    }

    public ProtoBuf$QualifiedNameTable getQualifiedNames() {
        return this.qualifiedNames_;
    }

    @Override
    public int getSerializedSize() {
        int i = this.memoizedSerializedSize;
        if (i != -1) {
            return i;
        }
        int iR = (this.bitField0_ & 1) == 1 ? CodedOutputStream.r(1, this.strings_) : 0;
        if ((this.bitField0_ & 2) == 2) {
            iR += CodedOutputStream.r(2, this.qualifiedNames_);
        }
        if ((this.bitField0_ & 4) == 4) {
            iR += CodedOutputStream.r(3, this.package_);
        }
        for (int i2 = 0; i2 < this.class__.size(); i2++) {
            iR += CodedOutputStream.r(4, this.class__.get(i2));
        }
        int iExtensionsSerializedSize = iR + extensionsSerializedSize() + this.unknownFields.size();
        this.memoizedSerializedSize = iExtensionsSerializedSize;
        return iExtensionsSerializedSize;
    }

    public ProtoBuf$StringTable getStrings() {
        return this.strings_;
    }

    public boolean hasPackage() {
        return (this.bitField0_ & 4) == 4;
    }

    public boolean hasQualifiedNames() {
        return (this.bitField0_ & 2) == 2;
    }

    public boolean hasStrings() {
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
        if (hasQualifiedNames() && !getQualifiedNames().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        if (hasPackage() && !getPackage().isInitialized()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getClass_Count(); i++) {
            if (!getClass_(i).isInitialized()) {
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
            codedOutputStream.c0(1, this.strings_);
        }
        if ((this.bitField0_ & 2) == 2) {
            codedOutputStream.c0(2, this.qualifiedNames_);
        }
        if ((this.bitField0_ & 4) == 4) {
            codedOutputStream.c0(3, this.package_);
        }
        for (int i = 0; i < this.class__.size(); i++) {
            codedOutputStream.c0(4, this.class__.get(i));
        }
        aVarNewExtensionWriter.a(200, codedOutputStream);
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$PackageFragment protoBuf$PackageFragment) {
        return newBuilder().d(protoBuf$PackageFragment);
    }

    @Override
    public ProtoBuf$PackageFragment getDefaultInstanceForType() {
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

    private ProtoBuf$PackageFragment(GeneratedMessageLite.c cVar) {
        super(cVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = cVar.c();
    }

    private ProtoBuf$PackageFragment(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$PackageFragment(c cVar, d dVar) throws InvalidProtocolBufferException {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        initFields();
        po0.b bVarQ = po0.q();
        CodedOutputStream codedOutputStreamI = CodedOutputStream.I(bVarQ, 1);
        boolean z = false;
        char c = 0;
        while (!z) {
            try {
                try {
                    int iJ = cVar.J();
                    if (iJ != 0) {
                        if (iJ == 10) {
                            ProtoBuf$StringTable.b builder = (this.bitField0_ & 1) == 1 ? this.strings_.toBuilder() : null;
                            ProtoBuf$StringTable protoBuf$StringTable = (ProtoBuf$StringTable) cVar.t(ProtoBuf$StringTable.PARSER, dVar);
                            this.strings_ = protoBuf$StringTable;
                            if (builder != null) {
                                builder.d(protoBuf$StringTable);
                                this.strings_ = builder.h();
                            }
                            this.bitField0_ |= 1;
                        } else if (iJ == 18) {
                            ProtoBuf$QualifiedNameTable.b builder2 = (this.bitField0_ & 2) == 2 ? this.qualifiedNames_.toBuilder() : null;
                            ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = (ProtoBuf$QualifiedNameTable) cVar.t(ProtoBuf$QualifiedNameTable.PARSER, dVar);
                            this.qualifiedNames_ = protoBuf$QualifiedNameTable;
                            if (builder2 != null) {
                                builder2.d(protoBuf$QualifiedNameTable);
                                this.qualifiedNames_ = builder2.h();
                            }
                            this.bitField0_ |= 2;
                        } else if (iJ == 26) {
                            ProtoBuf$Package.b builder3 = (this.bitField0_ & 4) == 4 ? this.package_.toBuilder() : null;
                            ProtoBuf$Package protoBuf$Package = (ProtoBuf$Package) cVar.t(ProtoBuf$Package.PARSER, dVar);
                            this.package_ = protoBuf$Package;
                            if (builder3 != null) {
                                builder3.d(protoBuf$Package);
                                this.package_ = builder3.l();
                            }
                            this.bitField0_ |= 4;
                        } else if (iJ != 34) {
                            if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                            }
                        } else {
                            int i = (c == true ? 1 : 0) & '\b';
                            c = c;
                            if (i != 8) {
                                this.class__ = new ArrayList();
                                c = '\b';
                            }
                            this.class__.add((ProtoBuf$Class) cVar.t(ProtoBuf$Class.PARSER, dVar));
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if (((c == true ? 1 : 0) & '\b') == 8) {
                        this.class__ = Collections.unmodifiableList(this.class__);
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
        if (((c == true ? 1 : 0) & '\b') == 8) {
            this.class__ = Collections.unmodifiableList(this.class__);
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
