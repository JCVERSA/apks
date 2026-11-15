package kotlin.reflect.jvm.internal.impl.metadata.jvm;

import defpackage.cx7;
import defpackage.po0;
import defpackage.un6;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.protobuf.WireFormat;
import kotlin.reflect.jvm.internal.impl.protobuf.c;
import kotlin.reflect.jvm.internal.impl.protobuf.d;
import kotlin.reflect.jvm.internal.impl.protobuf.f;

public abstract class JvmProtoBuf {
    public static final GeneratedMessageLite.e a;
    public static final GeneratedMessageLite.e b;
    public static final GeneratedMessageLite.e c;
    public static final GeneratedMessageLite.e d;
    public static final GeneratedMessageLite.e e;
    public static final GeneratedMessageLite.e f;
    public static final GeneratedMessageLite.e g;
    public static final GeneratedMessageLite.e h;
    public static final GeneratedMessageLite.e i;
    public static final GeneratedMessageLite.e j;
    public static final GeneratedMessageLite.e k;
    public static final GeneratedMessageLite.e l;
    public static final GeneratedMessageLite.e m;
    public static final GeneratedMessageLite.e n;

    public static final class JvmFieldSignature extends GeneratedMessageLite implements un6 {
        public static cx7 PARSER = new a();
        private static final JvmFieldSignature defaultInstance;
        private int bitField0_;
        private int desc_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int name_;
        private final po0 unknownFields;

