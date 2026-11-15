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

public final class ProtoBuf$Annotation extends GeneratedMessageLite implements un6 {
    public static cx7 PARSER = new a();
    private static final ProtoBuf$Annotation defaultInstance;
    private List<Argument> argument_;
    private int bitField0_;
    private int id_;
    private byte memoizedIsInitialized;
    private int memoizedSerializedSize;
    private final po0 unknownFields;

    public static final class Argument extends GeneratedMessageLite implements un6 {
        public static cx7 PARSER = new a();
        private static final Argument defaultInstance;
        private int bitField0_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int nameId_;
        private final po0 unknownFields;
        private Value value_;

        public static final class Value extends GeneratedMessageLite implements un6 {
            public static cx7 PARSER = new a();
            private static final Value defaultInstance;
            private ProtoBuf$Annotation annotation_;
            private int arrayDimensionCount_;
            private List<Value> arrayElement_;
            private int bitField0_;
            private int classId_;
            private double doubleValue_;
            private int enumValueId_;
            private int flags_;
            private float floatValue_;
            private long intValue_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            private int stringValue_;
            private Type type_;
            private final po0 unknownFields;

            public enum Type implements f.a {
                BYTE(0, 0),
                CHAR(1, 1),
                SHORT(2, 2),
                INT(3, 3),
                LONG(4, 4),
                FLOAT(5, 5),
                DOUBLE(6, 6),
                BOOLEAN(7, 7),
                STRING(8, 8),
                CLASS(9, 9),
                ENUM(10, 10),
                ANNOTATION(11, 11),
                ARRAY(12, 12);

                private static f.b internalValueMap = new a();
                private final int value;

                public static class a implements f.b {
                    @Override
                    public Type findValueByNumber(int i) {
                        return Type.valueOf(i);
                    }
                }

                Type(int i, int i2) {
                    this.value = i2;
                }

                @Override
                public final int getNumber() {
                    return this.value;
                }

                public static Type valueOf(int i) {
                    switch (i) {
                        case 0:
                            return BYTE;
                        case 1:
                            return CHAR;
                        case 2:
                            return SHORT;
                        case 3:
                            return INT;
                        case 4:
                            return LONG;
                        case 5:
                            return FLOAT;
                        case 6:
                            return DOUBLE;
                        case 7:
                            return BOOLEAN;
                        case 8:
                            return STRING;
                        case 9:
                            return CLASS;
                        case 10:
                            return ENUM;
                        case 11:
                            return ANNOTATION;
                        case 12:
                            return ARRAY;
                        default:
                            return null;
                    }
                }
            }

            public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
                @Override
                public Value c(c cVar, d dVar) {
                    return new Value(cVar, dVar);
                }
            }

            public static final class b extends GeneratedMessageLite.b implements un6 {
                public int c;
                public long e;
                public float f;
                public double g;
                public int h;
                public int i;
                public int j;
                public int m;
                public int n;
                public Type d = Type.BYTE;
                public ProtoBuf$Annotation k = ProtoBuf$Annotation.getDefaultInstance();
                public List l = Collections.emptyList();

                public b() {
                    l();
                }

                public static b j() {
                    return new b();
                }

                private void l() {
                }

                @Override
                public Value build() {
                    Value valueH = h();
                    if (valueH.isInitialized()) {
                        return valueH;
                    }
                    throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(valueH);
                }

                public Value h() {
                    Value value = new Value(this);
                    int i = this.c;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    value.type_ = this.d;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    value.intValue_ = this.e;
                    if ((i & 4) == 4) {
                        i2 |= 4;
                    }
                    value.floatValue_ = this.f;
                    if ((i & 8) == 8) {
                        i2 |= 8;
                    }
                    value.doubleValue_ = this.g;
                    if ((i & 16) == 16) {
                        i2 |= 16;
                    }
                    value.stringValue_ = this.h;
                    if ((i & 32) == 32) {
                        i2 |= 32;
                    }
                    value.classId_ = this.i;
                    if ((i & 64) == 64) {
                        i2 |= 64;
                    }
                    value.enumValueId_ = this.j;
                    if ((i & 128) == 128) {
                        i2 |= 128;
                    }
                    value.annotation_ = this.k;
                    if ((this.c & 256) == 256) {
                        this.l = Collections.unmodifiableList(this.l);
                        this.c &= -257;
                    }
                    value.arrayElement_ = this.l;
                    if ((i & 512) == 512) {
                        i2 |= 256;
                    }
                    value.arrayDimensionCount_ = this.m;
                    if ((i & 1024) == 1024) {
                        i2 |= 512;
                    }
                    value.flags_ = this.n;
                    value.bitField0_ = i2;
                    return value;
                }

