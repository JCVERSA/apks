package defpackage;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.protobuf.f;

public abstract class ay3 {
    public static final b A;
    public static final b B;
    public static final b C;
    public static final b D;
    public static final b E;
    public static final b F;
    public static final b G;
    public static final b H;
    public static final b I;
    public static final b J;
    public static final b K;
    public static final b L;
    public static final b M;
    public static final b N;
    public static final b O;
    public static final b a;
    public static final b b;
    public static final b c;
    public static final d d;
    public static final d e;
    public static final d f;
    public static final b g;
    public static final b h;
    public static final b i;
    public static final b j;
    public static final b k;
    public static final b l;
    public static final b m;
    public static final b n;
    public static final d o;
    public static final b p;
    public static final b q;
    public static final b r;
    public static final b s;
    public static final b t;
    public static final b u;
    public static final b v;
    public static final b w;
    public static final b x;
    public static final b y;
    public static final b z;

    public static class b extends d {
        public b(int i) {
            super(i, 1);
        }

        @Override
        public Boolean d(int i) {
            return Boolean.valueOf(((1 << this.a) & i) != 0);
        }

        @Override
        public int e(Boolean bool) {
            if (bool.booleanValue()) {
                return 1 << this.a;
            }
            return 0;
        }
    }

    public static class c extends d {
        public final f.a[] c;

        public c(int i, f.a[] aVarArr) {
            super(i, g(aVarArr));
            this.c = aVarArr;
        }

        private static void f(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "enumEntries", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField", "bitWidth"));
        }

        public static int g(Object[] objArr) {
            if (objArr == null) {
                f(0);
            }
            int length = objArr.length - 1;
            if (length == 0) {
                return 1;
            }
            for (int i = 31; i >= 0; i--) {
                if (((1 << i) & length) != 0) {
                    return i + 1;
                }
            }
            throw new IllegalStateException("Empty enum: " + objArr.getClass());
        }

        @Override
        public f.a d(int i) {
            int i2 = (1 << this.b) - 1;
            int i3 = this.a;
            int i4 = (i & (i2 << i3)) >> i3;
            for (f.a aVar : this.c) {
                if (aVar.getNumber() == i4) {
                    return aVar;
                }
            }
            return null;
        }

        @Override
        public int e(f.a aVar) {
            return aVar.getNumber() << this.a;
        }
    }

    public static abstract class d {
        public final int a;
        public final int b;

        public static d a(d dVar, f.a[] aVarArr) {
            return new c(dVar.a + dVar.b, aVarArr);
        }

        public static b b(d dVar) {
            return new b(dVar.a + dVar.b);
        }

        public static b c() {
            return new b(0);
        }

        public abstract Object d(int i);

        public abstract int e(Object obj);

        public d(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    static {
        b bVarC = d.c();
        a = bVarC;
        b = d.b(bVarC);
        b bVarC2 = d.c();
        c = bVarC2;
        d dVarA = d.a(bVarC2, ProtoBuf$Visibility.values());
        d = dVarA;
        d dVarA2 = d.a(dVarA, ProtoBuf$Modality.values());
        e = dVarA2;
        d dVarA3 = d.a(dVarA2, ProtoBuf$Class.Kind.values());
        f = dVarA3;
        b bVarB = d.b(dVarA3);
        g = bVarB;
        b bVarB2 = d.b(bVarB);
        h = bVarB2;
        b bVarB3 = d.b(bVarB2);
        i = bVarB3;
        b bVarB4 = d.b(bVarB3);
        j = bVarB4;
        b bVarB5 = d.b(bVarB4);
        k = bVarB5;
        l = d.b(bVarB5);
        b bVarB6 = d.b(dVarA);
        m = bVarB6;
        n = d.b(bVarB6);
        d dVarA4 = d.a(dVarA2, ProtoBuf$MemberKind.values());
        o = dVarA4;
        b bVarB7 = d.b(dVarA4);
        p = bVarB7;
        b bVarB8 = d.b(bVarB7);
        q = bVarB8;
        b bVarB9 = d.b(bVarB8);
        r = bVarB9;
        b bVarB10 = d.b(bVarB9);
        s = bVarB10;
        b bVarB11 = d.b(bVarB10);
        t = bVarB11;
        b bVarB12 = d.b(bVarB11);
        u = bVarB12;
        b bVarB13 = d.b(bVarB12);
        v = bVarB13;
        w = d.b(bVarB13);
        b bVarB14 = d.b(dVarA4);
        x = bVarB14;
        b bVarB15 = d.b(bVarB14);
        y = bVarB15;
        b bVarB16 = d.b(bVarB15);
        z = bVarB16;
        b bVarB17 = d.b(bVarB16);
        A = bVarB17;
        b bVarB18 = d.b(bVarB17);
        B = bVarB18;
        b bVarB19 = d.b(bVarB18);
        C = bVarB19;
        b bVarB20 = d.b(bVarB19);
        D = bVarB20;
        b bVarB21 = d.b(bVarB20);
        E = bVarB21;
        F = d.b(bVarB21);
        b bVarB22 = d.b(bVarC2);
        G = bVarB22;
        b bVarB23 = d.b(bVarB22);
        H = bVarB23;
        I = d.b(bVarB23);
        b bVarB24 = d.b(dVarA2);
        J = bVarB24;
        b bVarB25 = d.b(bVarB24);
        K = bVarB25;
        L = d.b(bVarB25);
        b bVarC3 = d.c();
        M = bVarC3;
        N = d.b(bVarC3);
        O = d.c();
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0021  */
    /* JADX WARN: Code duplicated, block: B:18:0x002b  */
    public static void a(int i2) {
        Object[] objArr = new Object[3];
        if (i2 == 1) {
            objArr[0] = "modality";
        } else if (i2 == 2) {
            objArr[0] = "kind";
        } else if (i2 == 5) {
            objArr[0] = "modality";
        } else if (i2 == 6) {
            objArr[0] = "memberKind";
        } else if (i2 == 8) {
            objArr[0] = "modality";
        } else if (i2 == 9) {
            objArr[0] = "memberKind";
        } else if (i2 != 11) {
            objArr[0] = "visibility";
        } else {
            objArr[0] = "modality";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags";
        switch (i2) {
            case 3:
                objArr[2] = "getConstructorFlags";
                break;
            case 4:
            case 5:
            case 6:
                objArr[2] = "getFunctionFlags";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "getPropertyFlags";
                break;
            case 10:
            case 11:
                objArr[2] = "getAccessorFlags";
                break;
            default:
                objArr[2] = "getClassFlags";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static int b(boolean z2, ProtoBuf$Visibility protoBuf$Visibility, ProtoBuf$Modality protoBuf$Modality, boolean z3, boolean z4, boolean z5) {
        if (protoBuf$Visibility == null) {
            a(10);
        }
        if (protoBuf$Modality == null) {
            a(11);
        }
        return c.e(Boolean.valueOf(z2)) | e.e(protoBuf$Modality) | d.e(protoBuf$Visibility) | J.e(Boolean.valueOf(z3)) | K.e(Boolean.valueOf(z4)) | L.e(Boolean.valueOf(z5));
    }
}
