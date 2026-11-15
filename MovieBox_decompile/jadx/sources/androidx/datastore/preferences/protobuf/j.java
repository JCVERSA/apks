package androidx.datastore.preferences.protobuf;

import java.util.List;
import java.util.Map;

final class j implements a1 {

    private final i f8528a;

    private int f8529b;

    private int f8530c;

    private int f8531d = 0;

    static class a {

        static final int[] f8532a;

        static {
            int[] iArr = new int[WireFormat.FieldType.values().length];
            f8532a = iArr;
            try {
                iArr[WireFormat.FieldType.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8532a[WireFormat.FieldType.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8532a[WireFormat.FieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8532a[WireFormat.FieldType.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8532a[WireFormat.FieldType.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8532a[WireFormat.FieldType.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8532a[WireFormat.FieldType.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8532a[WireFormat.FieldType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8532a[WireFormat.FieldType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8532a[WireFormat.FieldType.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8532a[WireFormat.FieldType.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8532a[WireFormat.FieldType.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f8532a[WireFormat.FieldType.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f8532a[WireFormat.FieldType.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f8532a[WireFormat.FieldType.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f8532a[WireFormat.FieldType.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f8532a[WireFormat.FieldType.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private j(i iVar) {
        i iVar2 = (i) w.b(iVar, "input");
        this.f8528a = iVar2;
        iVar2.f8478d = this;
    }

    public static j f(i iVar) {
        j jVar = iVar.f8478d;
        return jVar != null ? jVar : new j(iVar);
    }

    private void g(Object obj, b1 b1Var, o oVar) {
        int i10 = this.f8530c;
        this.f8530c = WireFormat.c(WireFormat.a(this.f8529b), 4);
        try {
            b1Var.a(obj, this, oVar);
            if (this.f8529b != this.f8530c) {
                throw InvalidProtocolBufferException.parseFailure();
            }
            this.f8530c = i10;
        } catch (Throwable th2) {
            this.f8530c = i10;
            throw th2;
        }
    }

    private void h(Object obj, b1 b1Var, o oVar) throws InvalidProtocolBufferException {
        int iF = this.f8528a.F();
        i iVar = this.f8528a;
        if (iVar.f8475a >= iVar.f8476b) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int iO = iVar.o(iF);
        this.f8528a.f8475a++;
        b1Var.a(obj, this, oVar);
        this.f8528a.a(0);
        i iVar2 = this.f8528a;
        iVar2.f8475a--;
        iVar2.n(iO);
    }

    private Object i(WireFormat.FieldType fieldType, Class cls, o oVar) {
        switch (a.f8532a[fieldType.ordinal()]) {
            case 1:
                return Boolean.valueOf(readBool());
            case 2:
                return readBytes();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(readEnum());
            case 5:
                return Integer.valueOf(readFixed32());
            case 6:
                return Long.valueOf(readFixed64());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(readInt32());
            case 9:
                return Long.valueOf(readInt64());
            case 10:
                return l(cls, oVar);
            case 11:
                return Integer.valueOf(readSFixed32());
            case 12:
                return Long.valueOf(readSFixed64());
            case 13:
                return Integer.valueOf(readSInt32());
            case 14:
                return Long.valueOf(readSInt64());
            case 15:
                return readStringRequireUtf8();
            case 16:
                return Integer.valueOf(readUInt32());
            case 17:
                return Long.valueOf(readUInt64());
            default:
                throw new IllegalArgumentException("unsupported field type.");
        }
    }

    private Object j(b1 b1Var, o oVar) {
        Object objNewInstance = b1Var.newInstance();
        g(objNewInstance, b1Var, oVar);
        b1Var.makeImmutable(objNewInstance);
        return objNewInstance;
    }

    private Object k(b1 b1Var, o oVar) throws InvalidProtocolBufferException {
        Object objNewInstance = b1Var.newInstance();
        h(objNewInstance, b1Var, oVar);
        b1Var.makeImmutable(objNewInstance);
        return objNewInstance;
    }

    private void n(int i10) throws InvalidProtocolBufferException {
        if (this.f8528a.e() != i10) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    private void o(int i10) throws InvalidProtocolBufferException.InvalidWireTypeException {
        if (WireFormat.b(this.f8529b) != i10) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    private void p(int i10) throws InvalidProtocolBufferException {
        if ((i10 & 3) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    private void q(int i10) throws InvalidProtocolBufferException {
        if ((i10 & 7) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override
    public void a(Object obj, b1 b1Var, o oVar) throws InvalidProtocolBufferException {
        o(2);
        h(obj, b1Var, oVar);
    }

    @Override
    public void b(List list, b1 b1Var, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iE;
        if (WireFormat.b(this.f8529b) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i10 = this.f8529b;
        do {
            list.add(k(b1Var, oVar));
            if (this.f8528a.f() || this.f8531d != 0) {
                return;
            } else {
                iE = this.f8528a.E();
            }
        } while (iE == i10);
        this.f8531d = iE;
    }

    @Override
    public void c(Map map, h0.a aVar, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        int iO = this.f8528a.o(this.f8528a.F());
        Object objI = aVar.f8470b;
        Object objI2 = aVar.f8472d;
        while (true) {
            try {
                int fieldNumber = getFieldNumber();
                if (fieldNumber == Integer.MAX_VALUE || this.f8528a.f()) {
                    break;
                }
                if (fieldNumber == 1) {
                    objI = i(aVar.f8469a, null, null);
                } else if (fieldNumber != 2) {
                    try {
                        if (!skipField()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                        if (!skipField()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    }
                } else {
                    objI2 = i(aVar.f8471c, aVar.f8472d.getClass(), oVar);
                }
            } catch (Throwable th2) {
                this.f8528a.n(iO);
                throw th2;
            }
        }
        map.put(objI, objI2);
        this.f8528a.n(iO);
    }

    @Override
    public void d(Object obj, b1 b1Var, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(3);
        g(obj, b1Var, oVar);
    }

    @Override
    public void e(List list, b1 b1Var, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iE;
        if (WireFormat.b(this.f8529b) != 3) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i10 = this.f8529b;
        do {
            list.add(j(b1Var, oVar));
            if (this.f8528a.f() || this.f8531d != 0) {
                return;
            } else {
                iE = this.f8528a.E();
            }
        } while (iE == i10);
        this.f8531d = iE;
    }

    @Override
    public int getFieldNumber() {
        int i10 = this.f8531d;
        if (i10 != 0) {
            this.f8529b = i10;
            this.f8531d = 0;
        } else {
            this.f8529b = this.f8528a.E();
        }
        int i11 = this.f8529b;
        if (i11 == 0 || i11 == this.f8530c) {
            return Integer.MAX_VALUE;
        }
        return WireFormat.a(i11);
    }

    @Override
    public int getTag() {
        return this.f8529b;
    }

    public Object l(Class cls, o oVar) throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        return k(x0.a().c(cls), oVar);
    }

    public void m(List list, boolean z10) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iE;
        int iE2;
        if (WireFormat.b(this.f8529b) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        if (!(list instanceof b0) || z10) {
            do {
                list.add(z10 ? readStringRequireUtf8() : readString());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE = this.f8528a.E();
                }
            } while (iE == this.f8529b);
            this.f8531d = iE;
            return;
        }
        b0 b0Var = (b0) list;
        do {
            b0Var.h(readBytes());
            if (this.f8528a.f()) {
                return;
            } else {
                iE2 = this.f8528a.E();
            }
        } while (iE2 == this.f8529b);
        this.f8531d = iE2;
    }

    @Override
    public boolean readBool() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8528a.p();
    }

    @Override
    public void readBoolList(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 0) {
                do {
                    list.add(Boolean.valueOf(this.f8528a.p()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8528a.e() + this.f8528a.F();
            do {
                list.add(Boolean.valueOf(this.f8528a.p()));
            } while (this.f8528a.e() < iE3);
            n(iE3);
            return;
        }
        f fVar = (f) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 0) {
            do {
                fVar.addBoolean(this.f8528a.p());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8528a.e() + this.f8528a.F();
        do {
            fVar.addBoolean(this.f8528a.p());
        } while (this.f8528a.e() < iE4);
        n(iE4);
    }

    @Override
    public ByteString readBytes() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        return this.f8528a.q();
    }

    @Override
    public void readBytesList(List list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        int iE;
        if (WireFormat.b(this.f8529b) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            list.add(readBytes());
            if (this.f8528a.f()) {
                return;
            } else {
                iE = this.f8528a.E();
            }
        } while (iE == this.f8529b);
        this.f8531d = iE;
    }

    @Override
    public double readDouble() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(1);
        return this.f8528a.r();
    }

    @Override
    public void readDoubleList(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof l)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 1) {
                do {
                    list.add(Double.valueOf(this.f8528a.r()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iF = this.f8528a.F();
            q(iF);
            int iE3 = this.f8528a.e() + iF;
            do {
                list.add(Double.valueOf(this.f8528a.r()));
            } while (this.f8528a.e() < iE3);
            return;
        }
        l lVar = (l) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 1) {
            do {
                lVar.addDouble(this.f8528a.r());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iF2 = this.f8528a.F();
        q(iF2);
        int iE4 = this.f8528a.e() + iF2;
        do {
            lVar.addDouble(this.f8528a.r());
        } while (this.f8528a.e() < iE4);
    }

    @Override
    public int readEnum() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8528a.s();
    }

    @Override
    public void readEnumList(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.f8528a.s()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8528a.e() + this.f8528a.F();
            do {
                list.add(Integer.valueOf(this.f8528a.s()));
            } while (this.f8528a.e() < iE3);
            n(iE3);
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 0) {
            do {
                vVar.addInt(this.f8528a.s());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8528a.e() + this.f8528a.F();
        do {
            vVar.addInt(this.f8528a.s());
        } while (this.f8528a.e() < iE4);
        n(iE4);
    }

    @Override
    public int readFixed32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(5);
        return this.f8528a.t();
    }

    @Override
    public void readFixed32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 2) {
                int iF = this.f8528a.F();
                p(iF);
                int iE3 = this.f8528a.e() + iF;
                do {
                    list.add(Integer.valueOf(this.f8528a.t()));
                } while (this.f8528a.e() < iE3);
                return;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(this.f8528a.t()));
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE = this.f8528a.E();
                }
            } while (iE == this.f8529b);
            this.f8531d = iE;
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 2) {
            int iF2 = this.f8528a.F();
            p(iF2);
            int iE4 = this.f8528a.e() + iF2;
            do {
                vVar.addInt(this.f8528a.t());
            } while (this.f8528a.e() < iE4);
            return;
        }
        if (iB2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            vVar.addInt(this.f8528a.t());
            if (this.f8528a.f()) {
                return;
            } else {
                iE2 = this.f8528a.E();
            }
        } while (iE2 == this.f8529b);
        this.f8531d = iE2;
    }

    @Override
    public long readFixed64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(1);
        return this.f8528a.u();
    }

    @Override
    public void readFixed64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 1) {
                do {
                    list.add(Long.valueOf(this.f8528a.u()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iF = this.f8528a.F();
            q(iF);
            int iE3 = this.f8528a.e() + iF;
            do {
                list.add(Long.valueOf(this.f8528a.u()));
            } while (this.f8528a.e() < iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 1) {
            do {
                f0Var.addLong(this.f8528a.u());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iF2 = this.f8528a.F();
        q(iF2);
        int iE4 = this.f8528a.e() + iF2;
        do {
            f0Var.addLong(this.f8528a.u());
        } while (this.f8528a.e() < iE4);
    }

    @Override
    public float readFloat() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(5);
        return this.f8528a.v();
    }

    @Override
    public void readFloatList(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof t)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 2) {
                int iF = this.f8528a.F();
                p(iF);
                int iE3 = this.f8528a.e() + iF;
                do {
                    list.add(Float.valueOf(this.f8528a.v()));
                } while (this.f8528a.e() < iE3);
                return;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Float.valueOf(this.f8528a.v()));
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE = this.f8528a.E();
                }
            } while (iE == this.f8529b);
            this.f8531d = iE;
            return;
        }
        t tVar = (t) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 2) {
            int iF2 = this.f8528a.F();
            p(iF2);
            int iE4 = this.f8528a.e() + iF2;
            do {
                tVar.addFloat(this.f8528a.v());
            } while (this.f8528a.e() < iE4);
            return;
        }
        if (iB2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            tVar.addFloat(this.f8528a.v());
            if (this.f8528a.f()) {
                return;
            } else {
                iE2 = this.f8528a.E();
            }
        } while (iE2 == this.f8529b);
        this.f8531d = iE2;
    }

    @Override
    public int readInt32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8528a.w();
    }

    @Override
    public void readInt32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.f8528a.w()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8528a.e() + this.f8528a.F();
            do {
                list.add(Integer.valueOf(this.f8528a.w()));
            } while (this.f8528a.e() < iE3);
            n(iE3);
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 0) {
            do {
                vVar.addInt(this.f8528a.w());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8528a.e() + this.f8528a.F();
        do {
            vVar.addInt(this.f8528a.w());
        } while (this.f8528a.e() < iE4);
        n(iE4);
    }

    @Override
    public long readInt64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8528a.x();
    }

    @Override
    public void readInt64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.f8528a.x()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8528a.e() + this.f8528a.F();
            do {
                list.add(Long.valueOf(this.f8528a.x()));
            } while (this.f8528a.e() < iE3);
            n(iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 0) {
            do {
                f0Var.addLong(this.f8528a.x());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8528a.e() + this.f8528a.F();
        do {
            f0Var.addLong(this.f8528a.x());
        } while (this.f8528a.e() < iE4);
        n(iE4);
    }

    @Override
    public int readSFixed32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(5);
        return this.f8528a.y();
    }

    @Override
    public void readSFixed32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 2) {
                int iF = this.f8528a.F();
                p(iF);
                int iE3 = this.f8528a.e() + iF;
                do {
                    list.add(Integer.valueOf(this.f8528a.y()));
                } while (this.f8528a.e() < iE3);
                return;
            }
            if (iB != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                list.add(Integer.valueOf(this.f8528a.y()));
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE = this.f8528a.E();
                }
            } while (iE == this.f8529b);
            this.f8531d = iE;
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 2) {
            int iF2 = this.f8528a.F();
            p(iF2);
            int iE4 = this.f8528a.e() + iF2;
            do {
                vVar.addInt(this.f8528a.y());
            } while (this.f8528a.e() < iE4);
            return;
        }
        if (iB2 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            vVar.addInt(this.f8528a.y());
            if (this.f8528a.f()) {
                return;
            } else {
                iE2 = this.f8528a.E();
            }
        } while (iE2 == this.f8529b);
        this.f8531d = iE2;
    }

    @Override
    public long readSFixed64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(1);
        return this.f8528a.z();
    }

    @Override
    public void readSFixed64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 1) {
                do {
                    list.add(Long.valueOf(this.f8528a.z()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iF = this.f8528a.F();
            q(iF);
            int iE3 = this.f8528a.e() + iF;
            do {
                list.add(Long.valueOf(this.f8528a.z()));
            } while (this.f8528a.e() < iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 1) {
            do {
                f0Var.addLong(this.f8528a.z());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iF2 = this.f8528a.F();
        q(iF2);
        int iE4 = this.f8528a.e() + iF2;
        do {
            f0Var.addLong(this.f8528a.z());
        } while (this.f8528a.e() < iE4);
    }

    @Override
    public int readSInt32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8528a.A();
    }

    @Override
    public void readSInt32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.f8528a.A()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8528a.e() + this.f8528a.F();
            do {
                list.add(Integer.valueOf(this.f8528a.A()));
            } while (this.f8528a.e() < iE3);
            n(iE3);
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 0) {
            do {
                vVar.addInt(this.f8528a.A());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8528a.e() + this.f8528a.F();
        do {
            vVar.addInt(this.f8528a.A());
        } while (this.f8528a.e() < iE4);
        n(iE4);
    }

    @Override
    public long readSInt64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8528a.B();
    }

    @Override
    public void readSInt64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.f8528a.B()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8528a.e() + this.f8528a.F();
            do {
                list.add(Long.valueOf(this.f8528a.B()));
            } while (this.f8528a.e() < iE3);
            n(iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 0) {
            do {
                f0Var.addLong(this.f8528a.B());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8528a.e() + this.f8528a.F();
        do {
            f0Var.addLong(this.f8528a.B());
        } while (this.f8528a.e() < iE4);
        n(iE4);
    }

    @Override
    public String readString() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        return this.f8528a.C();
    }

    @Override
    public void readStringList(List list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        m(list, false);
    }

    @Override
    public void readStringListRequireUtf8(List list) throws InvalidProtocolBufferException.InvalidWireTypeException {
        m(list, true);
    }

    @Override
    public String readStringRequireUtf8() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(2);
        return this.f8528a.D();
    }

    @Override
    public int readUInt32() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8528a.F();
    }

    @Override
    public void readUInt32List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof v)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 0) {
                do {
                    list.add(Integer.valueOf(this.f8528a.F()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8528a.e() + this.f8528a.F();
            do {
                list.add(Integer.valueOf(this.f8528a.F()));
            } while (this.f8528a.e() < iE3);
            n(iE3);
            return;
        }
        v vVar = (v) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 0) {
            do {
                vVar.addInt(this.f8528a.F());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8528a.e() + this.f8528a.F();
        do {
            vVar.addInt(this.f8528a.F());
        } while (this.f8528a.e() < iE4);
        n(iE4);
    }

    @Override
    public long readUInt64() throws InvalidProtocolBufferException.InvalidWireTypeException {
        o(0);
        return this.f8528a.G();
    }

    @Override
    public void readUInt64List(List list) throws InvalidProtocolBufferException {
        int iE;
        int iE2;
        if (!(list instanceof f0)) {
            int iB = WireFormat.b(this.f8529b);
            if (iB == 0) {
                do {
                    list.add(Long.valueOf(this.f8528a.G()));
                    if (this.f8528a.f()) {
                        return;
                    } else {
                        iE = this.f8528a.E();
                    }
                } while (iE == this.f8529b);
                this.f8531d = iE;
                return;
            }
            if (iB != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int iE3 = this.f8528a.e() + this.f8528a.F();
            do {
                list.add(Long.valueOf(this.f8528a.G()));
            } while (this.f8528a.e() < iE3);
            n(iE3);
            return;
        }
        f0 f0Var = (f0) list;
        int iB2 = WireFormat.b(this.f8529b);
        if (iB2 == 0) {
            do {
                f0Var.addLong(this.f8528a.G());
                if (this.f8528a.f()) {
                    return;
                } else {
                    iE2 = this.f8528a.E();
                }
            } while (iE2 == this.f8529b);
            this.f8531d = iE2;
            return;
        }
        if (iB2 != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iE4 = this.f8528a.e() + this.f8528a.F();
        do {
            f0Var.addLong(this.f8528a.G());
        } while (this.f8528a.e() < iE4);
        n(iE4);
    }

    @Override
    public boolean skipField() {
        int i10;
        if (this.f8528a.f() || (i10 = this.f8529b) == this.f8530c) {
            return false;
        }
        return this.f8528a.H(i10);
    }
}
