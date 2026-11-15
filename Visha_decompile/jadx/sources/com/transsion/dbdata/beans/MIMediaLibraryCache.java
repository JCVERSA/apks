package com.transsion.dbdata.beans;

import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import java.util.ArrayList;
import java.util.List;

@Entity(tableName = "mi_media_library_cache")
public class MIMediaLibraryCache {

    @ColumnInfo(name = "cache_time")
    private long mCacheTime;

    @ColumnInfo(name = "media_library_collect_flag")
    private Boolean mMediaLibraryCollectFlag;

    @NonNull
    @PrimaryKey
    @ColumnInfo(name = "media_library_id")
    private String mMediaLibraryId;

    @ColumnInfo(name = "media_library_name")
    private String mMediaLibraryName;

    @ColumnInfo(name = "media_library_status")
    private Integer mMediaLibraryStatus;

    @ColumnInfo(name = "video_list_json")
    private String mVideoListJson;

    @ColumnInfo(name = "virtual_person_name")
    private String mVirtualPersonName;

    @ColumnInfo(name = "virtual_person_photo")
    private String mVirtualPersonPhoto;

    public MIMediaLibraryCache() {
        this.mMediaLibraryId = "";
        this.mMediaLibraryName = "";
        this.mMediaLibraryCollectFlag = Boolean.FALSE;
        this.mVirtualPersonName = "";
        this.mVirtualPersonPhoto = "";
        this.mMediaLibraryStatus = 0;
        this.mVideoListJson = "";
        this.mCacheTime = System.currentTimeMillis();
    }

    private static String convertVideoListToJson(List<MIMediaVideoData> list) {
        if (list != null && !list.isEmpty()) {
            try {
                return new Gson().toJson(list);
            } catch (Exception unused) {
            }
        }
        return "";
    }

    public static MIMediaLibraryCache fromMIMediaLibraryData(MIMediaLibraryData mIMediaLibraryData) {
        if (mIMediaLibraryData == null) {
            return new MIMediaLibraryCache();
        }
        MIMediaLibraryCache mIMediaLibraryCache = new MIMediaLibraryCache();
        mIMediaLibraryCache.setMediaLibraryId(mIMediaLibraryData.getMediaLibraryId());
        mIMediaLibraryCache.setMediaLibraryName(mIMediaLibraryData.getMediaLibraryName());
        mIMediaLibraryCache.setMediaLibraryCollectFlag(Boolean.valueOf(mIMediaLibraryData.getMediaLibraryCollectFlag()));
        mIMediaLibraryCache.setVirtualPersonName(mIMediaLibraryData.getVirtualPersonName());
        mIMediaLibraryCache.setVirtualPersonPhoto(mIMediaLibraryData.getVirtualPersonPhoto());
        mIMediaLibraryCache.setMediaLibraryStatus(Integer.valueOf(mIMediaLibraryData.getMediaLibraryStatus()));
        mIMediaLibraryCache.setVideoListJson(convertVideoListToJson(mIMediaLibraryData.getVideoList()));
        return mIMediaLibraryCache;
    }

    private List<MIMediaVideoData> parseVideoListFromJson(String str) {
        if (str == null || str.trim().isEmpty()) {
            return new ArrayList();
        }
        try {
            List<MIMediaVideoData> list = (List) new Gson().fromJson(str, new TypeToken<List<MIMediaVideoData>>() {
            }.getType());
            return list != null ? list : new ArrayList();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public long getCacheTime() {
        return this.mCacheTime;
    }

    public Boolean getMediaLibraryCollectFlag() {
        return this.mMediaLibraryCollectFlag;
    }

    public String getMediaLibraryId() {
        return this.mMediaLibraryId;
    }

    public String getMediaLibraryName() {
        return this.mMediaLibraryName;
    }

    public Integer getMediaLibraryStatus() {
        return this.mMediaLibraryStatus;
    }

    public String getVideoListJson() {
        return this.mVideoListJson;
    }

    public String getVirtualPersonName() {
        return this.mVirtualPersonName;
    }

    public String getVirtualPersonPhoto() {
        return this.mVirtualPersonPhoto;
    }

    public void setCacheTime(long j) {
        this.mCacheTime = j;
    }

    public void setMediaLibraryCollectFlag(Boolean bool) {
        this.mMediaLibraryCollectFlag = bool;
    }

    public void setMediaLibraryId(String str) {
        this.mMediaLibraryId = str;
    }

    public void setMediaLibraryName(String str) {
        this.mMediaLibraryName = str;
    }

    public void setMediaLibraryStatus(Integer num) {
        this.mMediaLibraryStatus = num;
    }

    public void setVideoListJson(String str) {
        this.mVideoListJson = str;
    }

    public void setVirtualPersonName(String str) {
        this.mVirtualPersonName = str;
    }

    public void setVirtualPersonPhoto(String str) {
        this.mVirtualPersonPhoto = str;
    }

    public MIMediaLibraryData toMIMediaLibraryData() {
        MIMediaLibraryData mIMediaLibraryData = new MIMediaLibraryData();
        mIMediaLibraryData.setMediaLibraryId(this.mMediaLibraryId);
        mIMediaLibraryData.setMediaLibraryName(this.mMediaLibraryName);
        mIMediaLibraryData.setMediaLibraryCollectFlag(this.mMediaLibraryCollectFlag.booleanValue());
        mIMediaLibraryData.setVirtualPersonName(this.mVirtualPersonName);
        mIMediaLibraryData.setVirtualPersonPhoto(this.mVirtualPersonPhoto);
        mIMediaLibraryData.setMediaLibraryStatus(this.mMediaLibraryStatus.intValue());
        mIMediaLibraryData.setVideoList(parseVideoListFromJson(this.mVideoListJson));
        return mIMediaLibraryData;
    }

    public String toString() {
        return "MIMediaLibraryCache{mMediaLibraryId='" + this.mMediaLibraryId + "', mMediaLibraryName='" + this.mMediaLibraryName + "', mMediaLibraryCollectFlag=" + this.mMediaLibraryCollectFlag + ", mVirtualPersonName='" + this.mVirtualPersonName + "', mVirtualPersonPhoto='" + this.mVirtualPersonPhoto + "', mMediaLibraryStatus=" + this.mMediaLibraryStatus + ", mVideoListJson='" + this.mVideoListJson + "', mCacheTime=" + this.mCacheTime + '}';
    }

    public MIMediaLibraryCache(String str, String str2, Boolean bool, String str3, String str4, Integer num, String str5) {
        this.mMediaLibraryId = str == null ? "" : str;
        this.mMediaLibraryName = str2 == null ? "" : str2;
        this.mMediaLibraryCollectFlag = Boolean.valueOf(bool != null ? bool.booleanValue() : false);
        this.mVirtualPersonName = str3 == null ? "" : str3;
        this.mVirtualPersonPhoto = str4 == null ? "" : str4;
        this.mMediaLibraryStatus = Integer.valueOf(num != null ? num.intValue() : 0);
        this.mVideoListJson = str5 == null ? "" : str5;
        this.mCacheTime = System.currentTimeMillis();
    }
}
