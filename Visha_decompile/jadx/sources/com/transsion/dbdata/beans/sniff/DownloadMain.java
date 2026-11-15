package com.transsion.dbdata.beans.sniff;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

@Keep
public class DownloadMain {
    private BtConfInfo bt_conf_info;
    private List<PageItem> website_category_list;

    @Keep
    public static class BtConfInfo {
        public static final int OPEN_BT = 1;
        private int switch_status;

        public static boolean isOpenBT(int i) {
            return i == 1;
        }

        public int getSwitch_status() {
            return this.switch_status;
        }

        public void setSwitch_status(int i) {
            this.switch_status = i;
        }

        public String toString() {
            return "BtConfInfo{switch_status=" + this.switch_status + '}';
        }
    }

    @Keep
    public static class DownloadContent implements Parcelable {
        public static final Parcelable.Creator<DownloadContent> CREATOR = new Parcelable.Creator<DownloadContent>() {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public DownloadContent createFromParcel(Parcel parcel) {
                return new DownloadContent(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override
            public DownloadContent[] newArray(int i) {
                return new DownloadContent[i];
            }
        };
        private String file_name;
        private long file_size;
        private String file_type;
        private String link;
        private String thumbnail;

        public DownloadContent(Parcel parcel) {
            this.thumbnail = parcel.readString();
            this.link = parcel.readString();
            this.file_name = parcel.readString();
            this.file_size = parcel.readLong();
            this.file_type = parcel.readString();
        }

        @Override
        public int describeContents() {
            return 0;
        }

        public String getFile_name() {
            return this.file_name;
        }

        public long getFile_size() {
            return this.file_size;
        }

        public String getFile_type() {
            return this.file_type;
        }

        public String getLink() {
            return this.link;
        }

        public String getThumbnail() {
            return this.thumbnail;
        }

        public void setFile_name(String str) {
            this.file_name = str;
        }

        public void setFile_size(long j) {
            this.file_size = j;
        }

        public void setFile_type(String str) {
            this.file_type = str;
        }

        public void setLink(String str) {
            this.link = str;
        }

        public void setThumbnail(String str) {
            this.thumbnail = str;
        }

        public String toString() {
            return "DownloadContent{thumbnail='" + this.thumbnail + "', link='" + this.link + "', file_name='" + this.file_name + "', file_size=" + this.file_size + ", file_type='" + this.file_type + "'}";
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeString(this.thumbnail);
            parcel.writeString(this.link);
            parcel.writeString(this.file_name);
            parcel.writeLong(this.file_size);
            parcel.writeString(this.file_type);
        }
    }

    @Keep
    public static class ItemData {
        public static final int IS_BT = 1;
        public static final String WHATSAPP_NAME = "whatsapppaikkamerkki";
        private int channel;
        private String icon;
        private int id;
        private int is_bt;
        private int sort;
        private int type;
        private ArrayList<DownloadContent> website_download_contents;
        private String website_link;
        private String website_name;

        public static boolean isBt(int i) {
            return i == 1;
        }

        public int getChannel() {
            return this.channel;
        }

        public String getIcon() {
            return this.icon;
        }

        public int getId() {
            return this.id;
        }

        public int getIs_bt() {
            return this.is_bt;
        }

        public int getSort() {
            return this.sort;
        }

        public int getType() {
            return this.type;
        }

        public ArrayList<DownloadContent> getWebsite_download_contents() {
            return this.website_download_contents;
        }

        public String getWebsite_link() {
            return this.website_link;
        }

        public String getWebsite_name() {
            return this.website_name;
        }

        public boolean isWhatsApp() {
            return !TextUtils.isEmpty(this.website_name) && this.website_name.equalsIgnoreCase(WHATSAPP_NAME);
        }

        public void setChannel(int i) {
            this.channel = i;
        }

        public void setIcon(String str) {
            this.icon = str;
        }

        public void setId(int i) {
            this.id = i;
        }

        public void setIs_bt(int i) {
            this.is_bt = i;
        }

        public void setSort(int i) {
            this.sort = i;
        }

        public void setType(int i) {
            this.type = i;
        }

        public void setWebsite_download_contents(ArrayList<DownloadContent> arrayList) {
            this.website_download_contents = arrayList;
        }

        public void setWebsite_link(String str) {
            this.website_link = str;
        }

        public void setWebsite_name(String str) {
            this.website_name = str;
        }

        public String toString() {
            return "ItemData{id=" + this.id + ", sort=" + this.sort + ", icon='" + this.icon + "', type=" + this.type + ", channel=" + this.channel + ", website_name='" + this.website_name + "', website_link='" + this.website_link + "', is_bt=" + this.is_bt + ", website_download_contents=" + this.website_download_contents + '}';
        }
    }

    @Keep
    public static class PageItem {
        public static final int DOWNLOAD_TYPE_ID = 5;
        public static final int HOT_OLD_TYPE_ID = 7;
        public static final int HOT_TYPE_ID = 20;
        public static final int ITEM_TYPE_BOOKMARK = 1;
        public static final int ITEM_TYPE_CLOUD_SEARCH_HEADER = 1003;
        public static final int ITEM_TYPE_ENTER = 0;
        public static final int ITEM_TYPE_RECOMMEND = 2;
        public static final int MOVIES_TYPE_ID = 3;
        public static final int OTHERS_TYPE_ID = 4;
        public static final int POPULAR_MUSIC_TYPE_ID = 6;
        public static final int SOCIAL_MEDIA_TYPE_ID = 1;
        private int category_id;
        private String category_name;
        private int category_sort;
        private List<ItemData> data_list;
        private List<Bookmark> data_remark_list;
        private int website_type;
        private int website_type_switch_status;

        public int getCategory_id() {
            return this.category_id;
        }

        public String getCategory_name() {
            return this.category_name;
        }

        public int getCategory_sort() {
            return this.category_sort;
        }

        public List<ItemData> getData_list() {
            return this.data_list;
        }

        public List<Bookmark> getData_remark_list() {
            return this.data_remark_list;
        }

        public int getWebsite_type() {
            return this.website_type;
        }

        public int getWebsite_type_switch_status() {
            return this.website_type_switch_status;
        }

        public void setCategory_id(int i) {
            this.category_id = i;
        }

        public void setCategory_name(String str) {
            this.category_name = str;
        }

        public void setCategory_sort(int i) {
            this.category_sort = i;
        }

        public void setData_list(List<ItemData> list) {
            this.data_list = list;
        }

        public void setData_remark_list(List<Bookmark> list) {
            this.data_remark_list = list;
        }

        public void setWebsite_type(int i) {
            this.website_type = i;
        }

        public void setWebsite_type_switch_status(int i) {
            this.website_type_switch_status = i;
        }

        public String toString() {
            return "PageItem{category_id=" + this.category_id + ", category_name='" + this.category_name + "', category_sort=" + this.category_sort + ", website_type=" + this.website_type + ", website_type_switch_status=" + this.website_type_switch_status + ", data_list=" + this.data_list + '}';
        }
    }

    public BtConfInfo getBt_conf_info() {
        return this.bt_conf_info;
    }

    public List<PageItem> getWebsite_category_list() {
        return this.website_category_list;
    }

    public void setBt_conf_info(BtConfInfo btConfInfo) {
        this.bt_conf_info = btConfInfo;
    }

    public void setWebsite_category_list(List<PageItem> list) {
        this.website_category_list = list;
    }

    public String toString() {
        return "DownloadMain{bt_conf_info=" + this.bt_conf_info + ", website_category_list=" + this.website_category_list + '}';
    }
}
