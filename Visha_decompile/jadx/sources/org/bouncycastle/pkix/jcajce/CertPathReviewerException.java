package org.bouncycastle.pkix.jcajce;

import defpackage.qc3;
import java.security.cert.CertPath;
import org.bouncycastle.pkix.util.LocalizedException;

public class CertPathReviewerException extends LocalizedException {
    private CertPath certPath;
    private int index;

    public CertPathReviewerException(qc3 qc3Var) {
        super(qc3Var);
        this.index = -1;
        this.certPath = null;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getIndex() {
        return this.index;
    }

    public CertPathReviewerException(qc3 qc3Var, Throwable th) {
        super(qc3Var, th);
        this.index = -1;
        this.certPath = null;
    }

    public CertPathReviewerException(qc3 qc3Var, Throwable th, CertPath certPath, int i) {
        super(qc3Var, th);
        this.index = -1;
        this.certPath = null;
        if (certPath == null || i == -1) {
            throw new IllegalArgumentException();
        }
        if (i < -1 || i >= certPath.getCertificates().size()) {
            throw new IndexOutOfBoundsException();
        }
        this.certPath = certPath;
        this.index = i;
    }

    public CertPathReviewerException(qc3 qc3Var, CertPath certPath, int i) {
        super(qc3Var);
        this.index = -1;
        this.certPath = null;
        if (certPath == null || i == -1) {
            throw new IllegalArgumentException();
        }
        if (i < -1 || i >= certPath.getCertificates().size()) {
            throw new IndexOutOfBoundsException();
        }
        this.certPath = certPath;
        this.index = i;
    }
}
