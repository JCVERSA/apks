package com.transsion.log.upload.data;

import defpackage.y45;
import java.io.Serializable;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÆ\u0003J\t\u0010 \u001a\u00020\u0007HÆ\u0003J\t\u0010!\u001a\u00020\u0007HÆ\u0003J\t\u0010\"\u001a\u00020\u0007HÆ\u0003J\t\u0010#\u001a\u00020\u0005HÆ\u0003JE\u0010$\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\u0005HÆ\u0001J\u0013\u0010%\u001a\u00020\u00032\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020)HÖ\u0001J\t\u0010*\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u0017R\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0015\"\u0004\b\u001b\u0010\u0017R\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0011\"\u0004\b\u001d\u0010\u0013¨\u0006+"}, d2 = {"Lcom/transsion/log/upload/data/RuleRequestModel;", "Ljava/io/Serializable;", "isOpen", "", "collectionLength", "", "secretKey", "", "iv", "appSign", "maxFileSize", MethodDecl.initName, "(ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "()Z", "setOpen", "(Z)V", "getCollectionLength", "()J", "setCollectionLength", "(J)V", "getSecretKey", "()Ljava/lang/String;", "setSecretKey", "(Ljava/lang/String;)V", "getIv", "setIv", "getAppSign", "setAppSign", "getMaxFileSize", "setMaxFileSize", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "", "hashCode", "", "toString", "UBT_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RuleRequestModel implements Serializable {
    private String appSign;
    private long collectionLength;
    private boolean isOpen;
    private String iv;
    private long maxFileSize;
    private String secretKey;

    public RuleRequestModel(boolean z, long j, String str, String str2, String str3, long j2) {
        y45.j(str, "secretKey");
        y45.j(str2, "iv");
        y45.j(str3, "appSign");
        this.isOpen = z;
        this.collectionLength = j;
        this.secretKey = str;
        this.iv = str2;
        this.appSign = str3;
        this.maxFileSize = j2;
    }

    public final boolean getIsOpen() {
        return this.isOpen;
    }

    public final long getCollectionLength() {
        return this.collectionLength;
    }

    public final String getSecretKey() {
        return this.secretKey;
    }

    public final String getIv() {
        return this.iv;
    }

    public final String getAppSign() {
        return this.appSign;
    }

    public final long getMaxFileSize() {
        return this.maxFileSize;
    }

    public final RuleRequestModel copy(boolean isOpen, long collectionLength, String secretKey, String iv, String appSign, long maxFileSize) {
        y45.j(secretKey, "secretKey");
        y45.j(iv, "iv");
        y45.j(appSign, "appSign");
        return new RuleRequestModel(isOpen, collectionLength, secretKey, iv, appSign, maxFileSize);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RuleRequestModel)) {
            return false;
        }
        RuleRequestModel ruleRequestModel = (RuleRequestModel) other;
        return this.isOpen == ruleRequestModel.isOpen && this.collectionLength == ruleRequestModel.collectionLength && y45.e(this.secretKey, ruleRequestModel.secretKey) && y45.e(this.iv, ruleRequestModel.iv) && y45.e(this.appSign, ruleRequestModel.appSign) && this.maxFileSize == ruleRequestModel.maxFileSize;
    }

    public final String getAppSign() {
        return this.appSign;
    }

    public final long getCollectionLength() {
        return this.collectionLength;
    }

    public final String getIv() {
        return this.iv;
    }

    public final long getMaxFileSize() {
        return this.maxFileSize;
    }

    public final String getSecretKey() {
        return this.secretKey;
    }

    public int hashCode() {
        return (((((((((Boolean.hashCode(this.isOpen) * 31) + Long.hashCode(this.collectionLength)) * 31) + this.secretKey.hashCode()) * 31) + this.iv.hashCode()) * 31) + this.appSign.hashCode()) * 31) + Long.hashCode(this.maxFileSize);
    }

    public final boolean isOpen() {
        return this.isOpen;
    }

    public final void setAppSign(String str) {
        y45.j(str, "<set-?>");
        this.appSign = str;
    }

    public final void setCollectionLength(long j) {
        this.collectionLength = j;
    }

    public final void setIv(String str) {
        y45.j(str, "<set-?>");
        this.iv = str;
    }

    public final void setMaxFileSize(long j) {
        this.maxFileSize = j;
    }

    public final void setOpen(boolean z) {
        this.isOpen = z;
    }

    public final void setSecretKey(String str) {
        y45.j(str, "<set-?>");
        this.secretKey = str;
    }

    public String toString() {
        return "RuleRequestModel(isOpen=" + this.isOpen + ", collectionLength=" + this.collectionLength + ", secretKey=" + this.secretKey + ", iv=" + this.iv + ", appSign=" + this.appSign + ", maxFileSize=" + this.maxFileSize + ")";
    }

    public RuleRequestModel(boolean z, long j, String str, String str2, String str3, long j2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? 0L : j, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? "" : str3, j2);
    }
}
