package org.proninyaroslav.libretorrent.core.model.session;

import android.net.Uri;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.IOException;
import org.proninyaroslav.libretorrent.core.exception.DecodeException;
import org.proninyaroslav.libretorrent.core.exception.TorrentAlreadyExistsException;
import org.proninyaroslav.libretorrent.core.exception.UnknownUriException;
import org.proninyaroslav.libretorrent.core.logger.Logger;
import org.proninyaroslav.libretorrent.core.model.AddTorrentParams;
import org.proninyaroslav.libretorrent.core.model.TorrentEngineListener;
import org.proninyaroslav.libretorrent.core.model.data.MagnetInfo;
import org.proninyaroslav.libretorrent.core.model.data.entity.Torrent;
import org.proninyaroslav.libretorrent.core.settings.SessionSettings;

public interface TorrentSession {
    void addListener(TorrentEngineListener torrentEngineListener);

    Torrent addTorrent(@NonNull AddTorrentParams addTorrentParams, boolean z) throws UnknownUriException, DecodeException, TorrentAlreadyExistsException, IOException;

    void cancelFetchMagnet(@NonNull String str);

    void deleteTorrent(@NonNull String str, boolean z);

    long dhtNodes();

    void disableIpFilter();

    void download(@NonNull String str, File file, boolean z, boolean z2);

    void enableIpFilter(@NonNull Uri uri);

    MagnetInfo fetchMagnet(@NonNull String str) throws Exception;

    long getDhtNodes();

    long getDownloadSpeed();

    int getDownloadSpeedLimit();

    int getListenPort();

    byte[] getLoadedMagnet(String str);

    Logger getLogger();

    int[] getPieceSizeList();

    SessionSettings getSettings();

    TorrentDownload getTask(String str);

    long getTotalDownload();

    long getTotalUpload();

    long getUploadSpeed();

    int getUploadSpeedLimit();

    boolean hasTaskRunning();

    boolean isDHTEnabled();

    boolean isPeXEnabled();

    boolean isRunning();

    MagnetInfo parseMagnet(@NonNull String str);

    void pauseAll();

    void pauseAllManually();

    void removeListener(TorrentEngineListener torrentEngineListener);

    void removeLoadedMagnet(String str);

    void requestStop();

    void restoreTorrents();

    void resumeAll();

    void resumeAllManually();

    void setAutoManaged(boolean z);

    void setDefaultTrackersList(@NonNull String[] strArr);

    void setMaxConnectionsPerTorrent(int i);

    void setMaxUploadsPerTorrent(int i);

    void setSettings(@NonNull SessionSettings sessionSettings);

    void setSettings(@NonNull SessionSettings sessionSettings, boolean z);

    void start();
}
