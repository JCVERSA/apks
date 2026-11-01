package s0;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

public final class i extends g {

    public h0.h f2035i;

    public long f2036j;

    public long f2037k;

    public i(ZArchiverService zArchiverService, int i2) {
        super(zArchiverService, (byte) 13, i2);
    }

    @Override
    public final void c(long j2) {
        long j3 = this.f2036j;
        if (j3 == 0) {
            return;
        }
        long j4 = this.f2037k + j2;
        this.f2037k = j4;
        int i2 = (int) ((j4 * 100) / j3);
        int[] iArr = C2JBridge.f1618h;
        int i3 = this.f2020c;
        if (i2 != iArr[i3]) {
            iArr[i3] = i2;
            try {
                this.f2018a.e(i3, i2);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0087 A[PHI: r3
      0x0087: PHI (r3v2 boolean) = (r3v0 boolean), (r3v7 boolean), (r3v0 boolean) binds: [B:25:0x0085, B:11:0x0064, B:6:0x0048] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:39:0x00c8  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final void p() throws Throwable {
        OutputStream outputStreamX;
        InputStream inputStreamW;
        h0.h hVar = new h0.h(n0.e.h() + '/' + this.f2035i.e());
        h0.f fVarU = h0.f.u(this.f2035i);
        this.f2036j = fVarU.o();
        h0.f fVarU2 = h0.f.u(hVar);
        InputStream inputStream = null;
        inputStream = null;
        h0.h hVar2 = null;
        boolean zC = false;
        try {
            boolean zD = fVarU2.d();
            outputStreamX = fVarU2.x(-1L);
            if (outputStreamX == null) {
                n0.e.d(outputStreamX);
                if (isCancelled()) {
                    r0.b.f(fVarU2);
                }
            } else {
                try {
                    inputStreamW = fVarU.w();
                    try {
                        try {
                            zC = r0.b.c(this, inputStreamW, fVarU.o(), outputStreamX, zD);
                            n0.e.d(inputStreamW);
                            n0.e.d(outputStreamX);
                            if (isCancelled()) {
                                r0.b.f(fVarU2);
                            }
                        } catch (Exception e2) {
                            e = e2;
                            r0.b.k(this, fVarU.i(), e);
                            n0.e.d(inputStreamW);
                            n0.e.d(outputStreamX);
                            if (isCancelled()) {
                                r0.b.f(fVarU2);
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStreamW;
                        n0.e.d(inputStream);
                        n0.e.d(outputStreamX);
                        if (isCancelled()) {
                            r0.b.f(fVarU2);
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    inputStreamW = null;
                } catch (Throwable th2) {
                    th = th2;
                    n0.e.d(inputStream);
                    n0.e.d(outputStreamX);
                    if (isCancelled()) {
                        r0.b.f(fVarU2);
                    }
                    throw th;
                }
            }
        } catch (Exception e4) {
            e = e4;
            outputStreamX = null;
            inputStreamW = null;
        } catch (Throwable th3) {
            th = th3;
            outputStreamX = null;
        }
        q(zC ? 1179648 : 1114112);
        ArrayList<e0.a.b> arrayList = this.f2025h;
        ZArchiverService zArchiverService = this.f2018a;
        zArchiverService.l(this, zC, arrayList, null);
        if (this.f2036j < 5242880) {
            hVar2 = this.f2035i;
            hVar2.q("plglocal");
        }
        this.f2035i.e();
        zArchiverService.k(this.f2020c, hVar2, this.f2021d & 8);
    }
}
