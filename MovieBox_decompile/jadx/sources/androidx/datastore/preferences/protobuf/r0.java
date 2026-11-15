package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;

final class r0 implements b1 {

    private final n0 f8590a;

    private final h1 f8591b;

    private final boolean f8592c;

    private final p f8593d;

    private r0(h1 h1Var, p pVar, n0 n0Var) {
        this.f8591b = h1Var;
        this.f8592c = pVar.e(n0Var);
        this.f8593d = pVar;
        this.f8590a = n0Var;
    }

    private int d(h1 h1Var, Object obj) {
        return h1Var.i(h1Var.g(obj));
    }

    private void e(h1 h1Var, p pVar, Object obj, a1 a1Var, o oVar) {
        Object objF = h1Var.f(obj);
        s sVarD = pVar.d(obj);
        while (a1Var.getFieldNumber() != Integer.MAX_VALUE) {
            try {
                if (!g(a1Var, oVar, pVar, sVarD, h1Var, objF)) {
                    return;
                }
            } finally {
                h1Var.o(obj, objF);
            }
        }
    }

    static r0 f(h1 h1Var, p pVar, n0 n0Var) {
        return new r0(h1Var, pVar, n0Var);
    }

    private boolean g(a1 a1Var, o oVar, p pVar, s sVar, h1 h1Var, Object obj) throws InvalidProtocolBufferException {
        int tag = a1Var.getTag();
        int uInt32 = 0;
        if (tag != WireFormat.f8416a) {
            if (WireFormat.b(tag) != 2) {
                return a1Var.skipField();
            }
            Object objB = pVar.b(oVar, this.f8590a, WireFormat.a(tag));
            if (objB == null) {
                return h1Var.m(obj, a1Var, 0);
            }
            pVar.h(a1Var, objB, oVar, sVar);
            return true;
        }
        Object objB2 = null;
        ByteString bytes = null;
        while (a1Var.getFieldNumber() != Integer.MAX_VALUE) {
            int tag2 = a1Var.getTag();
            if (tag2 == WireFormat.f8418c) {
                uInt32 = a1Var.readUInt32();
                objB2 = pVar.b(oVar, this.f8590a, uInt32);
            } else if (tag2 == WireFormat.f8419d) {
                if (objB2 != null) {
                    pVar.h(a1Var, objB2, oVar, sVar);
                } else {
                    bytes = a1Var.readBytes();
                }
            } else if (!a1Var.skipField()) {
                break;
            }
        }
        if (a1Var.getTag() != WireFormat.f8417b) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        if (bytes != null) {
            if (objB2 != null) {
                pVar.i(bytes, objB2, oVar, sVar);
            } else {
                h1Var.d(obj, uInt32, bytes);
            }
        }
        return true;
    }

    private void h(h1 h1Var, Object obj, Writer writer) {
        h1Var.s(h1Var.g(obj), writer);
    }

    @Override
    public void a(Object obj, a1 a1Var, o oVar) {
        e(this.f8591b, this.f8593d, obj, a1Var, oVar);
    }

    @Override
    public void b(Object obj, Writer writer) {
        Iterator itP = this.f8593d.c(obj).p();
        if (itP.hasNext()) {
            android.support.v4.media.session.c.a(((Map.Entry) itP.next()).getKey());
            throw null;
        }
        h(this.f8591b, obj, writer);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0086  */
    /* JADX WARN: Code duplicated, block: B:51:0x008c A[EDGE_INSN: B:51:0x008c->B:29:0x008c BREAK  A[LOOP:1: B:14:0x004a->B:54:0x004a], SYNTHETIC] */
    @Override
    public void c(Object obj, byte[] bArr, int i10, int i11, e.a aVar) throws InvalidProtocolBufferException {
        int I;
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) obj;
        i1 i1VarK = generatedMessageLite.unknownFields;
        if (i1VarK == i1.c()) {
            i1VarK = i1.k();
            generatedMessageLite.unknownFields = i1VarK;
        }
        ((GeneratedMessageLite.c) obj).K();
        while (i10 < i11) {
            int I2 = e.I(bArr, i10, aVar);
            int i12 = aVar.f8433a;
            if (i12 == WireFormat.f8416a) {
                int i13 = 0;
                ByteString byteString = null;
                while (true) {
                    if (I2 >= i11) {
                        I = I2;
                        break;
                    }
                    I = e.I(bArr, I2, aVar);
                    int i14 = aVar.f8433a;
                    int iA = WireFormat.a(i14);
                    int iB = WireFormat.b(i14);
                    if (iA != 2) {
                        if (iA == 3 && iB == 2) {
                            I2 = e.c(bArr, I, aVar);
                            byteString = (ByteString) aVar.f8435c;
                        } else if (i14 == WireFormat.f8417b) {
                            break;
                        } else {
                            I2 = e.P(i14, bArr, I, i11, aVar);
                        }
                    } else if (iB == 0) {
                        I2 = e.I(bArr, I, aVar);
                        i13 = aVar.f8433a;
                        android.support.v4.media.session.c.a(this.f8593d.b(aVar.f8436d, this.f8590a, i13));
                    } else {
                        if (i14 == WireFormat.f8417b) {
                            break;
                            break;
                        }
                        I2 = e.P(i14, bArr, I, i11, aVar);
                    }
                }
                if (byteString != null) {
                    i1VarK.n(WireFormat.c(i13, 2), byteString);
                }
                i10 = I;
            } else if (WireFormat.b(i12) == 2) {
                android.support.v4.media.session.c.a(this.f8593d.b(aVar.f8436d, this.f8590a, WireFormat.a(i12)));
                i10 = e.G(i12, bArr, I2, i11, i1VarK, aVar);
            } else {
                i10 = e.P(i12, bArr, I2, i11, aVar);
            }
        }
        if (i10 != i11) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override
    public boolean equals(Object obj, Object obj2) {
        if (!this.f8591b.g(obj).equals(this.f8591b.g(obj2))) {
            return false;
        }
        if (this.f8592c) {
            return this.f8593d.c(obj).equals(this.f8593d.c(obj2));
        }
        return true;
    }

    @Override
    public int getSerializedSize(Object obj) {
        int iD = d(this.f8591b, obj);
        return this.f8592c ? iD + this.f8593d.c(obj).g() : iD;
    }

    @Override
    public int hashCode(Object obj) {
        int iHashCode = this.f8591b.g(obj).hashCode();
        return this.f8592c ? (iHashCode * 53) + this.f8593d.c(obj).hashCode() : iHashCode;
    }

    @Override
    public final boolean isInitialized(Object obj) {
        return this.f8593d.c(obj).m();
    }

    @Override
    public void makeImmutable(Object obj) {
        this.f8591b.j(obj);
        this.f8593d.f(obj);
    }

    @Override
    public void mergeFrom(Object obj, Object obj2) {
        d1.F(this.f8591b, obj, obj2);
        if (this.f8592c) {
            d1.D(this.f8593d, obj, obj2);
        }
    }

    @Override
    public Object newInstance() {
        n0 n0Var = this.f8590a;
        return n0Var instanceof GeneratedMessageLite ? ((GeneratedMessageLite) n0Var).F() : n0Var.newBuilderForType().buildPartial();
    }
}
