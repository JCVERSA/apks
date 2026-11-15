package com.transsion.dbdata.beans.media;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.beans.mimedia.MIMediaDataUtils;
import com.transsion.dbdata.utils.LoadDataUtils;
import com.transsion.eventbus.LiveEventBus;
import defpackage.fi1;
import defpackage.hsb;
import defpackage.ls1;
import defpackage.r0a;
import defpackage.ye6;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class PlayListData {
    private static volatile PlayListData INSTANCE = null;
    private static final String TAG = "PlayListData";
    private String mPlayListTitle;
    private MediaItem mPlayMediaItem;
    private MediaItem mPlayMediaItemShuffle;
    private int mPlayIndex = -1;
    private int mPlayIndexShuffle = -1;
    public ArrayList<MediaItem> mCurrentPlayList = new ArrayList<>();
    private ArrayList<MediaItem> mLastPlayList = new ArrayList<>();
    private String mCurrentListSource = "";
    private String mCurrentListSourceShuffle = "";
    private String mLastListSource = "";
    private boolean mIsManualSort = false;
    private boolean isRestored = false;
    private boolean isRestoredShuffle = false;
    private boolean mRepeat = false;
    public ArrayList<MediaItem> mShuffleList = new ArrayList<>();

    public interface RemoveListener {
        void onRemoveResult(MediaItem mediaItem);
    }

    public boolean lambda$setPlayListInternal$0(List<MediaItem> list, MediaItem mediaItem) {
        if (mediaItem == null) {
            return false;
        }
        for (MediaItem mediaItem2 : list) {
            if (mediaItem2 == mediaItem || (mediaItem2 != null && !r0a.g(mediaItem2.data) && mediaItem2.data.equals(mediaItem.data))) {
                return true;
            }
        }
        return false;
    }

    public static PlayListData getInstance() {
        if (INSTANCE == null) {
            synchronized (PlayListData.class) {
                try {
                    if (INSTANCE == null) {
                        INSTANCE = new PlayListData();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return INSTANCE;
    }

    private MediaItem handlePlayback(boolean z, boolean z2) {
        if (this.mCurrentPlayList.size() == 0) {
            return null;
        }
        int i = 0;
        if (hsb.b() == 4) {
            if (this.mShuffleList.isEmpty()) {
                return null;
            }
            int size = this.mShuffleList.size();
            int iPlayIndex = playIndex() + (z ? 1 : -1);
            if (iPlayIndex < 0) {
                i = size - 1;
            } else if (iPlayIndex < size) {
                i = iPlayIndex;
            }
            if (!z2) {
                return this.mShuffleList.get(i);
            }
            MediaItem mediaItem = this.mShuffleList.get(i);
            this.mPlayMediaItemShuffle = mediaItem;
            return mediaItem;
        }
        int size2 = this.mCurrentPlayList.size();
        int iPlayIndex2 = playIndex() + (z ? 1 : -1);
        if (iPlayIndex2 < 0) {
            if (!this.mRepeat) {
                return null;
            }
            i = size2 - 1;
        } else if (iPlayIndex2 < size2) {
            i = iPlayIndex2;
        } else if (!this.mRepeat) {
            return null;
        }
        if (size2 == 0 || i < 0) {
            return null;
        }
        if (!z2) {
            return this.mCurrentPlayList.get(i);
        }
        MediaItem mediaItem2 = this.mCurrentPlayList.get(i);
        this.mPlayMediaItem = mediaItem2;
        return mediaItem2;
    }

    private boolean isDiffMediaItem(MediaItem mediaItem, MediaItem mediaItem2) {
        if (LoadDataUtils.m(mediaItem.id)) {
            return (mediaItem2.id == mediaItem.id || TextUtils.equals(mediaItem.data, this.mPlayMediaItem.data)) ? false : true;
        }
        return !TextUtils.equals(mediaItem.data, this.mPlayMediaItem.data);
    }

    public boolean lambda$setPlayListInternal$1(MediaItem mediaItem) {
        return !lambda$setPlayListInternal$0(this.mCurrentPlayList, mediaItem);
    }

    public static boolean lambda$setPlayListInternal$2(MediaItem mediaItem) {
        return r0a.g(mediaItem.data) || !new File(mediaItem.data).exists();
    }

    private void setPlayListInternal(final ArrayList<MediaItem> arrayList, String str) {
        if (arrayList == null) {
            LogUtils.j(TAG, "setPlayListInternal playList is null");
            return;
        }
        LogUtils.j(TAG, "setPlayList: playList=" + arrayList.size() + ", listSource=" + str + ", currentPlayList=" + this.mCurrentPlayList.size() + ", lastPlayList=" + this.mLastPlayList.size() + ", currentListSource=" + this.mCurrentListSource + ", lastListSource=" + this.mLastListSource);
        if (hsb.b() != 4 && !this.mCurrentPlayList.isEmpty() && !r0a.g(this.mCurrentListSource) && !this.mCurrentListSource.equalsIgnoreCase(str)) {
            this.mLastPlayList.clear();
            this.mLastPlayList.addAll(this.mCurrentPlayList);
            this.mLastListSource = this.mCurrentListSource;
        }
        if (!this.mIsManualSort || !this.mCurrentListSource.equalsIgnoreCase(str) || this.mCurrentPlayList.isEmpty() || arrayList.isEmpty()) {
            this.mCurrentListSource = str;
            this.mCurrentPlayList.clear();
            this.mCurrentPlayList.addAll(arrayList);
        } else {
            LogUtils.j(TAG, "setPlayList same source,mCurrentPlayList.size()=" + this.mCurrentPlayList.size());
            List list = (List) this.mCurrentPlayList.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return this.a.lambda$setPlayListInternal$0(arrayList, (MediaItem) obj);
                }
            }).collect(Collectors.toList());
            List list2 = (List) arrayList.stream().filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return this.a.lambda$setPlayListInternal$1((MediaItem) obj);
                }
            }).collect(Collectors.toList());
            this.mCurrentPlayList.clear();
            this.mCurrentPlayList.addAll(list);
            this.mCurrentPlayList.addAll(list2);
            this.mCurrentPlayList.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return PlayListData.lambda$setPlayListInternal$2((MediaItem) obj);
                }
            });
            this.mIsManualSort = false;
        }
        ls1.a(this.mCurrentPlayList);
        ye6.b(this.mCurrentPlayList);
        setPlayMediaItemNotSyncShuffle(this.mPlayMediaItem);
        LogUtils.j(TAG, "setPlayList mCurrentPlayList.size()=" + this.mCurrentPlayList.size(), "Current Media: " + this.mPlayMediaItem);
        LiveEventBus.b().d("video_play_list_change").postValue(0);
        try {
            MMKV.p().w("v_playlist", fi1.e(this.mCurrentPlayList));
            MMKV.p().w("v_playlist_source", str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setShuffleList(ArrayList<MediaItem> arrayList, String str, boolean z) {
        if (arrayList == null) {
            return;
        }
        if (hsb.b() == 4 && !this.mShuffleList.isEmpty() && !r0a.g(this.mCurrentListSource) && !this.mCurrentListSource.equalsIgnoreCase(str)) {
            this.mLastPlayList.clear();
            this.mLastPlayList.addAll(this.mShuffleList);
            this.mLastListSource = this.mCurrentListSource;
        }
        this.mShuffleList.clear();
        this.mShuffleList.addAll(arrayList);
        ls1.a(this.mShuffleList);
        ye6.b(this.mShuffleList);
        if (z) {
            Collections.shuffle(this.mShuffleList);
        }
        setPlayMediaItemShuffle(this.mPlayMediaItemShuffle);
        try {
            MMKV.p().w("v_shuffle_playlist", fi1.e(this.mShuffleList));
            MMKV.p().w("v_playlist_shuffle_source", str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void clearCurrentPlayList() {
        setPlayList(new ArrayList<>(), "");
        setPlayMediaItem((MediaItem) null);
    }

    public void filterData() {
        try {
            filterData(this.mShuffleList);
            filterData(this.mCurrentPlayList);
        } catch (Exception e) {
            Log.e(TAG, "filterData: " + e.getMessage());
        }
    }

    public ArrayList<MediaItem> getLastPlayList() {
        return this.mLastPlayList;
    }

    public String getListSource() {
        return this.mCurrentListSource;
    }

    public MediaItem getNext() {
        if (hsb.b() == 4) {
            if (this.mShuffleList.size() <= 1) {
                return null;
            }
            try {
                int size = this.mShuffleList.size();
                int iPlayIndex = playIndex() + 1;
                return iPlayIndex >= size ? this.mShuffleList.get(0) : this.mShuffleList.get(iPlayIndex);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        if (this.mCurrentPlayList.size() <= 1) {
            return null;
        }
        try {
            int size2 = this.mCurrentPlayList.size();
            int iPlayIndex2 = playIndex() + 1;
            return iPlayIndex2 >= size2 ? this.mCurrentPlayList.get(0) : this.mCurrentPlayList.get(iPlayIndex2);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public ArrayList<MediaItem> getPlayList() {
        return hsb.b() == 4 ? this.mShuffleList : this.mCurrentPlayList;
    }

    public int getPlayListFlag() {
        int i = 0;
        if (!r0a.g(this.mCurrentListSource)) {
            String[] strArrSplit = this.mCurrentListSource.split("_");
            try {
                i = Integer.parseInt(strArrSplit.length > 0 ? strArrSplit[0] : this.mCurrentListSource);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        LogUtils.j(TAG, "play list current flag:" + i);
        return i;
    }

    public String getPlayListTitle() {
        return this.mPlayListTitle;
    }

    public MediaItem handleMediaItem(boolean z) {
        if (hsb.b() == 4) {
            if (this.mShuffleList.size() == 0) {
                return null;
            }
            int size = this.mShuffleList.size();
            int iPlayIndex = playIndex() + (z ? 1 : -1);
            if (iPlayIndex >= 0 && iPlayIndex < size) {
                return this.mShuffleList.get(iPlayIndex);
            }
            return null;
        }
        if (this.mCurrentPlayList.size() == 0) {
            return null;
        }
        int size2 = this.mCurrentPlayList.size();
        int iPlayIndex2 = playIndex() + (z ? 1 : -1);
        if (iPlayIndex2 >= 0 && iPlayIndex2 < size2) {
            return this.mCurrentPlayList.get(iPlayIndex2);
        }
        return null;
    }

    public boolean hasNext() {
        return handlePlayback(true, false) != null;
    }

    public boolean hasNextInList() {
        return handleMediaItem(true) != null;
    }

    public boolean hasPrevious() {
        return handlePlayback(false, false) != null;
    }

    public boolean hasPreviousInList() {
        return handleMediaItem(false) != null;
    }

    public boolean isCurrentListEmpty() {
        if (hsb.b() == 4) {
            ArrayList<MediaItem> arrayList = this.mShuffleList;
            return arrayList == null || arrayList.size() == 0;
        }
        ArrayList<MediaItem> arrayList2 = this.mCurrentPlayList;
        return arrayList2 == null || arrayList2.size() == 0;
    }

    public boolean isManualSort() {
        return this.mIsManualSort;
    }

    public MediaItem next() {
        return handlePlayback(true, false);
    }

    public int playIndex() {
        if (this.mPlayIndex == -1) {
            this.mPlayIndex = queryIndex(this.mPlayMediaItem);
        }
        if (this.mPlayIndexShuffle == -1) {
            this.mPlayIndexShuffle = queryIndex(this.mPlayMediaItemShuffle);
        }
        return hsb.b() == 4 ? this.mPlayIndexShuffle : this.mPlayIndex;
    }

    public MediaItem playMediaItem() {
        MediaItem mediaItem = new MediaItem();
        if (hsb.b() == 4) {
            MediaItem.copy(this.mPlayMediaItemShuffle, mediaItem);
            return mediaItem;
        }
        MediaItem.copy(this.mPlayMediaItem, mediaItem);
        return mediaItem;
    }

    public MediaItem playNext() {
        return handlePlayback(true, true);
    }

    public MediaItem playPrevious() {
        return handlePlayback(false, true);
    }

    public MediaItem pre() {
        return handlePlayback(false, false);
    }

    public int queryIndex(MediaItem mediaItem) {
        if (mediaItem == null) {
            return 0;
        }
        return hsb.b() == 4 ? queryIndex(mediaItem, this.mShuffleList) : queryIndex(mediaItem, this.mCurrentPlayList);
    }

    public int queryNormalIndex(MediaItem mediaItem) {
        return queryIndex(mediaItem, this.mCurrentPlayList);
    }

    public int queryShuffleIndex(MediaItem mediaItem) {
        return queryIndex(mediaItem, this.mShuffleList);
    }

    public synchronized PlayListData removeMediaItem(MediaItem mediaItem, RemoveListener removeListener) {
        int size;
        try {
            removeMediaItemShuffle(mediaItem, removeListener);
            if (mediaItem == null) {
                return this;
            }
            this.mPlayIndex = queryNormalIndex(this.mPlayMediaItem);
            ArrayList<MediaItem> arrayList = this.mCurrentPlayList;
            if (arrayList == null || arrayList.size() <= 0) {
                size = 0;
            } else {
                int size2 = this.mCurrentPlayList.size();
                for (int i = 0; i < this.mCurrentPlayList.size(); i++) {
                    if (mediaItem.equals(this.mCurrentPlayList.get(i))) {
                        if (this.mPlayMediaItem == mediaItem) {
                            this.mPlayIndex = i;
                        }
                        this.mCurrentPlayList.remove(i);
                        break;
                    }
                }
                size = size2 - this.mCurrentPlayList.size();
            }
            ArrayList<MediaItem> arrayList2 = this.mCurrentPlayList;
            if (arrayList2 != null && arrayList2.size() != 0) {
                if (this.mPlayMediaItem == mediaItem) {
                    LogUtils.j(TAG, "removeMediaItem: same to current play item", "current play item:" + this.mPlayMediaItem, "remove item:" + mediaItem);
                    this.mPlayMediaItem = null;
                    if (this.mPlayIndex >= (this.mCurrentPlayList.size() - 1) + size) {
                        this.mPlayIndex = 0;
                    }
                    int i2 = this.mPlayIndex;
                    if (i2 >= 0 && i2 < this.mCurrentPlayList.size()) {
                        setPlayMediaItemNotSyncShuffle(this.mCurrentPlayList.get(this.mPlayIndex));
                    }
                    if (removeListener != null && hsb.b() != 4) {
                        removeListener.onRemoveResult(this.mPlayMediaItem);
                    }
                } else {
                    LogUtils.j(TAG, "removeMediaItem: not same to current play item", "current play item:" + this.mPlayMediaItem, "remove item:" + mediaItem);
                    this.mPlayIndex = queryNormalIndex(this.mPlayMediaItem);
                }
                LogUtils.j(TAG, "removeMediaItem: ", "current play item:" + this.mPlayMediaItem, "play index:" + this.mPlayIndex);
                LiveEventBus.b().d("video_play_list_change").postValue(0);
                MMKV.p().w("v_playlist", fi1.e(this.mCurrentPlayList));
                return this;
            }
            LiveEventBus.b().d("video_play_list_change").postValue(0);
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized PlayListData removeMediaItemShuffle(MediaItem mediaItem, RemoveListener removeListener) {
        int size;
        if (mediaItem == null) {
            return this;
        }
        try {
            this.mPlayIndexShuffle = queryShuffleIndex(this.mPlayMediaItemShuffle);
            ArrayList<MediaItem> arrayList = this.mShuffleList;
            if (arrayList == null || arrayList.size() <= 0) {
                size = 0;
            } else {
                int size2 = this.mShuffleList.size();
                for (int i = 0; i < this.mShuffleList.size(); i++) {
                    if (mediaItem.equals(this.mShuffleList.get(i))) {
                        if (this.mPlayMediaItemShuffle == mediaItem) {
                            this.mPlayIndexShuffle = i;
                        }
                        this.mShuffleList.remove(i);
                        break;
                    }
                }
                size = size2 - this.mShuffleList.size();
            }
            ArrayList<MediaItem> arrayList2 = this.mShuffleList;
            if (arrayList2 != null && arrayList2.size() != 0) {
                MediaItem mediaItem2 = this.mPlayMediaItemShuffle;
                if (mediaItem2 == mediaItem) {
                    this.mPlayMediaItemShuffle = null;
                    if (this.mPlayIndexShuffle >= (this.mShuffleList.size() - 1) + size) {
                        this.mPlayIndexShuffle = 0;
                    }
                    int i2 = this.mPlayIndexShuffle;
                    if (i2 >= 0 && i2 < this.mShuffleList.size()) {
                        setPlayMediaItemShuffle(this.mShuffleList.get(this.mPlayIndexShuffle));
                    }
                    if (removeListener != null && hsb.b() == 4) {
                        removeListener.onRemoveResult(this.mPlayMediaItemShuffle);
                    }
                } else {
                    this.mPlayIndexShuffle = queryShuffleIndex(mediaItem2);
                }
                MMKV.p().w("v_shuffle_playlist", fi1.e(this.mShuffleList));
                return this;
            }
            LiveEventBus.b().d("video_play_list_change").postValue(0);
            return this;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void restore(ArrayList<MediaItem> arrayList) {
        if (this.isRestored) {
            Log.d(TAG, "video play list has restored,do not need update");
            return;
        }
        String strL = MMKV.p().l("v_playlist");
        Log.d(TAG, "video play list history restore: " + strL);
        if (TextUtils.isEmpty(strL)) {
            return;
        }
        ArrayList<MediaItem> arrayList2 = (ArrayList) fi1.c(strL, new TypeToken<List<MediaItem>>() {
        }.getType());
        ArrayList<MediaItem> arrayList3 = new ArrayList<>();
        if (arrayList2 != null && arrayList2.size() > 0) {
            for (MediaItem mediaItem : arrayList2) {
                if (!r0a.g(mediaItem.data) && new File(mediaItem.data).exists()) {
                    Uri uri = mediaItem.uri;
                    if (uri == null || r0a.g(uri.toString())) {
                        mediaItem.uri = mediaItem.getUri();
                    }
                    for (MediaItem mediaItem2 : arrayList) {
                        if (!r0a.g(mediaItem2.data) && mediaItem.data.equals(mediaItem2.data)) {
                            mediaItem.setUri(mediaItem2.uri);
                        }
                    }
                    arrayList3.add(mediaItem);
                }
            }
        }
        String strL2 = MMKV.p().l("v_playing_item");
        if (!TextUtils.isEmpty(strL2) && arrayList3.size() > 0) {
            MediaItem mediaItem3 = (MediaItem) fi1.b(strL2, MediaItem.class);
            for (MediaItem mediaItem4 : arrayList3) {
                if (mediaItem4 != null && mediaItem3 != null && !r0a.g(mediaItem4.data) && mediaItem4.data.equals(mediaItem3.data)) {
                    this.mPlayMediaItem = mediaItem4;
                    String strL3 = MMKV.p().l("v_current_playing_media_uri");
                    if (strL3 != null) {
                        this.mPlayMediaItem.setUri(Uri.parse(strL3));
                    }
                    Log.d(TAG, "restore setPlayMediaItem " + this.mPlayMediaItem);
                    break;
                }
            }
            MediaItem mediaItem5 = this.mPlayMediaItem;
            if (mediaItem5 != null) {
                setPlayMediaItemNotSyncShuffle(mediaItem5);
            }
        }
        String strL4 = MMKV.p().l("v_playlist_source");
        this.mCurrentListSource = strL4;
        setPlayListInternal(arrayList3, strL4);
        this.isRestored = true;
        if (arrayList3.size() > 0) {
            LiveEventBus.b().c("change_minibar_state", Boolean.TRUE);
        }
    }

    public void restoreShuffle(ArrayList<MediaItem> arrayList) {
        if (this.isRestoredShuffle) {
            return;
        }
        String strL = MMKV.p().l("v_shuffle_playlist");
        if (TextUtils.isEmpty(strL)) {
            return;
        }
        ArrayList<MediaItem> arrayList2 = (ArrayList) fi1.c(strL, new TypeToken<List<MediaItem>>() {
        }.getType());
        ArrayList<MediaItem> arrayList3 = new ArrayList<>();
        if (arrayList2 != null && arrayList2.size() > 0) {
            for (MediaItem mediaItem : arrayList2) {
                if (!r0a.g(mediaItem.data) && new File(mediaItem.data).exists()) {
                    Uri uri = mediaItem.uri;
                    if (uri == null || r0a.g(uri.toString())) {
                        mediaItem.uri = mediaItem.getUri();
                    }
                    for (MediaItem mediaItem2 : arrayList) {
                        if (!r0a.g(mediaItem2.data) && mediaItem.data.equals(mediaItem2.data)) {
                            mediaItem.setUri(mediaItem2.uri);
                        }
                    }
                    arrayList3.add(mediaItem);
                }
            }
        }
        String strL2 = MMKV.p().l("v_playing_item");
        if (!TextUtils.isEmpty(strL2) && arrayList3.size() > 0) {
            MediaItem mediaItem3 = (MediaItem) fi1.b(strL2, MediaItem.class);
            for (MediaItem mediaItem4 : arrayList3) {
                if (mediaItem4 != null && mediaItem3 != null && !r0a.g(mediaItem4.data) && mediaItem4.data.equals(mediaItem3.data)) {
                    this.mPlayMediaItemShuffle = mediaItem4;
                    String strL3 = MMKV.p().l("v_current_playing_media_uri");
                    if (strL3 == null) {
                        break;
                    }
                    this.mPlayMediaItemShuffle.setUri(Uri.parse(strL3));
                    break;
                }
            }
            MediaItem mediaItem5 = this.mPlayMediaItemShuffle;
            if (mediaItem5 != null) {
                setPlayMediaItemShuffle(mediaItem5);
            }
        }
        String strL4 = MMKV.p().l("v_playlist_shuffle_source");
        this.mCurrentListSourceShuffle = strL4;
        setShuffleList(arrayList3, strL4, true);
        this.isRestoredShuffle = true;
    }

    public PlayListData selectedPlayMediaItem() {
        selectedPlayMediaItemShuffle();
        if (this.mPlayMediaItem == null) {
            return this;
        }
        for (MediaItem mediaItem : new ArrayList(this.mCurrentPlayList)) {
            MediaItem mediaItem2 = this.mPlayMediaItem;
            mediaItem.setSelected(mediaItem2.id == mediaItem.id && TextUtils.equals(mediaItem.data, mediaItem2.data));
        }
        return this;
    }

    public void selectedPlayMediaItemShuffle() {
        if (this.mPlayMediaItemShuffle == null) {
            return;
        }
        for (MediaItem mediaItem : new ArrayList(this.mShuffleList)) {
            MediaItem mediaItem2 = this.mPlayMediaItemShuffle;
            mediaItem.setSelected(mediaItem2.id == mediaItem.id && TextUtils.equals(mediaItem.data, mediaItem2.data));
        }
    }

    public void setListSource(String str) {
        this.mCurrentListSource = str;
    }

    public void setManualSort(boolean z) {
        this.mIsManualSort = z;
    }

    public void setPlayList(ArrayList<MediaItem> arrayList, String str) {
        setShuffleList(arrayList, str, true);
        setPlayListInternal(arrayList, str);
    }

    public void setPlayListTitle(String str) {
        this.mPlayListTitle = str;
    }

    public PlayListData setPlayMediaItem(MediaItem mediaItem) {
        setPlayMediaItemShuffle(mediaItem);
        if (mediaItem == null) {
            this.mPlayMediaItem = null;
            return this;
        }
        this.mPlayIndex = queryNormalIndex(mediaItem);
        if (this.mCurrentPlayList.isEmpty()) {
            this.mPlayMediaItem = mediaItem;
        } else {
            MediaItem mediaItem2 = this.mCurrentPlayList.get(this.mPlayIndex);
            this.mPlayMediaItem = mediaItem2;
            if (mediaItem2 == null || isDiffMediaItem(mediaItem, mediaItem2)) {
                this.mPlayMediaItem = mediaItem;
            }
        }
        LogUtils.j(TAG, "setPlayMediaItem: ", this.mPlayMediaItem.toString(), "index:" + this.mPlayIndex, "mediaItem:" + mediaItem);
        MMKV.p().w("v_playing_item", fi1.e(this.mPlayMediaItem));
        MediaItem mediaItem3 = this.mPlayMediaItem;
        if (mediaItem3 != null && mediaItem3.uri != null) {
            MMKV.p().w("v_current_playing_media_uri", this.mPlayMediaItem.getUri().toString());
        }
        return this;
    }

    public PlayListData setPlayMediaItemNotSyncShuffle(MediaItem mediaItem) {
        int i;
        if (mediaItem == null) {
            this.mPlayMediaItem = null;
            return this;
        }
        this.mPlayIndex = queryNormalIndex(mediaItem);
        if (this.mCurrentPlayList.size() <= 0 || (i = this.mPlayIndex) <= 0 || i >= this.mCurrentPlayList.size()) {
            this.mPlayMediaItem = mediaItem;
        } else {
            MediaItem mediaItem2 = this.mCurrentPlayList.get(this.mPlayIndex);
            this.mPlayMediaItem = mediaItem2;
            if (mediaItem2 == null || isDiffMediaItem(mediaItem, mediaItem2)) {
                this.mPlayMediaItem = mediaItem;
            }
        }
        LogUtils.j(TAG, "setPlayMediaItem: ", this.mPlayMediaItem.toString(), "index:" + this.mPlayIndex, "mediaItem:" + mediaItem);
        MMKV.p().w("v_playing_item", fi1.e(this.mPlayMediaItem));
        MediaItem mediaItem3 = this.mPlayMediaItem;
        if (mediaItem3 != null && mediaItem3.uri != null) {
            MMKV.p().w("v_current_playing_media_uri", this.mPlayMediaItem.getUri().toString());
        }
        return this;
    }

    public PlayListData setPlayMediaItemShuffle(MediaItem mediaItem) {
        int i;
        if (mediaItem == null) {
            this.mPlayMediaItemShuffle = null;
            return this;
        }
        this.mPlayIndexShuffle = queryShuffleIndex(mediaItem);
        if (this.mShuffleList.size() <= 0 || (i = this.mPlayIndexShuffle) <= 0 || i >= this.mShuffleList.size()) {
            this.mPlayMediaItemShuffle = mediaItem;
        } else {
            MediaItem mediaItem2 = this.mShuffleList.get(this.mPlayIndexShuffle);
            this.mPlayMediaItemShuffle = mediaItem2;
            if (mediaItem2 == null || isDiffMediaItem(mediaItem, mediaItem2)) {
                this.mPlayMediaItemShuffle = mediaItem;
            }
        }
        MMKV.p().w("v_playing_item", fi1.e(this.mPlayMediaItemShuffle));
        MediaItem mediaItem3 = this.mPlayMediaItemShuffle;
        if (mediaItem3 != null && mediaItem3.uri != null) {
            MMKV.p().w("v_current_playing_media_uri", this.mPlayMediaItemShuffle.getUri().toString());
        }
        return this;
    }

    public PlayListData setRepeat(boolean z) {
        this.mRepeat = z;
        return this;
    }

    public void switchList() {
        if (hsb.b() == 4) {
            ArrayList<MediaItem> arrayList = this.mLastPlayList;
            if (arrayList == null || arrayList.isEmpty()) {
                return;
            }
            setShuffleList(new ArrayList<>(this.mLastPlayList), this.mLastListSource, false);
            return;
        }
        ArrayList<MediaItem> arrayList2 = this.mLastPlayList;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        setPlayListInternal(new ArrayList<>(this.mLastPlayList), this.mLastListSource);
    }

    public void updateCurrentPlayPosition(int i) {
        MediaItem mediaItem = this.mPlayMediaItem;
        if (mediaItem != null) {
            mediaItem.setPlayPosition(i);
            MMKV.p().w("v_playing_item", fi1.e(this.mPlayMediaItem));
        }
        MediaItem mediaItem2 = this.mPlayMediaItemShuffle;
        if (mediaItem2 != null) {
            mediaItem2.setPlayPosition(i);
            MMKV.p().w("v_playing_item", fi1.e(this.mPlayMediaItemShuffle));
        }
    }

    public synchronized void updatePlayListOrder(ArrayList<MediaItem> arrayList) {
        if (arrayList == null) {
            return;
        }
        try {
            try {
                if (hsb.b() == 4) {
                    if (this.mShuffleList == null) {
                        this.mShuffleList = new ArrayList<>();
                    }
                    this.mShuffleList.clear();
                    this.mShuffleList.addAll(arrayList);
                    ls1.a(this.mShuffleList);
                    ye6.b(this.mShuffleList);
                    setPlayMediaItemShuffle(this.mPlayMediaItemShuffle);
                    MMKV.p().w("v_shuffle_playlist", fi1.e(this.mShuffleList));
                    MMKV.p().w("v_playlist_shuffle_source", this.mCurrentListSourceShuffle);
                } else {
                    this.mCurrentPlayList.clear();
                    this.mCurrentPlayList.addAll(arrayList);
                    ls1.a(this.mCurrentPlayList);
                    ye6.b(this.mCurrentPlayList);
                    setPlayMediaItemNotSyncShuffle(this.mPlayMediaItem);
                    MMKV.p().w("v_playlist", fi1.e(this.mCurrentPlayList));
                    MMKV.p().w("v_playlist_source", this.mCurrentListSource);
                }
            } catch (Exception unused) {
            }
            this.mIsManualSort = true;
            LiveEventBus.b().d("video_play_list_change").postValue(0);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void updateShuffleList() {
        ArrayList<MediaItem> arrayList = this.mShuffleList;
        if (arrayList == null) {
            return;
        }
        Collections.shuffle(arrayList);
        this.mPlayIndexShuffle = queryShuffleIndex(this.mPlayMediaItemShuffle);
    }

    private void filterData(List<MediaItem> list) {
        synchronized (list) {
            try {
                if (list.size() == 0) {
                    return;
                }
                Iterator<MediaItem> it = list.iterator();
                while (it.hasNext()) {
                    MediaItem next = it.next();
                    if (next != null && !new File(next.data).exists()) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public int queryIndex(MediaItem mediaItem, List<MediaItem> list) {
        if (mediaItem != null && list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i = 0; i < size && i < list.size(); i++) {
                MediaItem mediaItem2 = list.get(i);
                if (mediaItem2 != null) {
                    if (!mediaItem.isYoutubeUrl && !mediaItem.isKtFile && !MIMediaDataUtils.INSTANCE.isMiMediaVideo(mediaItem)) {
                        if (mediaItem.id == mediaItem2.id) {
                            return i;
                        }
                    } else {
                        String str = mediaItem.data;
                        if (str != null && str.equals(mediaItem2.data)) {
                            return i;
                        }
                    }
                }
            }
        }
        return 0;
    }

    public PlayListData setPlayMediaItem(int i) {
        if (hsb.b() == 4) {
            if (i >= 0 && i < this.mShuffleList.size()) {
                setPlayMediaItemShuffle(this.mShuffleList.get(i));
                setPlayMediaItemNotSyncShuffle(this.mShuffleList.get(i));
            }
        } else if (i >= 0 && i < this.mCurrentPlayList.size()) {
            setPlayMediaItemNotSyncShuffle(this.mCurrentPlayList.get(i));
            setPlayMediaItemShuffle(this.mCurrentPlayList.get(i));
        }
        return this;
    }
}
