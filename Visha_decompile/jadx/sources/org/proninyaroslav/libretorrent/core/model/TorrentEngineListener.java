package org.proninyaroslav.libretorrent.core.model;

import androidx.annotation.NonNull;
import org.proninyaroslav.libretorrent.core.model.data.ReadPieceInfo;
import org.proninyaroslav.libretorrent.core.model.data.SessionStats;
import org.proninyaroslav.libretorrent.core.model.data.TorrentStateCode;

public abstract class TorrentEngineListener {
    public void onFileComplete(String str) {
    }

    public void onIpFilterParsed(int i) {
    }

    public void onMagnetLoaded(@NonNull String str, byte[] bArr) {
    }

    public void onNatError(@NonNull String str) {
    }

    public void onPieceFinished(@NonNull String str, int i) {
    }

    public void onReadPiece(@NonNull String str, ReadPieceInfo readPieceInfo) {
    }

    public void onRestoreSessionError(@NonNull String str) {
    }

    public void onSessionError(@NonNull String str) {
    }

    public void onSessionStarted() {
    }

    public void onSessionStats(@NonNull SessionStats sessionStats) {
    }

    public void onSessionStopped() {
    }

    public void onTorrentAdded(@NonNull String str) {
    }

    public void onTorrentError(@NonNull String str, Exception exc) {
    }

    public void onTorrentFinished(@NonNull String str) {
    }

    public void onTorrentLoaded(@NonNull String str) {
    }

    public void onTorrentMetadataLoaded(@NonNull String str, Exception exc) {
    }

    public void onTorrentMoved(@NonNull String str, boolean z) {
    }

    public void onTorrentMoving(@NonNull String str) {
    }

    public void onTorrentPaused(@NonNull String str) {
    }

    public void onTorrentRemoved(String str) {
    }

    public void onTorrentResumed(@NonNull String str) {
    }

    public void onTorrentStateChanged(@NonNull String str, @NonNull TorrentStateCode torrentStateCode, @NonNull TorrentStateCode torrentStateCode2) {
    }
}
