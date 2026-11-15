package org.bouncycastle.jcajce.provider.asymmetric.ecgost;

import defpackage.d53;
import defpackage.e53;
import defpackage.h53;
import defpackage.i53;
import defpackage.l1;
import defpackage.m1;
import defpackage.n53;
import defpackage.o53;
import defpackage.oa;
import defpackage.oqc;
import defpackage.p1;
import defpackage.p53;
import defpackage.pa4;
import defpackage.q43;
import defpackage.qj8;
import defpackage.qqc;
import defpackage.s0;
import defpackage.s1a;
import defpackage.sqc;
import defpackage.t43;
import defpackage.u43;
import defpackage.wl1;
import defpackage.wp1;
import defpackage.x0;
import defpackage.x43;
import defpackage.y43;
import defpackage.yf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class BCECGOST3410PublicKey implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 7026240464295649314L;
    private String algorithm;
    private transient n53 ecPublicKey;
    private transient ECParameterSpec ecSpec;
    private transient x0 gostParams;
    private boolean withCompression;

    public BCECGOST3410PublicKey(o53 o53Var, qj8 qj8Var) {
        this.algorithm = "ECGOST3410";
        throw null;
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, u43 u43Var) {
        return new ECParameterSpec(ellipticCurve, q43.f(u43Var.b()), u43Var.d(), u43Var.c().intValue());
    }

    private void extractBytes(byte[] bArr, int i, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length < 32) {
            byte[] bArr2 = new byte[32];
            System.arraycopy(byteArray, 0, bArr2, 32 - byteArray.length, byteArray.length);
            byteArray = bArr2;
        }
        for (int i2 = 0; i2 != 32; i2++) {
            bArr[i + i2] = byteArray[(byteArray.length - 1) - i2];
        }
    }

    private void populateFromPubKeyInfo(s1a s1aVar) {
        l1 l1VarP;
        s0 s0VarO = s1aVar.o();
        this.algorithm = "ECGOST3410";
        try {
            byte[] bArrZ = ((m1) p1.t(s0VarO.x())).z();
            byte[] bArr = new byte[65];
            bArr[0] = 4;
            for (int i = 1; i <= 32; i++) {
                bArr[i] = bArrZ[32 - i];
                bArr[i + 32] = bArrZ[64 - i];
            }
            boolean z = s1aVar.m().p() instanceof l1;
            x0 x0VarP = s1aVar.m().p();
            if (z) {
                l1VarP = l1.D(x0VarP);
                this.gostParams = l1VarP;
            } else {
                pa4 pa4VarO = pa4.o(x0VarP);
                this.gostParams = pa4VarO;
                l1VarP = pa4VarO.p();
            }
            d53 d53VarA = x43.a(y43.l(l1VarP));
            t43 t43VarA = d53VarA.a();
            EllipticCurve ellipticCurveB = q43.b(t43VarA, d53VarA.e());
            this.ecPublicKey = new n53(t43VarA.i(bArr), p53.d(null, d53VarA));
            this.ecSpec = new e53(y43.l(l1VarP), ellipticCurveB, q43.f(d53VarA.b()), d53VarA.d(), d53VarA.c());
        } catch (IOException unused) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        populateFromPubKeyInfo(s1a.n(p1.t((byte[]) objectInputStream.readObject())));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public n53 engineGetKeyParameters() {
        return this.ecPublicKey;
    }

    public h53 engineGetSpec() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        return eCParameterSpec != null ? q43.g(eCParameterSpec) : BouncyCastleProvider.CONFIGURATION.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCECGOST3410PublicKey)) {
            return false;
        }
        BCECGOST3410PublicKey bCECGOST3410PublicKey = (BCECGOST3410PublicKey) obj;
        return this.ecPublicKey.c().e(bCECGOST3410PublicKey.ecPublicKey.c()) && engineGetSpec().equals(bCECGOST3410PublicKey.engineGetSpec());
    }

    @Override
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override
    public byte[] getEncoded() {
        x0 oqcVar;
        x0 gostParams = getGostParams();
        if (gostParams == null) {
            ECParameterSpec eCParameterSpec = this.ecSpec;
            if (eCParameterSpec instanceof e53) {
                oqcVar = new pa4(y43.m(((e53) eCParameterSpec).a()), wl1.p);
            } else {
                t43 t43VarA = q43.a(eCParameterSpec.getCurve());
                oqcVar = new oqc(new qqc(t43VarA, new sqc(q43.d(t43VarA, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
            gostParams = oqcVar;
        }
        BigInteger bigIntegerT = this.ecPublicKey.c().f().t();
        BigInteger bigIntegerT2 = this.ecPublicKey.c().g().t();
        byte[] bArr = new byte[64];
        extractBytes(bArr, 0, bigIntegerT);
        extractBytes(bArr, 32, bigIntegerT2);
        try {
            return yf5.e(new s1a(new oa(wl1.m, gostParams), new wp1(bArr)));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
    }

    public x0 getGostParams() {
        if (this.gostParams == null) {
            ECParameterSpec eCParameterSpec = this.ecSpec;
            if (eCParameterSpec instanceof e53) {
                this.gostParams = new pa4(y43.m(((e53) eCParameterSpec).a()), wl1.p);
            }
        }
        return this.gostParams;
    }

    @Override
    public h53 getParameters() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        if (eCParameterSpec == null) {
            return null;
        }
        return q43.g(eCParameterSpec);
    }

    @Override
    public ECParameterSpec getParams() {
        return this.ecSpec;
    }

    @Override
    public i53 getQ() {
        ECParameterSpec eCParameterSpec = this.ecSpec;
        i53 i53VarC = this.ecPublicKey.c();
        return eCParameterSpec == null ? i53VarC.k() : i53VarC;
    }

    @Override
    public ECPoint getW() {
        return q43.f(this.ecPublicKey.c());
    }

    public int hashCode() {
        return engineGetSpec().hashCode() ^ this.ecPublicKey.c().hashCode();
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
    }

    public String toString() {
        return p53.k(this.algorithm, this.ecPublicKey.c(), engineGetSpec());
    }

    public BCECGOST3410PublicKey(s1a s1aVar) {
        this.algorithm = "ECGOST3410";
        populateFromPubKeyInfo(s1aVar);
    }

    public BCECGOST3410PublicKey(String str, n53 n53Var) {
        this.algorithm = str;
        this.ecPublicKey = n53Var;
        this.ecSpec = null;
    }

    public BCECGOST3410PublicKey(String str, n53 n53Var, h53 h53Var) {
        this.algorithm = "ECGOST3410";
        u43 u43VarB = n53Var.b();
        this.algorithm = str;
        this.ecPublicKey = n53Var;
        this.ecSpec = h53Var == null ? createSpec(q43.b(u43VarB.a(), u43VarB.e()), u43VarB) : q43.h(q43.b(h53Var.a(), h53Var.e()), h53Var);
    }

    public BCECGOST3410PublicKey(String str, n53 n53Var, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        u43 u43VarB = n53Var.b();
        this.algorithm = str;
        this.ecPublicKey = n53Var;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(q43.b(u43VarB.a(), u43VarB.e()), u43VarB);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public BCECGOST3410PublicKey(ECPublicKey eCPublicKey) {
        this.algorithm = "ECGOST3410";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new n53(q43.e(params, eCPublicKey.getW()), q43.l(null, eCPublicKey.getParams()));
    }

    public BCECGOST3410PublicKey(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "ECGOST3410";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new n53(q43.e(params, eCPublicKeySpec.getW()), q43.l(null, eCPublicKeySpec.getParams()));
    }

    public BCECGOST3410PublicKey(BCECGOST3410PublicKey bCECGOST3410PublicKey) {
        this.algorithm = "ECGOST3410";
        this.ecPublicKey = bCECGOST3410PublicKey.ecPublicKey;
        this.ecSpec = bCECGOST3410PublicKey.ecSpec;
        this.withCompression = bCECGOST3410PublicKey.withCompression;
        this.gostParams = bCECGOST3410PublicKey.gostParams;
    }
}
