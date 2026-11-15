package org.bouncycastle.jce.provider;

import defpackage.an8;
import defpackage.bk3;
import defpackage.bn8;
import defpackage.c35;
import defpackage.ci;
import defpackage.cqc;
import defpackage.e1;
import defpackage.f1;
import defpackage.g1;
import defpackage.gd0;
import defpackage.gk3;
import defpackage.jp4;
import defpackage.jqc;
import defpackage.kd4;
import defpackage.kqc;
import defpackage.l1;
import defpackage.m1;
import defpackage.ms0;
import defpackage.mz6;
import defpackage.nz6;
import defpackage.oa;
import defpackage.oob;
import defpackage.p1;
import defpackage.s0;
import defpackage.s1;
import defpackage.u0a;
import defpackage.up1;
import defpackage.v1;
import defpackage.vp6;
import defpackage.w0;
import defpackage.wf5;
import defpackage.wu7;
import defpackage.x0;
import defpackage.xu7;
import java.io.IOException;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Security;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.security.auth.x500.X500Principal;

public class X509CertificateObject extends X509Certificate implements wu7 {
    private wu7 attrCarrier = new xu7();
    private gd0 basicConstraints;
    private ms0 c;
    private int hashValue;
    private boolean hashValueSet;
    private boolean[] keyUsage;

    public X509CertificateObject(ms0 ms0Var) throws CertificateParsingException {
        this.c = ms0Var;
        try {
            byte[] extensionBytes = getExtensionBytes("2.5.29.19");
            if (extensionBytes != null) {
                this.basicConstraints = gd0.m(p1.t(extensionBytes));
            }
            try {
                byte[] extensionBytes2 = getExtensionBytes("2.5.29.15");
                if (extensionBytes2 == null) {
                    this.keyUsage = null;
                    return;
                }
                s0 s0VarZ = s0.z(p1.t(extensionBytes2));
                byte[] bArrX = s0VarZ.x();
                int length = (bArrX.length * 8) - s0VarZ.i();
                int i = 9;
                if (length >= 9) {
                    i = length;
                }
                this.keyUsage = new boolean[i];
                for (int i2 = 0; i2 != length; i2++) {
                    this.keyUsage[i2] = (bArrX[i2 / 8] & (128 >>> (i2 % 8))) != 0;
                }
            } catch (Exception e) {
                throw new CertificateParsingException("cannot construct KeyUsage: " + e);
            }
        } catch (Exception e2) {
            throw new CertificateParsingException("cannot construct BasicConstraints: " + e2);
        }
    }

    private int calculateHashCode() {
        try {
            byte[] encoded = getEncoded();
            int i = 0;
            for (int i2 = 1; i2 < encoded.length; i2++) {
                i += encoded[i2] * i2;
            }
            return i;
        } catch (CertificateEncodingException unused) {
            return 0;
        }
    }

    private void checkSignature(PublicKey publicKey, Signature signature) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException {
        if (!isAlgIdEqual(this.c.r(), this.c.v().s())) {
            throw new CertificateException("signature algorithm in TBS cert not same as outer cert");
        }
        kqc.c(signature, this.c.r().p());
        signature.initVerify(publicKey);
        signature.update(getTBSCertificate());
        if (!signature.verify(getSignature())) {
            throw new SignatureException("certificate does not verify with supplied key");
        }
    }

    private static Collection getAlternativeNames(byte[] bArr) throws CertificateParsingException {
        String string;
        if (bArr == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            Enumeration enumerationB = s1.z(bArr).B();
            while (enumerationB.hasMoreElements()) {
                kd4 kd4VarM = kd4.m(enumerationB.nextElement());
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(c35.d(kd4VarM.o()));
                switch (kd4VarM.o()) {
                    case 0:
                    case 3:
                    case 5:
                        arrayList2.add(kd4VarM.getEncoded());
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                        break;
                    case 1:
                    case 2:
                    case 6:
                        string = ((v1) kd4VarM.n()).getString();
                        arrayList2.add(string);
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                        break;
                    case 4:
                        string = cqc.n(bn8.V, kd4VarM.n()).toString();
                        arrayList2.add(string);
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                        break;
                    case 7:
                        try {
                            string = InetAddress.getByAddress(m1.y(kd4VarM.n()).z()).getHostAddress();
                            arrayList2.add(string);
                            arrayList.add(Collections.unmodifiableList(arrayList2));
                        } catch (UnknownHostException unused) {
                        }
                        break;
                    case 8:
                        string = l1.D(kd4VarM.n()).B();
                        arrayList2.add(string);
                        arrayList.add(Collections.unmodifiableList(arrayList2));
                        break;
                    default:
                        throw new IOException("Bad tag number: " + kd4VarM.o());
                }
            }
            if (arrayList.size() == 0) {
                return null;
            }
            return Collections.unmodifiableCollection(arrayList);
        } catch (Exception e) {
            throw new CertificateParsingException(e.getMessage());
        }
    }

