package defpackage;

import org.apache.commons.text.StringSubstitutor;

public final class pyh extends wyh {
    public final String b;
    public final int c;
    public final int d;

    public pyh(String str, boolean z, int i, kyh kyhVar, lyh lyhVar, int i2, nyh nyhVar) {
        this.b = str;
        this.c = i;
        this.d = i2;
    }

    @Override
    public final kyh a() {
        return null;
    }

    @Override
    public final lyh b() {
        return null;
    }

    @Override
    public final String c() {
        return this.b;
    }

    @Override
    public final boolean d() {
        return false;
    }

    @Override
    public final int e() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof wyh) {
            wyh wyhVar = (wyh) obj;
            if (this.b.equals(wyhVar.c())) {
                wyhVar.d();
                int i = this.c;
                int iE = wyhVar.e();
                if (i == 0) {
                    throw null;
                }
                if (i == iE) {
                    wyhVar.a();
                    wyhVar.b();
                    int i2 = this.d;
                    int iF = wyhVar.f();
                    if (i2 == 0) {
                        throw null;
                    }
                    if (iF == 1) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public final int f() {
        return this.d;
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode() ^ 1000003;
        int i = this.c;
        if (i == 0) {
            throw null;
        }
        int i2 = (((iHashCode * 1000003) ^ 1237) * 1000003) ^ i;
        if (this.d != 0) {
            return (i2 * 583896283) ^ 1;
        }
        throw null;
    }

    public final String toString() {
        String str;
        int i = this.c;
        if (i == 1) {
            str = "ALL_CHECKS";
        } else if (i == 2) {
            str = "SKIP_COMPLIANCE_CHECK";
        } else if (i != 3) {
            str = i != 4 ? "null" : "NO_CHECKS";
        } else {
            str = "SKIP_SECURITY_CHECK";
        }
        String str2 = this.d == 1 ? "READ_AND_WRITE" : "null";
        return "FileComplianceOptions{fileOwner=" + this.b + ", hasDifferentDmaOwner=false, fileChecks=" + str + ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=" + str2 + StringSubstitutor.DEFAULT_VAR_END;
    }
}
