package org.libtorrent4j;

import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.torrent_flags_t;

public final class TorrentFlags {
    public static final torrent_flags_t SEED_MODE = libtorrent.getSeed_mode();
    public static final torrent_flags_t UPLOAD_MODE = libtorrent.getUpload_mode();
    public static final torrent_flags_t SHARE_MODE = libtorrent.getShare_mode();
    public static final torrent_flags_t APPLY_IP_FILTER = libtorrent.getApply_ip_filter();
    public static final torrent_flags_t PAUSED = libtorrent.getPaused();
    public static final torrent_flags_t AUTO_MANAGED = libtorrent.getAuto_managed();
    public static final torrent_flags_t DUPLICATE_IS_ERROR = libtorrent.getDuplicate_is_error();
    public static final torrent_flags_t UPDATE_SUBSCRIBE = libtorrent.getUpdate_subscribe();
    public static final torrent_flags_t SUPER_SEEDING = libtorrent.getSuper_seeding();
    public static final torrent_flags_t SEQUENTIAL_DOWNLOAD = libtorrent.getSequential_download();
    public static final torrent_flags_t STOP_WHEN_READY = libtorrent.getStop_when_ready();
    public static final torrent_flags_t NEED_SAVE_RESUME = libtorrent.getNeed_save_resume();
    public static final torrent_flags_t DISABLE_DHT = libtorrent.getDisable_dht();
    public static final torrent_flags_t DISABLE_LSD = libtorrent.getDisable_lsd();
    public static final torrent_flags_t DISABLE_PEX = libtorrent.getDisable_pex();
    public static final torrent_flags_t NO_VERIFY_FILES = libtorrent.getNo_verify_files();
    public static final torrent_flags_t DEFAULT_DONT_DOWNLOAD = libtorrent.getDefault_dont_download();
    public static final torrent_flags_t I2P_TORRENT = libtorrent.getI2p_torrent();
    public static final torrent_flags_t ALL = libtorrent.getAll();

    private TorrentFlags() {
    }
}
