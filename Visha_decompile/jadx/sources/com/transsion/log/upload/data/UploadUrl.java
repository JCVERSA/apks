package com.transsion.log.upload.data;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/transsion/log/upload/data/UploadUrl;", "", "fileUrl", "", MethodDecl.initName, "(Ljava/lang/String;)V", "getFileUrl", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "UBT_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UploadUrl {
    private final String fileUrl;

    /* JADX WARN: Multi-variable type inference failed */
    public UploadUrl() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static UploadUrl copy$default(UploadUrl uploadUrl, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = uploadUrl.fileUrl;
        }
        return uploadUrl.copy(str);
    }

    public final String getFileUrl() {
        return this.fileUrl;
    }

    public final UploadUrl copy(String fileUrl) {
        y45.j(fileUrl, "fileUrl");
        return new UploadUrl(fileUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UploadUrl) && y45.e(this.fileUrl, ((UploadUrl) other).fileUrl);
    }

    public final String getFileUrl() {
        return this.fileUrl;
    }

    public int hashCode() {
        return this.fileUrl.hashCode();
    }

    public String toString() {
        return "UploadUrl(fileUrl=" + this.fileUrl + ")";
    }

    public UploadUrl(String str) {
        y45.j(str, "fileUrl");
        this.fileUrl = str;
    }

    public UploadUrl(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str);
    }
}
