package com.transsion.dbdata.beans;

import com.transsion.dbdata.beans.cloud.SearchResponseData;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0012\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tHÆ\u0003J;\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00032\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/transsion/dbdata/beans/FileHandlerCloudSearchData;", "", "isSuccess", "", "handleType", "", "data", "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "list", "", MethodDecl.initName, "(ZILcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/util/List;)V", "()Z", "getHandleType", "()I", "getData", "()Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "getList", "()Ljava/util/List;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileHandlerCloudSearchData {
    private final SearchResponseData data;
    private final int handleType;
    private final boolean isSuccess;
    private final List<SearchResponseData> list;

    public FileHandlerCloudSearchData(boolean z, int i, SearchResponseData searchResponseData, List<SearchResponseData> list) {
        this.isSuccess = z;
        this.handleType = i;
        this.data = searchResponseData;
        this.list = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static FileHandlerCloudSearchData copy$default(FileHandlerCloudSearchData fileHandlerCloudSearchData, boolean z, int i, SearchResponseData searchResponseData, List list, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = fileHandlerCloudSearchData.isSuccess;
        }
        if ((i2 & 2) != 0) {
            i = fileHandlerCloudSearchData.handleType;
        }
        if ((i2 & 4) != 0) {
            searchResponseData = fileHandlerCloudSearchData.data;
        }
        if ((i2 & 8) != 0) {
            list = fileHandlerCloudSearchData.list;
        }
        return fileHandlerCloudSearchData.copy(z, i, searchResponseData, list);
    }

    public final boolean getIsSuccess() {
        return this.isSuccess;
    }

    public final int getHandleType() {
        return this.handleType;
    }

    public final SearchResponseData getData() {
        return this.data;
    }

    public final List<SearchResponseData> component4() {
        return this.list;
    }

    public final FileHandlerCloudSearchData copy(boolean isSuccess, int handleType, SearchResponseData data, List<SearchResponseData> list) {
        return new FileHandlerCloudSearchData(isSuccess, handleType, data, list);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileHandlerCloudSearchData)) {
            return false;
        }
        FileHandlerCloudSearchData fileHandlerCloudSearchData = (FileHandlerCloudSearchData) other;
        return this.isSuccess == fileHandlerCloudSearchData.isSuccess && this.handleType == fileHandlerCloudSearchData.handleType && y45.e(this.data, fileHandlerCloudSearchData.data) && y45.e(this.list, fileHandlerCloudSearchData.list);
    }

    public final SearchResponseData getData() {
        return this.data;
    }

    public final int getHandleType() {
        return this.handleType;
    }

    public final List<SearchResponseData> getList() {
        return this.list;
    }

    public int hashCode() {
        int iHashCode = ((Boolean.hashCode(this.isSuccess) * 31) + Integer.hashCode(this.handleType)) * 31;
        SearchResponseData searchResponseData = this.data;
        int iHashCode2 = (iHashCode + (searchResponseData == null ? 0 : searchResponseData.hashCode())) * 31;
        List<SearchResponseData> list = this.list;
        return iHashCode2 + (list != null ? list.hashCode() : 0);
    }

    public final boolean isSuccess() {
        return this.isSuccess;
    }

    public String toString() {
        return "FileHandlerCloudSearchData(isSuccess=" + this.isSuccess + ", handleType=" + this.handleType + ", data=" + this.data + ", list=" + this.list + ")";
    }
}
