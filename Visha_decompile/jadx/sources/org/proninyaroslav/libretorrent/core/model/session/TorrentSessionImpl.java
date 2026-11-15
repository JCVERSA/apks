package org.proninyaroslav.libretorrent.core.model.session;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import defpackage.d5;
import defpackage.gd1;
import defpackage.hb1;
import defpackage.ie8;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.FileUtils;
import org.libtorrent4j.AlertListener;
import org.libtorrent4j.AnnounceEntry;
import org.libtorrent4j.ErrorCode;
import org.libtorrent4j.FileStorage;
import org.libtorrent4j.Pair;
import org.libtorrent4j.SessionHandle;
import org.libtorrent4j.SessionManager;
import org.libtorrent4j.SessionParams;
import org.libtorrent4j.SettingsPack;
import org.libtorrent4j.Sha1Hash;
import org.libtorrent4j.TcpEndpoint;
import org.libtorrent4j.TorrentFlags;
import org.libtorrent4j.TorrentHandle;
import org.libtorrent4j.TorrentInfo;
import org.libtorrent4j.Vectors;
import org.libtorrent4j.alerts.Alert;
import org.libtorrent4j.alerts.AlertType;
import org.libtorrent4j.alerts.FileCompletedAlert;
import org.libtorrent4j.alerts.ListenFailedAlert;
import org.libtorrent4j.alerts.MetadataReceivedAlert;
import org.libtorrent4j.alerts.PortmapErrorAlert;
import org.libtorrent4j.alerts.SaveResumeDataAlert;
import org.libtorrent4j.alerts.SessionErrorAlert;
import org.libtorrent4j.alerts.TorrentAlert;
import org.libtorrent4j.swig.add_torrent_params;
import org.libtorrent4j.swig.alert;
import org.libtorrent4j.swig.alert_category_t;
import org.libtorrent4j.swig.bdecode_node;
import org.libtorrent4j.swig.byte_vector;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.int_string_map;
import org.libtorrent4j.swig.ip_filter;
import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.session_params;
import org.libtorrent4j.swig.settings_pack;
import org.libtorrent4j.swig.sha1_hash;
import org.libtorrent4j.swig.string_vector;
import org.libtorrent4j.swig.tcp_endpoint_vector;
import org.libtorrent4j.swig.torrent_flags_t;
import org.libtorrent4j.swig.torrent_handle;
import org.libtorrent4j.swig.torrent_info;
import org.proninyaroslav.libretorrent.core.exception.DecodeException;
import org.proninyaroslav.libretorrent.core.exception.TorrentAlreadyExistsException;
import org.proninyaroslav.libretorrent.core.exception.UnknownUriException;
import org.proninyaroslav.libretorrent.core.model.AddTorrentParams;
import org.proninyaroslav.libretorrent.core.model.TorrentEngineListener;
import org.proninyaroslav.libretorrent.core.model.data.MagnetInfo;
import org.proninyaroslav.libretorrent.core.model.data.Priority;
import org.proninyaroslav.libretorrent.core.model.data.SessionStats;
import org.proninyaroslav.libretorrent.core.model.data.entity.FastResume;
import org.proninyaroslav.libretorrent.core.model.data.entity.Torrent;
import org.proninyaroslav.libretorrent.core.model.data.metainfo.TorrentMetaInfo;
import org.proninyaroslav.libretorrent.core.model.session.TorrentDownload;
import org.proninyaroslav.libretorrent.core.settings.SessionSettings;
import org.proninyaroslav.libretorrent.core.storage.TorrentRepository;
import org.proninyaroslav.libretorrent.core.system.FileDescriptorWrapper;
import org.proninyaroslav.libretorrent.core.system.FileSystemFacade;
import org.proninyaroslav.libretorrent.core.system.SystemFacade;
import org.proninyaroslav.libretorrent.core.utils.Utils;

public class TorrentSessionImpl extends SessionManager implements TorrentSession {
    private static final String PEER_FINGERPRINT = "Lr";
    private static final String USER_AGENT = "LibreTorrent %s";
    private ArrayList<String> addTorrentsList;
    private gd1 disposables;
    private FileSystemFacade fs;
    private InnerListener innerListener;
    private ConcurrentLinkedQueue<TorrentEngineListener> listeners;
    private ExecutorService loadTorrentsExec;
    private ConcurrentHashMap<String, byte[]> loadedMagnets;
    private HashSet<String> magnets;
    private Thread parseIpFilterThread;
    private TorrentRepository repo;
    private Queue<LoadTorrentTask> restoreTorrentsQueue;
    private SessionLogger sessionLogger;
    private SessionSettings settings;
    private ReentrantLock settingsLock;
    private boolean started;
    private AtomicBoolean stopRequested;
    private ReentrantLock syncMagnet;
    private SystemFacade system;
    private final TorrentEngineListener torrentTaskListener;
    private ConcurrentHashMap<String, TorrentDownload> torrentTasks;
    private static final String TAG = TorrentSession.class.getSimpleName();
    private static final int[] INNER_LISTENER_TYPES = {AlertType.ADD_TORRENT.swig(), AlertType.METADATA_RECEIVED.swig(), AlertType.SESSION_ERROR.swig(), AlertType.PORTMAP_ERROR.swig(), AlertType.LISTEN_FAILED.swig(), AlertType.LOG.swig(), AlertType.DHT_LOG.swig(), AlertType.PEER_LOG.swig(), AlertType.PORTMAP_LOG.swig(), AlertType.TORRENT_LOG.swig(), AlertType.SESSION_STATS.swig(), AlertType.SAVE_RESUME_DATA.swig(), AlertType.FILE_RENAMED.swig(), AlertType.FILE_COMPLETED.swig(), AlertType.OVERSIZED_FILE.swig(), AlertType.FILE_PROGRESS.swig()};
    private static final int[] pieceSize = {0, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768};

    public static class AnonymousClass2 {
        static final int[] $SwitchMap$org$libtorrent4j$alerts$AlertType;
        static final int[] $SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$EncryptMode;
        static final int[] $SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$ProxyType;