        public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
            @Override
            public JvmFieldSignature c(c cVar, d dVar) {
                return new JvmFieldSignature(cVar, dVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b implements un6 {
            public int c;
            public int d;
            public int e;

            public b() {
                k();
            }

            public static b j() {
                return new b();
            }

            private void k() {
            }

            @Override
            public JvmFieldSignature build() {
                JvmFieldSignature jvmFieldSignatureH = h();
                if (jvmFieldSignatureH.isInitialized()) {
                    return jvmFieldSignatureH;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(jvmFieldSignatureH);
            }

            public JvmFieldSignature h() {
                JvmFieldSignature jvmFieldSignature = new JvmFieldSignature(this);
                int i = this.c;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmFieldSignature.name_ = this.d;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmFieldSignature.desc_ = this.e;
                jvmFieldSignature.bitField0_ = i2;
                return jvmFieldSignature;
            }

            public b clone() {
                return j().d(h());
            }

            @Override
            public b d(JvmFieldSignature jvmFieldSignature) {
                if (jvmFieldSignature == JvmFieldSignature.getDefaultInstance()) {
                    return this;
                }
                if (jvmFieldSignature.hasName()) {
                    o(jvmFieldSignature.getName());
                }
                if (jvmFieldSignature.hasDesc()) {
                    n(jvmFieldSignature.getDesc());
                }
                e(c().c(jvmFieldSignature.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            @Override
            public b b(c cVar, d dVar) throws Throwable {
                JvmFieldSignature jvmFieldSignature = null;
                try {
                    try {
                        JvmFieldSignature jvmFieldSignature2 = (JvmFieldSignature) JvmFieldSignature.PARSER.c(cVar, dVar);
                        if (jvmFieldSignature2 != null) {
                            d(jvmFieldSignature2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        JvmFieldSignature jvmFieldSignature3 = (JvmFieldSignature) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            jvmFieldSignature = jvmFieldSignature3;
                            if (jvmFieldSignature != null) {
                                d(jvmFieldSignature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (jvmFieldSignature != null) {
                        d(jvmFieldSignature);
                    }
                    throw th;
                }
            }

            public b n(int i) {
                this.c |= 2;
                this.e = i;
                return this;
            }

            public b o(int i) {
                this.c |= 1;
                this.d = i;
                return this;
            }
        }

        static {
            JvmFieldSignature jvmFieldSignature = new JvmFieldSignature(true);
            defaultInstance = jvmFieldSignature;
            jvmFieldSignature.initFields();
        }

        public static JvmFieldSignature getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.name_ = 0;
            this.desc_ = 0;
        }

        public static b newBuilder() {
            return b.j();
        }

        public int getDesc() {
            return this.desc_;
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
            int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.name_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iO += CodedOutputStream.o(2, this.desc_);
            }
            int size = iO + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public boolean hasDesc() {
            return (this.bitField0_ & 2) == 2;
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
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.Z(1, this.name_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.Z(2, this.desc_);
            }
            codedOutputStream.h0(this.unknownFields);
        }

        public static b newBuilder(JvmFieldSignature jvmFieldSignature) {
            return newBuilder().d(jvmFieldSignature);
        }

        @Override
        public JvmFieldSignature getDefaultInstanceForType() {
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

        private JvmFieldSignature(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.c();
        }

        private JvmFieldSignature(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = po0.b;
        }

        private JvmFieldSignature(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                                this.name_ = cVar.r();
                            } else if (iJ != 16) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                this.bitField0_ |= 2;
                                this.desc_ = cVar.r();
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

    public static final class JvmMethodSignature extends GeneratedMessageLite implements un6 {
        public static cx7 PARSER = new a();
        private static final JvmMethodSignature defaultInstance;
        private int bitField0_;
        private int desc_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private int name_;
        private final po0 unknownFields;

        public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
            @Override
            public JvmMethodSignature c(c cVar, d dVar) {
                return new JvmMethodSignature(cVar, dVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b implements un6 {
            public int c;
            public int d;
            public int e;

            public b() {
                k();
            }

            public static b j() {
                return new b();
            }

            private void k() {
            }

            @Override
            public JvmMethodSignature build() {
                JvmMethodSignature jvmMethodSignatureH = h();
                if (jvmMethodSignatureH.isInitialized()) {
                    return jvmMethodSignatureH;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(jvmMethodSignatureH);
            }

            public JvmMethodSignature h() {
                JvmMethodSignature jvmMethodSignature = new JvmMethodSignature(this);
                int i = this.c;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmMethodSignature.name_ = this.d;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmMethodSignature.desc_ = this.e;
                jvmMethodSignature.bitField0_ = i2;
                return jvmMethodSignature;
            }

            public b clone() {
                return j().d(h());
            }

            @Override
            public b d(JvmMethodSignature jvmMethodSignature) {
                if (jvmMethodSignature == JvmMethodSignature.getDefaultInstance()) {
                    return this;
                }
                if (jvmMethodSignature.hasName()) {
                    o(jvmMethodSignature.getName());
                }
                if (jvmMethodSignature.hasDesc()) {
                    n(jvmMethodSignature.getDesc());
                }
                e(c().c(jvmMethodSignature.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            @Override
            public b b(c cVar, d dVar) throws Throwable {
                JvmMethodSignature jvmMethodSignature = null;
                try {
                    try {
                        JvmMethodSignature jvmMethodSignature2 = (JvmMethodSignature) JvmMethodSignature.PARSER.c(cVar, dVar);
                        if (jvmMethodSignature2 != null) {
                            d(jvmMethodSignature2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        JvmMethodSignature jvmMethodSignature3 = (JvmMethodSignature) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            jvmMethodSignature = jvmMethodSignature3;
                            if (jvmMethodSignature != null) {
                                d(jvmMethodSignature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (jvmMethodSignature != null) {
                        d(jvmMethodSignature);
                    }
                    throw th;
                }
            }

            public b n(int i) {
                this.c |= 2;
                this.e = i;
                return this;
            }

            public b o(int i) {
                this.c |= 1;
                this.d = i;
                return this;
            }
        }

        static {
            JvmMethodSignature jvmMethodSignature = new JvmMethodSignature(true);
            defaultInstance = jvmMethodSignature;
            jvmMethodSignature.initFields();
        }

        public static JvmMethodSignature getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.name_ = 0;
            this.desc_ = 0;
        }

        public static b newBuilder() {
            return b.j();
        }

        public int getDesc() {
            return this.desc_;
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
            int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.name_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iO += CodedOutputStream.o(2, this.desc_);
            }
            int size = iO + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public boolean hasDesc() {
            return (this.bitField0_ & 2) == 2;
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
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.Z(1, this.name_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.Z(2, this.desc_);
            }
            codedOutputStream.h0(this.unknownFields);
        }

        public static b newBuilder(JvmMethodSignature jvmMethodSignature) {
            return newBuilder().d(jvmMethodSignature);
        }

        @Override
        public JvmMethodSignature getDefaultInstanceForType() {
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

        private JvmMethodSignature(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.c();
        }

        private JvmMethodSignature(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = po0.b;
        }

        private JvmMethodSignature(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                                this.name_ = cVar.r();
                            } else if (iJ != 16) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                this.bitField0_ |= 2;
                                this.desc_ = cVar.r();
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

    public static final class JvmPropertySignature extends GeneratedMessageLite implements un6 {
        public static cx7 PARSER = new a();
        private static final JvmPropertySignature defaultInstance;
        private int bitField0_;
        private JvmMethodSignature delegateMethod_;
        private JvmFieldSignature field_;
        private JvmMethodSignature getter_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private JvmMethodSignature setter_;
        private JvmMethodSignature syntheticMethod_;
        private final po0 unknownFields;

        public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
            @Override
            public JvmPropertySignature c(c cVar, d dVar) {
                return new JvmPropertySignature(cVar, dVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b implements un6 {
            public int c;
            public JvmFieldSignature d = JvmFieldSignature.getDefaultInstance();
            public JvmMethodSignature e = JvmMethodSignature.getDefaultInstance();
            public JvmMethodSignature f = JvmMethodSignature.getDefaultInstance();
            public JvmMethodSignature g = JvmMethodSignature.getDefaultInstance();
            public JvmMethodSignature h = JvmMethodSignature.getDefaultInstance();

            public b() {
                k();
            }

            public static b j() {
                return new b();
            }

            private void k() {
            }

            @Override
            public JvmPropertySignature build() {
                JvmPropertySignature jvmPropertySignatureH = h();
                if (jvmPropertySignatureH.isInitialized()) {
                    return jvmPropertySignatureH;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(jvmPropertySignatureH);
            }

            public JvmPropertySignature h() {
                JvmPropertySignature jvmPropertySignature = new JvmPropertySignature(this);
                int i = this.c;
                int i2 = (i & 1) != 1 ? 0 : 1;
                jvmPropertySignature.field_ = this.d;
                if ((i & 2) == 2) {
                    i2 |= 2;
                }
                jvmPropertySignature.syntheticMethod_ = this.e;
                if ((i & 4) == 4) {
                    i2 |= 4;
                }
                jvmPropertySignature.getter_ = this.f;
                if ((i & 8) == 8) {
                    i2 |= 8;
                }
                jvmPropertySignature.setter_ = this.g;
                if ((i & 16) == 16) {
                    i2 |= 16;
                }
                jvmPropertySignature.delegateMethod_ = this.h;
                jvmPropertySignature.bitField0_ = i2;
                return jvmPropertySignature;
            }

            public b clone() {
                return j().d(h());
            }

            public b l(JvmMethodSignature jvmMethodSignature) {
                if ((this.c & 16) != 16 || this.h == JvmMethodSignature.getDefaultInstance()) {
                    this.h = jvmMethodSignature;
                } else {
                    this.h = JvmMethodSignature.newBuilder(this.h).d(jvmMethodSignature).h();
                }
                this.c |= 16;
                return this;
            }

            public b m(JvmFieldSignature jvmFieldSignature) {
                if ((this.c & 1) != 1 || this.d == JvmFieldSignature.getDefaultInstance()) {
                    this.d = jvmFieldSignature;
                } else {
                    this.d = JvmFieldSignature.newBuilder(this.d).d(jvmFieldSignature).h();
                }
                this.c |= 1;
                return this;
            }

            @Override
            public b d(JvmPropertySignature jvmPropertySignature) {
                if (jvmPropertySignature == JvmPropertySignature.getDefaultInstance()) {
                    return this;
                }
                if (jvmPropertySignature.hasField()) {
                    m(jvmPropertySignature.getField());
                }
                if (jvmPropertySignature.hasSyntheticMethod()) {
                    r(jvmPropertySignature.getSyntheticMethod());
                }
                if (jvmPropertySignature.hasGetter()) {
                    p(jvmPropertySignature.getGetter());
                }
                if (jvmPropertySignature.hasSetter()) {
                    q(jvmPropertySignature.getSetter());
                }
                if (jvmPropertySignature.hasDelegateMethod()) {
                    l(jvmPropertySignature.getDelegateMethod());
                }
                e(c().c(jvmPropertySignature.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            @Override
            public b b(c cVar, d dVar) throws Throwable {
                JvmPropertySignature jvmPropertySignature = null;
                try {
                    try {
                        JvmPropertySignature jvmPropertySignature2 = (JvmPropertySignature) JvmPropertySignature.PARSER.c(cVar, dVar);
                        if (jvmPropertySignature2 != null) {
                            d(jvmPropertySignature2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        JvmPropertySignature jvmPropertySignature3 = (JvmPropertySignature) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            jvmPropertySignature = jvmPropertySignature3;
                            if (jvmPropertySignature != null) {
                                d(jvmPropertySignature);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (jvmPropertySignature != null) {
                        d(jvmPropertySignature);
                    }
                    throw th;
                }
            }

            public b p(JvmMethodSignature jvmMethodSignature) {
                if ((this.c & 4) != 4 || this.f == JvmMethodSignature.getDefaultInstance()) {
                    this.f = jvmMethodSignature;
                } else {
                    this.f = JvmMethodSignature.newBuilder(this.f).d(jvmMethodSignature).h();
                }
                this.c |= 4;
                return this;
            }

            public b q(JvmMethodSignature jvmMethodSignature) {
                if ((this.c & 8) != 8 || this.g == JvmMethodSignature.getDefaultInstance()) {
                    this.g = jvmMethodSignature;
                } else {
                    this.g = JvmMethodSignature.newBuilder(this.g).d(jvmMethodSignature).h();
                }
                this.c |= 8;
                return this;
            }

            public b r(JvmMethodSignature jvmMethodSignature) {
                if ((this.c & 2) != 2 || this.e == JvmMethodSignature.getDefaultInstance()) {
                    this.e = jvmMethodSignature;
                } else {
                    this.e = JvmMethodSignature.newBuilder(this.e).d(jvmMethodSignature).h();
                }
                this.c |= 2;
                return this;
            }
        }

        static {
            JvmPropertySignature jvmPropertySignature = new JvmPropertySignature(true);
            defaultInstance = jvmPropertySignature;
            jvmPropertySignature.initFields();
        }

        public static JvmPropertySignature getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.field_ = JvmFieldSignature.getDefaultInstance();
            this.syntheticMethod_ = JvmMethodSignature.getDefaultInstance();
            this.getter_ = JvmMethodSignature.getDefaultInstance();
            this.setter_ = JvmMethodSignature.getDefaultInstance();
            this.delegateMethod_ = JvmMethodSignature.getDefaultInstance();
        }

        public static b newBuilder() {
            return b.j();
        }

        public JvmMethodSignature getDelegateMethod() {
            return this.delegateMethod_;
        }

        public JvmFieldSignature getField() {
            return this.field_;
        }

        public JvmMethodSignature getGetter() {
            return this.getter_;
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
            int iR = (this.bitField0_ & 1) == 1 ? CodedOutputStream.r(1, this.field_) : 0;
            if ((this.bitField0_ & 2) == 2) {
                iR += CodedOutputStream.r(2, this.syntheticMethod_);
            }
            if ((this.bitField0_ & 4) == 4) {
                iR += CodedOutputStream.r(3, this.getter_);
            }
            if ((this.bitField0_ & 8) == 8) {
                iR += CodedOutputStream.r(4, this.setter_);
            }
            if ((this.bitField0_ & 16) == 16) {
                iR += CodedOutputStream.r(5, this.delegateMethod_);
            }
            int size = iR + this.unknownFields.size();
            this.memoizedSerializedSize = size;
            return size;
        }

        public JvmMethodSignature getSetter() {
            return this.setter_;
        }

        public JvmMethodSignature getSyntheticMethod() {
            return this.syntheticMethod_;
        }

        public boolean hasDelegateMethod() {
            return (this.bitField0_ & 16) == 16;
        }

        public boolean hasField() {
            return (this.bitField0_ & 1) == 1;
        }

        public boolean hasGetter() {
            return (this.bitField0_ & 4) == 4;
        }

        public boolean hasSetter() {
            return (this.bitField0_ & 8) == 8;
        }

        public boolean hasSyntheticMethod() {
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
            this.memoizedIsInitialized = (byte) 1;
            return true;
        }

        @Override
        public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
            getSerializedSize();
            if ((this.bitField0_ & 1) == 1) {
                codedOutputStream.c0(1, this.field_);
            }
            if ((this.bitField0_ & 2) == 2) {
                codedOutputStream.c0(2, this.syntheticMethod_);
            }
            if ((this.bitField0_ & 4) == 4) {
                codedOutputStream.c0(3, this.getter_);
            }
            if ((this.bitField0_ & 8) == 8) {
                codedOutputStream.c0(4, this.setter_);
            }
            if ((this.bitField0_ & 16) == 16) {
                codedOutputStream.c0(5, this.delegateMethod_);
            }
            codedOutputStream.h0(this.unknownFields);
        }

        public static b newBuilder(JvmPropertySignature jvmPropertySignature) {
            return newBuilder().d(jvmPropertySignature);
        }

        @Override
        public JvmPropertySignature getDefaultInstanceForType() {
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

        private JvmPropertySignature(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.c();
        }

        private JvmPropertySignature(boolean z) {
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = po0.b;
        }

        private JvmPropertySignature(c cVar, d dVar) throws InvalidProtocolBufferException {
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
                            if (iJ == 10) {
                                JvmFieldSignature.b builder = (this.bitField0_ & 1) == 1 ? this.field_.toBuilder() : null;
                                JvmFieldSignature jvmFieldSignature = (JvmFieldSignature) cVar.t(JvmFieldSignature.PARSER, dVar);
                                this.field_ = jvmFieldSignature;
                                if (builder != null) {
                                    builder.d(jvmFieldSignature);
                                    this.field_ = builder.h();
                                }
                                this.bitField0_ |= 1;
                            } else if (iJ == 18) {
                                JvmMethodSignature.b builder2 = (this.bitField0_ & 2) == 2 ? this.syntheticMethod_.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature = (JvmMethodSignature) cVar.t(JvmMethodSignature.PARSER, dVar);
                                this.syntheticMethod_ = jvmMethodSignature;
                                if (builder2 != null) {
                                    builder2.d(jvmMethodSignature);
                                    this.syntheticMethod_ = builder2.h();
                                }
                                this.bitField0_ |= 2;
                            } else if (iJ == 26) {
                                JvmMethodSignature.b builder3 = (this.bitField0_ & 4) == 4 ? this.getter_.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature2 = (JvmMethodSignature) cVar.t(JvmMethodSignature.PARSER, dVar);
                                this.getter_ = jvmMethodSignature2;
                                if (builder3 != null) {
                                    builder3.d(jvmMethodSignature2);
                                    this.getter_ = builder3.h();
                                }
                                this.bitField0_ |= 4;
                            } else if (iJ == 34) {
                                JvmMethodSignature.b builder4 = (this.bitField0_ & 8) == 8 ? this.setter_.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature3 = (JvmMethodSignature) cVar.t(JvmMethodSignature.PARSER, dVar);
                                this.setter_ = jvmMethodSignature3;
                                if (builder4 != null) {
                                    builder4.d(jvmMethodSignature3);
                                    this.setter_ = builder4.h();
                                }
                                this.bitField0_ |= 8;
                            } else if (iJ != 42) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                JvmMethodSignature.b builder5 = (this.bitField0_ & 16) == 16 ? this.delegateMethod_.toBuilder() : null;
                                JvmMethodSignature jvmMethodSignature4 = (JvmMethodSignature) cVar.t(JvmMethodSignature.PARSER, dVar);
                                this.delegateMethod_ = jvmMethodSignature4;
                                if (builder5 != null) {
                                    builder5.d(jvmMethodSignature4);
                                    this.delegateMethod_ = builder5.h();
                                }
                                this.bitField0_ |= 16;
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

    public static final class StringTableTypes extends GeneratedMessageLite implements un6 {
        public static cx7 PARSER = new a();
        private static final StringTableTypes defaultInstance;
        private int localNameMemoizedSerializedSize;
        private List<Integer> localName_;
        private byte memoizedIsInitialized;
        private int memoizedSerializedSize;
        private List<Record> record_;
        private final po0 unknownFields;

        public static final class Record extends GeneratedMessageLite implements un6 {
            public static cx7 PARSER = new a();
            private static final Record defaultInstance;
            private int bitField0_;
            private byte memoizedIsInitialized;
            private int memoizedSerializedSize;
            private Operation operation_;
            private int predefinedIndex_;
            private int range_;
            private int replaceCharMemoizedSerializedSize;
            private List<Integer> replaceChar_;
            private Object string_;
            private int substringIndexMemoizedSerializedSize;
            private List<Integer> substringIndex_;
            private final po0 unknownFields;

            public enum Operation implements f.a {
                NONE(0, 0),
                INTERNAL_TO_CLASS_ID(1, 1),
                DESC_TO_CLASS_ID(2, 2);

                private static f.b internalValueMap = new a();
                private final int value;

                public static class a implements f.b {
                    @Override
                    public Operation findValueByNumber(int i) {
                        return Operation.valueOf(i);
                    }
                }

                Operation(int i, int i2) {
                    this.value = i2;
                }

                @Override
                public final int getNumber() {
                    return this.value;
                }

                public static Operation valueOf(int i) {
                    if (i == 0) {
                        return NONE;
                    }
                    if (i == 1) {
                        return INTERNAL_TO_CLASS_ID;
                    }
                    if (i != 2) {
                        return null;
                    }
                    return DESC_TO_CLASS_ID;
                }
            }

            public static class a extends kotlin.reflect.jvm.internal.impl.protobuf.b {
                @Override
                public Record c(c cVar, d dVar) {
                    return new Record(cVar, dVar);
                }
            }

            public static final class b extends GeneratedMessageLite.b implements un6 {
                public int c;
                public int e;
                public int d = 1;
                public Object f = "";
                public Operation g = Operation.NONE;
                public List h = Collections.emptyList();
                public List i = Collections.emptyList();

                public b() {
                    m();
                }

                public static b j() {
                    return new b();
                }

                private void m() {
                }

                @Override
                public Record build() {
                    Record recordH = h();
                    if (recordH.isInitialized()) {
                        return recordH;
                    }
                    throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(recordH);
                }

                public Record h() {
                    Record record = new Record(this);
                    int i = this.c;
                    int i2 = (i & 1) != 1 ? 0 : 1;
                    record.range_ = this.d;
                    if ((i & 2) == 2) {
                        i2 |= 2;
                    }
                    record.predefinedIndex_ = this.e;
                    if ((i & 4) == 4) {
                        i2 |= 4;
                    }
                    record.string_ = this.f;
                    if ((i & 8) == 8) {
                        i2 |= 8;
                    }
                    record.operation_ = this.g;
                    if ((this.c & 16) == 16) {
                        this.h = Collections.unmodifiableList(this.h);
                        this.c &= -17;
                    }
                    record.substringIndex_ = this.h;
                    if ((this.c & 32) == 32) {
                        this.i = Collections.unmodifiableList(this.i);
                        this.c &= -33;
                    }
                    record.replaceChar_ = this.i;
                    record.bitField0_ = i2;
                    return record;
                }

                public b clone() {
                    return j().d(h());
                }

                public final void k() {
                    if ((this.c & 32) != 32) {
                        this.i = new ArrayList(this.i);
                        this.c |= 32;
                    }
                }

                public final void l() {
                    if ((this.c & 16) != 16) {
                        this.h = new ArrayList(this.h);
                        this.c |= 16;
                    }
                }

                @Override
                public b d(Record record) {
                    if (record == Record.getDefaultInstance()) {
                        return this;
                    }
                    if (record.hasRange()) {
                        r(record.getRange());
                    }
                    if (record.hasPredefinedIndex()) {
                        q(record.getPredefinedIndex());
                    }
                    if (record.hasString()) {
                        this.c |= 4;
                        this.f = record.string_;
                    }
                    if (record.hasOperation()) {
                        p(record.getOperation());
                    }
                    if (!record.substringIndex_.isEmpty()) {
                        if (this.h.isEmpty()) {
                            this.h = record.substringIndex_;
                            this.c &= -17;
                        } else {
                            l();
                            this.h.addAll(record.substringIndex_);
                        }
                    }
                    if (!record.replaceChar_.isEmpty()) {
                        if (this.i.isEmpty()) {
                            this.i = record.replaceChar_;
                            this.c &= -33;
                        } else {
                            k();
                            this.i.addAll(record.replaceChar_);
                        }
                    }
                    e(c().c(record.unknownFields));
                    return this;
                }

                /* JADX WARN: Code duplicated, block: B:15:0x001d  */
                @Override
                public b b(c cVar, d dVar) throws Throwable {
                    Record record = null;
                    try {
                        try {
                            Record record2 = (Record) Record.PARSER.c(cVar, dVar);
                            if (record2 != null) {
                                d(record2);
                            }
                            return this;
                        } catch (InvalidProtocolBufferException e) {
                            Record record3 = (Record) e.getUnfinishedMessage();
                            try {
                                throw e;
                            } catch (Throwable th) {
                                th = th;
                                record = record3;
                                if (record != null) {
                                    d(record);
                                }
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (record != null) {
                            d(record);
                        }
                        throw th;
                    }
                }

                public b p(Operation operation) {
                    operation.getClass();
                    this.c |= 8;
                    this.g = operation;
                    return this;
                }

                public b q(int i) {
                    this.c |= 2;
                    this.e = i;
                    return this;
                }

                public b r(int i) {
                    this.c |= 1;
                    this.d = i;
                    return this;
                }
            }

            static {
                Record record = new Record(true);
                defaultInstance = record;
                record.initFields();
            }

            public static Record getDefaultInstance() {
                return defaultInstance;
            }

            private void initFields() {
                this.range_ = 1;
                this.predefinedIndex_ = 0;
                this.string_ = "";
                this.operation_ = Operation.NONE;
                this.substringIndex_ = Collections.emptyList();
                this.replaceChar_ = Collections.emptyList();
            }

            public static b newBuilder() {
                return b.j();
            }

            public Operation getOperation() {
                return this.operation_;
            }

            @Override
            public cx7 getParserForType() {
                return PARSER;
            }

            public int getPredefinedIndex() {
                return this.predefinedIndex_;
            }

            public int getRange() {
                return this.range_;
            }

            public int getReplaceCharCount() {
                return this.replaceChar_.size();
            }

            public List<Integer> getReplaceCharList() {
                return this.replaceChar_;
            }

            @Override
            public int getSerializedSize() {
                int i = this.memoizedSerializedSize;
                if (i != -1) {
                    return i;
                }
                int iO = (this.bitField0_ & 1) == 1 ? CodedOutputStream.o(1, this.range_) : 0;
                if ((this.bitField0_ & 2) == 2) {
                    iO += CodedOutputStream.o(2, this.predefinedIndex_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    iO += CodedOutputStream.h(3, this.operation_.getNumber());
                }
                int iP = 0;
                for (int i2 = 0; i2 < this.substringIndex_.size(); i2++) {
                    iP += CodedOutputStream.p(this.substringIndex_.get(i2).intValue());
                }
                int iP2 = iO + iP;
                if (!getSubstringIndexList().isEmpty()) {
                    iP2 = iP2 + 1 + CodedOutputStream.p(iP);
                }
                this.substringIndexMemoizedSerializedSize = iP;
                int iP3 = 0;
                for (int i3 = 0; i3 < this.replaceChar_.size(); i3++) {
                    iP3 += CodedOutputStream.p(this.replaceChar_.get(i3).intValue());
                }
                int iD = iP2 + iP3;
                if (!getReplaceCharList().isEmpty()) {
                    iD = iD + 1 + CodedOutputStream.p(iP3);
                }
                this.replaceCharMemoizedSerializedSize = iP3;
                if ((this.bitField0_ & 4) == 4) {
                    iD += CodedOutputStream.d(6, getStringBytes());
                }
                int size = iD + this.unknownFields.size();
                this.memoizedSerializedSize = size;
                return size;
            }

            public String getString() {
                Object obj = this.string_;
                if (obj instanceof String) {
                    return (String) obj;
                }
                po0 po0Var = (po0) obj;
                String strW = po0Var.w();
                if (po0Var.p()) {
                    this.string_ = strW;
                }
                return strW;
            }

            public po0 getStringBytes() {
                Object obj = this.string_;
                if (!(obj instanceof String)) {
                    return (po0) obj;
                }
                po0 po0VarK = po0.k((String) obj);
                this.string_ = po0VarK;
                return po0VarK;
            }

            public int getSubstringIndexCount() {
                return this.substringIndex_.size();
            }

            public List<Integer> getSubstringIndexList() {
                return this.substringIndex_;
            }

            public boolean hasOperation() {
                return (this.bitField0_ & 8) == 8;
            }

            public boolean hasPredefinedIndex() {
                return (this.bitField0_ & 2) == 2;
            }

            public boolean hasRange() {
                return (this.bitField0_ & 1) == 1;
            }

            public boolean hasString() {
                return (this.bitField0_ & 4) == 4;
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
                    codedOutputStream.Z(1, this.range_);
                }
                if ((this.bitField0_ & 2) == 2) {
                    codedOutputStream.Z(2, this.predefinedIndex_);
                }
                if ((this.bitField0_ & 8) == 8) {
                    codedOutputStream.R(3, this.operation_.getNumber());
                }
                if (getSubstringIndexList().size() > 0) {
                    codedOutputStream.n0(34);
                    codedOutputStream.n0(this.substringIndexMemoizedSerializedSize);
                }
                for (int i = 0; i < this.substringIndex_.size(); i++) {
                    codedOutputStream.a0(this.substringIndex_.get(i).intValue());
                }
                if (getReplaceCharList().size() > 0) {
                    codedOutputStream.n0(42);
                    codedOutputStream.n0(this.replaceCharMemoizedSerializedSize);
                }
                for (int i2 = 0; i2 < this.replaceChar_.size(); i2++) {
                    codedOutputStream.a0(this.replaceChar_.get(i2).intValue());
                }
                if ((this.bitField0_ & 4) == 4) {
                    codedOutputStream.N(6, getStringBytes());
                }
                codedOutputStream.h0(this.unknownFields);
            }

            public static b newBuilder(Record record) {
                return newBuilder().d(record);
            }

            @Override
            public Record getDefaultInstanceForType() {
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

            private Record(GeneratedMessageLite.b bVar) {
                super(bVar);
                this.substringIndexMemoizedSerializedSize = -1;
                this.replaceCharMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = bVar.c();
            }

            private Record(boolean z) {
                this.substringIndexMemoizedSerializedSize = -1;
                this.replaceCharMemoizedSerializedSize = -1;
                this.memoizedIsInitialized = (byte) -1;
                this.memoizedSerializedSize = -1;
                this.unknownFields = po0.b;
            }

            private Record(c cVar, d dVar) throws InvalidProtocolBufferException {
                this.substringIndexMemoizedSerializedSize = -1;
                this.replaceCharMemoizedSerializedSize = -1;
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
                                if (iJ == 8) {
                                    this.bitField0_ |= 1;
                                    this.range_ = cVar.r();
                                } else if (iJ == 16) {
                                    this.bitField0_ |= 2;
                                    this.predefinedIndex_ = cVar.r();
                                } else if (iJ == 24) {
                                    int iM = cVar.m();
                                    Operation operationValueOf = Operation.valueOf(iM);
                                    if (operationValueOf == null) {
                                        codedOutputStreamI.n0(iJ);
                                        codedOutputStreamI.n0(iM);
                                    } else {
                                        this.bitField0_ |= 8;
                                        this.operation_ = operationValueOf;
                                    }
                                } else if (iJ == 32) {
                                    if ((i & 16) != 16) {
                                        this.substringIndex_ = new ArrayList();
                                        i |= 16;
                                    }
                                    this.substringIndex_.add(Integer.valueOf(cVar.r()));
                                } else if (iJ == 34) {
                                    int i2 = cVar.i(cVar.z());
                                    if ((i & 16) != 16 && cVar.e() > 0) {
                                        this.substringIndex_ = new ArrayList();
                                        i |= 16;
                                    }
                                    while (cVar.e() > 0) {
                                        this.substringIndex_.add(Integer.valueOf(cVar.r()));
                                    }
                                    cVar.h(i2);
                                } else if (iJ == 40) {
                                    if ((i & 32) != 32) {
                                        this.replaceChar_ = new ArrayList();
                                        i |= 32;
                                    }
                                    this.replaceChar_.add(Integer.valueOf(cVar.r()));
                                } else if (iJ == 42) {
                                    int i3 = cVar.i(cVar.z());
                                    if ((i & 32) != 32 && cVar.e() > 0) {
                                        this.replaceChar_ = new ArrayList();
                                        i |= 32;
                                    }
                                    while (cVar.e() > 0) {
                                        this.replaceChar_.add(Integer.valueOf(cVar.r()));
                                    }
                                    cVar.h(i3);
                                } else if (iJ != 50) {
                                    if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                    }
                                } else {
                                    po0 po0VarK = cVar.k();
                                    this.bitField0_ |= 4;
                                    this.string_ = po0VarK;
                                }
                            }
                            z = true;
                        } catch (Throwable th) {
                            if ((i & 16) == 16) {
                                this.substringIndex_ = Collections.unmodifiableList(this.substringIndex_);
                            }
                            if ((i & 32) == 32) {
                                this.replaceChar_ = Collections.unmodifiableList(this.replaceChar_);
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
                if ((i & 16) == 16) {
                    this.substringIndex_ = Collections.unmodifiableList(this.substringIndex_);
                }
                if ((i & 32) == 32) {
                    this.replaceChar_ = Collections.unmodifiableList(this.replaceChar_);
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
            public StringTableTypes c(c cVar, d dVar) {
                return new StringTableTypes(cVar, dVar);
            }
        }

        public static final class b extends GeneratedMessageLite.b implements un6 {
            public int c;
            public List d = Collections.emptyList();
            public List e = Collections.emptyList();

            public b() {
                m();
            }

            public static b j() {
                return new b();
            }

            private void m() {
            }

            @Override
            public StringTableTypes build() {
                StringTableTypes stringTableTypesH = h();
                if (stringTableTypesH.isInitialized()) {
                    return stringTableTypesH;
                }
                throw kotlin.reflect.jvm.internal.impl.protobuf.a.AbstractC0400a.a(stringTableTypesH);
            }

            public StringTableTypes h() {
                StringTableTypes stringTableTypes = new StringTableTypes(this);
                if ((this.c & 1) == 1) {
                    this.d = Collections.unmodifiableList(this.d);
                    this.c &= -2;
                }
                stringTableTypes.record_ = this.d;
                if ((this.c & 2) == 2) {
                    this.e = Collections.unmodifiableList(this.e);
                    this.c &= -3;
                }
                stringTableTypes.localName_ = this.e;
                return stringTableTypes;
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

            public final void l() {
                if ((this.c & 1) != 1) {
                    this.d = new ArrayList(this.d);
                    this.c |= 1;
                }
            }

            @Override
            public b d(StringTableTypes stringTableTypes) {
                if (stringTableTypes == StringTableTypes.getDefaultInstance()) {
                    return this;
                }
                if (!stringTableTypes.record_.isEmpty()) {
                    if (this.d.isEmpty()) {
                        this.d = stringTableTypes.record_;
                        this.c &= -2;
                    } else {
                        l();
                        this.d.addAll(stringTableTypes.record_);
                    }
                }
                if (!stringTableTypes.localName_.isEmpty()) {
                    if (this.e.isEmpty()) {
                        this.e = stringTableTypes.localName_;
                        this.c &= -3;
                    } else {
                        k();
                        this.e.addAll(stringTableTypes.localName_);
                    }
                }
                e(c().c(stringTableTypes.unknownFields));
                return this;
            }

            /* JADX WARN: Code duplicated, block: B:15:0x001d  */
            @Override
            public b b(c cVar, d dVar) throws Throwable {
                StringTableTypes stringTableTypes = null;
                try {
                    try {
                        StringTableTypes stringTableTypes2 = (StringTableTypes) StringTableTypes.PARSER.c(cVar, dVar);
                        if (stringTableTypes2 != null) {
                            d(stringTableTypes2);
                        }
                        return this;
                    } catch (InvalidProtocolBufferException e) {
                        StringTableTypes stringTableTypes3 = (StringTableTypes) e.getUnfinishedMessage();
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            stringTableTypes = stringTableTypes3;
                            if (stringTableTypes != null) {
                                d(stringTableTypes);
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (stringTableTypes != null) {
                        d(stringTableTypes);
                    }
                    throw th;
                }
            }
        }

        static {
            StringTableTypes stringTableTypes = new StringTableTypes(true);
            defaultInstance = stringTableTypes;
            stringTableTypes.initFields();
        }

        public static StringTableTypes getDefaultInstance() {
            return defaultInstance;
        }

        private void initFields() {
            this.record_ = Collections.emptyList();
            this.localName_ = Collections.emptyList();
        }

        public static b newBuilder() {
            return b.j();
        }

        public static StringTableTypes parseDelimitedFrom(InputStream inputStream, d dVar) throws IOException {
            return (StringTableTypes) PARSER.a(inputStream, dVar);
        }

        public List<Integer> getLocalNameList() {
            return this.localName_;
        }

        @Override
        public cx7 getParserForType() {
            return PARSER;
        }

        public List<Record> getRecordList() {
            return this.record_;
        }

        @Override
        public int getSerializedSize() {
            int i = this.memoizedSerializedSize;
            if (i != -1) {
                return i;
            }
            int iR = 0;
            for (int i2 = 0; i2 < this.record_.size(); i2++) {
                iR += CodedOutputStream.r(1, this.record_.get(i2));
            }
            int iP = 0;
            for (int i3 = 0; i3 < this.localName_.size(); i3++) {
                iP += CodedOutputStream.p(this.localName_.get(i3).intValue());
            }
            int iP2 = iR + iP;
            if (!getLocalNameList().isEmpty()) {
                iP2 = iP2 + 1 + CodedOutputStream.p(iP);
            }
            this.localNameMemoizedSerializedSize = iP;
            int size = iP2 + this.unknownFields.size();
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
            for (int i = 0; i < this.record_.size(); i++) {
                codedOutputStream.c0(1, this.record_.get(i));
            }
            if (getLocalNameList().size() > 0) {
                codedOutputStream.n0(42);
                codedOutputStream.n0(this.localNameMemoizedSerializedSize);
            }
            for (int i2 = 0; i2 < this.localName_.size(); i2++) {
                codedOutputStream.a0(this.localName_.get(i2).intValue());
            }
            codedOutputStream.h0(this.unknownFields);
        }

        public static b newBuilder(StringTableTypes stringTableTypes) {
            return newBuilder().d(stringTableTypes);
        }

        @Override
        public StringTableTypes getDefaultInstanceForType() {
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

        private StringTableTypes(GeneratedMessageLite.b bVar) {
            super(bVar);
            this.localNameMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = bVar.c();
        }

        private StringTableTypes(boolean z) {
            this.localNameMemoizedSerializedSize = -1;
            this.memoizedIsInitialized = (byte) -1;
            this.memoizedSerializedSize = -1;
            this.unknownFields = po0.b;
        }

        private StringTableTypes(c cVar, d dVar) throws InvalidProtocolBufferException {
            this.localNameMemoizedSerializedSize = -1;
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
                            if (iJ == 10) {
                                if ((i & 1) != 1) {
                                    this.record_ = new ArrayList();
                                    i |= 1;
                                }
                                this.record_.add((Record) cVar.t(Record.PARSER, dVar));
                            } else if (iJ == 40) {
                                if ((i & 2) != 2) {
                                    this.localName_ = new ArrayList();
                                    i |= 2;
                                }
                                this.localName_.add(Integer.valueOf(cVar.r()));
                            } else if (iJ != 42) {
                                if (!parseUnknownField(cVar, codedOutputStreamI, dVar, iJ)) {
                                }
                            } else {
                                int i2 = cVar.i(cVar.z());
                                if ((i & 2) != 2 && cVar.e() > 0) {
                                    this.localName_ = new ArrayList();
                                    i |= 2;
                                }
                                while (cVar.e() > 0) {
                                    this.localName_.add(Integer.valueOf(cVar.r()));
                                }
                                cVar.h(i2);
                            }
                        }
                        z = true;
                    } catch (InvalidProtocolBufferException e) {
                        throw e.setUnfinishedMessage(this);
                    } catch (IOException e2) {
                        throw new InvalidProtocolBufferException(e2.getMessage()).setUnfinishedMessage(this);
                    }
                } catch (Throwable th) {
                    if ((i & 1) == 1) {
                        this.record_ = Collections.unmodifiableList(this.record_);
                    }
                    if ((i & 2) == 2) {
                        this.localName_ = Collections.unmodifiableList(this.localName_);
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
            if ((i & 1) == 1) {
                this.record_ = Collections.unmodifiableList(this.record_);
            }
            if ((i & 2) == 2) {
                this.localName_ = Collections.unmodifiableList(this.localName_);
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

    static {
        ProtoBuf$Constructor defaultInstance = ProtoBuf$Constructor.getDefaultInstance();
        JvmMethodSignature defaultInstance2 = JvmMethodSignature.getDefaultInstance();
        JvmMethodSignature defaultInstance3 = JvmMethodSignature.getDefaultInstance();
        WireFormat.FieldType fieldType = WireFormat.FieldType.MESSAGE;
        a = GeneratedMessageLite.newSingularGeneratedExtension(defaultInstance, defaultInstance2, defaultInstance3, null, 100, fieldType, JvmMethodSignature.class);
        b = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Function.getDefaultInstance(), JvmMethodSignature.getDefaultInstance(), JvmMethodSignature.getDefaultInstance(), null, 100, fieldType, JvmMethodSignature.class);
        ProtoBuf$Function defaultInstance4 = ProtoBuf$Function.getDefaultInstance();
        WireFormat.FieldType fieldType2 = WireFormat.FieldType.INT32;
        c = GeneratedMessageLite.newSingularGeneratedExtension(defaultInstance4, 0, null, null, 101, fieldType2, Integer.class);
        d = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), JvmPropertySignature.getDefaultInstance(), JvmPropertySignature.getDefaultInstance(), null, 100, fieldType, JvmPropertySignature.class);
        e = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Property.getDefaultInstance(), 0, null, null, 101, fieldType2, Integer.class);
        f = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Type.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 100, fieldType, false, ProtoBuf$Annotation.class);
        g = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Type.getDefaultInstance(), Boolean.FALSE, null, null, 101, WireFormat.FieldType.BOOL, Boolean.class);
        h = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$TypeParameter.getDefaultInstance(), ProtoBuf$Annotation.getDefaultInstance(), null, 100, fieldType, false, ProtoBuf$Annotation.class);
        i = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), 0, null, null, 101, fieldType2, Integer.class);
        j = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), ProtoBuf$Property.getDefaultInstance(), null, 102, fieldType, false, ProtoBuf$Property.class);
        k = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), 0, null, null, 103, fieldType2, Integer.class);
        l = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Class.getDefaultInstance(), 0, null, null, 104, fieldType2, Integer.class);
        m = GeneratedMessageLite.newSingularGeneratedExtension(ProtoBuf$Package.getDefaultInstance(), 0, null, null, 101, fieldType2, Integer.class);
        n = GeneratedMessageLite.newRepeatedGeneratedExtension(ProtoBuf$Package.getDefaultInstance(), ProtoBuf$Property.getDefaultInstance(), null, 102, fieldType, false, ProtoBuf$Property.class);
    }

    public static void a(d dVar) {
        dVar.a(a);
        dVar.a(b);
        dVar.a(c);
        dVar.a(d);
        dVar.a(e);
        dVar.a(f);
        dVar.a(g);
        dVar.a(h);
        dVar.a(i);
        dVar.a(j);
        dVar.a(k);
        dVar.a(l);
        dVar.a(m);
        dVar.a(n);
    }
}
