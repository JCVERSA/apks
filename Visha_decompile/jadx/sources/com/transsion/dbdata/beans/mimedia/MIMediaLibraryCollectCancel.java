package com.transsion.dbdata.beans.mimedia;

import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0011"}, d2 = {"Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryCollectCancel;", "", "ret", "", MethodDecl.initName, "(Z)V", "getRet", "()Z", "setRet", "component1", "copy", "equals", "other", "hashCode", "", "toString", "", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MIMediaLibraryCollectCancel {
    private boolean ret;

    public MIMediaLibraryCollectCancel(boolean z) {
        this.ret = z;
    }

    public static MIMediaLibraryCollectCancel copy$default(MIMediaLibraryCollectCancel mIMediaLibraryCollectCancel, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = mIMediaLibraryCollectCancel.ret;
        }
        return mIMediaLibraryCollectCancel.copy(z);
    }

    public final boolean getRet() {
        return this.ret;
    }

    public final MIMediaLibraryCollectCancel copy(boolean ret) {
        return new MIMediaLibraryCollectCancel(ret);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof MIMediaLibraryCollectCancel) && this.ret == ((MIMediaLibraryCollectCancel) other).ret;
    }

    public final boolean getRet() {
        return this.ret;
    }

    public int hashCode() {
        return Boolean.hashCode(this.ret);
    }

    public final void setRet(boolean z) {
        this.ret = z;
    }

    public String toString() {
        return "MIMediaLibraryCollectCancel(ret=" + this.ret + ")";
    }
}
