package com.transsion.playercommon.data;

import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0004HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/transsion/playercommon/data/CloudHistoryRequestDataForDelete;", "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;", "fileIds", "", "", MethodDecl.initName, "(Ljava/util/List;)V", "getFileIds", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudHistoryRequestDataForDelete extends TypeBean {

    @SerializedName("fileIds")
    private final List<String> fileIds;

    public CloudHistoryRequestDataForDelete(List<String> list) {
        y45.j(list, "fileIds");
        this.fileIds = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CloudHistoryRequestDataForDelete copy$default(CloudHistoryRequestDataForDelete cloudHistoryRequestDataForDelete, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = cloudHistoryRequestDataForDelete.fileIds;
        }
        return cloudHistoryRequestDataForDelete.copy(list);
    }

    public final List<String> component1() {
        return this.fileIds;
    }

    public final CloudHistoryRequestDataForDelete copy(List<String> fileIds) {
        y45.j(fileIds, "fileIds");
        return new CloudHistoryRequestDataForDelete(fileIds);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof CloudHistoryRequestDataForDelete) && y45.e(this.fileIds, ((CloudHistoryRequestDataForDelete) other).fileIds);
    }

    public final List<String> getFileIds() {
        return this.fileIds;
    }

    public int hashCode() {
        return this.fileIds.hashCode();
    }

    public String toString() {
        return "CloudHistoryRequestDataForDelete(fileIds=" + this.fileIds + ")";
    }
}
