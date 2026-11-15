package com.transsion.dbdata.source.data.repository;

import android.net.Uri;
import androidx.annotation.Keep;
import com.transsion.dbdata.utils.SortUtil;
import defpackage.oa1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Keep
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0019BY\b\u0002\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rR\u001b\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0013\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001a"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "", "projection", "", "", "selection", "selectionArgs", "sortOrder", "limitedCount", "", "uri", "Landroid/net/Uri;", MethodDecl.initName, "([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V", "getProjection", "()[Ljava/lang/String;", "[Ljava/lang/String;", "getSelection", "()Ljava/lang/String;", "getSelectionArgs", "getSortOrder", "getLimitedCount", "()I", "getUri", "()Landroid/net/Uri;", "Builder", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class QueryBundle {
    private final int limitedCount;
    private final String[] projection;
    private final String selection;
    private final String[] selectionArgs;
    private final String sortOrder;
    private final Uri uri;

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0006J\u001b\u0010\u0012\u001a\u00020\u00002\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010\u0017\u001a\u00020\u0018R\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;", "", MethodDecl.initName, "()V", "projection", "", "", "[Ljava/lang/String;", "selection", "selectionArgs", "sortOrder", "limitedCount", "", "uri", "Landroid/net/Uri;", "setProjection", "([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;", "setSelection", "setSelectionArgs", "args", "setSortOrder", "setLimitedCount", "setUri", "build", "Lcom/transsion/dbdata/source/data/repository/QueryBundle;", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder {
        private String[] projection;
        private String selection;
        private String[] selectionArgs;
        private Uri uri;
        private String sortOrder = SortUtil.j(false);
        private int limitedCount = oa1.e();

        public final QueryBundle build() {
            return new QueryBundle(this.projection, this.selection, this.selectionArgs, this.sortOrder, this.limitedCount, this.uri, null);
        }

        public final Builder setLimitedCount(int limitedCount) {
            this.limitedCount = limitedCount;
            return this;
        }

        public final Builder setProjection(String[] projection) {
            y45.j(projection, "projection");
            this.projection = projection;
            return this;
        }

        public final Builder setSelection(String selection) {
            this.selection = selection;
            return this;
        }

        public final Builder setSelectionArgs(String[] args) {
            this.selectionArgs = args;
            return this;
        }

        public final Builder setSortOrder(String sortOrder) {
            this.sortOrder = sortOrder;
            return this;
        }

        public final Builder setUri(Uri uri) {
            this.uri = uri;
            return this;
        }
    }

    public QueryBundle(String[] strArr, String str, String[] strArr2, String str2, int i, Uri uri, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr, str, strArr2, str2, i, uri);
    }

    public final int getLimitedCount() {
        return this.limitedCount;
    }

    public final String[] getProjection() {
        return this.projection;
    }

    public final String getSelection() {
        return this.selection;
    }

    public final String[] getSelectionArgs() {
        return this.selectionArgs;
    }

    public final String getSortOrder() {
        return this.sortOrder;
    }

    public final Uri getUri() {
        return this.uri;
    }

    private QueryBundle(String[] strArr, String str, String[] strArr2, String str2, int i, Uri uri) {
        this.projection = strArr;
        this.selection = str;
        this.selectionArgs = strArr2;
        this.sortOrder = str2;
        this.limitedCount = i;
        this.uri = uri;
    }

    public QueryBundle(String[] strArr, String str, String[] strArr2, String str2, int i, Uri uri, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : strArr, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : strArr2, (i2 & 8) != 0 ? null : str2, i, (i2 & 32) != 0 ? null : uri);
    }
}
