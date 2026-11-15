package com.transsion.dbdata.beans.audioedit;

import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/transsion/dbdata/beans/audioedit/AcoustIdResponseBean;", "", "results", "", "Lcom/transsion/dbdata/beans/audioedit/Result;", "status", "", MethodDecl.initName, "(Ljava/util/List;Ljava/lang/String;)V", "getResults", "()Ljava/util/List;", "getStatus", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AcoustIdResponseBean {
    private final List<Result> results;
    private final String status;

    public AcoustIdResponseBean(List<Result> list, String str) {
        this.results = list;
        this.status = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static AcoustIdResponseBean copy$default(AcoustIdResponseBean acoustIdResponseBean, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = acoustIdResponseBean.results;
        }
        if ((i & 2) != 0) {
            str = acoustIdResponseBean.status;
        }
        return acoustIdResponseBean.copy(list, str);
    }

    public final List<Result> component1() {
        return this.results;
    }

    public final String getStatus() {
        return this.status;
    }

    public final AcoustIdResponseBean copy(List<Result> results, String status) {
        return new AcoustIdResponseBean(results, status);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AcoustIdResponseBean)) {
            return false;
        }
        AcoustIdResponseBean acoustIdResponseBean = (AcoustIdResponseBean) other;
        return y45.e(this.results, acoustIdResponseBean.results) && y45.e(this.status, acoustIdResponseBean.status);
    }

    public final List<Result> getResults() {
        return this.results;
    }

    public final String getStatus() {
        return this.status;
    }

    public int hashCode() {
        List<Result> list = this.results;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.status;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "AcoustIdResponseBean(results=" + this.results + ", status=" + this.status + ")";
    }
}
