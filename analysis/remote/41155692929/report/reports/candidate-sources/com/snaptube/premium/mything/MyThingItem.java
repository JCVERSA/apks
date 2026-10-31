package com.snaptube.premium.mything;

import android.util.SparseArray;
import com.snaptube.premium.R;
import com.vungle.ads.internal.presenter.NativeAdPresenter;

public enum MyThingItem {
    DOWNLOAD(NativeAdPresenter.DOWNLOAD, R.id.mything_download, R.string.tab_title_download),
    ALL_MUSICS("all_musics", R.id.mything_all_musics, R.string.tab_title_all_musics),
    ALL_VIDEOS("all_videos", R.id.mything_all_videos, R.string.tab_title_all_videos),
    PLAYLIST("playlist", R.id.mything_playlist, R.string.tab_title_playlist);

    private static final SparseArray<MyThingItem> sIdToItemMap = new SparseArray<>();
    private final int myThingId;
    private final String name;
    private final int titleResId;

    static {
        for (MyThingItem myThingItem : values()) {
            sIdToItemMap.put(myThingItem.getMyThingId(), myThingItem);
        }
    }

    MyThingItem(String str, int i, int i2) {
        this.name = str;
        this.myThingId = i;
        this.titleResId = i2;
    }

    public static MyThingItem fromId(int i) {
        return sIdToItemMap.get(i);
    }

    public int getMyThingId() {
        return this.myThingId;
    }

    public String getName() {
        return this.name;
    }

    public int getTitleResId() {
        return this.titleResId;
    }
}
