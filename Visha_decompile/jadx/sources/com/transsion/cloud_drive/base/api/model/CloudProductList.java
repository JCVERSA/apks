package com.transsion.cloud_drive.base.api.model;

import defpackage.ba5;
import defpackage.v95;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@ba5(generateAdapter = true)
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u000e\b\u0003\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\b\u0003\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0006J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J)\u0010\f\u001a\u00020\u00002\u000e\b\u0003\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0003\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/CloudProductList;", "", "subscribedList", "", "Lcom/transsion/cloud_drive/base/api/model/CloudProductModel;", "unSubscribedList", "(Ljava/util/List;Ljava/util/List;)V", "getSubscribedList", "()Ljava/util/List;", "getUnSubscribedList", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CloudProductList {
    private final List<CloudProductModel> subscribedList;
    private final List<CloudProductModel> unSubscribedList;

    /* JADX WARN: Multi-variable type inference failed */
    public CloudProductList() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CloudProductList copy$default(CloudProductList cloudProductList, List list, List list2, int i, Object obj) {
        if ((i & 1) != 0) {
            list = cloudProductList.subscribedList;
        }
        if ((i & 2) != 0) {
            list2 = cloudProductList.unSubscribedList;
        }
        return cloudProductList.copy(list, list2);
    }

    public final List<CloudProductModel> component1() {
        return this.subscribedList;
    }

    public final List<CloudProductModel> component2() {
        return this.unSubscribedList;
    }

    public final CloudProductList copy(@v95(name = "subscribed") List<CloudProductModel> subscribedList, @v95(name = "noSubscribed") List<CloudProductModel> unSubscribedList) {
        y45.j(subscribedList, "subscribedList");
        y45.j(unSubscribedList, "unSubscribedList");
        return new CloudProductList(subscribedList, unSubscribedList);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudProductList)) {
            return false;
        }
        CloudProductList cloudProductList = (CloudProductList) other;
        return y45.e(this.subscribedList, cloudProductList.subscribedList) && y45.e(this.unSubscribedList, cloudProductList.unSubscribedList);
    }

    public final List<CloudProductModel> getSubscribedList() {
        return this.subscribedList;
    }

    public final List<CloudProductModel> getUnSubscribedList() {
        return this.unSubscribedList;
    }

    public int hashCode() {
        return (this.subscribedList.hashCode() * 31) + this.unSubscribedList.hashCode();
    }

    public String toString() {
        return "CloudProductList(subscribedList=" + this.subscribedList + ", unSubscribedList=" + this.unSubscribedList + ")";
    }

    public CloudProductList(@v95(name = "subscribed") List<CloudProductModel> list, @v95(name = "noSubscribed") List<CloudProductModel> list2) {
        y45.j(list, "subscribedList");
        y45.j(list2, "unSubscribedList");
        this.subscribedList = list;
        this.unSubscribedList = list2;
    }

    public CloudProductList(List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? y71.k() : list, (i & 2) != 0 ? y71.k() : list2);
    }
}