                public b clone() {
                    return j().d(h());
                }

                public final void k() {
                    if ((this.c & 256) != 256) {
                        this.l = new ArrayList(this.l);
                        this.c |= 256;
                    }
                }

                public b m(ProtoBuf$Annotation protoBuf$Annotation) {
                    if ((this.c & 128) != 128 || this.k == ProtoBuf$Annotation.getDefaultInstance()) {
                        this.k = protoBuf$Annotation;
                    } else {
                        this.k = ProtoBuf$Annotation.newBuilder(this.k).d(protoBuf$Annotation).h();
                    }
                    this.c |= 128;
                    return this;
                }

                @Override
                public b d(Value value) {
                    if (value == Value.getDefaultInstance()) {
                        return this;
                    }
                    if (value.hasType()) {
                        x(value.getType());
                    }
                    if (value.hasIntValue()) {
                        v(value.getIntValue());
                    }
                    if (value.hasFloatValue()) {
                        u(value.getFloatValue());
                    }
                    if (value.hasDoubleValue()) {
                        r(value.getDoubleValue());
                    }
                    if (value.hasStringValue()) {
                        w(value.getStringValue());
                    }
                    if (value.hasClassId()) {
                        q(value.getClassId());
                    }
                    if (value.hasEnumValueId()) {
                        s(value.getEnumValueId());
                    }
                    if (value.hasAnnotation()) {
                        m(value.getAnnotation());
                    }
                    if (!value.arrayElement_.isEmpty()) {
                        if (this.l.isEmpty()) {
                            this.l = value.arrayElement_;
                            this.c &= -257;
                        } else {
                            k();
                            this.l.addAll(value.arrayElement_);
                        }
                    }
                    if (value.hasArrayDimensionCount()) {
                        p(value.getArrayDimensionCount());
                    }
                    if (value.hasFlags()) {
                        t(value.getFlags());
                    }
                    e(c().c(value.unknownFields));
                    return this;
                }

