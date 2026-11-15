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

public final class ProtoBuf$Contract extends GeneratedMessageLite implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$Contract defaultInstance;
    private List<ProtoBuf$Effect> effect_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private final po0 unknownFields;

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$Contract c(c cVar, d dVar) {
            return new ProtoBuf$Contract(cVar, dVar);
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
        public ProtoBuf$Contract build() {
            ProtoBuf$Contract protoBuf$ContractH = h();
            if (protoBuf$ContractH.isInitialized()) {
                return protoBuf$ContractH;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$ContractH);
        }

        public ProtoBuf$Contract h() {
            ProtoBuf$Contract protoBuf$Contract = new ProtoBuf$Contract(this);
            if ((this.c & 1) == 1) {
                this.d = Collections.unmodifiableList(this.d);
                this.c &= -2;
            }
            protoBuf$Contract.effect_ = this.d;
            return protoBuf$Contract;
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
        public b d(ProtoBuf$Contract protoBuf$Contract) {
            if (protoBuf$Contract == ProtoBuf$Contract.getDefaultInstance()) {
                return this;
            }
            if (!protoBuf$Contract.effect_.isEmpty()) {
                if (this.d.isEmpty()) {
                    this.d = protoBuf$Contract.effect_;
                    this.c &= -2;
                } else {
                    k();
                    this.d.addAll(protoBuf$Contract.effect_);
                }
            }
            e(c().c(protoBuf$Contract.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$Contract protoBuf$Contract = null;
            try {
                try {
                    ProtoBuf$Contract protoBuf$Contract2 = (ProtoBuf$Contract) ProtoBuf$Contract.PARSER.c(cVar, dVar);
                    if (protoBuf$Contract2 != null) {
                        d(protoBuf$Contract2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$Contract protoBuf$Contract3 = (ProtoBuf$Contract) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Contract = protoBuf$Contract3;
                        if (protoBuf$Contract != null) {
                            d(protoBuf$Contract);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Contract != null) {
                    d(protoBuf$Contract);
                }
                throw th;
            }
        }
    }

    static {
        ProtoBuf$Contract protoBuf$Contract = new ProtoBuf$Contract(true);
        defaultInstance = protoBuf$Contract;
        protoBuf$Contract.initFields();
    }

    public static ProtoBuf$Contract getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.effect_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.j();
    }

    public ProtoBuf$Effect getEffect(int i) {
        return this.effect_.get(i);
    }

    public int getEffectCount() {
        return this.effect_.size();
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
        int iR = 0;
        for (int i2 = 0; i2 < this.effect_.size(); i2++) {
            iR += CodedOutputStream.r(1, this.effect_.get(i2));
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
        for (int i = 0; i < getEffectCount(); i++) {
            if (!getEffect(i).isInitialized()) {
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
        for (int i = 0; i < this.effect_.size(); i++) {
            codedOutputStream.c0(1, this.effect_.get(i));
        }
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Contract protoBuf$Contract) {
        return newBuilder().d(protoBuf$Contract);
    }

    @Override
    public ProtoBuf$Contract getDefaultInstanceForType() {
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

    private ProtoBuf$Contract(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.c();
    }

    private ProtoBuf$Contract(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$Contract(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                                    this.effect_ = new ArrayList();
                                    z2 = true;
                                }
                                this.effect_.add((ProtoBuf$Effect) cVar.t(ProtoBuf$Effect.PARSER, dVar));
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
                    this.effect_ = Collections.unmodifiableList(this.effect_);
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
            this.effect_ = Collections.unmodifiableList(this.effect_);
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
