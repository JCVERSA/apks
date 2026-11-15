package org.proninyaroslav.libretorrent.core.model.session;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.hb1;
import defpackage.lb1;
import defpackage.rb1;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.libtorrent4j.AlertListener;
import org.libtorrent4j.AnnounceEntry;
import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.FileStorage;
import org.libtorrent4j.MoveFlags;
import org.libtorrent4j.PieceIndexBitfield;
import org.libtorrent4j.SessionHandle;
import org.libtorrent4j.SessionManager;
import org.libtorrent4j.TorrentFlags;
import org.libtorrent4j.TorrentHandle;
import org.libtorrent4j.TorrentInfo;
import org.libtorrent4j.TorrentStatus;
import org.libtorrent4j.Vectors;
import org.libtorrent4j.alerts.Alert;
import org.libtorrent4j.alerts.AlertType;
import org.libtorrent4j.alerts.FastresumeRejectedAlert;
import org.libtorrent4j.alerts.FileErrorAlert;
import org.libtorrent4j.alerts.MetadataFailedAlert;
import org.libtorrent4j.alerts.MetadataReceivedAlert;
import org.libtorrent4j.alerts.PieceFinishedAlert;
import org.libtorrent4j.alerts.ReadPieceAlert;
import org.libtorrent4j.alerts.SaveResumeDataAlert;
import org.libtorrent4j.alerts.StateChangedAlert;
import org.libtorrent4j.alerts.TorrentAlert;
import org.libtorrent4j.alerts.TorrentErrorAlert;
import org.libtorrent4j.swig.announce_entry;
import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.libtorrent_errors;
import org.libtorrent4j.swig.peer_info_vector;
import org.libtorrent4j.swig.torrent_alert;
import org.libtorrent4j.swig.torrent_handle;
import org.proninyaroslav.libretorrent.core.exception.DecodeException;
import org.proninyaroslav.libretorrent.core.exception.FreeSpaceException;
import org.proninyaroslav.libretorrent.core.exception.UnknownUriException;
import org.proninyaroslav.libretorrent.core.model.TorrentEngineListener;
import org.proninyaroslav.libretorrent.core.model.data.PeerInfo;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.data.ReadPieceInfo;
import org.proninyaroslav.libretorrent.core.model.data.TorrentStateCode;
import org.proninyaroslav.libretorrent.core.model.data.TrackerInfo;
import org.proninyaroslav.libretorrent.core.model.data.entity.FastResume;
import org.proninyaroslav.libretorrent.core.model.data.entity.Torrent;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.TorrentMetaInfo;
import org.proninyaroslav.libretorrent.core.model.stream.TorrentStream;
import org.proninyaroslav.libretorrent.core.storage.TorrentRepository;
import org.proninyaroslav.libretorrent.core.system.FileSystemFacade;

class TorrentDownloadImpl implements TorrentDownload {
    private static final long CRITICAL_WORK_WAIT_TIMEOUT = 30000;
    private static final int DEFAULT_PIECE_DEADLINE = 1000;
    private static final double MAX_RATIO = 9999.0d;
    private static final int PRELOAD_PIECES_COUNT = 5;
    private static final long SAVE_RESUME_SYNC_TIME = 10000;
    private boolean autoManaged;
    private FileSystemFacade fs;
    private boolean hasFirstLastPiecePriority;
    private boolean hasMissingFiles;
    private String id;
    private long lastSaveResumeTime;
    private InnerListener listener;
    private Queue<TorrentEngineListener> listeners;
    private AtomicReference<String> name;
    private TorrentRepository repo;
    private boolean resumeDataRejected;
    private SessionManager sessionManager;
    private hb1 stopEvent;
    private TorrentHandle th;
    private static final String TAG = TorrentDownload.class.getSimpleName();
    private static final int[] INNER_LISTENER_TYPES = {AlertType.STATE_CHANGED.swig(), AlertType.TORRENT_FINISHED.swig(), AlertType.TORRENT_REMOVED.swig(), AlertType.TORRENT_PAUSED.swig(), AlertType.TORRENT_RESUMED.swig(), AlertType.SAVE_RESUME_DATA.swig(), AlertType.STORAGE_MOVED.swig(), AlertType.STORAGE_MOVED_FAILED.swig(), AlertType.METADATA_RECEIVED.swig(), AlertType.PIECE_FINISHED.swig(), AlertType.READ_PIECE.swig(), AlertType.TORRENT_ERROR.swig(), AlertType.METADATA_FAILED.swig(), AlertType.FILE_ERROR.swig(), AlertType.FASTRESUME_REJECTED.swig(), AlertType.TORRENT_CHECKED.swig()};
    private TorrentCriticalWork criticalWork = new TorrentCriticalWork();
    private boolean stopRequested = false;
    private boolean stopped = false;
    private Uri partsFile = getPartsFile();

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$org$libtorrent4j$TorrentStatus$State;
        static final int[] $SwitchMap$org$libtorrent4j$alerts$AlertType;

