package vz;

import com.vungle.ads.internal.protos.Sdk$SDKError;

final class b extends a {

    private final x f73866c;

    private final boolean f73867d;

    private final d f73868e;

    private final int f73869f;

    private int f73870g;

    private final b f73871h;

    private b f73872i;

    b(x xVar, boolean z10, d dVar, b bVar) {
        super(458752);
        this.f73866c = xVar;
        this.f73867d = z10;
        this.f73868e = dVar;
        int i10 = dVar.f73879b;
        this.f73869f = i10 == 0 ? -1 : i10 - 2;
        this.f73871h = bVar;
        if (bVar != null) {
            bVar.f73872i = this;
        }
    }

    static int g(String str, b[] bVarArr, int i10) {
        int iF = (i10 * 2) + 7;
        for (int i11 = 0; i11 < i10; i11++) {
            b bVar = bVarArr[i11];
            iF += bVar == null ? 0 : bVar.f(str) - 8;
        }
        return iF;
    }

    static void i(int i10, b[] bVarArr, int i11, d dVar) {
        int iF = (i11 * 2) + 1;
        for (int i12 = 0; i12 < i11; i12++) {
            b bVar = bVarArr[i12];
            iF += bVar == null ? 0 : bVar.f(null) - 8;
        }
        dVar.k(i10);
        dVar.i(iF);
        dVar.g(i11);
        for (int i13 = 0; i13 < i11; i13++) {
            int i14 = 0;
            b bVar2 = null;
            for (b bVar3 = bVarArr[i13]; bVar3 != null; bVar3 = bVar3.f73871h) {
                bVar3.d();
                i14++;
                bVar2 = bVar3;
            }
            dVar.k(i14);
            while (bVar2 != null) {
                d dVar2 = bVar2.f73868e;
                dVar.h(dVar2.f73878a, 0, dVar2.f73879b);
                bVar2 = bVar2.f73872i;
            }
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void a(String str, Object obj) {
        this.f73870g++;
        if (this.f73867d) {
            this.f73868e.k(this.f73866c.D(str));
        }
        if (obj instanceof String) {
            this.f73868e.e(Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, this.f73866c.D((String) obj));
            return;
        }
        if (obj instanceof Byte) {
            this.f73868e.e(66, this.f73866c.l(((Byte) obj).byteValue()).f74041a);
            return;
        }
        if (obj instanceof Boolean) {
            this.f73868e.e(90, this.f73866c.l(((Boolean) obj).booleanValue() ? 1 : 0).f74041a);
            return;
        }
        if (obj instanceof Character) {
            this.f73868e.e(67, this.f73866c.l(((Character) obj).charValue()).f74041a);
            return;
        }
        if (obj instanceof Short) {
            this.f73868e.e(83, this.f73866c.l(((Short) obj).shortValue()).f74041a);
            return;
        }
        if (obj instanceof y) {
            this.f73868e.e(99, this.f73866c.D(((y) obj).e()));
            return;
        }
        int i10 = 0;
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            this.f73868e.e(91, bArr.length);
            int length = bArr.length;
            while (i10 < length) {
                this.f73868e.e(66, this.f73866c.l(bArr[i10]).f74041a);
                i10++;
            }
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            this.f73868e.e(91, zArr.length);
            int length2 = zArr.length;
            while (i10 < length2) {
                this.f73868e.e(90, this.f73866c.l(zArr[i10] ? 1 : 0).f74041a);
                i10++;
            }
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            this.f73868e.e(91, sArr.length);
            int length3 = sArr.length;
            while (i10 < length3) {
                this.f73868e.e(83, this.f73866c.l(sArr[i10]).f74041a);
                i10++;
            }
            return;
        }
        if (obj instanceof char[]) {
            char[] cArr = (char[]) obj;
            this.f73868e.e(91, cArr.length);
            int length4 = cArr.length;
            while (i10 < length4) {
                this.f73868e.e(67, this.f73866c.l(cArr[i10]).f74041a);
                i10++;
            }
            return;
        }
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            this.f73868e.e(91, iArr.length);
            int length5 = iArr.length;
            while (i10 < length5) {
                this.f73868e.e(73, this.f73866c.l(iArr[i10]).f74041a);
                i10++;
            }
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            this.f73868e.e(91, jArr.length);
            int length6 = jArr.length;
            while (i10 < length6) {
                this.f73868e.e(74, this.f73866c.p(jArr[i10]).f74041a);
                i10++;
            }
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            this.f73868e.e(91, fArr.length);
            int length7 = fArr.length;
            while (i10 < length7) {
                this.f73868e.e(70, this.f73866c.k(fArr[i10]).f74041a);
                i10++;
            }
            return;
        }
        if (!(obj instanceof double[])) {
            w wVarD = this.f73866c.d(obj);
            this.f73868e.e(".s.IFJDCS".charAt(wVarD.f74042b), wVarD.f74041a);
            return;
        }
        double[] dArr = (double[]) obj;
        this.f73868e.e(91, dArr.length);
        int length8 = dArr.length;
        while (i10 < length8) {
            this.f73868e.e(68, this.f73866c.f(dArr[i10]).f74041a);
            i10++;
        }
    }

    @Override
    public a b(String str, String str2) {
        this.f73870g++;
        if (this.f73867d) {
            this.f73868e.k(this.f73866c.D(str));
        }
        this.f73868e.e(64, this.f73866c.D(str2)).k(0);
        return new b(this.f73866c, this.f73868e, null);
    }

    @Override
    public a c(String str) {
        this.f73870g++;
        if (this.f73867d) {
            this.f73868e.k(this.f73866c.D(str));
        }
        this.f73868e.e(91, 0);
        return new b(this.f73866c, false, this.f73868e, null);
    }

    @Override
    public void d() {
        int i10 = this.f73869f;
        if (i10 != -1) {
            byte[] bArr = this.f73868e.f73878a;
            int i11 = this.f73870g;
            bArr[i10] = (byte) (i11 >>> 8);
            bArr[i10 + 1] = (byte) i11;
        }
    }

    @Override
    public void e(String str, String str2, String str3) {
        this.f73870g++;
        if (this.f73867d) {
            this.f73868e.k(this.f73866c.D(str));
        }
        this.f73868e.e(101, this.f73866c.D(str2)).k(this.f73866c.D(str3));
    }

    int f(String str) {
        if (str != null) {
            this.f73866c.D(str);
        }
        int i10 = 8;
        for (b bVar = this; bVar != null; bVar = bVar.f73871h) {
            i10 += bVar.f73868e.f73879b;
        }
        return i10;
    }

    void h(int i10, d dVar) {
        int i11 = 2;
        int i12 = 0;
        b bVar = null;
        for (b bVar2 = this; bVar2 != null; bVar2 = bVar2.f73871h) {
            bVar2.d();
            i11 += bVar2.f73868e.f73879b;
            i12++;
            bVar = bVar2;
        }
        dVar.k(i10);
        dVar.i(i11);
        dVar.k(i12);
        while (bVar != null) {
            d dVar2 = bVar.f73868e;
            dVar.h(dVar2.f73878a, 0, dVar2.f73879b);
            bVar = bVar.f73872i;
        }
    }

    b(x xVar, d dVar, b bVar) {
        this(xVar, true, dVar, bVar);
    }
}
