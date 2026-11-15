package com.transsion.playercommon.data;

import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\f"}, d2 = {"Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;", "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;", "mediaLibraryId", "", "virtualPersonName", "virtualPersonPhoto", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getMediaLibraryId", "()Ljava/lang/String;", "getVirtualPersonName", "getVirtualPersonPhoto", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MIMediaLibraryCollectAddRequest extends TypeBean {

    @SerializedName("mediaLibraryId")
    private final String mediaLibraryId;

    @SerializedName("virtualPersonName")
    private final String virtualPersonName;

    @SerializedName("virtualPersonPhoto")
    private final String virtualPersonPhoto;

    public MIMediaLibraryCollectAddRequest(String str, String str2, String str3) {
        y45.j(str, "mediaLibraryId");
        y45.j(str2, "virtualPersonName");
        y45.j(str3, "virtualPersonPhoto");
        this.mediaLibraryId = str;
        this.virtualPersonName = str2;
        this.virtualPersonPhoto = str3;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }

    public final String getVirtualPersonName() {
        return this.virtualPersonName;
    }

    public final String getVirtualPersonPhoto() {
        return this.virtualPersonPhoto;
    }
}
