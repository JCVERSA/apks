package org.bouncycastle.cert;

import defpackage.bk3;
import defpackage.cqc;
import defpackage.fb;
import defpackage.gb;
import defpackage.gk3;
import defpackage.kh1;
import defpackage.l1;
import defpackage.ls0;
import defpackage.ms0;
import defpackage.nca;
import defpackage.oa;
import defpackage.s1a;
import defpackage.y93;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import java.util.Set;

public class X509CertificateHolder implements y93, Serializable {
    private static final long serialVersionUID = 20170722001L;
    private transient gk3 extensions;
    private transient ms0 x509Certificate;

    public X509CertificateHolder(ms0 ms0Var) {
        init(ms0Var);
    }

    private void init(ms0 ms0Var) {
        this.x509Certificate = ms0Var;
        this.extensions = ms0Var.v().n();
    }

    private static ms0 parseBytes(byte[] bArr) throws IOException {
        try {
            return ms0.n(ls0.f(bArr));
        } catch (ClassCastException e) {
            throw new CertIOException("malformed data: " + e.getMessage(), e);
        } catch (IllegalArgumentException e2) {
            throw new CertIOException("malformed data: " + e2.getMessage(), e2);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        init(ms0.n(objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof X509CertificateHolder) {
            return this.x509Certificate.equals(((X509CertificateHolder) obj).x509Certificate);
        }
        return false;
    }

    public Set getCriticalExtensionOIDs() {
        return ls0.b(this.extensions);
    }

    @Override
    public byte[] getEncoded() throws IOException {
        return this.x509Certificate.getEncoded();
    }

    public bk3 getExtension(l1 l1Var) {
        gk3 gk3Var = this.extensions;
        if (gk3Var != null) {
            return gk3Var.n(l1Var);
        }
        return null;
    }

    public List getExtensionOIDs() {
        return ls0.c(this.extensions);
    }

    public gk3 getExtensions() {
        return this.extensions;
    }

    public cqc getIssuer() {
        return cqc.o(this.x509Certificate.o());
    }

    public Set getNonCriticalExtensionOIDs() {
        return ls0.d(this.extensions);
    }

    public Date getNotAfter() {
        return this.x509Certificate.m().m();
    }

    public Date getNotBefore() {
        return this.x509Certificate.s().m();
    }

    public BigInteger getSerialNumber() {
        return this.x509Certificate.p().A();
    }

    public byte[] getSignature() {
        return this.x509Certificate.q().A();
    }

    public oa getSignatureAlgorithm() {
        return this.x509Certificate.r();
    }

    public cqc getSubject() {
        return cqc.o(this.x509Certificate.t());
    }

    public s1a getSubjectPublicKeyInfo() {
        return this.x509Certificate.u();
    }

    public int getVersion() {
        return this.x509Certificate.w();
    }

    public int getVersionNumber() {
        return this.x509Certificate.w();
    }

    public boolean hasExtensions() {
        return this.extensions != null;
    }

    public int hashCode() {
        return this.x509Certificate.hashCode();
    }

    public boolean isAlternativeSignatureValid(kh1 kh1Var) throws CertException {
        nca ncaVarV = this.x509Certificate.v();
        fb fbVarM = fb.m(ncaVarV.n());
        gb.m(ncaVarV.n());
        try {
            kh1Var.a(oa.o(fbVarM.j()));
            throw null;
        } catch (Exception e) {
            throw new CertException("unable to process signature: " + e.getMessage(), e);
        }
    }

    public boolean isSignatureValid(kh1 kh1Var) throws CertException {
        nca ncaVarV = this.x509Certificate.v();
        if (!ls0.e(ncaVarV.s(), this.x509Certificate.r())) {
            throw new CertException("signature invalid - algorithm identifier mismatch");
        }
        try {
            kh1Var.a(ncaVarV.s());
            throw null;
        } catch (Exception e) {
            throw new CertException("unable to process signature: " + e.getMessage(), e);
        }
    }

    public boolean isValidOn(Date date) {
        return (date.before(this.x509Certificate.s().m()) || date.after(this.x509Certificate.m().m())) ? false : true;
    }

    public ms0 toASN1Structure() {
        return this.x509Certificate;
    }

    public X509CertificateHolder(byte[] bArr) throws IOException {
        this(parseBytes(bArr));
    }
}