        static {
            int[] iArr = new int[SessionSettings.ProxyType.values().length];
            $SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$ProxyType = iArr;
            try {
                iArr[SessionSettings.ProxyType.SOCKS4.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$ProxyType[SessionSettings.ProxyType.SOCKS5.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$ProxyType[SessionSettings.ProxyType.HTTP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SessionSettings.EncryptMode.values().length];
            $SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$EncryptMode = iArr2;
            try {
                iArr2[SessionSettings.EncryptMode.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$EncryptMode[SessionSettings.EncryptMode.FORCED.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr3 = new int[AlertType.values().length];
            $SwitchMap$org$libtorrent4j$alerts$AlertType = iArr3;
            try {
                iArr3[AlertType.ADD_TORRENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.METADATA_RECEIVED.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.SESSION_STATS.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.SAVE_RESUME_DATA.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.FILE_RENAMED.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.FILE_COMPLETED.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.OVERSIZED_FILE.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.FILE_PROGRESS.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.SESSION_ERROR.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.LISTEN_FAILED.ordinal()] = 10;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.PORTMAP_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public interface CallListener {
        void apply(TorrentEngineListener torrentEngineListener);
    }

    public final class InnerListener implements AlertListener {
        public static void lambda$alert$2(TorrentHandle torrentHandle, String str, TorrentEngineListener torrentEngineListener) {
            torrentEngineListener.onFileComplete(torrentHandle.savePath() + File.separator + str);
        }

        @Override
        public void alert(Alert<?> alert) {
            switch (AnonymousClass2.$SwitchMap$org$libtorrent4j$alerts$AlertType[alert.type().ordinal()]) {
                case 1:
                    TorrentHandle torrentHandleFind = TorrentSessionImpl.this.find(((TorrentAlert) alert).handle().infoHash());
                    if (torrentHandleFind != null) {
                        final String hex = torrentHandleFind.infoHash().toHex();
                        if (!TorrentSessionImpl.this.magnets.contains(hex)) {
                            TorrentSessionImpl.this.torrentTasks.put(hex, TorrentSessionImpl.this.newTask(torrentHandleFind, hex));
                            if (TorrentSessionImpl.this.addTorrentsList.contains(hex)) {
                                TorrentSessionImpl.this.notifyListeners(new CallListener() {
                                    @Override
                                    public final void apply(TorrentEngineListener torrentEngineListener) {
                                        torrentEngineListener.onTorrentAdded(hex);
                                    }
                                });
                            } else {
                                TorrentSessionImpl.this.notifyListeners(new CallListener() {
                                    @Override
                                    public final void apply(TorrentEngineListener torrentEngineListener) {
                                        torrentEngineListener.onTorrentLoaded(hex);
                                    }
                                });
                            }
                            TorrentSessionImpl.this.addTorrentsList.remove(hex);
                            TorrentSessionImpl.this.checkStop();
                            TorrentSessionImpl.this.runNextLoadTorrentTask();
                            break;
                        }
                    }
                    break;
                case 2:
                    TorrentSessionImpl.this.handleMetadataReceived((MetadataReceivedAlert) alert);
                    break;
                case 3:
                    TorrentSessionImpl.this.handleStats();
                    break;
                case 4:
                    TorrentSessionImpl.this.handleSaveMetadata((SaveResumeDataAlert) alert);
                    break;
                case 5:
                case 7:
                case 8:
                    break;
                case 6:
                    if (alert instanceof FileCompletedAlert) {
                        int iIndex = ((FileCompletedAlert) alert).index();
                        final TorrentHandle torrentHandleFind2 = TorrentSessionImpl.this.find(((TorrentAlert) alert).handle().infoHash());
                        String strFilePath = torrentHandleFind2.torrentFile().files().filePath(iIndex);
                        if (!TextUtils.isEmpty(strFilePath) && strFilePath.endsWith(".xdl")) {
                            final String strSubstring = strFilePath.substring(0, strFilePath.length() - 4);
                            torrentHandleFind2.renameFile(iIndex, strSubstring);
                            TorrentSessionImpl.this.notifyListeners(new CallListener() {
                                @Override
                                public final void apply(TorrentEngineListener torrentEngineListener) {
                                    TorrentSessionImpl.InnerListener.lambda$alert$2(torrentHandleFind2, strSubstring, torrentEngineListener);
                                }
                            });
                            Log.i(TorrentSessionImpl.TAG, "FILE_COMPLETED:" + strSubstring);
                            break;
                        }
                    }
                    break;
                default:
                    TorrentSessionImpl.this.checkError(alert);
                    if (TorrentSessionImpl.this.settings.G) {
                        TorrentSessionImpl.this.sessionLogger.send(alert);
                    }
                    break;
            }
        }

        @Override
        public int[] types() {
            return TorrentSessionImpl.INNER_LISTENER_TYPES;
        }

        private InnerListener() {
        }
    }

    public final class LoadTorrentTask implements Runnable {
        private String torrentId;
        private File saveDir = null;
        private String magnetUri = null;
        private boolean isMagnet = false;
        private boolean magnetPaused = false;
        private boolean magnetSequentialDownload = false;

        public LoadTorrentTask(String str) {
            this.torrentId = str;
        }

        public void lambda$run$0(TorrentEngineListener torrentEngineListener) {
            torrentEngineListener.onRestoreSessionError(this.torrentId);
        }

        public void putMagnet(String str, File file, boolean z, boolean z2) {
            this.magnetUri = str;
            this.saveDir = file;
            this.magnetPaused = z;
            this.magnetSequentialDownload = z2;
            this.isMagnet = true;
        }

        @Override
        public void run() {
            try {
                if (TorrentSessionImpl.this.isTorrentAlreadyRunning(this.torrentId)) {
                    return;
                }
                if (this.isMagnet) {
                    TorrentSessionImpl.this.download(this.magnetUri, this.saveDir, this.magnetPaused, this.magnetSequentialDownload);
                } else {
                    TorrentSessionImpl.this.restoreDownload(this.torrentId);
                }
            } catch (Exception e) {
                Log.e(TorrentSessionImpl.TAG, "Unable to restore torrent from previous session: " + this.torrentId, e);
                Torrent torrentI = TorrentSessionImpl.this.repo.i(this.torrentId);
                if (torrentI != null) {
                    torrentI.error = e.toString();
                    TorrentSessionImpl.this.repo.c(torrentI);
                }
                TorrentSessionImpl.this.notifyListeners(new CallListener() {
                    @Override
                    public final void apply(TorrentEngineListener torrentEngineListener) {
                        this.a.lambda$run$0(torrentEngineListener);
                    }
                });
            }
        }
    }

    public TorrentSessionImpl(@NonNull TorrentRepository torrentRepository, @NonNull FileSystemFacade fileSystemFacade, @NonNull SystemFacade systemFacade) {
        super(false);
        this.listeners = new ConcurrentLinkedQueue<>();
        this.settings = new SessionSettings();
        this.settingsLock = new ReentrantLock();
        this.restoreTorrentsQueue = new LinkedList();
        this.torrentTasks = new ConcurrentHashMap<>();
        this.magnets = new HashSet<>();
        this.loadedMagnets = new ConcurrentHashMap<>();
        this.addTorrentsList = new ArrayList<>();
        this.syncMagnet = new ReentrantLock();
        this.disposables = new gd1();
        this.torrentTaskListener = new TorrentEngineListener() {
            @Override
            public void onTorrentRemoved(@NonNull String str) {
                TorrentSessionImpl.this.torrentTasks.remove(str);
            }
        };
        this.stopRequested = new AtomicBoolean(false);
        this.started = false;
        this.sessionLogger = new SessionLogger();
        this.repo = torrentRepository;
        this.fs = fileSystemFacade;
        this.system = systemFacade;
        this.innerListener = new InnerListener();
        this.loadTorrentsExec = Executors.newCachedThreadPool();
    }

    private void addDefaultTrackers(add_torrent_params add_torrent_paramsVar) {
        String[] strArr = getSettings().O;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        string_vector trackers = add_torrent_paramsVar.getTrackers();
        if (trackers == null) {
            trackers = new string_vector();
        }
        trackers.addAll(Arrays.asList(strArr));
        add_torrent_paramsVar.setTrackers(trackers);
    }

    private void applyMaxStoredLogs(SessionSettings sessionSettings) {
        if (sessionSettings.H == this.sessionLogger.getMaxStoredLogs()) {
            return;
        }
        this.sessionLogger.setMaxStoredLogs(sessionSettings.H);
    }

    private void applyProxy(SessionSettings sessionSettings, SettingsPack settingsPack) {
        settingsPack.setInteger(settings_pack.int_types.proxy_type.swigValue(), convertProxyType(sessionSettings.x, sessionSettings.B));
        if (sessionSettings.x != SessionSettings.ProxyType.NONE) {
            settingsPack.setInteger(settings_pack.int_types.proxy_port.swigValue(), sessionSettings.z);
            settingsPack.setString(settings_pack.string_types.proxy_hostname.swigValue(), sessionSettings.y);
            if (sessionSettings.B) {
                settingsPack.setString(settings_pack.string_types.proxy_username.swigValue(), sessionSettings.C);
                settingsPack.setString(settings_pack.string_types.proxy_password.swigValue(), sessionSettings.D);
            }
            settingsPack.setBoolean(settings_pack.bool_types.proxy_peer_connections.swigValue(), sessionSettings.A);
            settingsPack.setBoolean(settings_pack.bool_types.proxy_tracker_connections.swigValue(), true);
            settingsPack.setBoolean(settings_pack.bool_types.proxy_hostnames.swigValue(), true);
        }
    }

    private void applySessionLoggerFilters(final SessionSettings sessionSettings) {
        this.disposables.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$applySessionLoggerFilters$8(sessionSettings);
            }
        }).j(k29.a()).f());
    }

    private void applySettings(SessionSettings sessionSettings, boolean z) {
        applyMaxStoredLogs(sessionSettings);
        applySessionLoggerFilters(sessionSettings);
        enableSessionLogger(false);
        if (!z && sessionSettings.N) {
            setRandomPort(sessionSettings);
        }
        SettingsPack settingsPack = settings();
        if (settingsPack != null) {
            settingsToSettingsPack(sessionSettings, settingsPack);
            applySettingsPack(settingsPack);
        }
    }

    private void applySettingsPack(SettingsPack settingsPack) {
        applySettings(settingsPack);
        saveSettings();
    }

    public void checkError(final Alert<?> alert) {
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                TorrentSessionImpl.lambda$checkError$5(alert, torrentEngineListener);
            }
        });
    }

    public void checkStop() {
        if (this.stopRequested.get() && this.torrentTasks.isEmpty() && this.addTorrentsList.isEmpty()) {
            super.stop();
        }
    }

    private int convertEncryptMode(SessionSettings.EncryptMode encryptMode) {
        int i = AnonymousClass2.$SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$EncryptMode[encryptMode.ordinal()];
        if (i != 1) {
            return i != 2 ? settings_pack.enc_policy.pe_disabled.swigValue() : settings_pack.enc_policy.pe_forced.swigValue();
        }
        return settings_pack.enc_policy.pe_enabled.swigValue();
    }

    private int convertProxyType(SessionSettings.ProxyType proxyType, boolean z) {
        int i = AnonymousClass2.$SwitchMap$org$proninyaroslav$libretorrent$core$settings$SessionSettings$ProxyType[proxyType.ordinal()];
        if (i == 1) {
            return settings_pack.proxy_type_t.socks4.swigValue();
        }
        if (i == 2) {
            return z ? settings_pack.proxy_type_t.socks5_pw.swigValue() : settings_pack.proxy_type_t.socks5.swigValue();
        }
        if (i != 3) {
            return settings_pack.proxy_type_t.none.swigValue();
        }
        return z ? settings_pack.proxy_type_t.http_pw.swigValue() : settings_pack.proxy_type_t.http.swigValue();
    }

    private SettingsPack defaultSettingsPack() {
        SettingsPack settingsPack = new SettingsPack();
        settingsToSettingsPack(this.settings, settingsPack);
        return settingsPack;
    }

    private static String dhtBootstrapNodes() {
        return "dht.libtorrent.org:25401,router.bittorrent.com:6881,dht.transmissionbt.com:6881,outer.silotis.us:6881";
    }

    private void download(String str, AddTorrentParams addTorrentParams, byte[] bArr) throws UnknownUriException, IOException {
        if (operationNotAllowed()) {
            return;
        }
        cancelFetchMagnet(str);
        Torrent torrentI = this.repo.i(str);
        if (torrentI == null) {
            throw new IOException("Torrent " + str + " is null");
        }
        this.addTorrentsList.add(addTorrentParams.sha1hash);
        File file = new File(this.fs.h(addTorrentParams.downloadPath));
        if (torrentI.isDownloadingMetadata()) {
            download(addTorrentParams.source, file, addTorrentParams.addPaused, addTorrentParams.sequentialDownload);
            return;
        }
        TorrentDownload torrentDownload = this.torrentTasks.get(torrentI.id);
        if (torrentDownload != null) {
            torrentDownload.remove(false);
        }
        if (addTorrentParams.fromMagnet) {
            download(bArr, file, addTorrentParams.filePriorities, addTorrentParams.sequentialDownload, addTorrentParams.addPaused, (List<TcpEndpoint>) null);
            return;
        }
        FileDescriptorWrapper fileDescriptorWrapperN = this.fs.n(Uri.parse(addTorrentParams.source));
        try {
            FileInputStream fileInputStream = new FileInputStream(fileDescriptorWrapperN.f("r"));
            try {
                FileChannel channel = fileInputStream.getChannel();
                download(new TorrentInfo(channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size())), file, addTorrentParams.filePriorities, addTorrentParams.sequentialDownload, addTorrentParams.addPaused, (List<TcpEndpoint>) null);
                fileInputStream.close();
                fileDescriptorWrapperN.close();
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            if (fileDescriptorWrapperN != null) {
                try {
                    fileDescriptorWrapperN.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
            }
            throw th3;
        }
    }

    private void enableSessionLogger(boolean z) {
        if (z) {
            this.sessionLogger.resume();
            return;
        }
        this.sessionLogger.stopRecording();
        this.sessionLogger.pause();
        this.sessionLogger.clean();
    }

    private alert_category_t getAlertMask(SessionSettings sessionSettings) {
        alert_category_t alert_category_tVar = alert.all_categories;
        return !sessionSettings.G ? alert_category_tVar.and_(alert.session_log_notification.or_(alert.torrent_log_notification).or_(alert.peer_log_notification).or_(alert.dht_log_notification).or_(alert.port_mapping_log_notification).or_(alert.picker_log_notification).inv()) : alert_category_tVar;
    }

    private int getAllowedEncryptLevel(SessionSettings.EncryptMode encryptMode) {
        return encryptMode == SessionSettings.EncryptMode.FORCED ? settings_pack.enc_level.pe_rc4.swigValue() : settings_pack.enc_level.pe_both.swigValue();
    }

    private String getIface(String str, int i) {
        String str2;
        if (str.equals("0.0.0.0")) {
            str2 = "0.0.0.0:%1$d,[::]:%1$d";
        } else {
            if (str.contains(StringUtils.PROCESS_POSTFIX_DELIMITER)) {
                str = "[" + str + "]";
            }
            str2 = str + ":%1$d";
        }
        return String.format(str2, Integer.valueOf(i));
    }

    public void handleMetadataReceived(MetadataReceivedAlert metadataReceivedAlert) {
        TorrentHandle torrentHandleHandle = metadataReceivedAlert.handle();
        if (this.magnets.contains(torrentHandleHandle.infoHash().toHex())) {
            torrentHandleHandle.saveResumeData(TorrentHandle.SAVE_INFO_DICT);
        }
    }

    public void handleSaveMetadata(SaveResumeDataAlert saveResumeDataAlert) {
        TorrentHandle torrentHandleHandle = saveResumeDataAlert.handle();
        final String hex = torrentHandleHandle.infoHash().toHex();
        if (this.magnets.contains(hex)) {
            this.loadedMagnets.put(hex, Vectors.byte_vector2bytes(libtorrent.write_resume_data(saveResumeDataAlert.params().swig()).bencode()));
            remove(torrentHandleHandle, SessionHandle.DELETE_FILES);
            notifyListeners(new CallListener() {
                @Override
                public final void apply(TorrentEngineListener torrentEngineListener) {
                    this.a.lambda$handleSaveMetadata$6(hex, torrentEngineListener);
                }
            });
        }
    }

    public void handleStats() {
        if (operationNotAllowed()) {
            return;
        }
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                this.a.lambda$handleStats$7(torrentEngineListener);
            }
        });
    }

