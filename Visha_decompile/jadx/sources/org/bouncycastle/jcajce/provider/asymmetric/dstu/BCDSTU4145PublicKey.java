package org.bouncycastle.jcajce.provider.asymmetric.dstu;

import defpackage.d53;
import defpackage.e53;
import defpackage.g1;
import defpackage.h53;
import defpackage.i53;
import defpackage.l1;
import defpackage.m1;
import defpackage.mr1;
import defpackage.n53;
import defpackage.nr1;
import defpackage.o53;
import defpackage.oa;
import defpackage.oqc;
import defpackage.or1;
import defpackage.p1;
import defpackage.p53;
import defpackage.pdb;
import defpackage.pr1;
import defpackage.q43;
import defpackage.qj8;
import defpackage.qqc;
import defpackage.qr1;
import defpackage.s0;
import defpackage.s1;
import defpackage.s1a;
import defpackage.sqc;
import defpackage.t43;
import defpackage.u43;
import defpackage.wp1;
import defpackage.x0;
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

public class BCDSTU4145PublicKey implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 7026240464295649314L;
    private String algorithm;
    private transient pr1 dstuParams;
    private transient n53 ecPublicKey;
    private transient ECParameterSpec ecSpec;
    private boolean withCompression;

    public BCDSTU4145PublicKey(o53 o53Var, qj8 qj8Var) {
        this.algorithm = "DSTU4145";
        throw null;
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, u43 u43Var) {
        return new ECParameterSpec(ellipticCurve, q43.f(u43Var.b()), u43Var.d(), u43Var.c().intValue());
    }

    private void populateFromPubKeyInfo(s1a s1aVar) {
        h53 h53Var;
        qqc qqcVarP;
        ECParameterSpec eCParameterSpecJ;
        s0 s0VarO = s1aVar.o();
        this.algorithm = "DSTU4145";
        try {
            byte[] bArrZ = ((m1) p1.t(s0VarO.x())).z();
            l1 l1VarM = s1aVar.m().m();
            l1 l1Var = pdb.b;
            if (l1VarM.s(l1Var)) {
                reverseBytes(bArrZ);
            }
            s1 s1VarZ = s1.z(s1aVar.m().p());
            if (s1VarZ.A(0) instanceof g1) {
                qqcVarP = qqc.p(s1VarZ);
                h53Var = new h53(qqcVarP.m(), qqcVarP.n(), qqcVarP.q(), qqcVarP.o(), qqcVarP.r());
            } else {
                pr1 pr1VarP = pr1.p(s1VarZ);
                this.dstuParams = pr1VarP;
                if (pr1VarP.r()) {
                    l1 l1VarQ = this.dstuParams.q();
                    u43 u43VarA = or1.a(l1VarQ);
                    h53Var = new d53(l1VarQ.B(), u43VarA.a(), u43VarA.b(), u43VarA.d(), u43VarA.c(), u43VarA.e());
                } else {
                    nr1 nr1VarO = this.dstuParams.o();
                    byte[] bArrN = nr1VarO.n();
                    if (s1aVar.m().m().s(l1Var)) {
                        reverseBytes(bArrN);
                    }
                    mr1 mr1VarO = nr1VarO.o();
                    t43.e eVar = new t43.e(mr1VarO.q(), mr1VarO.n(), mr1VarO.o(), mr1VarO.p(), nr1VarO.m(), new BigInteger(1, bArrN), (BigInteger) null, (BigInteger) null);
                    byte[] bArrP = nr1VarO.p();
                    if (s1aVar.m().m().s(l1Var)) {
                        reverseBytes(bArrP);
                    }
                    h53Var = new h53(eVar, qr1.a(eVar, bArrP), nr1VarO.r());
                }
                qqcVarP = null;
            }
            t43 t43VarA = h53Var.a();
            EllipticCurve ellipticCurveB = q43.b(t43VarA, h53Var.e());
            if (this.dstuParams != null) {
                ECPoint eCPointF = q43.f(h53Var.b());
                eCParameterSpecJ = this.dstuParams.r() ? new e53(this.dstuParams.q().B(), ellipticCurveB, eCPointF, h53Var.d(), h53Var.c()) : new ECParameterSpec(ellipticCurveB, eCPointF, h53Var.d(), h53Var.c().intValue());
            } else {
                eCParameterSpecJ = q43.j(qqcVarP);
            }
            this.ecSpec = eCParameterSpecJ;
            this.ecPublicKey = new n53(qr1.a(t43VarA, bArrZ), q43.l(null, this.ecSpec));
        } catch (IOException unused) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        populateFromPubKeyInfo(s1a.n(p1.t((byte[]) objectInputStream.readObject())));
    }

    private void reverseBytes(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[(bArr.length - 1) - i];
            bArr[(bArr.length - 1) - i] = b;
        }
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
        if (!(obj instanceof BCDSTU4145PublicKey)) {
            return false;
        }
        BCDSTU4145PublicKey bCDSTU4145PublicKey = (BCDSTU4145PublicKey) obj;
        return this.ecPublicKey.c().e(bCDSTU4145PublicKey.ecPublicKey.c()) && engineGetSpec().equals(bCDSTU4145PublicKey.engineGetSpec());
    }

    @Override
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override
    public byte[] getEncoded() {
        x0 oqcVar = this.dstuParams;
        if (oqcVar == null) {
            ECParameterSpec eCParameterSpec = this.ecSpec;
            if (eCParameterSpec instanceof e53) {
                oqcVar = new pr1(new l1(((e53) this.ecSpec).a()));
            } else {
                t43 t43VarA = q43.a(eCParameterSpec.getCurve());
                oqcVar = new oqc(new qqc(t43VarA, new sqc(q43.d(t43VarA, this.ecSpec.getGenerator()), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf(this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
        }
        try {
            return yf5.e(new s1a(new oa(pdb.c, oqcVar), new wp1(qr1.b(this.ecPublicKey.c()))));
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public String getFormat() {
        return "X.509";
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
        i53 i53VarC = this.ecPublicKey.c();
        return this.ecSpec == null ? i53VarC.k() : i53VarC;
    }

    public byte[] getSbox() {
        pr1 pr1Var = this.dstuParams;
        return pr1Var != null ? pr1Var.m() : pr1.n();
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

    public BCDSTU4145PublicKey(s1a s1aVar) {
        this.algorithm = "DSTU4145";
        populateFromPubKeyInfo(s1aVar);
    }

    public BCDSTU4145PublicKey(String str, n53 n53Var) {
        this.algorithm = str;
        this.ecPublicKey = n53Var;
        this.ecSpec = null;
    }

    public BCDSTU4145PublicKey(String str, n53 n53Var, h53 h53Var) {
        this.algorithm = "DSTU4145";
        u43 u43VarB = n53Var.b();
        this.algorithm = str;
        this.ecSpec = h53Var == null ? createSpec(q43.b(u43VarB.a(), u43VarB.e()), u43VarB) : q43.h(q43.b(h53Var.a(), h53Var.e()), h53Var);
        this.ecPublicKey = n53Var;
    }

    public BCDSTU4145PublicKey(String str, n53 n53Var, ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        u43 u43VarB = n53Var.b();
        this.algorithm = str;
        this.ecPublicKey = n53Var;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(q43.b(u43VarB.a(), u43VarB.e()), u43VarB);
        } else {
            this.ecSpec = eCParameterSpec;
        }
    }

    public BCDSTU4145PublicKey(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "DSTU4145";
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new n53(q43.e(params, eCPublicKeySpec.getW()), q43.l(null, this.ecSpec));
    }

    public BCDSTU4145PublicKey(BCDSTU4145PublicKey bCDSTU4145PublicKey) {
        this.algorithm = "DSTU4145";
        this.ecPublicKey = bCDSTU4145PublicKey.ecPublicKey;
        this.ecSpec = bCDSTU4145PublicKey.ecSpec;
        this.withCompression = bCDSTU4145PublicKey.withCompression;
        this.dstuParams = bCDSTU4145PublicKey.dstuParams;
    }
}
