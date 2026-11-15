package org.bouncycastle.jcajce.provider.asymmetric.ec;

import defpackage.ci;
import defpackage.h53;
import defpackage.i53;
import defpackage.m1;
import defpackage.n53;
import defpackage.o53;
import defpackage.oa;
import defpackage.oqc;
import defpackage.p1;
import defpackage.p53;
import defpackage.q43;
import defpackage.q53;
import defpackage.qi8;
import defpackage.qj8;
import defpackage.s1a;
import defpackage.sqc;
import defpackage.t43;
import defpackage.u43;
import defpackage.vqc;
import defpackage.wp1;
import defpackage.wqc;
import defpackage.yf5;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class BCECPublicKey implements ECPublicKey, org.bouncycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 2422789860422731812L;
    private String algorithm;
    private transient qj8 configuration;
    private transient n53 ecPublicKey;
    private transient ECParameterSpec ecSpec;
    private transient byte[] encoding;
    private transient boolean oldPcSet;
    private boolean withCompression;

    public BCECPublicKey(String str, n53 n53Var, h53 h53Var, qj8 qj8Var) {
        this.algorithm = "EC";
        u43 u43VarB = n53Var.b();
        this.algorithm = str;
        this.ecSpec = h53Var == null ? createSpec(q43.b(u43VarB.a(), u43VarB.e()), u43VarB) : q43.h(q43.b(h53Var.a(), h53Var.e()), h53Var);
        this.ecPublicKey = n53Var;
        this.configuration = qj8Var;
    }

    private ECParameterSpec createSpec(EllipticCurve ellipticCurve, u43 u43Var) {
        return new ECParameterSpec(ellipticCurve, q43.f(u43Var.b()), u43Var.d(), u43Var.c().intValue());
    }

    private void populateFromPubKeyInfo(s1a s1aVar) {
        byte b;
        oqc oqcVarM = oqc.m(s1aVar.m().p());
        t43 t43VarK = q43.k(this.configuration, oqcVarM);
        this.ecSpec = q43.i(oqcVarM, t43VarK);
        byte[] bArrX = s1aVar.o().x();
        m1 wp1Var = new wp1(bArrX);
        if (bArrX[0] == 4 && bArrX[1] == bArrX.length - 2 && (((b = bArrX[2]) == 2 || b == 3) && new vqc().a(t43VarK) >= bArrX.length - 3)) {
            try {
                wp1Var = (m1) p1.t(bArrX);
            } catch (IOException unused) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        this.ecPublicKey = new n53(new sqc(t43VarK, wp1Var).m(), p53.e(this.configuration, oqcVarM));
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        byte[] bArr = (byte[]) objectInputStream.readObject();
        this.configuration = BouncyCastleProvider.CONFIGURATION;
        populateFromPubKeyInfo(s1a.n(p1.t(bArr)));
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
        return eCParameterSpec != null ? q43.g(eCParameterSpec) : this.configuration.a();
    }

    public boolean equals(Object obj) {
        if (obj instanceof BCECPublicKey) {
            BCECPublicKey bCECPublicKey = (BCECPublicKey) obj;
            return this.ecPublicKey.c().e(bCECPublicKey.ecPublicKey.c()) && engineGetSpec().equals(bCECPublicKey.engineGetSpec());
        }
        if (obj instanceof ECPublicKey) {
            return ci.b(getEncoded(), ((ECPublicKey) obj).getEncoded());
        }
        return false;
    }

    @Override
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override
    public byte[] getEncoded() {
        boolean zC = qi8.c("org.bouncycastle.ec.enable_pc");
        if (this.encoding == null || this.oldPcSet != zC) {
            boolean z = this.withCompression || zC;
            this.encoding = yf5.d(new oa(wqc.m5, q53.a(this.ecSpec, z)), this.ecPublicKey.c().l(z));
            this.oldPcSet = zC;
        }
        return ci.f(this.encoding);
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

    @Override
    public ECPoint getW() {
        return q43.f(this.ecPublicKey.c());
    }

    public int hashCode() {
        return engineGetSpec().hashCode() ^ this.ecPublicKey.c().hashCode();
    }

    public void setPointFormat(String str) {
        this.withCompression = !"UNCOMPRESSED".equalsIgnoreCase(str);
        this.encoding = null;
    }

    public String toString() {
        return p53.k("EC", this.ecPublicKey.c(), engineGetSpec());
    }

    public BCECPublicKey(String str, n53 n53Var, qj8 qj8Var) {
        this.algorithm = str;
        this.ecPublicKey = n53Var;
        this.ecSpec = null;
        this.configuration = qj8Var;
    }

    public BCECPublicKey(String str, n53 n53Var, ECParameterSpec eCParameterSpec, qj8 qj8Var) {
        this.algorithm = "EC";
        u43 u43VarB = n53Var.b();
        this.algorithm = str;
        this.ecPublicKey = n53Var;
        if (eCParameterSpec == null) {
            this.ecSpec = createSpec(q43.b(u43VarB.a(), u43VarB.e()), u43VarB);
        } else {
            this.ecSpec = eCParameterSpec;
        }
        this.configuration = qj8Var;
    }

    public BCECPublicKey(String str, o53 o53Var, qj8 qj8Var) {
        this.algorithm = str;
        throw null;
    }

    public BCECPublicKey(String str, s1a s1aVar, qj8 qj8Var) {
        this.algorithm = str;
        this.configuration = qj8Var;
        populateFromPubKeyInfo(s1aVar);
    }

    public BCECPublicKey(String str, ECPublicKeySpec eCPublicKeySpec, qj8 qj8Var) {
        this.algorithm = str;
        ECParameterSpec params = eCPublicKeySpec.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new n53(q43.e(params, eCPublicKeySpec.getW()), q43.l(qj8Var, eCPublicKeySpec.getParams()));
        this.configuration = qj8Var;
    }

    public BCECPublicKey(String str, BCECPublicKey bCECPublicKey) {
        this.algorithm = str;
        this.ecPublicKey = bCECPublicKey.ecPublicKey;
        this.ecSpec = bCECPublicKey.ecSpec;
        this.withCompression = bCECPublicKey.withCompression;
        this.configuration = bCECPublicKey.configuration;
    }

    public BCECPublicKey(ECPublicKey eCPublicKey, qj8 qj8Var) {
        this.algorithm = "EC";
        this.algorithm = eCPublicKey.getAlgorithm();
        ECParameterSpec params = eCPublicKey.getParams();
        this.ecSpec = params;
        this.ecPublicKey = new n53(q43.e(params, eCPublicKey.getW()), q43.l(qj8Var, eCPublicKey.getParams()));
        this.configuration = qj8Var;
    }
}
