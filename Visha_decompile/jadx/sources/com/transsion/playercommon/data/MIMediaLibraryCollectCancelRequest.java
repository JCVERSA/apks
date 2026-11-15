package com.transsion.playercommon.data;

import com.google.gson.annotations.SerializedName;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;", "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;", "mediaLibraryId", "", MethodDecl.initName, "(Ljava/lang/String;)V", "getMediaLibraryId", "()Ljava/lang/String;", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MIMediaLibraryCollectCancelRequest extends TypeBean {

    @SerializedName("mediaLibraryId")
    private final String mediaLibraryId;

    public MIMediaLibraryCollectCancelRequest(String str) {
        y45.j(str, "mediaLibraryId");
        this.mediaLibraryId = str;
    }

    public final String getMediaLibraryId() {
        return this.mediaLibraryId;
    }
}