    public void handleStoppingTasks() {
        this.torrentTasks.clear();
        checkStop();
    }

    public boolean isTorrentAlreadyRunning(String str) {
        return this.torrentTasks.containsKey(str) || this.addTorrentsList.contains(str);
    }

    public void lambda$applySessionLoggerFilters$8(SessionSettings sessionSettings) {
        this.sessionLogger.applyFilterParams(new SessionLogger.SessionFilterParams(sessionSettings.I, sessionSettings.J, sessionSettings.K, sessionSettings.L, sessionSettings.M));
    }

    public static void lambda$checkError$5(Alert alert, TorrentEngineListener torrentEngineListener) {
        String errorMsg;
        String str;
        switch (AnonymousClass2.$SwitchMap$org$libtorrent4j$alerts$AlertType[alert.type().ordinal()]) {
            case 9:
                ErrorCode errorCodeError = ((SessionErrorAlert) alert).error();
                errorMsg = SessionErrors.getErrorMsg(errorCodeError);
                if (!SessionErrors.isNonCritical(errorCodeError)) {
                    torrentEngineListener.onSessionError(errorMsg);
                }
                str = errorMsg;
                break;
            case 10:
                ListenFailedAlert listenFailedAlert = (ListenFailedAlert) alert;
                errorMsg = SessionErrors.getErrorMsg(listenFailedAlert.error());
                if (!SessionErrors.isNonCritical(listenFailedAlert.error())) {
                    torrentEngineListener.onSessionError(errorMsg);
                }
                str = errorMsg;
                break;
            case 11:
                ErrorCode errorCodeError2 = ((PortmapErrorAlert) alert).error();
                errorMsg = SessionErrors.getErrorMsg(errorCodeError2);
                if (!SessionErrors.isNonCritical(errorCodeError2)) {
                    torrentEngineListener.onNatError(errorMsg);
                }
                str = errorMsg;
                break;
            default:
                str = null;
                break;
        }
        if (str != null) {
            Log.e(TAG, "Session error: " + str);
        }
    }

