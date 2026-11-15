package org.proninyaroslav.libretorrent.core.model.session;

import android.net.Uri;
import androidx.annotation.NonNull;
import defpackage.hb1;
import java.util.List;
import java.util.Set;
import org.proninyaroslav.libretorrent.core.exception.DecodeException;
import org.proninyaroslav.libretorrent.core.model.data.PeerInfo;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.data.TorrentStateCode;
import org.proninyaroslav.libretorrent.core.model.data.TrackerInfo;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.TorrentMetaInfo;
import org.proninyaroslav.libretorrent.core.model.stream.TorrentStream;

public interface TorrentDownload {
    void addTrackers(@NonNull Set<String> set);

    void forceRecheck();

    long getActiveTime();

    double getAvailability(int[] iArr);

    byte[] getBencode();

    int getConnectedLeechers();

    int getConnectedPeers();

    int getConnectedSeeds();

    long getDownloadSpeed();

    int getDownloadSpeedLimit();

    long getETA();

    Priority[] getFilePriorities();

    long[] getFileSizes();

    double[] getFilesAvailability(int[] iArr);

    long[] getFilesReceivedBytes();

    String getInfoHash();

    int getMaxConnections();

    int getMaxUploads();

    int getNumDownloadedPieces();

    Uri getPartsFile();

    List<PeerInfo> getPeerInfoList();

    int[] getPiecesAvailability();

    int getProgress();

    long getReceivedBytes();

    long getSeedingTime();

    double getShareRatio();

    long getSize();

    TorrentStateCode getStateCode();

    TorrentStream getStream(int i);

    String getTorrentId();

    TorrentMetaInfo getTorrentMetaInfo() throws DecodeException;

    String getTorrentName();

    int getTotalLeechers();

    int getTotalPeers();

    int getTotalSeeds();

    long getTotalSentBytes();

    long getTotalWanted();

    List<TrackerInfo> getTrackerInfoList();

    Set<String> getTrackersUrl();

    long getUploadSpeed();

    int getUploadSpeedLimit();

    boolean hasMissingFiles();

    boolean havePiece(int i);

    boolean isAutoManaged();

    boolean isDownloading();

    boolean isFinished();

    boolean isFirstLastPiecePriority();

    boolean isPaused();

    boolean isSeeding();

    boolean isSequentialDownload();

    boolean isStopped();

    boolean isValid();

    String makeMagnet(boolean z);

    void pause();

    void pauseManually();

    boolean[] pieces();

    void prioritizeFiles(@NonNull Priority[] priorityArr);

    void readPiece(int i);

    void remove(boolean z);

    void replaceTrackers(@NonNull Set<String> set);

    hb1 requestStop();

    void requestTrackerAnnounce();

    void resume();

    void resumeManually();

    void saveResumeData(boolean z);

    void setAutoManaged(boolean z);

    void setDownloadPath(@NonNull Uri uri);

    void setDownloadSpeedLimit(int i);

    void setFirstLastPiecePriority(boolean z);

    void setInterestedPieces(@NonNull TorrentStream torrentStream, int i, int i2);

    void setMaxConnections(int i);

    void setMaxUploads(int i);

    void setSequentialDownload(boolean z);

    void setTorrentName(@NonNull String str);

    void setUploadSpeedLimit(int i);
}
