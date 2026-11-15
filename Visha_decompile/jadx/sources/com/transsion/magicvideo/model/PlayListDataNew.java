package com.transsion.magicvideo.model;

import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.dbdata.beans.media.MediaItem;
import java.util.ArrayList;
import java.util.List;

public class PlayListDataNew {
    private static PlayListDataNew instance;
    private final MutableLiveData<List<MediaItem>> mCurrentPlayList = new MutableLiveData<>(new ArrayList());

    public static PlayListDataNew getInstance() {
        if (instance == null) {
            instance = new PlayListDataNew();
        }
        return instance;
    }

    public LiveData<List<MediaItem>> getPlayList() {
        return this.mCurrentPlayList;
    }

    public void updatePlayList(List<MediaItem> list) {
        this.mCurrentPlayList.setValue(list);
    }
}
