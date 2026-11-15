package com.transsion.cloud_drive.base.api.request;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.ba5;
import defpackage.v95;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0003\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ8\u0010\t\u001a\u00020\u00002\b\b\u0003\u0010\u0003\u001a\u00020\u00022\b\b\u0003\u0010\u0004\u001a\u00020\u00022\b\b\u0003\u0010\u0005\u001a\u00020\u00022\b\b\u0003\u0010\u0006\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0015\u001a\u0004\b\u0017\u0010\fR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0015\u001a\u0004\b\u0014\u0010\fR\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0018\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/transsion/cloud_drive/base/api/request/MccMap;", "", "", "ipMcc", "oobeMcc", "accountMcc", "simMcc", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloud_drive/base/api/request/MccMap;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "b", "c", "d", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MccMap {

    public final String ipMcc;

    public final String oobeMcc;

    public final String accountMcc;

    public final String simMcc;

    public MccMap(@v95(name = "ipMcc") String str, @v95(name = "oobeMcc") String str2, @v95(name = "accountMcc") String str3, @v95(name = "simMcc") String str4) {
        y45.j(str, "ipMcc");
        y45.j(str2, "oobeMcc");
        y45.j(str3, "accountMcc");
        y45.j(str4, "simMcc");
        this.ipMcc = str;
        this.oobeMcc = str2;
        this.accountMcc = str3;
        this.simMcc = str4;
    }

    public final String getAccountMcc() {
        return this.accountMcc;
    }

    public final String getIpMcc() {
        return this.ipMcc;
    }

    public final String getOobeMcc() {
        return this.oobeMcc;
    }

    public final MccMap copy(@v95(name = "ipMcc") String ipMcc, @v95(name = "oobeMcc") String oobeMcc, @v95(name = "accountMcc") String accountMcc, @v95(name = "simMcc") String simMcc) {
        y45.j(ipMcc, "ipMcc");
        y45.j(oobeMcc, "oobeMcc");
        y45.j(accountMcc, "accountMcc");
        y45.j(simMcc, "simMcc");
        return new MccMap(ipMcc, oobeMcc, accountMcc, simMcc);
    }

    public final String getSimMcc() {
        return this.simMcc;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MccMap)) {
            return false;
        }
        MccMap mccMap = (MccMap) other;
        return y45.e(this.ipMcc, mccMap.ipMcc) && y45.e(this.oobeMcc, mccMap.oobeMcc) && y45.e(this.accountMcc, mccMap.accountMcc) && y45.e(this.simMcc, mccMap.simMcc);
    }

    public int hashCode() {
        return (((((this.ipMcc.hashCode() * 31) + this.oobeMcc.hashCode()) * 31) + this.accountMcc.hashCode()) * 31) + this.simMcc.hashCode();
    }

    public String toString() {
        return "MccMap(ipMcc=" + this.ipMcc + ", oobeMcc=" + this.oobeMcc + ", accountMcc=" + this.accountMcc + ", simMcc=" + this.simMcc + ")";
    }

    public MccMap(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4);
    }
}
