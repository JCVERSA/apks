package org.proninyaroslav.libretorrent.core;

import android.os.FileObserver;

public abstract class TorrentFileObserver extends FileObserver {
    public TorrentFileObserver(String str) {
        super(str, 390);
    }
}