    public void lambda$enableIpFilter$2(Uri uri) {
        if (operationNotAllowed() || Thread.interrupted()) {
            return;
        }
        IPFilterImpl iPFilterImpl = new IPFilterImpl();
        final int file = new IPFilterParser().parseFile(uri, this.fs, iPFilterImpl);
        if (Thread.interrupted()) {
            return;
        }
        if (file != 0 && swig() != null && !operationNotAllowed()) {
            swig().set_ip_filter(iPFilterImpl.getFilter());
        }
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                torrentEngineListener.onIpFilterParsed(file);
            }
        });
    }

    public void lambda$handleSaveMetadata$6(String str, TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onMagnetLoaded(str, this.loadedMagnets.get(str));
    }

    public void lambda$handleStats$7(TorrentEngineListener torrentEngineListener) {
        torrentEngineListener.onSessionStats(new SessionStats(dhtNodes(), getTotalDownload(), getTotalUpload(), getDownloadSpeed(), getUploadSpeed(), getListenPort()));
    }

    public void lambda$onAfterStart$4() {
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                torrentEngineListener.onSessionStarted();
            }
        });
    }

    public void lambda$stopTasks$3(Throwable th) throws Exception {
        Log.e(TAG, "Error stopping torrents: " + Log.getStackTraceString(th));
        handleStoppingTasks();
    }

    private SessionParams loadSettings() {
        try {
            String strD = this.repo.d();
            if (strD == null) {
                return new SessionParams(defaultSettingsPack());
            }
            File file = new File(strD);
            if (!file.exists()) {
                return new SessionParams(defaultSettingsPack());
            }
            byte_vector byte_vectorVarBytes2byte_vector = Vectors.bytes2byte_vector(FileUtils.readFileToByteArray(file));
            bdecode_node bdecode_nodeVar = new bdecode_node();
            error_code error_codeVar = new error_code();
            if (bdecode_node.bdecode(byte_vectorVarBytes2byte_vector, bdecode_nodeVar, error_codeVar) == 0) {
                session_params session_paramsVar = session_params.read_session_params(bdecode_nodeVar);
                byte_vectorVarBytes2byte_vector.clear();
                return new SessionParams(session_paramsVar);
            }
            throw new IllegalArgumentException("Can't decode data: " + error_codeVar.message());
        } catch (Exception e) {
            String str = TAG;
            Log.e(str, "Error loading session state: ");
            Log.e(str, Log.getStackTraceString(e));
            return new SessionParams(defaultSettingsPack());
        }
    }

    private void mergeTorrent(String str, AddTorrentParams addTorrentParams, byte[] bArr) {
        TorrentDownload torrentDownload;
        org.libtorrent4j.AddTorrentParams addTorrentParams2;
        if (operationNotAllowed() || (torrentDownload = this.torrentTasks.get(str)) == null) {
            return;
        }
        torrentDownload.setSequentialDownload(addTorrentParams.sequentialDownload);
        Priority[] priorityArr = addTorrentParams.filePriorities;
        if (priorityArr != null) {
            torrentDownload.prioritizeFiles(priorityArr);
        }
        torrentDownload.setFirstLastPiecePriority(addTorrentParams.firstLastPiecePriority);
        try {
            if (bArr == null) {
                String path = Uri.parse(addTorrentParams.source).getPath();
                if (path == null) {
                    throw new IllegalArgumentException("Torrent source path is null");
                }
                addTorrentParams2 = new org.libtorrent4j.AddTorrentParams(libtorrent.load_torrent_file(path));
            } else {
                byte_vector byte_vectorVarBytes2byte_vector = Vectors.bytes2byte_vector(bArr);
                bdecode_node bdecode_nodeVar = new bdecode_node();
                error_code error_codeVar = new error_code();
                if (bdecode_node.bdecode(byte_vectorVarBytes2byte_vector, bdecode_nodeVar, error_codeVar) != 0) {
                    throw new IllegalArgumentException(error_codeVar.message());
                }
                addTorrentParams2 = new org.libtorrent4j.AddTorrentParams(libtorrent.load_torrent_parsed(bdecode_nodeVar));
            }
            TorrentHandle torrentHandleFind = find(Sha1Hash.parseHex(str));
            if (torrentHandleFind != null) {
                for (String str2 : addTorrentParams2.getTrackers()) {
                    if (str2 != null && !str2.isEmpty()) {
                        torrentHandleFind.addTracker(new AnnounceEntry(str2));
                    }
                }
                for (String str3 : addTorrentParams2.getUrlSeeds()) {
                    if (str3 != null && !str3.isEmpty()) {
                        torrentHandleFind.addUrlSeed(str3);
                    }
                }
            }
            torrentDownload.saveResumeData(true);
        } catch (Exception unused) {
        }
        if (addTorrentParams.addPaused) {
            torrentDownload.pauseManually();
        } else {
            torrentDownload.resumeManually();
        }
    }

    public TorrentDownload newTask(TorrentHandle torrentHandle, String str) {
        TorrentDownloadImpl torrentDownloadImpl = new TorrentDownloadImpl(this, this.repo, this.fs, this.listeners, str, torrentHandle, this.settings.v);
        torrentDownloadImpl.setMaxConnections(this.settings.g);
        torrentDownloadImpl.setMaxUploads(this.settings.h);
        return torrentDownloadImpl;
    }

    public void notifyListeners(@NonNull CallListener callListener) {
        for (TorrentEngineListener torrentEngineListener : this.listeners) {
            if (torrentEngineListener != null) {
                callListener.apply(torrentEngineListener);
            }
        }
    }

    private boolean operationNotAllowed() {
        return swig() == null || this.stopRequested.get();
    }

    private org.libtorrent4j.AddTorrentParams parseMagnetUri(String str) {
        error_code error_codeVar = new error_code();
        add_torrent_params add_torrent_paramsVar = libtorrent.parse_magnet_uri(str, error_codeVar);
        if (error_codeVar.value() == 0) {
            return new org.libtorrent4j.AddTorrentParams(add_torrent_paramsVar);
        }
        throw new IllegalArgumentException(error_codeVar.message());
    }

    @NonNull
    private String resolveMagnetMetadataSavePath() throws IOException {
        File parentFile;
        File fileI = this.fs.i();
        if (fileI != null) {
            return fileI.getAbsolutePath();
        }
        String strD = this.repo.d();
        if (strD != null && (parentFile = new File(strD).getParentFile()) != null) {
            if (parentFile.exists() || parentFile.mkdirs()) {
                return parentFile.getAbsolutePath();
            }
            throw new IOException("Cannot create directory for magnet fetch");
        }
        String property = System.getProperty("java.io.tmpdir");
        if (property == null || property.isEmpty()) {
            throw new IOException("No save path for magnet metadata");
        }
        return property;
    }

    public void restoreDownload(String str) throws IOException {
        if (operationNotAllowed()) {
            return;
        }
        FastResume fastResumeF = this.repo.f(str);
        if (fastResumeF == null) {
            throw new IOException("Fast resume data not found");
        }
        error_code error_codeVar = new error_code();
        byte_vector byte_vectorVarBytes2byte_vector = Vectors.bytes2byte_vector(fastResumeF.b);
        bdecode_node bdecode_nodeVar = new bdecode_node();
        if (bdecode_node.bdecode(byte_vectorVarBytes2byte_vector, bdecode_nodeVar, error_codeVar) != 0) {
            throw new IllegalArgumentException("Can't decode data: " + error_codeVar.message());
        }
        error_codeVar.clear();
        add_torrent_params add_torrent_paramsVar = libtorrent.read_resume_data(bdecode_nodeVar, error_codeVar);
        if (error_codeVar.value() != 0) {
            throw new IllegalArgumentException("Unable to read the resume data: " + error_codeVar.message());
        }
        torrent_flags_t torrent_flags_tVarAnd_ = add_torrent_paramsVar.getFlags().and_(TorrentFlags.NEED_SAVE_RESUME.inv());
        add_torrent_paramsVar.setFlags(this.settings.v ? torrent_flags_tVarAnd_.or_(TorrentFlags.AUTO_MANAGED) : torrent_flags_tVarAnd_.and_(TorrentFlags.AUTO_MANAGED.inv()));
        if (operationNotAllowed()) {
            return;
        }
        swig().async_add_torrent(add_torrent_paramsVar);
    }

    public void runNextLoadTorrentTask() {
        if (operationNotAllowed()) {
            this.restoreTorrentsQueue.clear();
            return;
        }
        try {
            LoadTorrentTask loadTorrentTaskPoll = this.restoreTorrentsQueue.poll();
            if (loadTorrentTaskPoll != null) {
                this.loadTorrentsExec.execute(loadTorrentTaskPoll);
            }
        } catch (Exception e) {
            Log.e(TAG, Log.getStackTraceString(e));
        }
    }

    private void saveAllResumeData() {
        for (TorrentDownload torrentDownload : this.torrentTasks.values()) {
            if (torrentDownload != null && !torrentDownload.hasMissingFiles()) {
                torrentDownload.saveResumeData(false);
            }
        }
    }

    private void saveSettings() {
        try {
            this.repo.b(Vectors.byte_vector2bytes(session_params.write_session_params(swig().session_state()).bencode()));
        } catch (Exception e) {
            String str = TAG;
            Log.e(str, "Error saving session state: ");
            Log.e(str, Log.getStackTraceString(e));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setRandomPort(SessionSettings sessionSettings) {
        Pair pairA = SessionSettings.a();
        sessionSettings.j = ((Integer) pairA.first).intValue();
        sessionSettings.k = ((Integer) pairA.second).intValue();
    }

    private void settingsToSettingsPack(SessionSettings sessionSettings, SettingsPack settingsPack) {
        settingsPack.activeDownloads(sessionSettings.a);
        settingsPack.activeSeeds(sessionSettings.b);
        settingsPack.activeLimit(sessionSettings.i);
        settingsPack.maxPeerlistSize(sessionSettings.c);
        settingsPack.tickInterval(sessionSettings.d);
        settingsPack.inactivityTimeout(sessionSettings.e);
        settingsPack.connectionsLimit(sessionSettings.f);
        settingsPack.listenInterfaces(getIface(sessionSettings.w, sessionSettings.j));
        settingsPack.setInteger(settings_pack.int_types.max_retry_port_bind.swigValue(), sessionSettings.k - sessionSettings.j);
        settingsPack.setEnableDht(sessionSettings.n);
        settingsPack.setBoolean(settings_pack.bool_types.enable_lsd.swigValue(), sessionSettings.o);
        settingsPack.setBoolean(settings_pack.bool_types.enable_incoming_utp.swigValue(), sessionSettings.p);
        settingsPack.setBoolean(settings_pack.bool_types.enable_outgoing_utp.swigValue(), sessionSettings.p);
        settingsPack.setBoolean(settings_pack.bool_types.enable_upnp.swigValue(), sessionSettings.q);
        settingsPack.setBoolean(settings_pack.bool_types.enable_natpmp.swigValue(), sessionSettings.r);
        int iConvertEncryptMode = convertEncryptMode(sessionSettings.u);
        int allowedEncryptLevel = getAllowedEncryptLevel(sessionSettings.u);
        settingsPack.setInteger(settings_pack.int_types.in_enc_policy.swigValue(), iConvertEncryptMode);
        settingsPack.setInteger(settings_pack.int_types.out_enc_policy.swigValue(), iConvertEncryptMode);
        settingsPack.setInteger(settings_pack.int_types.allowed_enc_level.swigValue(), allowedEncryptLevel);
        settingsPack.uploadRateLimit(sessionSettings.m);
        settingsPack.downloadRateLimit(sessionSettings.l);
        settingsPack.anonymousMode(sessionSettings.E);
        settingsPack.seedingOutgoingConnections(sessionSettings.F);
        settingsPack.setInteger(settings_pack.int_types.alert_mask.swigValue(), getAlertMask(sessionSettings).to_int());
        settingsPack.setBoolean(settings_pack.bool_types.validate_https_trackers.swigValue(), sessionSettings.P);
        applyProxy(sessionSettings, settingsPack);
    }

    private void stopTasks() {
        this.disposables.b(mc7.E(this.torrentTasks.values()).u(new ie8() {
            @Override
            public final boolean test(Object obj) {
                return Objects.nonNull((TorrentDownload) obj);
            }
        }).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return ((TorrentDownload) obj).requestStop();
            }
        }).j0().i(new t74() {
            @Override
            public final Object apply(Object obj) {
                return hb1.e((List) obj);
            }
        }).h(new d5() {
            @Override
            public final void run() {
                this.a.handleStoppingTasks();
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) throws Exception {
                this.b.lambda$stopTasks$3((Throwable) obj);
            }
        }));
    }

    @Override
    public void addListener(TorrentEngineListener torrentEngineListener) {
        this.listeners.add(torrentEngineListener);
    }

    @Override
    public Torrent addTorrent(@NonNull AddTorrentParams addTorrentParams, boolean z) throws UnknownUriException, DecodeException, TorrentAlreadyExistsException, IOException {
        byte[] loadedMagnet = null;
        if (operationNotAllowed()) {
            return null;
        }
        Torrent torrent = new Torrent(addTorrentParams.sha1hash, addTorrentParams.downloadPath, addTorrentParams.name, addTorrentParams.addPaused, System.currentTimeMillis(), addTorrentParams.sequentialDownload, addTorrentParams.firstLastPiecePriority);
        if (addTorrentParams.fromMagnet) {
            loadedMagnet = getLoadedMagnet(addTorrentParams.sha1hash);
            removeLoadedMagnet(addTorrentParams.sha1hash);
            if (loadedMagnet == null) {
                torrent.setMagnetUri(addTorrentParams.source);
            }
        }
        if (this.repo.i(torrent.id) != null) {
            mergeTorrent(torrent.id, addTorrentParams, loadedMagnet);
            throw new TorrentAlreadyExistsException();
        }
        this.repo.h(torrent);
        if (!addTorrentParams.tags.isEmpty()) {
            this.repo.k(torrent.id, addTorrentParams.tags);
        }
        if (!torrent.isDownloadingMetadata() && addTorrentParams.filePriorities.length == 0) {
            try {
                FileDescriptorWrapper fileDescriptorWrapperN = this.fs.n(Uri.parse(addTorrentParams.source));
                try {
                    FileInputStream fileInputStream = new FileInputStream(fileDescriptorWrapperN.f("r"));
                    try {
                        Priority[] priorityArr = new Priority[new TorrentMetaInfo(fileInputStream).fileCount];
                        addTorrentParams.filePriorities = priorityArr;
                        Arrays.fill(priorityArr, Priority.DEFAULT);
                        fileInputStream.close();
                        fileDescriptorWrapperN.close();
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    if (fileDescriptorWrapperN != null) {
                        try {
                            fileDescriptorWrapperN.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                    }
                    throw th3;
                }
            } catch (FileNotFoundException unused) {
            }
        }
        try {
            try {
                download(torrent.id, addTorrentParams, loadedMagnet);
                if (z && !addTorrentParams.fromMagnet) {
                    try {
                        this.fs.d(Uri.parse(addTorrentParams.source));
                    } catch (UnknownUriException unused2) {
                    }
                }
                return torrent;
            } catch (Exception e) {
                this.repo.g(torrent);
                throw e;
            }
        } catch (Throwable th5) {
            if (z && !addTorrentParams.fromMagnet) {
                try {
                    this.fs.d(Uri.parse(addTorrentParams.source));
                } catch (UnknownUriException unused3) {
                }
            }
            throw th5;
        }
    }

    @Override
    public void cancelFetchMagnet(@NonNull String str) {
        if (operationNotAllowed() || !this.magnets.contains(str)) {
            return;
        }
        this.magnets.remove(str);
        TorrentHandle torrentHandleFind = find(Sha1Hash.parseHex(str));
        if (torrentHandleFind == null || !torrentHandleFind.isValid()) {
            return;
        }
        remove(torrentHandleFind, SessionHandle.DELETE_FILES);
    }

    @Override
    public void deleteTorrent(@NonNull final String str, boolean z) {
        if (operationNotAllowed()) {
            return;
        }
        TorrentDownload task = getTask(str);
        if (task != null) {
            task.remove(z);
            return;
        }
        Torrent torrentI = this.repo.i(str);
        if (torrentI != null) {
            this.repo.g(torrentI);
        }
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                torrentEngineListener.onTorrentRemoved(str);
            }
        });
    }

    @Override
    public long dhtNodes() {
        return super.dhtNodes();
    }

    @Override
    public void disableIpFilter() {
        if (operationNotAllowed()) {
            return;
        }
        Thread thread = this.parseIpFilterThread;
        if (thread != null && !thread.isInterrupted()) {
            this.parseIpFilterThread.interrupt();
        }
        swig().set_ip_filter(new ip_filter());
    }

    @Override
    public void enableIpFilter(@NonNull final Uri uri) {
        if (operationNotAllowed()) {
            return;
        }
        Thread thread = this.parseIpFilterThread;
        if (thread != null && !thread.isInterrupted()) {
            this.parseIpFilterThread.interrupt();
        }
        Thread thread2 = new Thread(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$enableIpFilter$2(uri);
            }
        });
        this.parseIpFilterThread = thread2;
        thread2.start();
    }

    @Override
    public MagnetInfo fetchMagnet(@NonNull String str) throws Exception {
        org.libtorrent4j.AddTorrentParams addTorrentParamsFetchMagnet;
        if (operationNotAllowed() || (addTorrentParamsFetchMagnet = fetchMagnet(parseMagnetUri(str))) == null) {
            return null;
        }
        return new MagnetInfo(str, addTorrentParamsFetchMagnet.getInfoHashes().getBest().toHex(), addTorrentParamsFetchMagnet.getName(), Arrays.asList(PriorityConverter.convert(addTorrentParamsFetchMagnet.filePriorities())));
    }

    @Override
    public long getDhtNodes() {
        return stats().dhtNodes();
    }

    @Override
    public long getDownloadSpeed() {
        return stats().downloadRate();
    }

    @Override
    public int getDownloadSpeedLimit() {
        SettingsPack settingsPack = settings();
        if (settingsPack == null) {
            return -1;
        }
        return settingsPack.downloadRateLimit();
    }

    @Override
    public int getListenPort() {
        if (swig() == null) {
            return -1;
        }
        return swig().listen_port();
    }

    @Override
    public byte[] getLoadedMagnet(String str) {
        return this.loadedMagnets.get(str);
    }

    @Override
    public int[] getPieceSizeList() {
        return pieceSize;
    }

    @Override
    public SessionSettings getSettings() {
        this.settingsLock.lock();
        try {
            return new SessionSettings(this.settings);
        } finally {
            this.settingsLock.unlock();
        }
    }

    @Override
    public TorrentDownload getTask(String str) {
        return this.torrentTasks.get(str);
    }

    @Override
    public long getTotalDownload() {
        return stats().totalDownload();
    }

    @Override
    public long getTotalUpload() {
        return stats().totalUpload();
    }

    @Override
    public long getUploadSpeed() {
        return stats().uploadRate();
    }

    @Override
    public int getUploadSpeedLimit() {
        SettingsPack settingsPack = settings();
        if (settingsPack == null) {
            return -1;
        }
        return settingsPack.uploadRateLimit();
    }

    @Override
    public boolean hasTaskRunning() {
        Iterator<TorrentDownload> it = this.torrentTasks.values().iterator();
        while (it.hasNext()) {
            if (!it.next().isPaused()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isDHTEnabled() {
        SettingsPack settingsPack = settings();
        return settingsPack != null && settingsPack.isEnableDht();
    }

    @Override
    public boolean isPeXEnabled() {
        return true;
    }

    @Override
    public boolean isRunning() {
        return super.isRunning() && this.started;
    }

    @Override
    public void onAfterStart() {
        if (this.settings.G) {
            SettingsPack settingsPack = settings();
            if (settingsPack == null) {
                return;
            }
            settingsPack.setInteger(settings_pack.int_types.alert_mask.swigValue(), getAlertMask(this.settings).to_int());
            applySettingsPack(settingsPack);
            enableSessionLogger(false);
        }
        saveSettings();
        this.started = true;
        this.disposables.b(hb1.d(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onAfterStart$4();
            }
        }).j(k29.c()).f());
    }

    @Override
    public void onAfterStop() {
        notifyListeners(new CallListener() {
            @Override
            public final void apply(TorrentEngineListener torrentEngineListener) {
                torrentEngineListener.onSessionStopped();
            }
        });
        this.stopRequested.set(false);
    }

    @Override
    public void onApplySettings(SettingsPack settingsPack) {
        saveSettings();
    }

    @Override
    public void onBeforeStart() {
        addListener(this.torrentTaskListener);
        addListener(this.innerListener);
    }

    @Override
    public void onBeforeStop() {
        this.disposables.d();
        this.started = false;
        enableSessionLogger(false);
        this.parseIpFilterThread = null;
        this.magnets.clear();
        this.loadedMagnets.clear();
        removeListener(this.torrentTaskListener);
        removeListener(this.innerListener);
    }

    @Override
    public MagnetInfo parseMagnet(@NonNull String str) {
        org.libtorrent4j.AddTorrentParams magnetUri = org.libtorrent4j.AddTorrentParams.parseMagnetUri(str);
        String hex = magnetUri.getInfoHashes().getBest().toHex();
        return new MagnetInfo(str, hex, TextUtils.isEmpty(magnetUri.getName()) ? hex : magnetUri.getName(), Arrays.asList(PriorityConverter.convert(magnetUri.filePriorities())));
    }

    @Override
    public void pauseAll() {
        if (operationNotAllowed()) {
            return;
        }
        for (TorrentDownload torrentDownload : this.torrentTasks.values()) {
            if (torrentDownload != null) {
                torrentDownload.pause();
            }
        }
    }

    @Override
    public void pauseAllManually() {
        if (operationNotAllowed()) {
            return;
        }
        for (TorrentDownload torrentDownload : this.torrentTasks.values()) {
            if (torrentDownload != null) {
                torrentDownload.pauseManually();
            }
        }
    }

    @Override
    public void removeListener(TorrentEngineListener torrentEngineListener) {
        this.listeners.remove(torrentEngineListener);
    }

    @Override
    public void removeLoadedMagnet(String str) {
        this.loadedMagnets.remove(str);
    }

    @Override
    public void requestStop() {
        if (this.stopRequested.getAndSet(true)) {
            return;
        }
        saveAllResumeData();
        stopTasks();
    }

    @Override
    public void restoreTorrents() {
        String strH;
        if (operationNotAllowed()) {
            return;
        }
        for (Torrent torrent : this.repo.a()) {
            if (torrent != null && !isTorrentAlreadyRunning(torrent.id)) {
                try {
                    strH = this.fs.h(torrent.downloadPath);
                } catch (UnknownUriException e) {
                    String str = TAG;
                    Log.e(str, "Unable to restore torrent:");
                    Log.e(str, Log.getStackTraceString(e));
                    strH = null;
                }
                LoadTorrentTask loadTorrentTask = new LoadTorrentTask(torrent.id);
                if (strH != null && torrent.isDownloadingMetadata()) {
                    loadTorrentTask.putMagnet(torrent.getMagnet(), new File(strH), torrent.manuallyPaused, torrent.sequentialDownload);
                }
                this.restoreTorrentsQueue.add(loadTorrentTask);
            }
        }
        runNextLoadTorrentTask();
    }

    @Override
    public void resumeAll() {
        if (operationNotAllowed()) {
            return;
        }
        for (TorrentDownload torrentDownload : this.torrentTasks.values()) {
            if (torrentDownload != null) {
                torrentDownload.resume();
            }
        }
    }

    @Override
    public void resumeAllManually() {
        if (operationNotAllowed()) {
            return;
        }
        for (TorrentDownload torrentDownload : this.torrentTasks.values()) {
            if (torrentDownload != null) {
                torrentDownload.resumeManually();
            }
        }
    }

    @Override
    public void setAutoManaged(boolean z) {
        if (operationNotAllowed()) {
            return;
        }
        this.settings.v = z;
        Iterator<TorrentDownload> it = this.torrentTasks.values().iterator();
        while (it.hasNext()) {
            it.next().setAutoManaged(z);
        }
    }

    @Override
    public void setDefaultTrackersList(@NonNull String[] strArr) {
        this.settings.O = strArr;
    }

    @Override
    public void setMaxConnectionsPerTorrent(int i) {
        if (operationNotAllowed()) {
            return;
        }
        this.settings.g = i;
        for (TorrentDownload torrentDownload : this.torrentTasks.values()) {
            if (torrentDownload != null) {
                torrentDownload.setMaxConnections(i);
            }
        }
    }

    @Override
    public void setMaxUploadsPerTorrent(int i) {
        if (operationNotAllowed()) {
            return;
        }
        this.settings.h = i;
        for (TorrentDownload torrentDownload : this.torrentTasks.values()) {
            if (torrentDownload != null) {
                torrentDownload.setMaxUploads(i);
            }
        }
    }

    @Override
    public void setSettings(@NonNull SessionSettings sessionSettings) {
        setSettings(sessionSettings, true);
    }

    @Override
    public void start() {
        if (isRunning()) {
            return;
        }
        SessionParams sessionParamsLoadSettings = loadSettings();
        settings_pack settings_packVarSwig = sessionParamsLoadSettings.getSettings().swig();
        if (this.settings.Q) {
            sessionParamsLoadSettings.setPosixDiskIO();
        } else {
            sessionParamsLoadSettings.setDefaultDiskIO();
        }
        settings_packVarSwig.set_str(settings_pack.string_types.dht_bootstrap_nodes.swigValue(), dhtBootstrapNodes());
        settings_packVarSwig.set_bool(settings_pack.bool_types.enable_ip_notifier.swigValue(), false);
        settings_packVarSwig.set_int(settings_pack.int_types.alert_queue_size.swigValue(), 5000);
        settings_packVarSwig.set_bool(settings_pack.bool_types.announce_to_all_trackers.swigValue(), true);
        settings_packVarSwig.set_bool(settings_pack.bool_types.announce_to_all_tiers.swigValue(), true);
        String strA = this.system.a();
        if (strA != null) {
            int[] iArrE = Utils.e(strA);
            String strGenerate_fingerprint = libtorrent.generate_fingerprint(PEER_FINGERPRINT, iArrE[0], iArrE[1], iArrE[2], 0);
            settings_pack.string_types string_typesVar = settings_pack.string_types.peer_fingerprint;
            settings_packVarSwig.set_str(string_typesVar.swigValue(), strGenerate_fingerprint);
            String str = String.format(USER_AGENT, Utils.a(strA));
            settings_pack.string_types string_typesVar2 = settings_pack.string_types.user_agent;
            settings_packVarSwig.set_str(string_typesVar2.swigValue(), str);
            String str2 = TAG;
            Log.i(str2, "Peer fingerprint: " + settings_packVarSwig.get_str(string_typesVar.swigValue()));
            Log.i(str2, "User agent: " + settings_packVarSwig.get_str(string_typesVar2.swigValue()));
        }
        SessionSettings sessionSettings = this.settings;
        if (sessionSettings.N) {
            setRandomPort(sessionSettings);
        }
        settingsToSettingsPack(this.settings, sessionParamsLoadSettings.getSettings());
        super.start(sessionParamsLoadSettings);
    }

    @Override
    public SessionLogger getLogger() {
        return this.sessionLogger;
    }

    @Override
    public void setSettings(@NonNull SessionSettings sessionSettings, boolean z) {
        this.settingsLock.lock();
        try {
            this.settings = sessionSettings;
            applySettings(sessionSettings, z);
        } finally {
            this.settingsLock.unlock();
        }
    }

    private org.libtorrent4j.AddTorrentParams fetchMagnet(org.libtorrent4j.AddTorrentParams addTorrentParams) throws Exception {
        torrent_handle torrent_handleVar = null;
        if (operationNotAllowed()) {
            return null;
        }
        add_torrent_params add_torrent_paramsVarSwig = addTorrentParams.swig();
        sha1_hash sha1_hashVar = add_torrent_paramsVarSwig.getInfo_hashes().get_best();
        if (sha1_hashVar == null) {
            return null;
        }
        String str = sha1_hashVar.to_hex();
        boolean z = false;
        try {
            this.syncMagnet.lock();
            try {
                torrent_handle torrent_handleVarFind_torrent = swig().find_torrent(sha1_hashVar);
                if (torrent_handleVarFind_torrent == null || !torrent_handleVarFind_torrent.is_valid()) {
                    z = true;
                } else {
                    torrent_info torrent_infoVar = torrent_handleVarFind_torrent.torrent_file_ptr();
                    if (torrent_infoVar != null && torrent_infoVar.is_valid()) {
                        torrent_handleVarFind_torrent.save_resume_data(torrent_handle.save_info_dict);
                    }
                }
                if (z) {
                    this.magnets.add(str);
                    if (TextUtils.isEmpty(add_torrent_paramsVarSwig.getName())) {
                        add_torrent_paramsVarSwig.setName(str);
                    }
                    add_torrent_paramsVarSwig.setSave_path(resolveMagnetMetadataSavePath());
                    add_torrent_paramsVarSwig.setFlags(add_torrent_paramsVarSwig.getFlags().and_(TorrentFlags.AUTO_MANAGED.inv()).or_(TorrentFlags.UPLOAD_MODE).or_(TorrentFlags.STOP_WHEN_READY));
                    addDefaultTrackers(add_torrent_paramsVarSwig);
                    error_code error_codeVar = new error_code();
                    torrent_handle torrent_handleVarAdd_torrent = swig().add_torrent(add_torrent_paramsVarSwig, error_codeVar);
                    if (torrent_handleVarAdd_torrent.is_valid() && !error_codeVar.failed()) {
                        torrent_handleVarAdd_torrent.resume();
                    }
                    this.magnets.remove(str);
                    if (error_codeVar.failed()) {
                        throw new IllegalStateException("add_torrent failed: " + error_codeVar.message() + " (" + error_codeVar.value() + ")");
                    }
                    throw new IllegalStateException("add_torrent returned invalid handle");
                }
                this.syncMagnet.unlock();
                return new org.libtorrent4j.AddTorrentParams(add_torrent_paramsVarSwig);
            } catch (Throwable th) {
                this.syncMagnet.unlock();
                throw th;
            }
        } catch (Exception e) {
            if (0 != 0 && 0 != 0 && torrent_handleVar.is_valid()) {
                swig().remove_torrent(null);
            }
            throw new Exception(e);
        }
    }

    private void download(byte[] bArr, File file, Priority[] priorityArr, boolean z, boolean z2, List<TcpEndpoint> list) {
        download(bArr == null ? null : new TorrentInfo(bArr), file, priorityArr, z, z2, list);
    }

    private void download(TorrentInfo torrentInfo, File file, Priority[] priorityArr, boolean z, boolean z2, List<TcpEndpoint> list) {
        torrent_flags_t torrent_flags_tVarAnd_;
        torrent_flags_t torrent_flags_tVarAnd_2;
        torrent_flags_t torrent_flags_tVarAnd_3;
        if (operationNotAllowed()) {
            return;
        }
        if (torrentInfo != null) {
            if (torrentInfo.isValid()) {
                FileStorage fileStorageFiles = torrentInfo.files();
                int_string_map int_string_mapVar = new int_string_map();
                for (int i = 0; i < fileStorageFiles.numFiles(); i++) {
                    int_string_mapVar.put(Integer.valueOf(i), fileStorageFiles.filePath(i) + ".xdl");
                }
                torrent_handle torrent_handleVarFind_torrent = swig().find_torrent(torrentInfo.swig().info_hash());
                if (torrent_handleVarFind_torrent == null || !torrent_handleVarFind_torrent.is_valid()) {
                    add_torrent_params add_torrent_paramsVar = new add_torrent_params();
                    add_torrent_paramsVar.set_ti(torrentInfo.swig());
                    add_torrent_paramsVar.set_renamed_files(int_string_mapVar);
                    if (file != null) {
                        add_torrent_paramsVar.setSave_path(file.getAbsolutePath());
                    }
                    if (priorityArr != null) {
                        if (torrentInfo.files().numFiles() == priorityArr.length) {
                            byte_vector byte_vectorVar = new byte_vector();
                            for (Priority priority : priorityArr) {
                                if (priority == null) {
                                    byte_vectorVar.add(Byte.valueOf(org.libtorrent4j.Priority.IGNORE.swig()));
                                } else {
                                    byte_vectorVar.add(Byte.valueOf(PriorityConverter.convert(priority).swig()));
                                }
                            }
                            add_torrent_paramsVar.set_file_priorities(byte_vectorVar);
                        } else {
                            throw new IllegalArgumentException("Priorities count should be equals to the number of files");
                        }
                    }
                    if (list != null && !list.isEmpty()) {
                        tcp_endpoint_vector tcp_endpoint_vectorVar = new tcp_endpoint_vector();
                        Iterator<TcpEndpoint> it = list.iterator();
                        while (it.hasNext()) {
                            tcp_endpoint_vectorVar.add(it.next().swig());
                        }
                        add_torrent_paramsVar.setPeers(tcp_endpoint_vectorVar);
                    }
                    torrent_flags_t torrent_flags_tVarOr_ = add_torrent_paramsVar.getFlags().or_(TorrentFlags.NEED_SAVE_RESUME);
                    if (this.settings.v) {
                        torrent_flags_tVarAnd_ = torrent_flags_tVarOr_.or_(TorrentFlags.AUTO_MANAGED);
                    } else {
                        torrent_flags_tVarAnd_ = torrent_flags_tVarOr_.and_(TorrentFlags.AUTO_MANAGED.inv());
                    }
                    if (z) {
                        torrent_flags_tVarAnd_2 = torrent_flags_tVarAnd_.or_(TorrentFlags.SEQUENTIAL_DOWNLOAD);
                    } else {
                        torrent_flags_tVarAnd_2 = torrent_flags_tVarAnd_.and_(TorrentFlags.SEQUENTIAL_DOWNLOAD.inv());
                    }
                    if (z2) {
                        torrent_flags_tVarAnd_3 = torrent_flags_tVarAnd_2.or_(TorrentFlags.PAUSED);
                    } else {
                        torrent_flags_tVarAnd_3 = torrent_flags_tVarAnd_2.and_(TorrentFlags.PAUSED.inv());
                    }
                    add_torrent_paramsVar.setFlags(torrent_flags_tVarAnd_3);
                    addDefaultTrackers(add_torrent_paramsVar);
                    swig().async_add_torrent(add_torrent_paramsVar);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Torrent info not valid");
        }
        throw new IllegalArgumentException("Torrent info is null");
    }

    @Override
    public void download(@NonNull String str, File file, boolean z, boolean z2) {
        torrent_flags_t torrent_flags_tVarAnd_;
        torrent_flags_t torrent_flags_tVarAnd_2;
        if (operationNotAllowed()) {
            return;
        }
        error_code error_codeVar = new error_code();
        add_torrent_params add_torrent_paramsVar = libtorrent.parse_magnet_uri(str, error_codeVar);
        if (error_codeVar.value() == 0) {
            sha1_hash sha1_hashVar = add_torrent_paramsVar.getInfo_hashes().get_best();
            if (sha1_hashVar == null) {
                return;
            }
            torrent_handle torrent_handleVarFind_torrent = swig().find_torrent(sha1_hashVar);
            if (torrent_handleVarFind_torrent == null || !torrent_handleVarFind_torrent.is_valid()) {
                if (file != null) {
                    add_torrent_paramsVar.setSave_path(file.getAbsolutePath());
                }
                if (TextUtils.isEmpty(add_torrent_paramsVar.getName())) {
                    add_torrent_paramsVar.setName(sha1_hashVar.to_hex());
                }
                torrent_flags_t torrent_flags_tVarAnd_3 = add_torrent_paramsVar.getFlags().and_(TorrentFlags.AUTO_MANAGED.inv());
                if (z) {
                    torrent_flags_tVarAnd_ = torrent_flags_tVarAnd_3.or_(TorrentFlags.PAUSED);
                } else {
                    torrent_flags_tVarAnd_ = torrent_flags_tVarAnd_3.and_(TorrentFlags.PAUSED.inv());
                }
                if (z2) {
                    torrent_flags_tVarAnd_2 = torrent_flags_tVarAnd_.or_(TorrentFlags.SEQUENTIAL_DOWNLOAD);
                } else {
                    torrent_flags_tVarAnd_2 = torrent_flags_tVarAnd_.and_(TorrentFlags.SEQUENTIAL_DOWNLOAD.inv());
                }
                add_torrent_paramsVar.setFlags(torrent_flags_tVarAnd_2);
                addDefaultTrackers(add_torrent_paramsVar);
                swig().async_add_torrent(add_torrent_paramsVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(error_codeVar.message());
    }
}
