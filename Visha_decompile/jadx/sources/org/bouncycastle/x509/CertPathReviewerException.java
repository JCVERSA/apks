package org.bouncycastle.x509;

import defpackage.rc3;
import java.security.cert.CertPath;
import org.bouncycastle.i18n.LocalizedException;

public class CertPathReviewerException extends LocalizedException {
    private CertPath certPath;
    private int index;

    public CertPathReviewerException(rc3 rc3Var) {
        super(rc3Var);
        this.index = -1;
        this.certPath = null;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getIndex() {
        return this.index;
    }

    public CertPathReviewerException(rc3 rc3Var, Throwable th) {
        super(rc3Var, th);
        this.index = -1;
        this.certPath = null;
    }

    public CertPathReviewerException(rc3 rc3Var, Throwable th, CertPath certPath, int i) {
        super(rc3Var, th);
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

    public CertPathReviewerException(rc3 rc3Var, CertPath certPath, int i) {
        super(rc3Var);
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