                /* JADX WARN: Code duplicated, block: B:15:0x001d  */
                @Override
                public b b(c cVar, d dVar) throws Throwable {
                    Value value = null;
                    try {
                        try {
                            Value value2 = (Value) Value.PARSER.c(cVar, dVar);
                            if (value2 != null) {
                                d(value2);
                            }
                            return this;
                        } catch (InvalidProtocolBufferException e) {
                            Value value3 = (Value) e.getUnfinishedMessage();
                            try {
                                throw e;
                            } catch (Throwable th) {
                                th = th;
                                value = value3;
                                if (value != null) {
                                    d(value);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (value != null) {
                            d(value);
                        }
                        throw th;
                    }
                }

                public b p(int i) {
                    this.c |= 512;
                    this.m = i;
                    return this;
                }

                public b q(int i) {
                    this.c |= 32;
                    this.i = i;
                    return this;
                }

                public b r(double d) {
                    this.c |= 8;
                    this.g = d;
                    return this;
                }

                public b s(int i) {
                    this.c |= 64;
                    this.j = i;
                    return this;
                }

                public b t(int i) {
                    this.c |= 1024;
                    this.n = i;
                    return this;
                }

                public b u(float f) {
                    this.c |= 4;
                    this.f = f;
                    return this;
                }

                public b v(long j) {
                    this.c |= 2;
                    this.e = j;
                    return this;
                }

                public b w(int i) {
                    this.c |= 16;
                    this.h = i;
                    return this;
                }

                public b x(Type type) {
                    type.getClass();
                    this.c |= 1;
                    this.d = type;
                    return this;
                }
            }

            static {
                Value value = new Value(true);
                defaultInstance = value;
                value.initFields();
            }

            public static Value getDefaultInstance() {
                return defaultInstance;
            }

            private void initFields() {
                this.type_ = Type.BYTE;
                this.intValue_ = 0L;
                this.floatValue_ = 0.0f;
                this.doubleValue_ = 0.0d;
                this.stringValue_ = 0;
                this.classId_ = 0;
                this.enumValueId_ = 0;
                this.annotation_ = ProtoBuf$Annotation.getDefaultInstance();
                this.arrayElement_ = Collections.emptyList();
                this.arrayDimensionCount_ = 0;
                this.flags_ = 0;
            }

            public static b newBuilder() {
                return b.j();
            }

            public ProtoBuf$Annotation getAnnotation() {
                return this.annotation_;
            }

            public int getArrayDimensionCount() {
                return this.arrayDimensionCount_;
            }

            public Value getArrayElement(int i) {
                return this.arrayElement_.get(i);
            }

            public int getArrayElementCount() {
                return this.arrayElement_.size();
            }

            public List<Value> getArrayElementList() {
                return this.arrayElement_;
            }

            public int getClassId() {
                return this.classId_;
            }

            public double getDoubleValue() {
                return this.doubleValue_;
            }

            public int getEnumValueId() {
                return this.enumValueId_;
            }

            public int getFlags() {
                return this.flags_;
            }

            public float getFloatValue() {
                return this.floatValue_;
            }

            public long getIntValue() {
                return this.intValue_;
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
                int iH = (this.bitField0_ & 1) == 1 ? CodedOutputStream.h(1, this.type_.getNumber()) : 0;
                if ((this.bitField0_ & 2) == 2) {
                    iH += CodedOutputStream.z(2, this.intValue_);
                }
                if ((this.bitField0_ & 4) == 4) {
                    iH += CodedOutputStream.l(3, this.floatValue_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    iH += CodedOutputStream.f(4, this.doubleValue_);
                }
                if ((this.bitField0_ & 16) == 16) {
                    iH += CodedOutputStream.o(5, this.stringValue_);
                }
                if ((this.bitField0_ & 32) == 32) {
                    iH += CodedOutputStream.o(6, this.classId_);
                }
                if ((this.bitField0_ & 64) == 64) {
                    iH += CodedOutputStream.o(7, this.enumValueId_);
                }
                if ((this.bitField0_ & 128) == 128) {
                    iH += CodedOutputStream.r(8, this.annotation_);
                }
                for (int i2 = 0; i2 < this.arrayElement_.size(); i2++) {
                    iH += CodedOutputStream.r(9, this.arrayElement_.get(i2));
                }
                if ((this.bitField0_ & 512) == 512) {
                    iH += CodedOutputStream.o(10, this.flags_);
                }
                if ((this.bitField0_ & 256) == 256) {
                    iH += CodedOutputStream.o(11, this.arrayDimensionCount_);
                }
                int size = iH + this.unknownFields.size();
                this.memoizedSerializedSize = size;
                return size;
            }

            public int getStringValue() {
                return this.stringValue_;
            }

            public Type getType() {
                return this.type_;
            }

            public boolean hasAnnotation() {
                return (this.bitField0_ & 128) == 128;
            }

            public boolean hasArrayDimensionCount() {
                return (this.bitField0_ & 256) == 256;
            }

            public boolean hasClassId() {
                return (this.bitField0_ & 32) == 32;
            }

            public boolean hasDoubleValue() {
                return (this.bitField0_ & 8) == 8;
            }

            public boolean hasEnumValueId() {
                return (this.bitField0_ & 64) == 64;
            }

            public boolean hasFlags() {
                return (this.bitField0_ & 512) == 512;
            }

            public boolean hasFloatValue() {
                return (this.bitField0_ & 4) == 4;
            }

            public boolean hasIntValue() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean hasStringValue() {
                return (this.bitField0_ & 16) == 16;
            }

            public boolean hasType() {
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
                if (hasAnnotation() && !getAnnotation().isInitialized()) {
                    this.memoizedIsInitialized = (byte) 0;
                    return false;
                }
                for (int i = 0; i < getArrayElementCount(); i++) {
                    if (!getArrayElement(i).isInitialized()) {
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
                if ((this.bitField0_ & 1) == 1) {
                    codedOutputStream.R(1, this.type_.getNumber());
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.s0(2, this.intValue_);
                }
                if ((this.bitField0_ & 4) == 4) {
                    codedOutputStream.V(3, this.floatValue_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    codedOutputStream.P(4, this.doubleValue_);
                }
                if ((this.bitField0_ & 16) == 16) {
                    codedOutputStream.Z(5, this.stringValue_);
                }
                if ((this.bitField0_ & 32) == 32) {
                    codedOutputStream.Z(6, this.classId_);
                }
                if ((this.bitField0_ & 64) == 64) {
                    codedOutputStream.Z(7, this.enumValueId_);
                }
                if ((this.bitField0_ & 128) == 128) {
                    codedOutputStream.c0(8, this.annotation_);
                }
                for (int i = 0; i < this.arrayElement_.size(); i++) {
                    codedOutputStream.c0(9, this.arrayElement_.get(i));
                }
                if ((this.bitField0_ & 512) == 512) {
                    codedOutputStream.Z(10, this.flags_);
                }
                if ((this.bitField0_ & 256) == 256) {
                    codedOutputStream.Z(11, this.arrayDimensionCount_);
                }
                codedOutputStream.h0(this.unknownFields);
            }

            public static b newBuilder(Value value) {
                return newBuilder().d(value);
            }

            @Override
            public Value getDefaultInstanceForType() {
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

            private Value(GeneratedMessageLite.b bVar) {
                super(bVar);
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = bVar.c();
            }

            private Value(boolean z) {
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = po0.b;
            }

            private Value(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                            switch (iJ) {
                                case 0:
                                    break;
                                case 8:
                                    int iM = cVar.m();
                                    Type typeValueOf = Type.valueOf(iM);
                                    if (typeValueOf == null) {
                                        codedOutputStreamI.n0(iJ);
                                        codedOutputStreamI.n0(iM);
                                    } else {
                                        this.bitField0_ |= 1;
                                        this.type_ = typeValueOf;
                                        continue;
                                    }
                                    break;
                                case 16:
                                    this.bitField0_ |= 2;
                                    this.intValue_ = cVar.G();
                                    continue;
                                case 29:
                                    this.bitField0_ |= 4;
                                    this.floatValue_ = cVar.p();
                                    continue;
                                case 33:
                                    this.bitField0_ |= 8;
                                    this.doubleValue_ = cVar.l();
                                    continue;
                                case 40:
                                    this.bitField0_ |= 16;
                                    this.stringValue_ = cVar.r();
                                    continue;
                                case 48:
                                    this.bitField0_ |= 32;
                                    this.classId_ = cVar.r();
                                    continue;
                                case 56:
                                    this.bitField0_ |= 64;
                                    this.enumValueId_ = cVar.r();
                                    continue;
                                case 66:
                                    b builder = (this.bitField0_ & 128) == 128 ? this.annotation_.toBuilder() : null;
                                    ProtoBuf$Annotation protoBuf$Annotation = (ProtoBuf$Annotation) cVar.t(ProtoBuf$Annotation.PARSER, dVar);
                                    this.annotation_ = protoBuf$Annotation;
                                    if (builder != null) {
                                        builder.d(protoBuf$Annotation);
                                        this.annotation_ = builder.h();
                                    }
                                    this.bitField0_ |= 128;
                                    continue;
                                case 74:
                                    if ((c & 256) != 256) {
                                        this.arrayElement_ = new ArrayList();
                                        c = 256;
                                    }
                                    this.arrayElement_.add((Value) cVar.t(PARSER, dVar));
                                    continue;
                                case 80:
                                    this.bitField0_ |= 512;
                                    this.flags_ = cVar.r();
                                    continue;
                                case 88:
                                    this.bitField0_ |= 256;
                                    this.arrayDimensionCount_ = cVar.r();
                                    continue;
                                default:
                                    if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                        break;
                                    }
                                    break;
                            }
                            z = true;
                        } catch (Throwable th) {
                            if ((c & 256) == 256) {
                                this.arrayElement_ = Collections.unmodifiableList(this.arrayElement_);
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
                if ((c & 256) == 256) {
                    this.arrayElement_ = Collections.unmodifiableList(this.arrayElement_);
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
            public Argument c(c cVar, d dVar) {
                return new Argument(cVar, dVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b implements un6 {
            public int c;
            public int d;
            public Value e = Value.getDefaultInstance();

            public b() {
                k();
            }

            public static b j() {
                return new b();
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
                argument.nameId_ = this.d;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                argument.value_ = this.e;
                argument.bitField0_ = i2;
                return argument;
            }

            public b clone() {
                return j().d(h());
            }

            public final void k() {
            }

            @Override
            public b d(Argument argument) {
                if (argument == Argument.getDefaultInstance()) {
                    return this;
                }
                if (argument.hasNameId()) {
                    o(argument.getNameId());
                }
                if (argument.hasValue()) {
                    n(argument.getValue());
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

            public b n(Value value) {
                if ((this.c & 2) != 2 || this.e == Value.getDefaultInstance()) {
                    this.e = value;
                } else {
                    this.e = Value.newBuilder(this.e).d(value).h();
                }
                this.c |= 2;
                return this;
            }

            public b o(int i) {
                this.c |= 1;
                this.d = i;
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
            this.nameId_ = 0;
            this.value_ = Value.getDefaultInstance();
        }

        public static b newBuilder() {
            return b.j();
        }

        public int getNameId() {
            return this.nameId_;
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
            int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.nameId_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iO += CodedOutputStream.r(2, this.value_);
            }
            int size = iO + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public Value getValue() {
            return this.value_;
        }

        public boolean hasNameId() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean hasValue() {
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
            if (!hasNameId()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (!hasValue()) {
                this.memoizedIsInitialized = (byte) 0;
                return false;
            }
            if (getValue().isInitialized()) {
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
                codedOutputStream.Z(1, this.nameId_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.c0(2, this.value_);
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
                        int iJ = cVar.J();
                        if (iJ != 0) {
                            if (iJ == 8) {
                                this.bitField0_ |= 1;
                                this.nameId_ = cVar.r();
                            } else if (iJ != 18) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                Value.b builder = (this.bitField0_ & 2) == 2 ? this.value_.toBuilder() : null;
                                Value value = (Value) cVar.t(Value.PARSER, dVar);
                                this.value_ = value;
                                if (builder != null) {
                                    builder.d(value);
                                    this.value_ = builder.h();
                                }
                                this.bitField0_ |= 2;
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

    public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
        @Override
        public ProtoBuf$Annotation c(c cVar, d dVar) {
            return new ProtoBuf$Annotation(cVar, dVar);
        }
    }

    public static final class b extends GeneratedMessageLite.b implements un6 {
        public int c;
        public int d;
        public List e = Collections.emptyList();

        public b() {
            l();
        }

        public static b j() {
            return new b();
        }

        private void l() {
        }

        @Override
        public ProtoBuf$Annotation build() {
            ProtoBuf$Annotation protoBuf$AnnotationH = h();
            if (protoBuf$AnnotationH.isInitialized()) {
                return protoBuf$AnnotationH;
            }
            throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(protoBuf$AnnotationH);
        }

        public ProtoBuf$Annotation h() {
            ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation(this);
            int i = (this.c & 1) != 1 ? 0 : 1;
            protoBuf$Annotation.id_ = this.d;
            if ((this.c & 2) == 2) {
                this.e = Collections.unmodifiableList(this.e);
                this.c &= -3;
            }
            protoBuf$Annotation.argument_ = this.e;
            protoBuf$Annotation.bitField0_ = i;
            return protoBuf$Annotation;
        }

        public b clone() {
            return j().d(h());
        }

        public final void k() {
            if ((this.c & 2) != 2) {
                this.e = new ArrayList(this.e);
                this.c |= 2;
            }
        }

        @Override
        public b d(ProtoBuf$Annotation protoBuf$Annotation) {
            if (protoBuf$Annotation == ProtoBuf$Annotation.getDefaultInstance()) {
                return this;
            }
            if (protoBuf$Annotation.hasId()) {
                o(protoBuf$Annotation.getId());
            }
            if (!protoBuf$Annotation.argument_.isEmpty()) {
                if (this.e.isEmpty()) {
                    this.e = protoBuf$Annotation.argument_;
                    this.c &= -3;
                } else {
                    k();
                    this.e.addAll(protoBuf$Annotation.argument_);
                }
            }
            e(c().c(protoBuf$Annotation.unknownFields));
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x001d  */
        @Override
        public b b(c cVar, d dVar) throws Throwable {
            ProtoBuf$Annotation protoBuf$Annotation = null;
            try {
                try {
                    ProtoBuf$Annotation protoBuf$Annotation2 = (ProtoBuf$Annotation) ProtoBuf$Annotation.PARSER.c(cVar, dVar);
                    if (protoBuf$Annotation2 != null) {
                        d(protoBuf$Annotation2);
                    }
                    return this;
                } catch (InvalidProtocolBufferException e) {
                    ProtoBuf$Annotation protoBuf$Annotation3 = (ProtoBuf$Annotation) e.getUnfinishedMessage();
                    try {
                        throw e;
                    } catch (Throwable th) {
                        th = th;
                        protoBuf$Annotation = protoBuf$Annotation3;
                        if (protoBuf$Annotation != null) {
                            d(protoBuf$Annotation);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (protoBuf$Annotation != null) {
                    d(protoBuf$Annotation);
                }
                throw th;
            }
        }

        public b o(int i) {
            this.c |= 1;
            this.d = i;
            return this;
        }
    }

    static {
        ProtoBuf$Annotation protoBuf$Annotation = new ProtoBuf$Annotation(true);
        defaultInstance = protoBuf$Annotation;
        protoBuf$Annotation.initFields();
    }

    public static ProtoBuf$Annotation getDefaultInstance() {
        return defaultInstance;
    }

    private void initFields() {
        this.id_ = 0;
        this.argument_ = Collections.emptyList();
    }

    public static b newBuilder() {
        return b.j();
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

    public int getId() {
        return this.id_;
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
        int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.id_) : 0;
        for (int i2 = 0; i2 < this.argument_.size(); i2++) {
            iO += CodedOutputStream.r(2, this.argument_.get(i2));
        }
        int size = iO + this.unknownFields.size();
        this.memoizedSerializedSize = size;
        return size;
    }

    public boolean hasId() {
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
        if (!hasId()) {
            this.memoizedIsInitialized = (byte) 0;
            return false;
        }
        for (int i = 0; i < getArgumentCount(); i++) {
            if (!getArgument(i).isInitialized()) {
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
        if ((this.bitField0_ & 1) == 1) {
            codedOutputStream.Z(1, this.id_);
        }
        for (int i = 0; i < this.argument_.size(); i++) {
            codedOutputStream.c0(2, this.argument_.get(i));
        }
        codedOutputStream.h0(this.unknownFields);
    }

    public static b newBuilder(ProtoBuf$Annotation protoBuf$Annotation) {
        return newBuilder().d(protoBuf$Annotation);
    }

    @Override
    public ProtoBuf$Annotation getDefaultInstanceForType() {
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

    private ProtoBuf$Annotation(GeneratedMessageLite.b bVar) {
        super(bVar);
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = bVar.c();
    }

    private ProtoBuf$Annotation(boolean z) {
        this.memoizedIsInitialized = (byte) -1;
        this.memoizedSerializedSize = -1;
        this.unknownFields = po0.b;
    }

    private ProtoBuf$Annotation(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                        if (iJ == 8) {
                            this.bitField0_ |= 1;
                            this.id_ = cVar.r();
                        } else if (iJ != 18) {
                            if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                            }
                        } else {
                            if ((c & 2) != 2) {
                                this.argument_ = new ArrayList();
                                c = 2;
                            }
                            this.argument_.add((Argument) cVar.t(Argument.PARSER, dVar));
                        }
                    }
                    z = true;
                } catch (Throwable th) {
                    if ((c & 2) == 2) {
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
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(this);
            } catch (IOException e2) {
                throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
            }
        }
        if ((c & 2) == 2) {
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
