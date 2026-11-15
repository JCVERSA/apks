package com.transsion.search_pugc.bean;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Keep
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BW\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0005¢\u0006\u0004\b\u000e\u0010\u000fJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\bHÆ\u0003J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\n0\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\bHÆ\u0003J\u0011\u0010 \u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0005HÆ\u0003J[\u0010!\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00052\b\b\u0002\u0010\u000b\u001a\u00020\b2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0005HÆ\u0001J\u0006\u0010\"\u001a\u00020#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'HÖ\u0003J\t\u0010(\u001a\u00020#HÖ\u0001J\t\u0010)\u001a\u00020\bHÖ\u0001J\u0016\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020#R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0016\u0010\u000b\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u001e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0013R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0013¨\u0006/"}, d2 = {"Lcom/transsion/search_pugc/bean/UGCSearchResultData;", "Landroid/os/Parcelable;", "pager", "Lcom/transsion/search_pugc/bean/UGCPager;", "_items", "", "Lcom/transsion/search_pugc/bean/SearchResultItem;", "tabId", "", "tabs", "Lcom/transsion/search_pugc/bean/SearchTab;", "ops", "secondTabs", "Lcom/transsion/search_pugc/bean/SecondTab;", "<init>", "(Lcom/transsion/search_pugc/bean/UGCPager;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V", "getPager", "()Lcom/transsion/search_pugc/bean/UGCPager;", "get_items", "()Ljava/util/List;", "getTabId", "()Ljava/lang/String;", "getTabs", "getOps", "getSecondTabs", "items", "getItems", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "dest", "Landroid/os/Parcel;", "flags", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCSearchResultData implements Parcelable {
    public static final Parcelable.Creator<UGCSearchResultData> CREATOR = new a();

    @SerializedName("items")
    private final List<SearchResultItem> _items;

    @SerializedName("ops")
    private final String ops;

    @SerializedName("pager")
    private final UGCPager pager;

    @SerializedName("secondTab")
    private final List<SecondTab> secondTabs;

    @SerializedName("tabId")
    private final String tabId;

    @SerializedName("tabs")
    private final List<SearchTab> tabs;

    public static final class a implements Parcelable.Creator {
        @Override
        public final UGCSearchResultData createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            ArrayList arrayList = null;
            UGCPager uGCPagerCreateFromParcel = parcel.readInt() == 0 ? null : UGCPager.CREATOR.createFromParcel(parcel);
            int i10 = parcel.readInt();
            ArrayList arrayList2 = new ArrayList(i10);
            for (int i11 = 0; i11 != i10; i11++) {
                arrayList2.add(SearchResultItem.CREATOR.createFromParcel(parcel));
            }
            String string = parcel.readString();
            int i12 = parcel.readInt();
            ArrayList arrayList3 = new ArrayList(i12);
            for (int i13 = 0; i13 != i12; i13++) {
                arrayList3.add(SearchTab.CREATOR.createFromParcel(parcel));
            }
            String string2 = parcel.readString();
            if (parcel.readInt() != 0) {
                int i14 = parcel.readInt();
                arrayList = new ArrayList(i14);
                for (int i15 = 0; i15 != i14; i15++) {
                    arrayList.add(SecondTab.CREATOR.createFromParcel(parcel));
                }
            }
            return new UGCSearchResultData(uGCPagerCreateFromParcel, arrayList2, string, arrayList3, string2, arrayList);
        }

        @Override
        public final UGCSearchResultData[] newArray(int i10) {
            return new UGCSearchResultData[i10];
        }
    }

    public UGCSearchResultData(UGCPager uGCPager, List<SearchResultItem> _items, String tabId, List<SearchTab> tabs, String ops, List<SecondTab> list) {
        Intrinsics.h(_items, "_items");
        Intrinsics.h(tabId, "tabId");
        Intrinsics.h(tabs, "tabs");
        Intrinsics.h(ops, "ops");
        this.pager = uGCPager;
        this._items = _items;
        this.tabId = tabId;
        this.tabs = tabs;
        this.ops = ops;
        this.secondTabs = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static UGCSearchResultData copy$default(UGCSearchResultData uGCSearchResultData, UGCPager uGCPager, List list, String str, List list2, String str2, List list3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            uGCPager = uGCSearchResultData.pager;
        }
        if ((i10 & 2) != 0) {
            list = uGCSearchResultData._items;
        }
        List list4 = list;
        if ((i10 & 4) != 0) {
            str = uGCSearchResultData.tabId;
        }
        String str3 = str;
        if ((i10 & 8) != 0) {
            list2 = uGCSearchResultData.tabs;
        }
        List list5 = list2;
        if ((i10 & 16) != 0) {
            str2 = uGCSearchResultData.ops;
        }
        String str4 = str2;
        if ((i10 & 32) != 0) {
            list3 = uGCSearchResultData.secondTabs;
        }
        return uGCSearchResultData.copy(uGCPager, list4, str3, list5, str4, list3);
    }

    public final UGCPager getPager() {
        return this.pager;
    }

    public final List<SearchResultItem> component2() {
        return this._items;
    }

    public final String getTabId() {
        return this.tabId;
    }

    public final List<SearchTab> component4() {
        return this.tabs;
    }

    public final String getOps() {
        return this.ops;
    }

    public final List<SecondTab> component6() {
        return this.secondTabs;
    }

    public final UGCSearchResultData copy(UGCPager pager, List<SearchResultItem> _items, String tabId, List<SearchTab> tabs, String ops, List<SecondTab> secondTabs) {
        Intrinsics.h(_items, "_items");
        Intrinsics.h(tabId, "tabId");
        Intrinsics.h(tabs, "tabs");
        Intrinsics.h(ops, "ops");
        return new UGCSearchResultData(pager, _items, tabId, tabs, ops, secondTabs);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCSearchResultData)) {
            return false;
        }
        UGCSearchResultData uGCSearchResultData = (UGCSearchResultData) other;
        return Intrinsics.c(this.pager, uGCSearchResultData.pager) && Intrinsics.c(this._items, uGCSearchResultData._items) && Intrinsics.c(this.tabId, uGCSearchResultData.tabId) && Intrinsics.c(this.tabs, uGCSearchResultData.tabs) && Intrinsics.c(this.ops, uGCSearchResultData.ops) && Intrinsics.c(this.secondTabs, uGCSearchResultData.secondTabs);
    }

    public final List<SearchResultItem> getItems() {
        SearchResultItem searchResultItem = (SearchResultItem) CollectionsKt.l0(this._items, 0);
        String ops = searchResultItem != null ? searchResultItem.getOps() : null;
        if (ops == null || ops.length() == 0) {
            Iterator<T> it = this._items.iterator();
            while (it.hasNext()) {
                ((SearchResultItem) it.next()).setOps(this.ops);
            }
        }
        return this._items;
    }

    public final String getOps() {
        return this.ops;
    }

    public final UGCPager getPager() {
        return this.pager;
    }

    public final List<SecondTab> getSecondTabs() {
        return this.secondTabs;
    }

    public final String getTabId() {
        return this.tabId;
    }

    public final List<SearchTab> getTabs() {
        return this.tabs;
    }

    public final List<SearchResultItem> get_items() {
        return this._items;
    }

    public int hashCode() {
        UGCPager uGCPager = this.pager;
        int iHashCode = (((((((((uGCPager == null ? 0 : uGCPager.hashCode()) * 31) + this._items.hashCode()) * 31) + this.tabId.hashCode()) * 31) + this.tabs.hashCode()) * 31) + this.ops.hashCode()) * 31;
        List<SecondTab> list = this.secondTabs;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "UGCSearchResultData(pager=" + this.pager + ", _items=" + this._items + ", tabId=" + this.tabId + ", tabs=" + this.tabs + ", ops=" + this.ops + ", secondTabs=" + this.secondTabs + ")";
    }

    @Override
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.h(dest, "dest");
        UGCPager uGCPager = this.pager;
        if (uGCPager == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            uGCPager.writeToParcel(dest, flags);
        }
        List<SearchResultItem> list = this._items;
        dest.writeInt(list.size());
        Iterator<SearchResultItem> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
        dest.writeString(this.tabId);
        List<SearchTab> list2 = this.tabs;
        dest.writeInt(list2.size());
        Iterator<SearchTab> it2 = list2.iterator();
        while (it2.hasNext()) {
            it2.next().writeToParcel(dest, flags);
        }
        dest.writeString(this.ops);
        List<SecondTab> list3 = this.secondTabs;
        if (list3 == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(list3.size());
        Iterator<SecondTab> it3 = list3.iterator();
        while (it3.hasNext()) {
            it3.next().writeToParcel(dest, flags);
        }
    }

    public UGCSearchResultData(UGCPager uGCPager, List list, String str, List list2, String str2, List list3, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : uGCPager, (i10 & 2) != 0 ? CollectionsKt.l() : list, (i10 & 4) != 0 ? "" : str, (i10 & 8) != 0 ? CollectionsKt.l() : list2, (i10 & 16) != 0 ? "" : str2, list3);
    }
}
