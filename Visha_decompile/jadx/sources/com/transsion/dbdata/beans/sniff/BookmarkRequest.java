package com.transsion.dbdata.beans.sniff;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public class BookmarkRequest {

    @SerializedName("poster_keys")
    private EntryKeysBean posterKeys;

    @SerializedName("prefabricate_bookmark_keys")
    private EntryKeysBean prefabricateBookmarkKeys;

    @SerializedName("resolve_entry_keys")
    private EntryKeysBean resolveEntryKeys;

    public static class EntryKeysBean {

        @SerializedName("data_list")
        private List<Bookmark> dataList;

        @SerializedName("sort")
        private int sort;

        @SerializedName("update_time_stamp")
        private Object updateTimeStamp;

        public List<Bookmark> getDataList() {
            return this.dataList;
        }

        public int getSort() {
            return this.sort;
        }

        public Object getUpdateTimeStamp() {
            return this.updateTimeStamp;
        }

        public void setDataList(List<Bookmark> list) {
            this.dataList = list;
        }

        public void setSort(int i) {
            this.sort = i;
        }

        public void setUpdateTimeStamp(Object obj) {
            this.updateTimeStamp = obj;
        }
    }

    public EntryKeysBean getPosterKeys() {
        return this.posterKeys;
    }

    public EntryKeysBean getPrefabricateBookmarkKeys() {
        return this.prefabricateBookmarkKeys;
    }

    public EntryKeysBean getResolveEntryKeys() {
        return this.resolveEntryKeys;
    }

    public void setPosterKeys(EntryKeysBean entryKeysBean) {
        this.posterKeys = entryKeysBean;
    }

    public void setPrefabricateBookmarkKeys(EntryKeysBean entryKeysBean) {
        this.prefabricateBookmarkKeys = entryKeysBean;
    }

    public void setResolveEntryKeys(EntryKeysBean entryKeysBean) {
        this.resolveEntryKeys = entryKeysBean;
    }
}