    private byte[] getExtensionBytes(String str) {
        bk3 bk3VarN;
        gk3 gk3VarN = this.c.v().n();
        if (gk3VarN == null || (bk3VarN = gk3VarN.n(new l1(str))) == null) {
            return null;
        }
        return bk3VarN.o().z();
    }

    private boolean isAlgIdEqual(oa oaVar, oa oaVar2) {
        if (!oaVar.m().s(oaVar2.m())) {
            return false;
        }
        if (oaVar.p() == null) {
            return oaVar2.p() == null || oaVar2.p().equals(up1.c);
        }
        if (oaVar2.p() == null) {
            return oaVar.p() == null || oaVar.p().equals(up1.c);
        }
        return oaVar.p().equals(oaVar2.p());
    }

    @Override
    public void checkValidity() throws CertificateNotYetValidException, CertificateExpiredException {
        checkValidity(new Date());
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Certificate)) {
            return false;
        }
        try {
            return ci.b(getEncoded(), ((Certificate) obj).getEncoded());
        } catch (CertificateEncodingException unused) {
            return false;
        }
    }

    @Override
    public x0 getBagAttribute(l1 l1Var) {
        return this.attrCarrier.getBagAttribute(l1Var);
    }

    @Override
    public Enumeration getBagAttributeKeys() {
        return this.attrCarrier.getBagAttributeKeys();
    }

    @Override
    public int getBasicConstraints() {
        gd0 gd0Var = this.basicConstraints;
        if (gd0Var == null || !gd0Var.o()) {
            return -1;
        }
        g1 g1VarN = this.basicConstraints.n();
        if (g1VarN == null) {
            return Integer.MAX_VALUE;
        }
        return g1VarN.D();
    }

    @Override
    public Set getCriticalExtensionOIDs() {
        if (getVersion() != 3) {
            return null;
        }
        HashSet hashSet = new HashSet();
        gk3 gk3VarN = this.c.v().n();
        if (gk3VarN == null) {
            return null;
        }
        Enumeration enumerationV = gk3VarN.v();
        while (enumerationV.hasMoreElements()) {
            l1 l1Var = (l1) enumerationV.nextElement();
            if (gk3VarN.n(l1Var).r()) {
                hashSet.add(l1Var.B());
            }
        }
        return hashSet;
    }

    @Override
    public byte[] getEncoded() throws CertificateEncodingException {
        try {
            return this.c.l("DER");
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    @Override
    public List getExtendedKeyUsage() throws CertificateParsingException {
        byte[] extensionBytes = getExtensionBytes("2.5.29.37");
        if (extensionBytes == null) {
            return null;
        }
        try {
            s1 s1Var = (s1) new f1(extensionBytes).D();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i != s1Var.size(); i++) {
                arrayList.add(((l1) s1Var.A(i)).B());
            }
            return Collections.unmodifiableList(arrayList);
        } catch (Exception unused) {
            throw new CertificateParsingException("error processing extended key usage extension");
        }
    }

    @Override
    public byte[] getExtensionValue(String str) {
        bk3 bk3VarN;
        gk3 gk3VarN = this.c.v().n();
        if (gk3VarN == null || (bk3VarN = gk3VarN.n(new l1(str))) == null) {
            return null;
        }
        try {
            return bk3VarN.o().getEncoded();
        } catch (Exception e) {
            throw new IllegalStateException("error parsing " + e.toString());
        }
    }

    @Override
    public Collection getIssuerAlternativeNames() throws CertificateParsingException {
        return getAlternativeNames(getExtensionBytes(bk3.j.B()));
    }

    @Override
    public Principal getIssuerDN() {
        return new jqc(this.c.o());
    }

    @Override
    public boolean[] getIssuerUniqueID() {
        s0 s0VarQ = this.c.v().q();
        if (s0VarQ == null) {
            return null;
        }
        byte[] bArrX = s0VarQ.x();
        int length = (bArrX.length * 8) - s0VarQ.i();
        boolean[] zArr = new boolean[length];
        for (int i = 0; i != length; i++) {
            zArr[i] = (bArrX[i / 8] & (128 >>> (i % 8))) != 0;
        }
        return zArr;
    }

    @Override
    public X500Principal getIssuerX500Principal() {
        try {
            return new X500Principal(this.c.o().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override
    public boolean[] getKeyUsage() {
        return this.keyUsage;
    }

    @Override
    public Set getNonCriticalExtensionOIDs() {
        if (getVersion() != 3) {
            return null;
        }
        HashSet hashSet = new HashSet();
        gk3 gk3VarN = this.c.v().n();
        if (gk3VarN == null) {
            return null;
        }
        Enumeration enumerationV = gk3VarN.v();
        while (enumerationV.hasMoreElements()) {
            l1 l1Var = (l1) enumerationV.nextElement();
            if (!gk3VarN.n(l1Var).r()) {
                hashSet.add(l1Var.B());
            }
        }
        return hashSet;
    }

    @Override
    public Date getNotAfter() {
        return this.c.m().m();
    }

    @Override
    public Date getNotBefore() {
        return this.c.s().m();
    }

    @Override
    public PublicKey getPublicKey() {
        try {
            return BouncyCastleProvider.getPublicKey(this.c.u());
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public BigInteger getSerialNumber() {
        return this.c.p().A();
    }

    @Override
    public String getSigAlgName() {
        Provider provider = Security.getProvider(BouncyCastleProvider.PROVIDER_NAME);
        if (provider != null) {
            String property = provider.getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property != null) {
                return property;
            }
        }
        Provider[] providers = Security.getProviders();
        for (int i = 0; i != providers.length; i++) {
            String property2 = providers[i].getProperty("Alg.Alias.Signature." + getSigAlgOID());
            if (property2 != null) {
                return property2;
            }
        }
        return getSigAlgOID();
    }

    @Override
    public String getSigAlgOID() {
        return this.c.r().m().B();
    }

    @Override
    public byte[] getSigAlgParams() {
        if (this.c.r().p() != null) {
            try {
                return this.c.r().p().j().l("DER");
            } catch (IOException unused) {
            }
        }
        return null;
    }

    @Override
    public byte[] getSignature() {
        return this.c.q().A();
    }

    @Override
    public Collection getSubjectAlternativeNames() throws CertificateParsingException {
        return getAlternativeNames(getExtensionBytes(bk3.i.B()));
    }

    @Override
    public Principal getSubjectDN() {
        return new jqc(this.c.t());
    }

    @Override
    public boolean[] getSubjectUniqueID() {
        s0 s0VarW = this.c.v().w();
        if (s0VarW == null) {
            return null;
        }
        byte[] bArrX = s0VarW.x();
        int length = (bArrX.length * 8) - s0VarW.i();
        boolean[] zArr = new boolean[length];
        for (int i = 0; i != length; i++) {
            zArr[i] = (bArrX[i / 8] & (128 >>> (i % 8))) != 0;
        }
        return zArr;
    }

    @Override
    public X500Principal getSubjectX500Principal() {
        try {
            return new X500Principal(this.c.t().getEncoded());
        } catch (IOException unused) {
            throw new IllegalStateException("can't encode issuer DN");
        }
    }

    @Override
    public byte[] getTBSCertificate() throws CertificateEncodingException {
        try {
            return this.c.v().l("DER");
        } catch (IOException e) {
            throw new CertificateEncodingException(e.toString());
        }
    }

    @Override
    public int getVersion() {
        return this.c.w();
    }

    @Override
    public boolean hasUnsupportedCriticalExtension() {
        gk3 gk3VarN;
        if (getVersion() != 3 || (gk3VarN = this.c.v().n()) == null) {
            return false;
        }
        Enumeration enumerationV = gk3VarN.v();
        while (enumerationV.hasMoreElements()) {
            l1 l1Var = (l1) enumerationV.nextElement();
            String strB = l1Var.B();
            if (!strB.equals(an8.n) && !strB.equals(an8.b) && !strB.equals(an8.c) && !strB.equals(an8.d) && !strB.equals(an8.j) && !strB.equals(an8.e) && !strB.equals(an8.g) && !strB.equals(an8.h) && !strB.equals(an8.i) && !strB.equals(an8.k) && !strB.equals(an8.l) && gk3VarN.n(l1Var).r()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public synchronized int hashCode() {
        try {
            if (!this.hashValueSet) {
                this.hashValue = calculateHashCode();
                this.hashValueSet = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.hashValue;
    }

    @Override
    public void setBagAttribute(l1 l1Var, x0 x0Var) {
        this.attrCarrier.setBagAttribute(l1Var, x0Var);
    }

    @Override
    public String toString() {
        Object oobVar;
        StringBuffer stringBuffer = new StringBuffer();
        String strD = u0a.d();
        stringBuffer.append("  [0]         Version: ");
        stringBuffer.append(getVersion());
        stringBuffer.append(strD);
        stringBuffer.append("         SerialNumber: ");
        stringBuffer.append(getSerialNumber());
        stringBuffer.append(strD);
        stringBuffer.append("             IssuerDN: ");
        stringBuffer.append(getIssuerDN());
        stringBuffer.append(strD);
        stringBuffer.append("           Start Date: ");
        stringBuffer.append(getNotBefore());
        stringBuffer.append(strD);
        stringBuffer.append("           Final Date: ");
        stringBuffer.append(getNotAfter());
        stringBuffer.append(strD);
        stringBuffer.append("            SubjectDN: ");
        stringBuffer.append(getSubjectDN());
        stringBuffer.append(strD);
        stringBuffer.append("           Public Key: ");
        stringBuffer.append(getPublicKey());
        stringBuffer.append(strD);
        stringBuffer.append("  Signature Algorithm: ");
        stringBuffer.append(getSigAlgName());
        stringBuffer.append(strD);
        byte[] signature = getSignature();
        stringBuffer.append("            Signature: ");
        stringBuffer.append(new String(jp4.e(signature, 0, 20)));
        stringBuffer.append(strD);
        int i = 20;
        while (i < signature.length) {
            int length = signature.length - 20;
            stringBuffer.append("                       ");
            stringBuffer.append(i < length ? new String(jp4.e(signature, i, 20)) : new String(jp4.e(signature, i, signature.length - i)));
            stringBuffer.append(strD);
            i += 20;
        }
        gk3 gk3VarN = this.c.v().n();
        if (gk3VarN != null) {
            Enumeration enumerationV = gk3VarN.v();
            if (enumerationV.hasMoreElements()) {
                stringBuffer.append("       Extensions: \n");
            }
            while (enumerationV.hasMoreElements()) {
                l1 l1Var = (l1) enumerationV.nextElement();
                bk3 bk3VarN = gk3VarN.n(l1Var);
                if (bk3VarN.o() != null) {
                    f1 f1Var = new f1(bk3VarN.o().z());
                    stringBuffer.append("                       critical(");
                    stringBuffer.append(bk3VarN.r());
                    stringBuffer.append(") ");
                    try {
                        if (l1Var.s(bk3.k)) {
                            oobVar = gd0.m(f1Var.D());
                        } else if (l1Var.s(bk3.g)) {
                            oobVar = wf5.m(f1Var.D());
                        } else if (l1Var.s(vp6.b)) {
                            oobVar = new mz6((s0) f1Var.D());
                        } else if (l1Var.s(vp6.d)) {
                            oobVar = new nz6((e1) f1Var.D());
                        } else {
                            if (l1Var.s(vp6.k)) {
                                oobVar = new oob((e1) f1Var.D());
                            } else {
                                stringBuffer.append(l1Var.B());
                                stringBuffer.append(" value = ");
                                stringBuffer.append(w0.c(f1Var.D()));
                            }
                            stringBuffer.append(strD);
                        }
                        stringBuffer.append(oobVar);
                        stringBuffer.append(strD);
                    } catch (Exception unused) {
                        stringBuffer.append(l1Var.B());
                        stringBuffer.append(" value = ");
                        stringBuffer.append("*****");
                        stringBuffer.append(strD);
                    }
                }
                stringBuffer.append(strD);
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public final void verify(PublicKey publicKey) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
        Signature signature;
        String strB = kqc.b(this.c.r());
        try {
            signature = Signature.getInstance(strB, BouncyCastleProvider.PROVIDER_NAME);
        } catch (Exception unused) {
            signature = Signature.getInstance(strB);
        }
        checkSignature(publicKey, signature);
    }

    @Override
    public void checkValidity(Date date) throws CertificateNotYetValidException, CertificateExpiredException {
        if (date.getTime() > getNotAfter().getTime()) {
            throw new CertificateExpiredException("certificate expired on " + this.c.m().o());
        }
        if (date.getTime() >= getNotBefore().getTime()) {
            return;
        }
        throw new CertificateNotYetValidException("certificate not valid till " + this.c.s().o());
    }

    @Override
    public final void verify(PublicKey publicKey, String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
        String strB = kqc.b(this.c.r());
        checkSignature(publicKey, str != null ? Signature.getInstance(strB, str) : Signature.getInstance(strB));
    }

    @Override
    public final void verify(PublicKey publicKey, Provider provider) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException {
        String strB = kqc.b(this.c.r());
        checkSignature(publicKey, provider != null ? Signature.getInstance(strB, provider) : Signature.getInstance(strB));
    }
}
