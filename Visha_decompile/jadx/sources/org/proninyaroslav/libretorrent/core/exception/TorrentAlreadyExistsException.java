package org.proninyaroslav.libretorrent.core.exception;

public class TorrentAlreadyExistsException extends Exception {
    public TorrentAlreadyExistsException() {
    }

    public TorrentAlreadyExistsException(String str) {
        super(str);
    }
}
