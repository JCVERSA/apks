package com.transsion.audio.widgets;

import android.content.Context;

public class MusicCurrentPlayListView extends MusicPlayListView {
    public MusicCurrentPlayListView(Context context) {
        super(context);
    }

    @Override
    public boolean showLast() {
        return false;
    }
}
