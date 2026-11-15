package com.cloud.tupdate.bean;

import defpackage.y45;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/cloud/tupdate/bean/UpdateEntity;", "", "updateContent", "Lcom/cloud/tupdate/bean/UpdateContent;", "appScoreContent", "Lcom/cloud/tupdate/bean/AppScoreContent;", "(Lcom/cloud/tupdate/bean/UpdateContent;Lcom/cloud/tupdate/bean/AppScoreContent;)V", "getAppScoreContent", "()Lcom/cloud/tupdate/bean/AppScoreContent;", "getUpdateContent", "()Lcom/cloud/tupdate/bean/UpdateContent;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "tupdate_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
public final class UpdateEntity {
    private final AppScoreContent appScoreContent;
    private final UpdateContent updateContent;

    /* JADX WARN: Multi-variable type inference failed */
    public UpdateEntity() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public static UpdateEntity copy$default(UpdateEntity updateEntity, UpdateContent updateContent, AppScoreContent appScoreContent, int i, Object obj) {
        if ((i & 1) != 0) {
            updateContent = updateEntity.updateContent;
        }
        if ((i & 2) != 0) {
            appScoreContent = updateEntity.appScoreContent;
        }
        return updateEntity.copy(updateContent, appScoreContent);
    }

    public final UpdateContent getUpdateContent() {
        return this.updateContent;
    }

    public final AppScoreContent getAppScoreContent() {
        return this.appScoreContent;
    }

    public final UpdateEntity copy(UpdateContent updateContent, AppScoreContent appScoreContent) {
        return new UpdateEntity(updateContent, appScoreContent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpdateEntity)) {
            return false;
        }
        UpdateEntity updateEntity = (UpdateEntity) other;
        return y45.e(this.updateContent, updateEntity.updateContent) && y45.e(this.appScoreContent, updateEntity.appScoreContent);
    }

    public final AppScoreContent getAppScoreContent() {
        return this.appScoreContent;
    }

    public final UpdateContent getUpdateContent() {
        return this.updateContent;
    }

    public int hashCode() {
        UpdateContent updateContent = this.updateContent;
        int iHashCode = (updateContent == null ? 0 : updateContent.hashCode()) * 31;
        AppScoreContent appScoreContent = this.appScoreContent;
        return iHashCode + (appScoreContent != null ? appScoreContent.hashCode() : 0);
    }

    public String toString() {
        return "UpdateEntity(updateContent=" + this.updateContent + ", appScoreContent=" + this.appScoreContent + ')';
    }

    public UpdateEntity(UpdateContent updateContent, AppScoreContent appScoreContent) {
        this.updateContent = updateContent;
        this.appScoreContent = appScoreContent;
    }

    public UpdateEntity(UpdateContent updateContent, AppScoreContent appScoreContent, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : updateContent, (i & 2) != 0 ? null : appScoreContent);
    }
}
