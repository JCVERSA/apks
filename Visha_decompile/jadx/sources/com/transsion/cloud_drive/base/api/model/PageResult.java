package com.transsion.cloud_drive.base.api.model;

import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B)\u0012\u000e\b\u0003\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0003\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/PageResult;", "T", "", "items", "", "nextMarker", "", "total", "", "(Ljava/util/List;Ljava/lang/String;J)V", "getItems", "()Ljava/util/List;", "getNextMarker", "()Ljava/lang/String;", "getTotal", "()J", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PageResult<T> {
    private final List<T> items;
    private final String nextMarker;
    private final long total;

    public PageResult() {
        this(null, null, 0L, 7, null);
    }

    public final List<T> getItems() {
        return this.items;
    }

    public final String getNextMarker() {
        return this.nextMarker;
    }

    public final long getTotal() {
        return this.total;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PageResult(@v95(name = "items") List<? extends T> list, @v95(name = "next_marker") String str, @v95(name = "total_count") long j) {
        y45.j(list, "items");
        y45.j(str, "nextMarker");
        this.items = list;
        this.nextMarker = str;
        this.total = j;
    }

    public PageResult(List list, String str, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? y71.k() : list, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? 0L : j);
    }
}