        static {
            int[] iArr = new int[TorrentStatus.State.values().length];
            $SwitchMap$org$libtorrent4j$TorrentStatus$State = iArr;
            try {
                iArr[TorrentStatus.State.CHECKING_RESUME_DATA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$libtorrent4j$TorrentStatus$State[TorrentStatus.State.CHECKING_FILES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$libtorrent4j$TorrentStatus$State[TorrentStatus.State.DOWNLOADING_METADATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$libtorrent4j$TorrentStatus$State[TorrentStatus.State.DOWNLOADING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$libtorrent4j$TorrentStatus$State[TorrentStatus.State.FINISHED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$libtorrent4j$TorrentStatus$State[TorrentStatus.State.SEEDING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[AlertType.values().length];
            $SwitchMap$org$libtorrent4j$alerts$AlertType = iArr2;
            try {
                iArr2[AlertType.STATE_CHANGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.TORRENT_FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.TORRENT_REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.TORRENT_PAUSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.TORRENT_RESUMED.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.SAVE_RESUME_DATA.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.STORAGE_MOVED.ordinal()] = 7;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.STORAGE_MOVED_FAILED.ordinal()] = 8;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.PIECE_FINISHED.ordinal()] = 9;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.METADATA_RECEIVED.ordinal()] = 10;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.READ_PIECE.ordinal()] = 11;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.TORRENT_CHECKED.ordinal()] = 12;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.TORRENT_ERROR.ordinal()] = 13;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.METADATA_FAILED.ordinal()] = 14;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.FILE_ERROR.ordinal()] = 15;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.FASTRESUME_REJECTED.ordinal()] = 16;
            } catch (NoSuchFieldError unused22) {
            }
        }
    }

    public interface CallListener {
        void apply(TorrentEngineListener torrentEngineListener);
    }

    public final class InnerListener implements AlertListener {
        public void lambda$alert$0(StateChangedAlert stateChangedAlert, TorrentEngineListener torrentEngineListener) {
            torrentEngineListener.onTorrentStateChanged(TorrentDownloadImpl.this.id, TorrentDownloadImpl.this.stateToStateCode(stateChangedAlert.getPrevState()), TorrentDownloadImpl.this.stateToStateCode(stateChangedAlert.getState()));
        }

        public void lambda$alert$1(TorrentEngineListener torrentEngineListener) {
            torrentEngineListener.onTorrentPaused(TorrentDownloadImpl.this.id);
        }

        public void lambda$alert$2(TorrentEngineListener torrentEngineListener) {
            torrentEngineListener.onTorrentResumed(TorrentDownloadImpl.this.id);
        }

        public void lambda$alert$3(int i, TorrentEngineListener torrentEngineListener) {
            torrentEngineListener.onPieceFinished(TorrentDownloadImpl.this.id, i);
        }

        @Override
        public void alert(Alert<?> alert) throws Throwable {
            if ((alert instanceof TorrentAlert) && ((TorrentAlert) alert).handle().swig().eq(TorrentDownloadImpl.this.th.swig())) {
                switch (AnonymousClass2.$SwitchMap$org$libtorrent4j$alerts$AlertType[alert.type().ordinal()]) {
                    case 1:
                        final StateChangedAlert stateChangedAlert = (StateChangedAlert) alert;
                        TorrentDownloadImpl.this.notifyListeners(new CallListener() {
                            @Override
                            public final void apply(TorrentEngineListener torrentEngineListener) {
                                this.a.lambda$alert$0(stateChangedAlert, torrentEngineListener);
                            }
                        });
                        break;
                    case 2:
                        TorrentDownloadImpl.this.handleTorrentFinished();
                        break;
                    case 3:
                        TorrentDownloadImpl.this.torrentRemoved();
                        break;
                    case 4:
                        TorrentDownloadImpl.this.notifyListeners(new CallListener() {
                            @Override
                            public final void apply(TorrentEngineListener torrentEngineListener) {
                                this.a.lambda$alert$1(torrentEngineListener);
                            }
                        });
                        break;
                    case 5:
                        TorrentDownloadImpl.this.resetTorrentError();
                        TorrentDownloadImpl.this.notifyListeners(new CallListener() {
                            @Override
                            public final void apply(TorrentEngineListener torrentEngineListener) {
                                this.a.lambda$alert$2(torrentEngineListener);
                            }
                        });
                        break;
                    case 6:
                        TorrentDownloadImpl.this.serializeResumeData((SaveResumeDataAlert) alert);
                        break;
                    case 7:
                        TorrentDownloadImpl.this.onStorageMoved(true);
                        break;
                    case 8:
                        TorrentDownloadImpl.this.onStorageMoved(false);
                        break;
                    case 9:
                        TorrentDownloadImpl.this.saveResumeData(false);
                        final int iPieceIndex = ((PieceFinishedAlert) alert).pieceIndex();
                        TorrentDownloadImpl.this.notifyListeners(new CallListener() {
                            @Override
                            public final void apply(TorrentEngineListener torrentEngineListener) {
                                this.a.lambda$alert$3(iPieceIndex, torrentEngineListener);
                            }
                        });
                        break;
                    case 10:
                        TorrentDownloadImpl.this.handleMetadata((MetadataReceivedAlert) alert);
                        if (TorrentDownloadImpl.this.hasFirstLastPiecePriority) {
                            TorrentDownloadImpl.this.applyFirstLastPiecePriority(true);
                        }
                        TorrentDownloadImpl.this.saveResumeData(true);
                        break;
                    case 11:
                        TorrentDownloadImpl.this.handleReadPiece((ReadPieceAlert) alert);
                        break;
                    case 12:
                        TorrentDownloadImpl.this.handleTorrentChecked();
                        break;
                    default:
                        TorrentDownloadImpl.this.checkError(alert);
                        break;
                }
            }
        }

        @Override
        public int[] types() {
            return TorrentDownloadImpl.INNER_LISTENER_TYPES;
        }

        private InnerListener() {
        }
    }

    public TorrentDownloadImpl(SessionManager sessionManager, TorrentRepository torrentRepository, FileSystemFacade fileSystemFacade, Queue<TorrentEngineListener> queue, String str, TorrentHandle torrentHandle, boolean z) {
        this.id = str;
        this.repo = torrentRepository;
        this.fs = fileSystemFacade;
        this.sessionManager = sessionManager;
        this.autoManaged = z;
        this.listeners = queue;
        this.th = torrentHandle;
        this.name = new AtomicReference<>(torrentHandle.getName());
        InnerListener innerListener = new InnerListener();
        this.listener = innerListener;
        sessionManager.addListener(innerListener);
        Torrent torrentI = torrentRepository.i(str);
        if (torrentI != null) {
            boolean z2 = torrentI.firstLastPiecePriority;
            this.hasFirstLastPiecePriority = z2;
            applyFirstLastPiecePriority(z2);
        }
        if (this.th.needSaveResumeData()) {
            saveResumeData(true);
        }
    }

    private List<AdvancedPeerInfo> advancedPeerInfo() {
        torrent_handle torrent_handleVarSwig = this.th.swig();
        peer_info_vector peer_info_vectorVar = new peer_info_vector();
        torrent_handleVarSwig.get_peer_info(peer_info_vectorVar);
        int size = peer_info_vectorVar.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new AdvancedPeerInfo(peer_info_vectorVar.get(i)));
        }
        return arrayList;
    }

    public void applyFirstLastPiecePriority(boolean z) {
        applyFirstLastPiecePriority(z, new Priority[0]);
    }

    public void checkError(Alert<?> alert) {
        Pair<String, Boolean> errorMsg = getErrorMsg(alert);
        final String str = errorMsg.first;
        boolean zBooleanValue = errorMsg.second.booleanValue();
        if (alert.type() == AlertType.FASTRESUME_REJECTED) {
            this.resumeDataRejected = true;
            if (((FastresumeRejectedAlert) alert).error().getValue() == libtorrent_errors.mismatching_file_size.swigValue()) {
                this.hasMissingFiles = true;
            }
        }
        if (str != null) {
            Log.e(TAG, "Torrent " + this.id + ": " + str);
            if (zBooleanValue) {
                resume();
                return;
            }
            Torrent torrentI = this.repo.i(this.id);
            if (torrentI != null) {
                torrentI.error = str;
                this.repo.c(torrentI);
            }
            pause();
        }
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                this.a.lambda$checkError$1(str, torrentEngineListener);
            }
        });
    }

    private void doPause() {
        if (operationNotAllowed()) {
            return;
        }
        this.th.unsetFlags(TorrentFlags.AUTO_MANAGED);
        this.th.pause();
        saveResumeData(true);
    }

    private void doResume() {
        if (operationNotAllowed()) {
            return;
        }
        if (this.hasMissingFiles) {
            this.hasMissingFiles = false;
            forceRecheck();
        }
        if (this.autoManaged) {
            this.th.setFlags(TorrentFlags.AUTO_MANAGED);
        } else {
            this.th.unsetFlags(TorrentFlags.AUTO_MANAGED);
        }
        this.th.resume();
        saveResumeData(true);
    }

    private void doStop() {
        if (!this.stopRequested || this.stopped) {
            return;
        }
        this.sessionManager.removeListener(this.listener);
        this.stopRequested = false;
        this.stopped = true;
        this.stopEvent = null;
    }

    private void forceStop() {
        this.stopRequested = true;
        doStop();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:24:0x00e7  */
    private Pair<String, Boolean> getErrorMsg(Alert<?> alert) {
        String errorMsg;
        String string;
        boolean zIsNonCritical = false;
        switch (AnonymousClass2.$SwitchMap$org$libtorrent4j$alerts$AlertType[alert.type().ordinal()]) {
            case 13:
                TorrentErrorAlert torrentErrorAlert = (TorrentErrorAlert) alert;
                ErrorCode errorCodeError = torrentErrorAlert.error();
                if (!errorCodeError.isError()) {
                    errorMsg = null;
                } else {
                    StringBuilder sb = new StringBuilder();
                    String strSubstring = torrentErrorAlert.filename().substring(torrentErrorAlert.filename().lastIndexOf("/") + 1);
                    if (torrentErrorAlert.filename() != null) {
                        sb.append("[");
                        sb.append(strSubstring);
                        sb.append("] ");
                    }
                    sb.append(SessionErrors.getErrorMsg(errorCodeError));
                    string = sb.toString();
                    zIsNonCritical = SessionErrors.isNonCritical(errorCodeError);
                    errorMsg = string;
                }
                break;
            case 14:
                ErrorCode error = ((MetadataFailedAlert) alert).getError();
                if (!error.isError()) {
                    errorMsg = null;
                } else {
                    errorMsg = SessionErrors.getErrorMsg(error);
                }
                break;
            case 15:
                FileErrorAlert fileErrorAlert = (FileErrorAlert) alert;
                ErrorCode errorCodeError2 = fileErrorAlert.error();
                String strSubstring2 = fileErrorAlert.filename().substring(fileErrorAlert.filename().lastIndexOf("/") + 1);
                if (!errorCodeError2.isError()) {
                    errorMsg = null;
                } else {
                    string = "[" + fileErrorAlert.operation() + "][" + strSubstring2 + "] " + SessionErrors.getErrorMsg(errorCodeError2);
                    zIsNonCritical = SessionErrors.isNonCritical(errorCodeError2);
                    errorMsg = string;
                }
                break;
            case 16:
                ErrorCode errorCodeError3 = ((FastresumeRejectedAlert) alert).error();
                if (!errorCodeError3.isError()) {
                    errorMsg = null;
                } else if (errorCodeError3.getValue() != libtorrent_errors.mismatching_file_size.swigValue()) {
                    errorMsg = "fast resume data was rejected, reason: " + SessionErrors.getErrorMsg(errorCodeError3);
                } else {
                    errorMsg = "file sizes mismatch";
                }
                break;
            default:
                errorMsg = null;
                break;
        }
        return Pair.create(errorMsg, Boolean.valueOf(zIsNonCritical));
    }

    @VisibleForTesting
    public static String getFileIndicesBep53(org.libtorrent4j.Priority[] priorityArr) {
        ArrayList arrayList = new ArrayList();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < priorityArr.length; i3++) {
            if (priorityArr[i3].swig() == org.libtorrent4j.Priority.IGNORE.swig()) {
                String strIndicesToStr = indicesToStr(i, i2);
                if (strIndicesToStr != null) {
                    arrayList.add(strIndicesToStr);
                }
                i = -1;
            } else if (i == -1) {
                i = i3;
                i2 = i;
            } else {
                i2 = i3;
            }
        }
        String strIndicesToStr2 = indicesToStr(i, i2);
        if (strIndicesToStr2 != null) {
            arrayList.add(strIndicesToStr2);
        }
        return TextUtils.join(StringUtils.COMMA, arrayList);
    }

    private Pair<Integer, Integer> getFilePieces(TorrentInfo torrentInfo, int i) {
        if (operationNotAllowed() || i < 0 || i >= torrentInfo.numFiles()) {
            return null;
        }
        FileStorage fileStorageFiles = torrentInfo.files();
        long jFileSize = fileStorageFiles.fileSize(i);
        long jFileOffset = fileStorageFiles.fileOffset(i);
        return new Pair<>(Integer.valueOf((int) (jFileOffset / ((long) torrentInfo.pieceLength()))), Integer.valueOf((int) (((jFileOffset + jFileSize) - 1) / ((long) torrentInfo.pieceLength()))));
    }

    /* JADX WARN: Code duplicated, block: B:60:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:62:0x0104  */
    /* JADX WARN: Code duplicated, block: B:65:0x010a  */
    public void handleMetadata(MetadataReceivedAlert metadataReceivedAlert) throws Throwable {
        String str;
        Torrent torrentI;
        Exception exc;
        String str2;
        final Exception[] excArr = new Exception[1];
        try {
            Torrent torrentI2 = this.repo.i(this.id);
            if (torrentI2 == null) {
                throw new NullPointerException(this.id + " doesn't exists");
            }
            TorrentInfo torrentInfo = metadataReceivedAlert.handle().torrentFile();
            if (torrentInfo == null) {
                Torrent torrentI3 = this.repo.i(this.id);
                if (torrentI3 != null) {
                    torrentI3.setMagnetUri(null);
                    Exception exc2 = excArr[0];
                    if (exc2 != null) {
                        torrentI3.error = exc2.toString();
                    }
                    this.repo.c(torrentI3);
                    return;
                }
                return;
            }
            TorrentMetaInfo torrentMetaInfo = new TorrentMetaInfo(torrentInfo);
            String str3 = this.name.get();
            if (torrentMetaInfo.sha1Hash.equals(str3) || TextUtils.isEmpty(str3)) {
                this.name.set(torrentMetaInfo.torrentName);
                str2 = torrentMetaInfo.torrentName;
            } else {
                str2 = null;
            }
            try {
                if (this.fs.a(torrentI2.downloadPath) < torrentMetaInfo.torrentSize) {
                    throw new FreeSpaceException("Not enough free space");
                }
                Torrent torrentI4 = this.repo.i(this.id);
                if (torrentI4 != null) {
                    torrentI4.setMagnetUri(null);
                    if (str2 != null) {
                        torrentI4.name = str2;
                    }
                    Exception exc3 = excArr[0];
                    if (exc3 != null) {
                        torrentI4.error = exc3.toString();
                    }
                    this.repo.c(torrentI4);
                }
            } catch (Exception e) {
                str = str2;
                e = e;
                try {
                    excArr[0] = e;
                    pause();
                    notifyListeners(new CallListener() {
                        @Override
                        public final void apply(TorrentEngineListener torrentEngineListener) {
                            this.a.lambda$handleMetadata$2(e, torrentEngineListener);
                        }
                    });
                    Torrent torrentI5 = this.repo.i(this.id);
                    if (torrentI5 != null) {
                        torrentI5.setMagnetUri(null);
                        if (str != null) {
                            torrentI5.name = str;
                        }
                        Exception exc4 = excArr[0];
                        if (exc4 != null) {
                            torrentI5.error = exc4.toString();
                        }
                        this.repo.c(torrentI5);
                    }
                } catch (Throwable th) {
                    th = th;
                    torrentI = this.repo.i(this.id);
                    if (torrentI != null) {
                        torrentI.setMagnetUri(null);
                        if (str != null) {
                            torrentI.name = str;
                        }
                        exc = excArr[0];
                        if (exc != null) {
                            torrentI.error = exc.toString();
                        }
                        this.repo.c(torrentI);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                str = str2;
                th = th2;
                torrentI = this.repo.i(this.id);
                if (torrentI != null) {
                    torrentI.setMagnetUri(null);
                    if (str != null) {
                        torrentI.name = str;
                    }
                    exc = excArr[0];
                    if (exc != null) {
                        torrentI.error = exc.toString();
                    }
                    this.repo.c(torrentI);
                }
                throw th;
            }
            notifyListeners(new CallListener() {
                @Override
                public final void apply(TorrentEngineListener torrentEngineListener) {
                    this.a.lambda$handleMetadata$3(excArr, torrentEngineListener);
                }
            });
        } catch (Exception e2) {
            e = e2;
            str = null;
        } catch (Throwable th3) {
            th = th3;
            str = null;
        }
    }

    public void handleReadPiece(ReadPieceAlert readPieceAlert) {
        final ReadPieceInfo readPieceInfo = new ReadPieceInfo(readPieceAlert.piece(), readPieceAlert.size(), readPieceAlert.bufferPtr(), readPieceAlert.error().isError() ? new Exception(readPieceAlert.error().getMessage()) : null);
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                this.a.lambda$handleReadPiece$4(readPieceInfo, torrentEngineListener);
            }
        });
    }

    public void handleTorrentChecked() {
        if (!this.resumeDataRejected || this.hasMissingFiles) {
            return;
        }
        saveResumeData(true);
    }

    public void handleTorrentFinished() {
        this.hasMissingFiles = false;
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                this.a.lambda$handleTorrentFinished$6(torrentEngineListener);
            }
        });
        saveResumeData(true);
    }

    private boolean hasMetadata() {
        TorrentInfo torrentInfo = this.th.torrentFile();
        return (operationNotAllowed() || torrentInfo == null || torrentInfo.numFiles() <= 0) ? false : true;
    }

    private static String indicesToStr(int i, int i2) {
        if (i == -1 || i2 == -1) {
            return null;
        }
        return i == i2 ? Integer.toString(i2) : String.format(Locale.ENGLISH, "%d-%d", Integer.valueOf(i), Integer.valueOf(i2));
    }

    public void lambda$checkError$1(String str, TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onTorrentError(this.id, new Exception(str));
    }

    public void lambda$handleMetadata$2(Exception exc, TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onTorrentError(this.id, exc);
    }

    public void lambda$handleMetadata$3(Exception[] excArr, TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onTorrentMetadataLoaded(this.id, excArr[0]);
    }

    public void lambda$handleReadPiece$4(ReadPieceInfo readPieceInfo, TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onReadPiece(this.id, readPieceInfo);
    }

    public void lambda$handleTorrentFinished$6(TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onTorrentFinished(this.id);
    }

    public void lambda$onStorageMoved$0(boolean z, TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onTorrentMoved(this.id, z);
    }

    public void lambda$requestStop$7(AtomicLong atomicLong, lb1 lb1Var, TorrentCriticalWork.State state) throws Exception {
        if (state.changeTime < atomicLong.get()) {
            return;
        }
        atomicLong.set(state.changeTime);
        if (lb1Var.isDisposed() || state.isDuringChange()) {
            return;
        }
        doStop();
        lb1Var.onComplete();
    }

    public void lambda$requestStop$8(lb1 lb1Var, Throwable th) throws Exception {
        Log.e(TAG, "Error waiting for critical work: " + Log.getStackTraceString(th));
        if (lb1Var.isDisposed()) {
            return;
        }
        doStop();
        lb1Var.onComplete();
    }

    public void lambda$requestStop$9(final lb1 lb1Var) throws Exception {
        if (lb1Var.isDisposed()) {
            return;
        }
        final AtomicLong atomicLong = new AtomicLong(-1L);
        lb1Var.setDisposable(this.criticalWork.observeStateChanging().g0(30000L, TimeUnit.MILLISECONDS).a0(new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                this.b.lambda$requestStop$7(atomicLong, lb1Var, (TorrentCriticalWork.State) obj);
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                this.b.lambda$requestStop$8(lb1Var, (Throwable) obj);
            }
        }));
    }

    public void lambda$setDownloadPath$10(TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onTorrentMoving(this.id);
    }

    public void lambda$torrentRemoved$5(TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onTorrentRemoved(this.id);
    }

    public void notifyListeners(@NonNull CallListener callListener) {
        for (TorrentEngineListener torrentEngineListener : this.listeners) {
            if (torrentEngineListener != null) {
                callListener.apply(torrentEngineListener);
            }
        }
    }

    public void onStorageMoved(final boolean z) {
        this.criticalWork.setMoving(false);
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                this.a.lambda$onStorageMoved$0(z, torrentEngineListener);
            }
        });
        saveResumeData(true);
    }

    private boolean operationNotAllowed() {
        return !this.th.isValid() || this.stopped;
    }

    public void resetTorrentError() {
        Torrent torrentI = this.repo.i(this.id);
        if (torrentI == null) {
            return;
        }
        torrentI.error = null;
        this.repo.c(torrentI);
    }

    public void serializeResumeData(SaveResumeDataAlert saveResumeDataAlert) {
        try {
            this.repo.e(new FastResume(this.id, Vectors.byte_vector2bytes(libtorrent.write_resume_data(saveResumeDataAlert.params().swig()).bencode())));
        } catch (Throwable th) {
            try {
                Log.e(TAG, Log.getStackTraceString(th));
            } finally {
                this.criticalWork.setSaveResume(false);
            }
        }
    }

    public TorrentStateCode stateToStateCode(TorrentStatus.State state) {
        switch (AnonymousClass2.$SwitchMap$org$libtorrent4j$TorrentStatus$State[state.ordinal()]) {
            case 1:
            case 2:
                return TorrentStateCode.CHECKING;
            case 3:
                return TorrentStateCode.DOWNLOADING_METADATA;
            case 4:
                return TorrentStateCode.DOWNLOADING;
            case 5:
                return TorrentStateCode.FINISHED;
            case 6:
                return TorrentStateCode.SEEDING;
            default:
                return TorrentStateCode.UNKNOWN;
        }
    }

    public void torrentRemoved() {
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                this.a.lambda$torrentRemoved$5(torrentEngineListener);
            }
        });
        forceStop();
        Uri uri = this.partsFile;
        if (uri != null) {
            try {
                this.fs.d(uri);
            } catch (FileNotFoundException | UnknownUriException unused) {
            }
        }
    }

    @Override
    public void addTrackers(@NonNull Set<String> set) {
        if (operationNotAllowed()) {
            return;
        }
        for (String str : set) {
            if (str != null) {
                announce_entry announce_entryVar = new announce_entry();
                announce_entryVar.setUrl(str);
                this.th.addTracker(new AnnounceEntry(announce_entryVar));
            }
        }
        saveResumeData(true);
    }

    @Override
    public void forceRecheck() {
        if (operationNotAllowed()) {
            return;
        }
        this.th.forceRecheck();
    }

    @Override
    public long getActiveTime() {
        if (operationNotAllowed()) {
            return 0L;
        }
        return this.th.status().activeDuration() / 1000;
    }

    @Override
    public double getAvailability(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            return 0.0d;
        }
        int i = Integer.MAX_VALUE;
        for (int i2 : iArr) {
            if (i2 < i) {
                i = i2;
            }
        }
        int i3 = 0;
        for (int i4 : iArr) {
            if (i4 > 0 && i4 > i) {
                i3++;
            }
        }
        return (((double) i3) / ((double) iArr.length)) + ((double) i);
    }

    @Override
    public byte[] getBencode() {
        if (!hasMetadata()) {
            return null;
        }
        final AtomicReference atomicReference = new AtomicReference();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        AlertListener alertListener = new AlertListener() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void alert(Alert<?> alert) {
                torrent_handle handle = ((torrent_alert) ((TorrentAlert) alert).swig()).getHandle();
                if (handle == null || !handle.is_valid() || handle.info_hash().ne(TorrentDownloadImpl.this.th.swig().info_hash())) {
                    return;
                }
                AlertType alertTypeType = alert.type();
                if (alertTypeType.equals(AlertType.SAVE_RESUME_DATA)) {
                    try {
                        atomicReference.set(Vectors.byte_vector2bytes(libtorrent.write_resume_data(((SaveResumeDataAlert) alert).params().swig()).bencode()));
                    } catch (Throwable th) {
                        try {
                            Log.e(TorrentDownloadImpl.TAG, "Error building torrent data", th);
                        } catch (Throwable th2) {
                            countDownLatch.countDown();
                            throw th2;
                        }
                    }
                    countDownLatch.countDown();
                }
                if (alertTypeType.equals(AlertType.SAVE_RESUME_DATA_FAILED)) {
                    Log.e(TorrentDownloadImpl.TAG, "Error saving resume data");
                    countDownLatch.countDown();
                }
            }

            @Override
            public int[] types() {
                return new int[]{AlertType.SAVE_RESUME_DATA.swig()};
            }
        };
        try {
            this.sessionManager.addListener(alertListener);
            if (this.th.isValid()) {
                this.th.saveResumeData(TorrentHandle.SAVE_INFO_DICT);
                countDownLatch.await(1000L, TimeUnit.MILLISECONDS);
            }
            return (byte[]) atomicReference.get();
        } catch (InterruptedException unused) {
            return (byte[]) atomicReference.get();
        } finally {
            this.sessionManager.removeListener(alertListener);
        }
    }

    @Override
    public int getConnectedLeechers() {
        if (operationNotAllowed()) {
            return 0;
        }
        TorrentStatus torrentStatusStatus = this.th.status();
        return torrentStatusStatus.numPeers() - torrentStatusStatus.numSeeds();
    }

    @Override
    public int getConnectedPeers() {
        if (operationNotAllowed()) {
            return 0;
        }
        return this.th.status().numPeers();
    }

    @Override
    public int getConnectedSeeds() {
        if (operationNotAllowed()) {
            return 0;
        }
        return this.th.status().numSeeds();
    }

    @Override
    public long getDownloadSpeed() {
        if (operationNotAllowed() || isFinished() || isPaused() || isSeeding()) {
            return 0L;
        }
        return this.th.status().downloadPayloadRate();
    }

    @Override
    public int getDownloadSpeedLimit() {
        if (operationNotAllowed()) {
            return 0;
        }
        return this.th.getDownloadLimit();
    }

    @Override
    public long getETA() {
        if (operationNotAllowed() || getStateCode() != TorrentStateCode.DOWNLOADING) {
            return org.proninyaroslav.libretorrent.core.model.data.TorrentInfo.MAX_ETA;
        }
        TorrentStatus torrentStatusStatus = this.th.status();
        long j = torrentStatusStatus.totalWanted() - torrentStatusStatus.totalWantedDone();
        long jDownloadPayloadRate = torrentStatusStatus.downloadPayloadRate();
        if (j <= 0) {
            return 0L;
        }
        return jDownloadPayloadRate <= 0 ? org.proninyaroslav.libretorrent.core.model.data.TorrentInfo.MAX_ETA : Math.min(j / jDownloadPayloadRate, org.proninyaroslav.libretorrent.core.model.data.TorrentInfo.MAX_ETA);
    }

    @Override
    public Priority[] getFilePriorities() {
        return operationNotAllowed() ? new Priority[0] : PriorityConverter.convert(this.th.filePriorities());
    }

    @Override
    public long[] getFileSizes() {
        FileStorage fileStorageFiles = this.th.torrentFile().files();
        int iNumFiles = fileStorageFiles.numFiles();
        long[] jArr = new long[iNumFiles];
        for (int i = 0; i < iNumFiles; i++) {
            jArr[i] = fileStorageFiles.fileSize(i);
        }
        return jArr;
    }

    @Override
    public double[] getFilesAvailability(int[] iArr) {
        if (!hasMetadata()) {
            return new double[0];
        }
        TorrentInfo torrentInfo = this.th.torrentFile();
        if (torrentInfo == null) {
            return new double[0];
        }
        int iNumFiles = torrentInfo.numFiles();
        if (iNumFiles < 0) {
            return new double[0];
        }
        double[] dArr = new double[iNumFiles];
        if (iArr == null || iArr.length == 0) {
            Arrays.fill(dArr, -1.0d);
            return dArr;
        }
        for (int i = 0; i < iNumFiles; i++) {
            Pair<Integer, Integer> filePieces = getFilePieces(torrentInfo, i);
            if (filePieces == null) {
                dArr[i] = -1.0d;
            } else {
                int iIntValue = filePieces.first.intValue();
                int i2 = 0;
                while (true) {
                    int i3 = 1;
                    if (iIntValue > filePieces.second.intValue()) {
                        break;
                    }
                    if (iArr[iIntValue] <= 0) {
                        i3 = 0;
                    }
                    i2 += i3;
                    iIntValue++;
                }
                dArr[i] = ((double) i2) / ((double) ((filePieces.second.intValue() - filePieces.first.intValue()) + 1));
            }
        }
        return dArr;
    }

    @Override
    public long[] getFilesReceivedBytes() {
        if (operationNotAllowed()) {
            return null;
        }
        return this.th.fileProgress(torrent_handle.piece_granularity);
    }

    @Override
    public String getInfoHash() {
        if (operationNotAllowed()) {
            return null;
        }
        return this.th.infoHash().toString();
    }

    @Override
    public int getMaxConnections() {
        if (operationNotAllowed()) {
            return -1;
        }
        return this.th.swig().max_connections();
    }

    @Override
    public int getMaxUploads() {
        if (operationNotAllowed()) {
            return -1;
        }
        return this.th.swig().max_uploads();
    }

    @Override
    public int getNumDownloadedPieces() {
        if (operationNotAllowed()) {
            return 0;
        }
        return this.th.status().numPieces();
    }

    @Override
    public Uri getPartsFile() {
        TorrentInfo torrentInfo;
        Torrent torrentI;
        if (!hasMetadata() || (torrentInfo = this.th.torrentFile()) == null || (torrentI = this.repo.i(this.id)) == null) {
            return null;
        }
        try {
            return this.fs.c(torrentI.downloadPath, Consts.DOT + torrentInfo.infoHash() + ".parts");
        } catch (Exception e) {
            String str = TAG;
            Log.e(str, "Error changing save path: ");
            Log.e(str, Log.getStackTraceString(e));
            return null;
        }
    }

    @Override
    public List<PeerInfo> getPeerInfoList() {
        if (operationNotAllowed()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        List<AdvancedPeerInfo> listAdvancedPeerInfo = advancedPeerInfo();
        TorrentStatus torrentStatusStatus = this.th.status();
        if (torrentStatusStatus == null) {
            return arrayList;
        }
        Iterator<AdvancedPeerInfo> it = listAdvancedPeerInfo.iterator();
        while (it.hasNext()) {
            arrayList.add(new PeerInfo(it.next(), torrentStatusStatus));
        }
        return arrayList;
    }

    @Override
    public int[] getPiecesAvailability() {
        if (operationNotAllowed()) {
            return new int[0];
        }
        PieceIndexBitfield pieceIndexBitfieldPieces = this.th.status(TorrentHandle.QUERY_PIECES).pieces();
        List<AdvancedPeerInfo> listAdvancedPeerInfo = advancedPeerInfo();
        int[] iArr = new int[pieceIndexBitfieldPieces.size()];
        for (int i = 0; i < pieceIndexBitfieldPieces.size(); i++) {
            iArr[i] = pieceIndexBitfieldPieces.getBit(i) ? 1 : 0;
        }
        Iterator<AdvancedPeerInfo> it = listAdvancedPeerInfo.iterator();
        while (it.hasNext()) {
            PieceIndexBitfield pieceIndexBitfieldPieces2 = it.next().pieces();
            for (int i2 = 0; i2 < pieceIndexBitfieldPieces.size(); i2++) {
                if (pieceIndexBitfieldPieces2.getBit(i2)) {
                    iArr[i2] = iArr[i2] + 1;
                }
            }
        }
        return iArr;
    }

    @Override
    public int getProgress() {
        TorrentStatus torrentStatusStatus;
        if (operationNotAllowed() || (torrentStatusStatus = this.th.status()) == null) {
            return 0;
        }
        float fProgress = torrentStatusStatus.progress();
        if (Float.compare(fProgress, 1.0f) == 0) {
            return 100;
        }
        int i = (int) (fProgress * 100.0f);
        if (i > 0) {
            return Math.min(i, 100);
        }
        return 0;
    }

    @Override
    public long getReceivedBytes() {
        if (operationNotAllowed()) {
            return 0L;
        }
        return this.th.status().totalDone();
    }

    @Override
    public long getSeedingTime() {
        if (operationNotAllowed()) {
            return 0L;
        }
        return this.th.status().seedingDuration() / 1000;
    }

    @Override
    public double getShareRatio() {
        if (operationNotAllowed()) {
            return 0.0d;
        }
        TorrentStatus torrentStatusStatus = this.th.status();
        long jAllTimeUpload = torrentStatusStatus.allTimeUpload();
        long jAllTimeDownload = torrentStatusStatus.allTimeDownload();
        long j = torrentStatusStatus.totalDone();
        if (jAllTimeDownload < j * 0.01d) {
            jAllTimeDownload = j;
        }
        if (jAllTimeDownload != 0) {
            return Math.min(jAllTimeUpload / jAllTimeDownload, MAX_RATIO);
        }
        if (jAllTimeUpload == 0) {
            return 0.0d;
        }
        return MAX_RATIO;
    }

    @Override
    public long getSize() {
        TorrentInfo torrentInfo;
        if (hasMetadata() && (torrentInfo = this.th.torrentFile()) != null) {
            return torrentInfo.totalSize();
        }
        return 0L;
    }

    @Override
    public TorrentStateCode getStateCode() {
        if (!this.sessionManager.isRunning()) {
            return TorrentStateCode.STOPPED;
        }
        if (isPaused()) {
            return TorrentStateCode.PAUSED;
        }
        if (!this.th.isValid()) {
            return TorrentStateCode.ERROR;
        }
        TorrentStatus torrentStatusStatus = this.th.status();
        boolean zIsPaused = isPaused(torrentStatusStatus);
        if (zIsPaused && torrentStatusStatus.isFinished()) {
            return TorrentStateCode.FINISHED;
        }
        if (!zIsPaused || torrentStatusStatus.isFinished()) {
            return (zIsPaused || !torrentStatusStatus.isFinished()) ? stateToStateCode(torrentStatusStatus.state()) : TorrentStateCode.SEEDING;
        }
        return TorrentStateCode.PAUSED;
    }

    @Override
    public TorrentStream getStream(int i) {
        TorrentInfo torrentInfo;
        if (!hasMetadata() || (torrentInfo = this.th.torrentFile()) == null) {
            return null;
        }
        FileStorage fileStorageFiles = torrentInfo.files();
        Pair<Integer, Integer> filePieces = getFilePieces(torrentInfo, i);
        if (filePieces != null) {
            return new TorrentStream(this.id, i, filePieces.first.intValue(), filePieces.second.intValue(), torrentInfo.pieceLength(), fileStorageFiles.fileOffset(i), fileStorageFiles.fileSize(i), torrentInfo.pieceSize(filePieces.second.intValue()));
        }
        throw new IllegalArgumentException("Incorrect file index");
    }

    @Override
    public String getTorrentId() {
        return this.id;
    }

    @Override
    public TorrentMetaInfo getTorrentMetaInfo() throws DecodeException {
        if (operationNotAllowed()) {
            return null;
        }
        TorrentInfo torrentInfo = this.th.torrentFile();
        if (torrentInfo != null) {
            return new TorrentMetaInfo(torrentInfo);
        }
        String infoHash = getInfoHash();
        String torrentName = getTorrentName();
        if (infoHash == null || torrentName == null) {
            return null;
        }
        return new TorrentMetaInfo(torrentName, infoHash);
    }

    @Override
    public String getTorrentName() {
        Torrent torrentI = this.repo.i(this.id);
        if (torrentI == null) {
            return null;
        }
        return torrentI.name;
    }

    @Override
    public int getTotalLeechers() {
        if (operationNotAllowed()) {
            return 0;
        }
        TorrentStatus torrentStatusStatus = this.th.status();
        int iNumIncomplete = torrentStatusStatus.numIncomplete();
        return iNumIncomplete > 0 ? iNumIncomplete : torrentStatusStatus.listPeers() - torrentStatusStatus.listSeeds();
    }

    @Override
    public int getTotalPeers() {
        if (operationNotAllowed()) {
            return 0;
        }
        TorrentStatus torrentStatusStatus = this.th.status();
        int iNumComplete = torrentStatusStatus.numComplete() + torrentStatusStatus.numIncomplete();
        return iNumComplete > 0 ? iNumComplete : torrentStatusStatus.listPeers();
    }

    @Override
    public int getTotalSeeds() {
        if (operationNotAllowed()) {
            return 0;
        }
        TorrentStatus torrentStatusStatus = this.th.status();
        int iNumComplete = torrentStatusStatus.numComplete();
        return iNumComplete > 0 ? iNumComplete : torrentStatusStatus.listSeeds();
    }

    @Override
    public long getTotalSentBytes() {
        if (operationNotAllowed()) {
            return 0L;
        }
        return this.th.status().allTimeUpload();
    }

    @Override
    public long getTotalWanted() {
        if (operationNotAllowed()) {
            return 0L;
        }
        return this.th.status().totalWanted();
    }

    @Override
    public List<TrackerInfo> getTrackerInfoList() {
        if (operationNotAllowed()) {
            return new ArrayList();
        }
        List<AnnounceEntry> listTrackers = this.th.trackers();
        ArrayList arrayList = new ArrayList();
        Iterator<AnnounceEntry> it = listTrackers.iterator();
        while (it.hasNext()) {
            arrayList.add(new TrackerInfo(it.next()));
        }
        return arrayList;
    }

    @Override
    public Set<String> getTrackersUrl() {
        if (operationNotAllowed()) {
            return new HashSet();
        }
        List<AnnounceEntry> listTrackers = this.th.trackers();
        HashSet hashSet = new HashSet(listTrackers.size());
        Iterator<AnnounceEntry> it = listTrackers.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().url());
        }
        return hashSet;
    }

    @Override
    public long getUploadSpeed() {
        if (operationNotAllowed() || ((isFinished() && !isSeeding()) || isPaused())) {
            return 0L;
        }
        return this.th.status().uploadPayloadRate();
    }

    @Override
    public int getUploadSpeedLimit() {
        if (operationNotAllowed()) {
            return 0;
        }
        return this.th.getUploadLimit();
    }

    @Override
    public boolean hasMissingFiles() {
        return this.hasMissingFiles;
    }

    @Override
    public boolean havePiece(int i) {
        return !operationNotAllowed() && this.th.havePiece(i);
    }

    @Override
    public boolean isAutoManaged() {
        return !operationNotAllowed() && this.th.status().flags().and_(TorrentFlags.AUTO_MANAGED).non_zero();
    }

    @Override
    public boolean isDownloading() {
        return getDownloadSpeed() > 0;
    }

    @Override
    public boolean isFinished() {
        return !operationNotAllowed() && this.th.status().isFinished();
    }

    @Override
    public boolean isFirstLastPiecePriority() {
        return this.hasFirstLastPiecePriority;
    }

    @Override
    public boolean isPaused() {
        return !operationNotAllowed() && (isPaused(this.th.status(true)) || this.sessionManager.isPaused() || !this.sessionManager.isRunning());
    }

    @Override
    public boolean isSeeding() {
        return !operationNotAllowed() && this.th.status().isSeeding();
    }

    @Override
    public boolean isSequentialDownload() {
        return !operationNotAllowed() && this.th.status().flags().and_(TorrentFlags.SEQUENTIAL_DOWNLOAD).non_zero();
    }

    @Override
    public boolean isStopped() {
        return this.stopped;
    }

    @Override
    public boolean isValid() {
        return this.th.isValid();
    }

    @Override
    public String makeMagnet(boolean z) {
        if (operationNotAllowed()) {
            return null;
        }
        String strMakeMagnetUri = this.th.makeMagnetUri();
        if (!z) {
            return strMakeMagnetUri;
        }
        String fileIndicesBep53 = getFileIndicesBep53(this.th.filePriorities());
        if (TextUtils.isEmpty(fileIndicesBep53)) {
            return strMakeMagnetUri;
        }
        return strMakeMagnetUri + "&so=" + fileIndicesBep53;
    }

    @Override
    public void pause() {
        if (operationNotAllowed()) {
            return;
        }
        doPause();
    }

    @Override
    public void pauseManually() {
        Torrent torrentI;
        if (operationNotAllowed() || (torrentI = this.repo.i(this.id)) == null) {
            return;
        }
        torrentI.manuallyPaused = true;
        this.repo.c(torrentI);
        doPause();
    }

    @Override
    public boolean[] pieces() {
        if (operationNotAllowed()) {
            return new boolean[0];
        }
        PieceIndexBitfield pieceIndexBitfieldPieces = this.th.status(TorrentHandle.QUERY_PIECES).pieces();
        boolean[] zArr = new boolean[pieceIndexBitfieldPieces.size()];
        for (int i = 0; i < pieceIndexBitfieldPieces.size(); i++) {
            zArr[i] = pieceIndexBitfieldPieces.getBit(i);
        }
        return zArr;
    }

    @Override
    public void prioritizeFiles(@NonNull Priority[] priorityArr) {
        TorrentInfo torrentInfo;
        if (!hasMetadata() || (torrentInfo = this.th.torrentFile()) == null || this.repo.i(this.id) == null) {
            return;
        }
        org.libtorrent4j.Priority[] priorityArrConvert = PriorityConverter.convert(priorityArr);
        if (torrentInfo.numFiles() != priorityArrConvert.length) {
            return;
        }
        this.th.prioritizeFiles(priorityArrConvert);
        if (this.hasFirstLastPiecePriority) {
            applyFirstLastPiecePriority(true, priorityArr);
        }
    }

    @Override
    public void readPiece(int i) {
        if (operationNotAllowed()) {
            return;
        }
        this.th.readPiece(i);
    }

    @Override
    public void remove(boolean z) {
        Torrent torrentI = this.repo.i(this.id);
        if (torrentI != null) {
            this.repo.g(torrentI);
        }
        if (operationNotAllowed()) {
            return;
        }
        if (z) {
            this.sessionManager.remove(this.th, SessionHandle.DELETE_FILES);
        } else {
            this.sessionManager.remove(this.th, SessionHandle.DELETE_PARTFILE);
        }
    }

    @Override
    public void replaceTrackers(@NonNull Set<String> set) {
        ArrayList arrayList = new ArrayList(set.size());
        for (String str : set) {
            announce_entry announce_entryVar = new announce_entry();
            announce_entryVar.setUrl(str);
            arrayList.add(new AnnounceEntry(announce_entryVar));
        }
        if (operationNotAllowed()) {
            return;
        }
        this.th.replaceTrackers(arrayList);
        saveResumeData(true);
    }

    @Override
    public hb1 requestStop() {
        hb1 hb1Var = this.stopEvent;
        if (hb1Var != null && (this.stopRequested || this.stopped)) {
            return hb1Var;
        }
        this.stopRequested = true;
        hb1 hb1VarB = hb1.b(new rb1() {
            @Override
            public final void a(lb1 lb1Var) throws Exception {
                this.a.lambda$requestStop$9(lb1Var);
            }
        });
        this.stopEvent = hb1VarB;
        return hb1VarB;
    }

    @Override
    public void requestTrackerAnnounce() {
        if (operationNotAllowed()) {
            return;
        }
        this.th.forceReannounce();
    }

    @Override
    public void resume() {
        Torrent torrentI;
        if (operationNotAllowed() || (torrentI = this.repo.i(this.id)) == null || torrentI.manuallyPaused) {
            return;
        }
        doResume();
    }

    @Override
    public void resumeManually() {
        Torrent torrentI;
        if (operationNotAllowed() || (torrentI = this.repo.i(this.id)) == null) {
            return;
        }
        torrentI.manuallyPaused = false;
        this.repo.c(torrentI);
        doResume();
    }

    @Override
    public void saveResumeData(boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z || jCurrentTimeMillis - this.lastSaveResumeTime >= 10000) {
            this.lastSaveResumeTime = jCurrentTimeMillis;
            try {
                if (this.th.isValid()) {
                    this.criticalWork.setSaveResume(true);
                    this.th.saveResumeData(TorrentHandle.SAVE_INFO_DICT);
                }
            } catch (Exception e) {
                String str = TAG;
                Log.w(str, "Error triggering resume data of " + this.id + StringUtils.PROCESS_POSTFIX_DELIMITER);
                Log.w(str, Log.getStackTraceString(e));
                this.criticalWork.setSaveResume(false);
            }
        }
    }

    @Override
    public void setAutoManaged(boolean z) {
        if (operationNotAllowed() || isPaused()) {
            return;
        }
        this.autoManaged = z;
        if (z) {
            this.th.setFlags(TorrentFlags.AUTO_MANAGED);
        } else {
            this.th.unsetFlags(TorrentFlags.AUTO_MANAGED);
        }
    }

    @Override
    public synchronized void setDownloadPath(@NonNull Uri uri) {
        this.criticalWork.setMoving(true);
        Torrent torrentI = this.repo.i(this.id);
        if (torrentI == null) {
            return;
        }
        torrentI.downloadPath = uri;
        this.repo.c(torrentI);
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                this.a.lambda$setDownloadPath$10(torrentEngineListener);
            }
        });
        try {
            this.th.moveStorage(this.fs.h(uri), MoveFlags.ALWAYS_REPLACE_FILES);
        } catch (Exception e) {
            String str = TAG;
            Log.e(str, "Error changing save path: ");
            Log.e(str, Log.getStackTraceString(e));
        }
    }

    @Override
    public void setDownloadSpeedLimit(int i) {
        if (operationNotAllowed()) {
            return;
        }
        this.th.setDownloadLimit(i);
        saveResumeData(true);
    }

    @Override
    public void setFirstLastPiecePriority(boolean z) {
        if (this.hasFirstLastPiecePriority == z) {
            return;
        }
        this.hasFirstLastPiecePriority = z;
        if (hasMetadata()) {
            applyFirstLastPiecePriority(z);
            saveResumeData(true);
            Torrent torrentI = this.repo.i(this.id);
            if (torrentI != null) {
                torrentI.firstLastPiecePriority = z;
                this.repo.c(torrentI);
            }
        }
    }

    @Override
    public void setInterestedPieces(@NonNull TorrentStream torrentStream, int i, int i2) {
        if (i < 0 || i2 < 0) {
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            int i4 = i + i3;
            if (i4 > torrentStream.lastFilePiece) {
                return;
            }
            i3++;
            if (i3 == i2) {
                int i5 = 5;
                while (i4 <= torrentStream.lastFilePiece) {
                    if (!operationNotAllowed() && !this.th.havePiece(i4)) {
                        this.th.piecePriority(i4, org.libtorrent4j.Priority.TOP_PRIORITY);
                        this.th.setPieceDeadline(i4, 1000);
                        i5--;
                        if (i5 == 0) {
                            break;
                        }
                    }
                    i4++;
                }
            } else if (!operationNotAllowed() && !this.th.havePiece(i4)) {
                this.th.piecePriority(i4, org.libtorrent4j.Priority.TOP_PRIORITY);
                this.th.setPieceDeadline(i4, 1000);
            }
        }
    }

    @Override
    public void setMaxConnections(int i) {
        if (operationNotAllowed()) {
            return;
        }
        this.th.swig().set_max_connections(i);
    }

    @Override
    public void setMaxUploads(int i) {
        if (operationNotAllowed()) {
            return;
        }
        this.th.swig().set_max_uploads(i);
    }

    @Override
    public void setSequentialDownload(boolean z) {
        if (operationNotAllowed()) {
            return;
        }
        if (z) {
            this.th.setFlags(TorrentFlags.SEQUENTIAL_DOWNLOAD);
        } else {
            this.th.unsetFlags(TorrentFlags.SEQUENTIAL_DOWNLOAD);
        }
        saveResumeData(true);
        Torrent torrentI = this.repo.i(this.id);
        if (torrentI != null) {
            torrentI.sequentialDownload = z;
            this.repo.c(torrentI);
        }
    }

    @Override
    public void setTorrentName(@NonNull String str) {
        Torrent torrentI = this.repo.i(this.id);
        if (torrentI == null) {
            return;
        }
        torrentI.name = str;
        this.repo.c(torrentI);
    }

    @Override
    public void setUploadSpeedLimit(int i) {
        if (operationNotAllowed()) {
            return;
        }
        this.th.setUploadLimit(i);
        saveResumeData(true);
    }

    private void applyFirstLastPiecePriority(boolean z, Priority[] priorityArr) {
        if (hasMetadata()) {
            Log.i(TAG, "Download first and last piece first: " + this.id);
            if (priorityArr.length == 0) {
                priorityArr = getFilePriorities();
            }
            org.libtorrent4j.Priority[] priorityArrPiecePriorities = this.th.piecePriorities();
            TorrentInfo torrentInfo = this.th.torrentFile();
            FileStorage fileStorageFiles = torrentInfo.files();
            for (int i = 0; i < priorityArr.length; i++) {
                Priority priority = priorityArr[i];
                if (priority != Priority.IGNORE) {
                    if (z) {
                        priority = Priority.TOP_PRIORITY;
                    }
                    org.libtorrent4j.Priority priorityConvert = PriorityConverter.convert(priority);
                    Pair<Integer, Integer> filePieces = getFilePieces(torrentInfo, i);
                    if (filePieces != null) {
                        double dCeil = Math.ceil((fileStorageFiles.fileSize(i) * 0.01d) / ((double) torrentInfo.pieceLength()));
                        for (int i2 = 0; i2 < dCeil; i2++) {
                            priorityArrPiecePriorities[filePieces.first.intValue() + i2] = priorityConvert;
                            priorityArrPiecePriorities[filePieces.second.intValue() - i2] = priorityConvert;
                        }
                    }
                }
            }
            Log.e(TAG, "" + Arrays.toString(priorityArrPiecePriorities));
            this.th.prioritizePieces(priorityArrPiecePriorities);
        }
    }

    private boolean isPaused(TorrentStatus torrentStatus) {
        return torrentStatus.flags().and_(TorrentFlags.PAUSED).non_zero();
    }
}
