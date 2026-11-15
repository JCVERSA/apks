package org.libtorrent4j;

import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;
import org.libtorrent4j.alerts.AddTorrentAlert;
import org.libtorrent4j.alerts.Alert;
import org.libtorrent4j.alerts.AlertType;
import org.libtorrent4j.alerts.Alerts;
import org.libtorrent4j.alerts.DhtGetPeersReplyAlert;
import org.libtorrent4j.alerts.DhtImmutableItemAlert;
import org.libtorrent4j.alerts.DhtMutableItemAlert;
import org.libtorrent4j.alerts.ExternalIpAlert;
import org.libtorrent4j.alerts.ListenSucceededAlert;
import org.libtorrent4j.alerts.SaveResumeDataAlert;
import org.libtorrent4j.alerts.SessionStatsAlert;
import org.libtorrent4j.alerts.SocketType;
import org.libtorrent4j.alerts.TorrentAlert;
import org.libtorrent4j.swig.add_torrent_alert;
import org.libtorrent4j.swig.add_torrent_params;
import org.libtorrent4j.swig.alert;
import org.libtorrent4j.swig.alert_category_t;
import org.libtorrent4j.swig.alert_ptr_vector;
import org.libtorrent4j.swig.byte_vector;
import org.libtorrent4j.swig.entry;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.info_hash_t;
import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.port_filter;
import org.libtorrent4j.swig.remove_flags_t;
import org.libtorrent4j.swig.session;
import org.libtorrent4j.swig.session_params;
import org.libtorrent4j.swig.settings_pack;
import org.libtorrent4j.swig.sha1_hash;
import org.libtorrent4j.swig.tcp_endpoint_vector;
import org.libtorrent4j.swig.torrent_alert;
import org.libtorrent4j.swig.torrent_flags_t;
import org.libtorrent4j.swig.torrent_handle;
import org.libtorrent4j.swig.torrent_handle_vector;
import org.libtorrent4j.swig.torrent_info;
import org.libtorrent4j.swig.torrent_status;

public class SessionManager {
    private static final long ALERTS_LOOP_WAIT_MILLIS = 500;
    private static final String FETCH_MAGNET_DOWNLOAD_KEY = "fetch_magnet___";
    private static final long REQUEST_STATS_RESOLUTION_MILLIS = 1000;
    private Thread alertsLoop;
    private String externalAddress;
    private int externalPort;
    private boolean firewalled;
    private Throwable lastAlertError;
    private long lastStatsRequestTime;
    private final Map<String, String> listenEndpoints;
    private final AlertListener[] listeners;
    private final boolean logging;
    private volatile session session;
    private final SessionStats stats;
    private final ReentrantLock sync;
    private final ReentrantLock syncMagnet;
    private static final int[] METADATA_ALERT_TYPES = {AlertType.METADATA_RECEIVED.swig(), AlertType.METADATA_FAILED.swig(), AlertType.SAVE_RESUME_DATA.swig(), AlertType.SAVE_RESUME_DATA_FAILED.swig()};
    private static final int[] DHT_IMMUTABLE_ITEM_TYPES = {AlertType.DHT_IMMUTABLE_ITEM.swig()};
    private static final int[] DHT_MUTABLE_ITEM_TYPES = {AlertType.DHT_MUTABLE_ITEM.swig()};
    private static final int[] DHT_GET_PEERS_REPLY_ALERT_TYPES = {AlertType.DHT_GET_PEERS_REPLY.swig()};

    public static class AnonymousClass6 {
        static final int[] $SwitchMap$org$libtorrent4j$alerts$AlertType;

