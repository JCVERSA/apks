package com.transsion.vishatransfer.data;

import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0006HÆ\u0003J;\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u00062\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\b\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/transsion/vishatransfer/data/FileData;", "", "path", "", "receivePath", "isAudio", "", "isCover", "isReceiveSuccess", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;ZZZ)V", "getPath", "()Ljava/lang/String;", "setPath", "(Ljava/lang/String;)V", "getReceivePath", "setReceivePath", "()Z", "setCover", "(Z)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "vishatransferlib_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FileData {
    private final boolean isAudio;
    private boolean isCover;
    private final boolean isReceiveSuccess;
    private String path;
    private String receivePath;

    public FileData() {
        this(null, null, false, false, false, 31, null);
    }

    public static FileData copy$default(FileData fileData, String str, String str2, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = fileData.path;
        }
        if ((i & 2) != 0) {
            str2 = fileData.receivePath;
        }
        String str3 = str2;
        if ((i & 4) != 0) {
            z = fileData.isAudio;
        }
        boolean z4 = z;
        if ((i & 8) != 0) {
            z2 = fileData.isCover;
        }
        boolean z5 = z2;
        if ((i & 16) != 0) {
            z3 = fileData.isReceiveSuccess;
        }
        return fileData.copy(str, str3, z4, z5, z3);
    }

    public final String getPath() {
        return this.path;
    }

    public final String getReceivePath() {
        return this.receivePath;
    }

    public final boolean getIsAudio() {
        return this.isAudio;
    }

    public final boolean getIsCover() {
        return this.isCover;
    }

    public final boolean getIsReceiveSuccess() {
        return this.isReceiveSuccess;
    }

    public final FileData copy(String path, String receivePath, boolean isAudio, boolean isCover, boolean isReceiveSuccess) {
        y45.j(path, "path");
        y45.j(receivePath, "receivePath");
        return new FileData(path, receivePath, isAudio, isCover, isReceiveSuccess);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FileData)) {
            return false;
        }
        FileData fileData = (FileData) other;
        return y45.e(this.path, fileData.path) && y45.e(this.receivePath, fileData.receivePath) && this.isAudio == fileData.isAudio && this.isCover == fileData.isCover && this.isReceiveSuccess == fileData.isReceiveSuccess;
    }

    public final String getPath() {
        return this.path;
    }

    public final String getReceivePath() {
        return this.receivePath;
    }

    public int hashCode() {
        return (((((((this.path.hashCode() * 31) + this.receivePath.hashCode()) * 31) + Boolean.hashCode(this.isAudio)) * 31) + Boolean.hashCode(this.isCover)) * 31) + Boolean.hashCode(this.isReceiveSuccess);
    }

    public final boolean isAudio() {
        return this.isAudio;
    }

    public final boolean isCover() {
        return this.isCover;
    }

    public final boolean isReceiveSuccess() {
        return this.isReceiveSuccess;
    }

    public final void setCover(boolean z) {
        this.isCover = z;
    }

    public final void setPath(String str) {
        y45.j(str, "<set-?>");
        this.path = str;
    }

    public final void setReceivePath(String str) {
        y45.j(str, "<set-?>");
        this.receivePath = str;
    }

    public String toString() {
        return "FileData(path=" + this.path + ", receivePath=" + this.receivePath + ", isAudio=" + this.isAudio + ", isCover=" + this.isCover + ", isReceiveSuccess=" + this.isReceiveSuccess + ")";
    }

    public FileData(String str, String str2, boolean z, boolean z2, boolean z3) {
        y45.j(str, "path");
        y45.j(str2, "receivePath");
        this.path = str;
        this.receivePath = str2;
        this.isAudio = z;
        this.isCover = z2;
        this.isReceiveSuccess = z3;
    }

    public FileData(String str, String str2, boolean z, boolean z2, boolean z3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? true : z3);
    }
}