        static {
            int[] iArr = new int[AlertType.values().length];
            $SwitchMap$org$libtorrent4j$alerts$AlertType = iArr;
            try {
                iArr[AlertType.SESSION_STATS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.PORTMAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.PORTMAP_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.LISTEN_SUCCEEDED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.EXTERNAL_IP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.ADD_TORRENT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class MutableItem {
        public final Entry item;
        public final long seq;
        public final byte[] signature;

        private MutableItem(Entry entry, byte[] bArr, long j) {
            this.item = entry;
            this.signature = bArr;
            this.seq = j;
        }
    }

    public SessionManager(boolean z) {
        this.logging = z;
        this.listeners = new AlertListener[Alerts.NUM_ALERT_TYPES + 1];
        this.sync = new ReentrantLock();
        this.syncMagnet = new ReentrantLock();
        this.stats = new SessionStats();
        this.listenEndpoints = new HashMap();
        resetState();
    }

    private static alert_category_t alertMask(boolean z) {
        alert_category_t alert_category_tVar = alert.all_categories;
        return !z ? alert_category_tVar.and_(alert.session_log_notification.or_(alert.torrent_log_notification).or_(alert.peer_log_notification).or_(alert.dht_log_notification).or_(alert.port_mapping_log_notification).or_(alert.picker_log_notification).inv()) : alert_category_tVar;
    }

    private void alertsLoop() {
        Thread thread = new Thread(new Runnable() {
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:26:0x00a3 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:27:0x00a5  */
            /* JADX WARN: Code duplicated, block: B:31:0x00b4  */
            /* JADX WARN: Code duplicated, block: B:33:0x00c0 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:34:0x00c2  */
            /* JADX WARN: Code duplicated, block: B:50:0x00cb A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:51:0x00cb A[SYNTHETIC] */
            @Override
            public void run() {
                Alert alertCast;
                AlertListener[] alertListenerArr;
                int i;
                alert_ptr_vector alert_ptr_vectorVar = new alert_ptr_vector();
                while (SessionManager.this.session != null) {
                    alert alertVarWait_for_alert_ms = SessionManager.this.session.wait_for_alert_ms(500L);
                    if (SessionManager.this.session == null) {
                        return;
                    }
                    if (alertVarWait_for_alert_ms != null) {
                        SessionManager.this.session.pop_alerts(alert_ptr_vectorVar);
                        long size = alert_ptr_vectorVar.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            alert alertVar = alert_ptr_vectorVar.get(i2);
                            int iType = alertVar.type();
                            switch (AnonymousClass6.$SwitchMap$org$libtorrent4j$alerts$AlertType[AlertType.fromSwig(iType).ordinal()]) {
                                case 1:
                                    alertCast = Alerts.cast(alertVar);
                                    SessionManager.this.stats.update((SessionStatsAlert) alertCast);
                                    if (SessionManager.this.listeners[iType] != null) {
                                        if (alertCast == null) {
                                            alertCast = Alerts.cast(alertVar);
                                        }
                                        SessionManager.this.fireAlert(alertCast, iType);
                                    }
                                    if (!SessionManager.isSpecialType(iType)) {
                                        alertListenerArr = SessionManager.this.listeners;
                                        i = Alerts.NUM_ALERT_TYPES;
                                        if (alertListenerArr[i] != null) {
                                            if (alertCast == null) {
                                                alertCast = Alerts.cast(alertVar);
                                            }
                                            SessionManager.this.fireAlert(alertCast, i);
                                        }
                                    }
                                    break;
                                case 2:
                                    SessionManager.this.firewalled = false;
                                    alertCast = null;
                                    if (SessionManager.this.listeners[iType] != null) {
                                        if (alertCast == null) {
                                            alertCast = Alerts.cast(alertVar);
                                        }
                                        SessionManager.this.fireAlert(alertCast, iType);
                                    }
                                    if (!SessionManager.isSpecialType(iType)) {
                                        alertListenerArr = SessionManager.this.listeners;
                                        i = Alerts.NUM_ALERT_TYPES;
                                        if (alertListenerArr[i] != null) {
                                            if (alertCast == null) {
                                                alertCast = Alerts.cast(alertVar);
                                            }
                                            SessionManager.this.fireAlert(alertCast, i);
                                        }
                                    }
                                    break;
                                case 3:
                                    SessionManager.this.firewalled = true;
                                    alertCast = null;
                                    if (SessionManager.this.listeners[iType] != null) {
                                        if (alertCast == null) {
                                            alertCast = Alerts.cast(alertVar);
                                        }
                                        SessionManager.this.fireAlert(alertCast, iType);
                                    }
                                    if (!SessionManager.isSpecialType(iType)) {
                                        alertListenerArr = SessionManager.this.listeners;
                                        i = Alerts.NUM_ALERT_TYPES;
                                        if (alertListenerArr[i] != null) {
                                            if (alertCast == null) {
                                                alertCast = Alerts.cast(alertVar);
                                            }
                                            SessionManager.this.fireAlert(alertCast, i);
                                        }
                                    }
                                    break;
                                case 4:
                                    alertCast = Alerts.cast(alertVar);
                                    SessionManager.this.onListenSucceeded((ListenSucceededAlert) alertCast);
                                    if (SessionManager.this.listeners[iType] != null) {
                                        if (alertCast == null) {
                                            alertCast = Alerts.cast(alertVar);
                                        }
                                        SessionManager.this.fireAlert(alertCast, iType);
                                    }
                                    if (!SessionManager.isSpecialType(iType)) {
                                        alertListenerArr = SessionManager.this.listeners;
                                        i = Alerts.NUM_ALERT_TYPES;
                                        if (alertListenerArr[i] != null) {
                                            if (alertCast == null) {
                                                alertCast = Alerts.cast(alertVar);
                                            }
                                            SessionManager.this.fireAlert(alertCast, i);
                                        }
                                    }
                                    break;
                                case 5:
                                    alertCast = Alerts.cast(alertVar);
                                    SessionManager.this.onExternalIpAlert((ExternalIpAlert) alertCast);
                                    if (SessionManager.this.listeners[iType] != null) {
                                        if (alertCast == null) {
                                            alertCast = Alerts.cast(alertVar);
                                        }
                                        SessionManager.this.fireAlert(alertCast, iType);
                                    }
                                    if (!SessionManager.isSpecialType(iType)) {
                                        alertListenerArr = SessionManager.this.listeners;
                                        i = Alerts.NUM_ALERT_TYPES;
                                        if (alertListenerArr[i] != null) {
                                            if (alertCast == null) {
                                                alertCast = Alerts.cast(alertVar);
                                            }
                                            SessionManager.this.fireAlert(alertCast, i);
                                        }
                                    }
                                    break;
                                case 6:
                                    alertCast = Alerts.cast(alertVar);
                                    if (!SessionManager.this.isFetchMagnetDownload((AddTorrentAlert) alertCast)) {
                                        if (SessionManager.this.listeners[iType] != null) {
                                            if (alertCast == null) {
                                                alertCast = Alerts.cast(alertVar);
                                            }
                                            SessionManager.this.fireAlert(alertCast, iType);
                                        }
                                        if (!SessionManager.isSpecialType(iType)) {
                                            alertListenerArr = SessionManager.this.listeners;
                                            i = Alerts.NUM_ALERT_TYPES;
                                            if (alertListenerArr[i] != null) {
                                                if (alertCast == null) {
                                                    alertCast = Alerts.cast(alertVar);
                                                }
                                                SessionManager.this.fireAlert(alertCast, i);
                                            }
                                        }
                                    }
                                    break;
                                default:
                                    alertCast = null;
                                    if (SessionManager.this.listeners[iType] != null) {
                                        if (alertCast == null) {
                                            alertCast = Alerts.cast(alertVar);
                                        }
                                        SessionManager.this.fireAlert(alertCast, iType);
                                    }
                                    if (!SessionManager.isSpecialType(iType)) {
                                        alertListenerArr = SessionManager.this.listeners;
                                        i = Alerts.NUM_ALERT_TYPES;
                                        if (alertListenerArr[i] != null) {
                                            if (alertCast == null) {
                                                alertCast = Alerts.cast(alertVar);
                                            }
                                            SessionManager.this.fireAlert(alertCast, i);
                                        }
                                    }
                                    break;
                            }
                        }
                        alert_ptr_vectorVar.clear();
                    }
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (jCurrentTimeMillis - SessionManager.this.lastStatsRequestTime >= 1000) {
                        SessionManager.this.lastStatsRequestTime = jCurrentTimeMillis;
                        SessionManager.this.postSessionStats();
                        SessionManager.this.postTorrentUpdates();
                    }
                }
            }
        }, "SessionManager-alertsLoop");
        thread.setDaemon(true);
        thread.start();
        this.alertsLoop = thread;
    }

    public void fireAlert(Alert<?> alert, int i) {
        AlertListener alertListener = this.listeners[i];
        if (alertListener != null) {
            try {
                alertListener.alert(alert);
            } catch (Throwable th) {
                Log.warn("Error calling alert listener: " + th.getMessage());
                this.lastAlertError = th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isFetchMagnetDownload(AddTorrentAlert addTorrentAlert) {
        String name = ((add_torrent_alert) addTorrentAlert.swig()).getParams().getName();
        return name != null && name.contains(FETCH_MAGNET_DOWNLOAD_KEY);
    }

    public static boolean isSpecialType(int i) {
        return i == AlertType.SESSION_STATS.swig() || i == AlertType.STATE_UPDATE.swig() || i == AlertType.SESSION_STATS_HEADER.swig();
    }

    private void modifyListeners(boolean z, AlertListener alertListener) {
        if (alertListener == null) {
            return;
        }
        int[] iArrTypes = alertListener.types();
        if (iArrTypes == null) {
            modifyListeners(z, Alerts.NUM_ALERT_TYPES, alertListener);
            return;
        }
        for (int i : iArrTypes) {
            modifyListeners(z, i, alertListener);
        }
    }

    public void onExternalIpAlert(ExternalIpAlert externalIpAlert) {
        try {
            if (externalIpAlert.swig().get_external_address().is_v4()) {
                this.externalAddress = externalIpAlert.externalAddress().toString();
            }
        } catch (Throwable th) {
            Log.error("Error saving reported external ip", th);
        }
    }

    public void onListenSucceeded(ListenSucceededAlert listenSucceededAlert) {
        String str;
        try {
            if (listenSucceededAlert.socketType() == SocketType.TCP) {
                return;
            }
            Address address = listenSucceededAlert.address();
            if (address.isV4()) {
                this.externalPort = listenSucceededAlert.port();
            }
            if (!address.isLoopback() && !address.isMulticast() && !address.isUnspecified()) {
                String string = address.toString();
                int iPort = listenSucceededAlert.port();
                if (!string.startsWith("127.") && !string.startsWith("fe80::")) {
                    StringBuilder sb = new StringBuilder();
                    if (address.isV6()) {
                        str = "[" + string + "]";
                    } else {
                        str = string;
                    }
                    sb.append(str);
                    sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
                    sb.append(iPort);
                    this.listenEndpoints.put(string, sb.toString());
                }
            }
        } catch (Throwable th) {
            Log.error("Error adding listen endpoint to internal list", th);
        }
    }

    private void resetState() {
        this.stats.clear();
        this.firewalled = true;
        this.listenEndpoints.clear();
        this.externalAddress = null;
        this.alertsLoop = null;
    }

    private void toggleDht(boolean z) {
        if (this.session == null || isDhtRunning() == z) {
            return;
        }
        SettingsPack settingsPack = new SettingsPack();
        settingsPack.setEnableDht(z);
        applySettings(settingsPack);
    }

    public void addListener(AlertListener alertListener) {
        modifyListeners(true, alertListener);
    }

    public void applySettings(SettingsPack settingsPack) {
        if (this.session != null) {
            if (settingsPack == null) {
                throw new IllegalArgumentException("settings pack can't be null");
            }
            this.session.apply_settings(settingsPack.swig());
            onApplySettings(settingsPack);
        }
    }

    public String defaultDhtBootstrapNodes() {
        return "dht.libtorrent.org:25401" + StringUtils.COMMA + "router.bittorrent.com:6881" + StringUtils.COMMA + "router.utorrent.com:6881" + StringUtils.COMMA + "dht.transmissionbt.com:6881";
    }

    public void dhtAnnounce(Sha1Hash sha1Hash, int i, byte b) {
        if (this.session != null) {
            this.session.dht_announce_ex(sha1Hash.swig(), i, b);
        }
    }

    public Entry dhtGetItem(Sha1Hash sha1Hash, int i) {
        if (this.session == null) {
            return null;
        }
        final sha1_hash sha1_hashVarSwig = sha1Hash.swig();
        final AtomicReference atomicReference = new AtomicReference();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        AlertListener alertListener = new AlertListener() {
            @Override
            public void alert(Alert<?> alert) {
                DhtImmutableItemAlert dhtImmutableItemAlert = (DhtImmutableItemAlert) alert;
                if (sha1_hashVarSwig.eq(dhtImmutableItemAlert.swig().getTarget())) {
                    atomicReference.set(new Entry(new entry(dhtImmutableItemAlert.swig().getItem())));
                    countDownLatch.countDown();
                }
            }

            @Override
            public int[] types() {
                return SessionManager.DHT_IMMUTABLE_ITEM_TYPES;
            }
        };
        addListener(alertListener);
        try {
            this.session.dht_get_item(sha1_hashVarSwig);
            countDownLatch.await(i, TimeUnit.SECONDS);
        } catch (Throwable th) {
            try {
                Log.error("Error getting immutable item", th);
            } finally {
                removeListener(alertListener);
            }
        }
        return (Entry) atomicReference.get();
    }

    public ArrayList<TcpEndpoint> dhtGetPeers(Sha1Hash sha1Hash, int i) {
        final ArrayList<TcpEndpoint> arrayList = new ArrayList<>();
        if (this.session == null) {
            return arrayList;
        }
        final sha1_hash sha1_hashVarSwig = sha1Hash.swig();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        AlertListener alertListener = new AlertListener() {
            @Override
            public void alert(Alert<?> alert) {
                DhtGetPeersReplyAlert dhtGetPeersReplyAlert = (DhtGetPeersReplyAlert) alert;
                if (sha1_hashVarSwig.eq(dhtGetPeersReplyAlert.swig().getInfo_hash())) {
                    arrayList.addAll(dhtGetPeersReplyAlert.peers());
                    countDownLatch.countDown();
                }
            }

            @Override
            public int[] types() {
                return SessionManager.DHT_GET_PEERS_REPLY_ALERT_TYPES;
            }
        };
        addListener(alertListener);
        try {
            this.session.dht_get_peers(sha1_hashVarSwig);
            countDownLatch.await(i, TimeUnit.SECONDS);
        } catch (Throwable th) {
            try {
                Log.error("Error getting peers from the dht", th);
            } finally {
                removeListener(alertListener);
            }
        }
        return arrayList;
    }

    public long dhtNodes() {
        return this.stats.dhtNodes();
    }

    public Sha1Hash dhtPutItem(Entry entry) {
        if (this.session != null) {
            return new SessionHandle(this.session).dhtPutItem(entry);
        }
        return null;
    }

    public void download(TorrentInfo torrentInfo, File file, File file2, Priority[] priorityArr, List<TcpEndpoint> list, torrent_flags_t torrent_flags_tVar) {
        if (this.session == null) {
            return;
        }
        if (!torrentInfo.isValid()) {
            throw new IllegalArgumentException("torrent info not valid");
        }
        torrent_handle torrent_handleVarFind_torrent = this.session.find_torrent(torrentInfo.swig().info_hash());
        if (torrent_handleVarFind_torrent != null && torrent_handleVarFind_torrent.is_valid()) {
            if (priorityArr == null) {
                torrent_handleVarFind_torrent.prioritize_files_ex(Priority.array2vector(Priority.array(Priority.DEFAULT, torrentInfo.numFiles())));
                return;
            } else {
                if (torrentInfo.numFiles() != priorityArr.length) {
                    throw new IllegalArgumentException("priorities count should be equals to the number of files");
                }
                torrent_handleVarFind_torrent.prioritize_files_ex(Priority.array2vector(priorityArr));
                return;
            }
        }
        add_torrent_params add_torrent_paramsVar = null;
        if (file2 != null) {
            try {
                byte[] bArrBytes = Files.bytes(file2);
                error_code error_codeVar = new error_code();
                add_torrent_paramsVar = libtorrent.read_resume_data_ex(Vectors.bytes2byte_vector(bArrBytes), error_codeVar);
                if (error_codeVar.value() != 0) {
                    throw new IllegalArgumentException("Unable to read the resume data: " + error_codeVar.message());
                }
            } catch (Throwable th) {
                Log.warn("Unable to set resume data", th);
            }
        }
        if (add_torrent_paramsVar == null) {
            add_torrent_paramsVar = new add_torrent_params();
        }
        add_torrent_paramsVar.set_ti(torrentInfo.swig());
        if (file != null) {
            add_torrent_paramsVar.setSave_path(file.getAbsolutePath());
        }
        if (priorityArr != null) {
            if (torrentInfo.files().numFiles() != priorityArr.length) {
                throw new IllegalArgumentException("priorities count should be equals to the number of files");
            }
            byte_vector byte_vectorVar = new byte_vector();
            for (Priority priority : priorityArr) {
                byte_vectorVar.add(Byte.valueOf(priority.swig()));
            }
            add_torrent_paramsVar.set_file_priorities(byte_vectorVar);
        }
        if (list != null && !list.isEmpty()) {
            tcp_endpoint_vector tcp_endpoint_vectorVar = new tcp_endpoint_vector();
            Iterator<TcpEndpoint> it = list.iterator();
            while (it.hasNext()) {
                tcp_endpoint_vectorVar.add(it.next().swig());
            }
            add_torrent_paramsVar.setPeers(tcp_endpoint_vectorVar);
        }
        add_torrent_paramsVar.setFlags(add_torrent_paramsVar.getFlags().or_(torrent_flags_tVar));
        this.session.async_add_torrent(add_torrent_paramsVar);
    }

    public long downloadRate() {
        return this.stats.downloadRate();
    }

    public int downloadRateLimit() {
        if (this.session == null) {
            return 0;
        }
        return settings().downloadRateLimit();
    }

    public String externalAddress() {
        return this.externalAddress;
    }

    public byte[] fetchMagnet(String str, int i, File file) {
        torrent_handle torrent_handleVarFind_torrent = null;
        if (this.session == null) {
            return null;
        }
        error_code error_codeVar = new error_code();
        add_torrent_params add_torrent_paramsVar = libtorrent.parse_magnet_uri(str, error_codeVar);
        if (error_codeVar.value() != 0) {
            throw new IllegalArgumentException(error_codeVar.message());
        }
        final info_hash_t info_hashes = add_torrent_paramsVar.getInfo_hashes();
        final AtomicReference atomicReference = new AtomicReference();
        boolean z = true;
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        AlertListener alertListener = new AlertListener() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public void alert(Alert<?> alert) {
                torrent_handle handle = ((torrent_alert) ((TorrentAlert) alert).swig()).getHandle();
                if (handle == null || !handle.is_valid() || handle.info_hash().ne(info_hashes.get_best())) {
                    return;
                }
                AlertType alertTypeType = alert.type();
                if (alertTypeType.equals(AlertType.METADATA_RECEIVED)) {
                    ((TorrentAlert) alert).handle().saveResumeData(TorrentHandle.SAVE_INFO_DICT);
                }
                if (alertTypeType.equals(AlertType.SAVE_RESUME_DATA)) {
                    try {
                        atomicReference.set(Vectors.byte_vector2bytes(libtorrent.write_torrent_file_buf_ex(((SaveResumeDataAlert) alert).params().swig())));
                        countDownLatch.countDown();
                    } catch (Throwable th) {
                        Log.error("Error building magnet torrent data", th);
                    }
                }
                if (alertTypeType.equals(AlertType.METADATA_FAILED)) {
                    Log.error("Error downloading magnet metadata");
                    countDownLatch.countDown();
                }
                if (alertTypeType.equals(AlertType.SAVE_RESUME_DATA_FAILED)) {
                    Log.error("Error saving resume data");
                    countDownLatch.countDown();
                }
            }

            @Override
            public int[] types() {
                return SessionManager.METADATA_ALERT_TYPES;
            }
        };
        addListener(alertListener);
        boolean z2 = false;
        try {
            this.syncMagnet.lock();
            try {
                torrent_handleVarFind_torrent = this.session.find_torrent(info_hashes.get_best());
                if (torrent_handleVarFind_torrent != null && torrent_handleVarFind_torrent.is_valid()) {
                    torrent_info torrent_infoVar = torrent_handleVarFind_torrent.torrent_file_ptr();
                    if (torrent_infoVar != null && torrent_infoVar.is_valid()) {
                        torrent_handleVarFind_torrent.save_resume_data(torrent_handle.save_info_dict);
                    }
                    z = false;
                }
                if (z) {
                    try {
                        add_torrent_paramsVar.setName(FETCH_MAGNET_DOWNLOAD_KEY + str);
                        add_torrent_paramsVar.setSave_path(file.getAbsolutePath());
                        add_torrent_paramsVar.setFlags(add_torrent_paramsVar.getFlags().and_(TorrentFlags.AUTO_MANAGED.inv()).or_(TorrentFlags.UPLOAD_MODE).or_(TorrentFlags.STOP_WHEN_READY));
                        error_codeVar.clear();
                        torrent_handleVarFind_torrent = this.session.add_torrent(add_torrent_paramsVar, error_codeVar);
                        torrent_handleVarFind_torrent.resume();
                    } catch (Throwable th) {
                        th = th;
                        z2 = z;
                        this.syncMagnet.unlock();
                        throw th;
                    }
                }
                try {
                    this.syncMagnet.unlock();
                    countDownLatch.await(i, TimeUnit.SECONDS);
                    removeListener(alertListener);
                    if (this.session != null && z && torrent_handleVarFind_torrent != null && torrent_handleVarFind_torrent.is_valid()) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    z2 = z;
                    try {
                        Log.error("Error fetching magnet", th);
                        return (byte[]) atomicReference.get();
                    } finally {
                        removeListener(alertListener);
                        if (this.session != null && z2 && torrent_handleVarFind_torrent != null && torrent_handleVarFind_torrent.is_valid()) {
                            this.session.remove_torrent(torrent_handleVarFind_torrent);
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        return (byte[]) atomicReference.get();
    }

    public void finalize() throws Throwable {
        stop();
        super.finalize();
    }

    public TorrentHandle find(Sha1Hash sha1Hash) {
        torrent_handle torrent_handleVarFind_torrent;
        if (this.session == null || (torrent_handleVarFind_torrent = this.session.find_torrent(sha1Hash.swig())) == null || !torrent_handleVarFind_torrent.is_valid()) {
            return null;
        }
        return new TorrentHandle(torrent_handleVarFind_torrent);
    }

    public boolean isDhtRunning() {
        return this.session != null && this.session.is_dht_running();
    }

    public boolean isFirewalled() {
        return this.firewalled;
    }

    public boolean isPaused() {
        if (this.session != null) {
            return this.session.is_paused();
        }
        return false;
    }

    public boolean isRunning() {
        return this.session != null;
    }

    public Throwable lastAlertError() {
        return this.lastAlertError;
    }

    public List<String> listenEndpoints() {
        return new ArrayList(this.listenEndpoints.values());
    }

    public String listenInterfaces() {
        if (this.session == null) {
            return null;
        }
        return settings().listenInterfaces();
    }

    public String magnetPeers() {
        if (this.session == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (this.externalAddress != null && this.externalPort > 0) {
            sb.append("&x.pe=");
            sb.append(this.externalAddress);
            sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
            sb.append(this.externalPort);
        }
        for (String str : this.listenEndpoints.values()) {
            sb.append("&x.pe=");
            sb.append(str);
        }
        return sb.toString();
    }

    public int maxActiveDownloads() {
        if (this.session == null) {
            return 0;
        }
        return settings().activeDownloads();
    }

    public int maxActiveSeeds() {
        if (this.session == null) {
            return 0;
        }
        return settings().activeSeeds();
    }

    public int maxConnections() {
        if (this.session == null) {
            return 0;
        }
        return settings().connectionsLimit();
    }

    public int maxPeers() {
        if (this.session == null) {
            return 0;
        }
        return settings().maxPeerlistSize();
    }

    public void moveStorage(File file) {
        if (this.session == null) {
            return;
        }
        try {
            torrent_handle_vector torrent_handle_vectorVar = this.session.get_torrents();
            String absolutePath = file.getAbsolutePath();
            for (torrent_handle torrent_handleVar : torrent_handle_vectorVar) {
                torrent_status torrent_statusVarStatus = torrent_handleVar.status();
                boolean z = (torrent_statusVarStatus.getIs_seeding() || torrent_statusVarStatus.getIs_finished()) ? false : true;
                if (torrent_handleVar.is_valid() && z) {
                    torrent_handleVar.move_storage(absolutePath);
                }
            }
        } catch (Throwable th) {
            Log.error("Error changing save path for session", th);
        }
    }

    public void onAfterStart() {
    }

    public void onAfterStop() {
    }

    public void onApplySettings(SettingsPack settingsPack) {
    }

    public void onBeforeStart() {
    }

    public void onBeforeStop() {
    }

    public void pause() {
        if (this.session == null || this.session.is_paused()) {
            return;
        }
        this.session.pause();
    }

    public void postDhtStats() {
        if (this.session != null) {
            this.session.post_dht_stats();
        }
    }

    public void postSessionStats() {
        if (this.session != null) {
            this.session.post_session_stats();
        }
    }

    public void postTorrentUpdates() {
        if (this.session != null) {
            this.session.post_torrent_updates();
        }
    }

    public void remove(TorrentHandle torrentHandle, remove_flags_t remove_flags_tVar) {
        if (this.session == null || !torrentHandle.isValid()) {
            return;
        }
        this.session.remove_torrent(torrentHandle.swig(), remove_flags_tVar);
    }

    public void removeListener(AlertListener alertListener) {
        modifyListeners(false, alertListener);
    }

    public void reopenNetworkSockets() {
        if (this.session != null) {
            this.session.reopen_network_sockets();
        }
    }

    public void restart() {
        this.sync.lock();
        try {
            session_params session_paramsVarSession_state = this.session.session_state();
            stop();
            Thread.sleep(1000L);
            start(new SessionParams(session_paramsVarSession_state));
        } catch (InterruptedException unused) {
        } finally {
            this.sync.unlock();
        }
    }

    public void resume() {
        if (this.session != null) {
            this.session.resume();
        }
    }

    public byte[] saveState() {
        if (this.session == null) {
            return null;
        }
        return Vectors.byte_vector2bytes(session_params.write_session_params_buf(this.session.session_state()));
    }

    public SettingsPack settings() {
        if (this.session != null) {
            return new SettingsPack(this.session.get_settings());
        }
        return null;
    }

    public void start(SessionParams sessionParams) {
        if (this.session != null) {
            return;
        }
        this.sync.lock();
        try {
            if (this.session != null) {
                return;
            }
            onBeforeStart();
            resetState();
            SettingsPack settings = sessionParams.getSettings();
            settings.setInteger(settings_pack.int_types.alert_mask.swigValue(), alertMask(this.logging).to_int());
            if (!settings.hasValue(settings_pack.int_types.max_metadata_size.swigValue())) {
                settings.setMaxMetadataSize(2097152);
            }
            if (!settings.hasValue(settings_pack.string_types.dht_bootstrap_nodes.swigValue())) {
                settings.setDhtBootstrapNodes(defaultDhtBootstrapNodes());
            }
            this.session = new session(sessionParams.swig());
            alertsLoop();
            port_filter port_filterVar = new port_filter();
            port_filterVar.add_rule(0, 79, 1L);
            port_filterVar.add_rule(81, TranSceneConfig.SCENE_TYPE_GAME_FF_SCOPE_OPEN, 1L);
            port_filterVar.add_rule(444, AnalyticsListener.EVENT_DRM_KEYS_LOADED, 1L);
            this.session.set_port_filter(port_filterVar);
            onAfterStart();
        } finally {
            this.sync.unlock();
        }
    }

    public void startDht() {
        toggleDht(true);
    }

    public SessionStats stats() {
        return this.stats;
    }

    public void stop() {
        if (this.session == null) {
            return;
        }
        this.sync.lock();
        try {
            if (this.session == null) {
                return;
            }
            onBeforeStop();
            session sessionVar = this.session;
            this.session = null;
            sessionVar.post_session_stats();
            try {
                Thread.sleep(750L);
            } catch (InterruptedException unused) {
            }
            Thread thread = this.alertsLoop;
            if (thread != null) {
                try {
                    thread.join();
                } catch (Throwable unused2) {
                }
            }
            resetState();
            sessionVar.delete();
            onAfterStop();
        } finally {
            this.sync.unlock();
        }
    }

    public void stopDht() {
        toggleDht(false);
    }

    public session swig() {
        return this.session;
    }

    public long totalDownload() {
        return this.stats.totalDownload();
    }

    public long totalUpload() {
        return this.stats.totalUpload();
    }

    public long uploadRate() {
        return this.stats.uploadRate();
    }

    public int uploadRateLimit() {
        if (this.session == null) {
            return 0;
        }
        return settings().uploadRateLimit();
    }

    public void dhtPutItem(byte[] bArr, byte[] bArr2, Entry entry, byte[] bArr3) {
        if (this.session != null) {
            new SessionHandle(this.session).dhtPutItem(bArr, bArr2, entry, bArr3);
        }
    }

    public void dhtAnnounce(Sha1Hash sha1Hash) {
        if (this.session != null) {
            this.session.dht_announce_ex(sha1Hash.swig());
        }
    }

    public void downloadRateLimit(int i) {
        if (this.session == null) {
            return;
        }
        applySettings(new SettingsPack().downloadRateLimit(i));
    }

    public void listenInterfaces(String str) {
        if (this.session == null) {
            return;
        }
        applySettings(new SettingsPack().listenInterfaces(str));
    }

    public void maxActiveDownloads(int i) {
        if (this.session == null) {
            return;
        }
        applySettings(new SettingsPack().activeDownloads(i));
    }

    public void maxActiveSeeds(int i) {
        if (this.session == null) {
            return;
        }
        applySettings(new SettingsPack().activeSeeds(i));
    }

    public void maxConnections(int i) {
        if (this.session == null) {
            return;
        }
        applySettings(new SettingsPack().connectionsLimit(i));
    }

    public void maxPeers(int i) {
        if (this.session == null) {
            return;
        }
        applySettings(new SettingsPack().maxPeerlistSize(i));
    }

    public void remove(TorrentHandle torrentHandle) {
        if (this.session == null || !torrentHandle.isValid()) {
            return;
        }
        this.session.remove_torrent(torrentHandle.swig());
    }

    public void uploadRateLimit(int i) {
        if (this.session == null) {
            return;
        }
        applySettings(new SettingsPack().uploadRateLimit(i));
    }

    private synchronized void modifyListeners(boolean z, int i, AlertListener alertListener) {
        try {
            if (z) {
                AlertListener[] alertListenerArr = this.listeners;
                alertListenerArr[i] = AlertMulticaster.add(alertListenerArr[i], alertListener);
            } else {
                AlertListener[] alertListenerArr2 = this.listeners;
                alertListenerArr2[i] = AlertMulticaster.remove(alertListenerArr2[i], alertListener);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public SessionManager() {
        this(false);
    }

    public MutableItem dhtGetItem(final byte[] bArr, final byte[] bArr2, int i) {
        if (this.session == null) {
            return null;
        }
        final AtomicReference atomicReference = new AtomicReference();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        AlertListener alertListener = new AlertListener() {
            @Override
            public void alert(Alert<?> alert) {
                DhtMutableItemAlert dhtMutableItemAlert = (DhtMutableItemAlert) alert;
                boolean zEquals = Arrays.equals(bArr, dhtMutableItemAlert.key());
                boolean zEquals2 = Arrays.equals(bArr2, dhtMutableItemAlert.salt());
                if (zEquals && zEquals2) {
                    atomicReference.set(new MutableItem(new Entry(new entry(dhtMutableItemAlert.swig().getItem())), dhtMutableItemAlert.signature(), dhtMutableItemAlert.seq()));
                    countDownLatch.countDown();
                }
            }

            @Override
            public int[] types() {
                return SessionManager.DHT_MUTABLE_ITEM_TYPES;
            }
        };
        addListener(alertListener);
        try {
            new SessionHandle(this.session).dhtGetItem(bArr, bArr2);
            countDownLatch.await(i, TimeUnit.SECONDS);
        } catch (Throwable th) {
            try {
                Log.error("Error getting mutable item", th);
            } finally {
                removeListener(alertListener);
            }
        }
        return (MutableItem) atomicReference.get();
    }

    public void start() {
        start(new SessionParams());
    }

    public void download(String str, File file, torrent_flags_t torrent_flags_tVar) {
        if (this.session == null) {
            return;
        }
        error_code error_codeVar = new error_code();
        add_torrent_params add_torrent_paramsVar = libtorrent.parse_magnet_uri(str, error_codeVar);
        if (error_codeVar.value() == 0) {
            sha1_hash sha1_hashVar = add_torrent_paramsVar.getInfo_hashes().get_best();
            torrent_handle torrent_handleVarFind_torrent = this.session.find_torrent(sha1_hashVar);
            if (torrent_handleVarFind_torrent == null || !torrent_handleVarFind_torrent.is_valid()) {
                if (file != null) {
                    add_torrent_paramsVar.setSave_path(file.getAbsolutePath());
                }
                if ("".equals(add_torrent_paramsVar.getName())) {
                    add_torrent_paramsVar.setName(sha1_hashVar.to_hex());
                }
                add_torrent_paramsVar.setFlags(add_torrent_paramsVar.getFlags().or_(torrent_flags_tVar));
                this.session.async_add_torrent(add_torrent_paramsVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(error_codeVar.message());
    }

    public void download(TorrentInfo torrentInfo, File file) {
        download(torrentInfo, file, null, null, null, new torrent_flags_t());
    }
}
