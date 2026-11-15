package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.add_torrent_alert;
import org.libtorrent4j.swig.alerts_dropped_alert;
import org.libtorrent4j.swig.block_downloading_alert;
import org.libtorrent4j.swig.block_finished_alert;
import org.libtorrent4j.swig.block_timeout_alert;
import org.libtorrent4j.swig.block_uploaded_alert;
import org.libtorrent4j.swig.cache_flushed_alert;
import org.libtorrent4j.swig.dht_announce_alert;
import org.libtorrent4j.swig.dht_bootstrap_alert;
import org.libtorrent4j.swig.dht_direct_response_alert;
import org.libtorrent4j.swig.dht_error_alert;
import org.libtorrent4j.swig.dht_get_peers_alert;
import org.libtorrent4j.swig.dht_get_peers_reply_alert;
import org.libtorrent4j.swig.dht_immutable_item_alert;
import org.libtorrent4j.swig.dht_live_nodes_alert;
import org.libtorrent4j.swig.dht_log_alert;
import org.libtorrent4j.swig.dht_mutable_item_alert;
import org.libtorrent4j.swig.dht_outgoing_get_peers_alert;
import org.libtorrent4j.swig.dht_pkt_alert;
import org.libtorrent4j.swig.dht_put_alert;
import org.libtorrent4j.swig.dht_reply_alert;
import org.libtorrent4j.swig.dht_sample_infohashes_alert;
import org.libtorrent4j.swig.dht_stats_alert;
import org.libtorrent4j.swig.external_ip_alert;
import org.libtorrent4j.swig.fastresume_rejected_alert;
import org.libtorrent4j.swig.file_completed_alert;
import org.libtorrent4j.swig.file_error_alert;
import org.libtorrent4j.swig.file_prio_alert;
import org.libtorrent4j.swig.file_progress_alert;
import org.libtorrent4j.swig.file_rename_failed_alert;
import org.libtorrent4j.swig.file_renamed_alert;
import org.libtorrent4j.swig.hash_failed_alert;
import org.libtorrent4j.swig.i2p_alert;
import org.libtorrent4j.swig.incoming_connection_alert;
import org.libtorrent4j.swig.incoming_request_alert;
import org.libtorrent4j.swig.invalid_request_alert;
import org.libtorrent4j.swig.listen_failed_alert;
import org.libtorrent4j.swig.listen_succeeded_alert;
import org.libtorrent4j.swig.log_alert;
import org.libtorrent4j.swig.lsd_error_alert;
import org.libtorrent4j.swig.lsd_peer_alert;
import org.libtorrent4j.swig.metadata_failed_alert;
import org.libtorrent4j.swig.metadata_received_alert;
import org.libtorrent4j.swig.oversized_file_alert;
import org.libtorrent4j.swig.peer_ban_alert;
import org.libtorrent4j.swig.peer_blocked_alert;
import org.libtorrent4j.swig.peer_connect_alert;
import org.libtorrent4j.swig.peer_disconnected_alert;
import org.libtorrent4j.swig.peer_error_alert;
import org.libtorrent4j.swig.peer_info_alert;
import org.libtorrent4j.swig.peer_log_alert;
import org.libtorrent4j.swig.peer_snubbed_alert;
import org.libtorrent4j.swig.peer_unsnubbed_alert;
import org.libtorrent4j.swig.performance_alert;
import org.libtorrent4j.swig.picker_log_alert;
import org.libtorrent4j.swig.piece_availability_alert;
import org.libtorrent4j.swig.piece_finished_alert;
import org.libtorrent4j.swig.piece_info_alert;
import org.libtorrent4j.swig.portmap_alert;
import org.libtorrent4j.swig.portmap_error_alert;
import org.libtorrent4j.swig.portmap_log_alert;
import org.libtorrent4j.swig.read_piece_alert;
import org.libtorrent4j.swig.request_dropped_alert;
import org.libtorrent4j.swig.save_resume_data_alert;
import org.libtorrent4j.swig.save_resume_data_failed_alert;
import org.libtorrent4j.swig.scrape_failed_alert;
import org.libtorrent4j.swig.scrape_reply_alert;
import org.libtorrent4j.swig.session_error_alert;
import org.libtorrent4j.swig.session_stats_alert;
import org.libtorrent4j.swig.session_stats_header_alert;
import org.libtorrent4j.swig.socks5_alert;
import org.libtorrent4j.swig.state_changed_alert;
import org.libtorrent4j.swig.state_update_alert;
import org.libtorrent4j.swig.storage_moved_alert;
import org.libtorrent4j.swig.storage_moved_failed_alert;
import org.libtorrent4j.swig.torrent_checked_alert;
import org.libtorrent4j.swig.torrent_conflict_alert;
import org.libtorrent4j.swig.torrent_delete_failed_alert;
import org.libtorrent4j.swig.torrent_deleted_alert;
import org.libtorrent4j.swig.torrent_error_alert;
import org.libtorrent4j.swig.torrent_finished_alert;
import org.libtorrent4j.swig.torrent_log_alert;
import org.libtorrent4j.swig.torrent_need_cert_alert;
import org.libtorrent4j.swig.torrent_paused_alert;
import org.libtorrent4j.swig.torrent_removed_alert;
import org.libtorrent4j.swig.torrent_resumed_alert;
import org.libtorrent4j.swig.tracker_announce_alert;
import org.libtorrent4j.swig.tracker_error_alert;
import org.libtorrent4j.swig.tracker_list_alert;
import org.libtorrent4j.swig.tracker_reply_alert;
import org.libtorrent4j.swig.tracker_warning_alert;
import org.libtorrent4j.swig.trackerid_alert;
import org.libtorrent4j.swig.udp_error_alert;
import org.libtorrent4j.swig.unwanted_block_alert;
import org.libtorrent4j.swig.url_seed_alert;

public enum AlertType {
    TORRENT_FINISHED(torrent_finished_alert.alert_type),
    TORRENT_REMOVED(torrent_removed_alert.alert_type),
    TORRENT_DELETED(torrent_deleted_alert.alert_type),
    TORRENT_PAUSED(torrent_paused_alert.alert_type),
    TORRENT_RESUMED(torrent_resumed_alert.alert_type),
    TORRENT_CHECKED(torrent_checked_alert.alert_type),
    TORRENT_ERROR(torrent_error_alert.alert_type),
    TORRENT_NEED_CERT(torrent_need_cert_alert.alert_type),
    INCOMING_CONNECTION(incoming_connection_alert.alert_type),
    ADD_TORRENT(add_torrent_alert.alert_type),
    SAVE_RESUME_DATA(save_resume_data_alert.alert_type),
    FASTRESUME_REJECTED(fastresume_rejected_alert.alert_type),
    BLOCK_FINISHED(block_finished_alert.alert_type),
    METADATA_RECEIVED(metadata_received_alert.alert_type),
    METADATA_FAILED(metadata_failed_alert.alert_type),
    FILE_COMPLETED(file_completed_alert.alert_type),
    FILE_RENAMED(file_renamed_alert.alert_type),
    FILE_RENAME_FAILED(file_rename_failed_alert.alert_type),
    FILE_ERROR(file_error_alert.alert_type),
    HASH_FAILED(hash_failed_alert.alert_type),
    PORTMAP(portmap_alert.alert_type),
    PORTMAP_ERROR(portmap_error_alert.alert_type),
    PORTMAP_LOG(portmap_log_alert.alert_type),
    TRACKER_ANNOUNCE(tracker_announce_alert.alert_type),
    TRACKER_REPLY(tracker_reply_alert.alert_type),
    TRACKER_WARNING(tracker_warning_alert.alert_type),
    TRACKER_ERROR(tracker_error_alert.alert_type),
    READ_PIECE(read_piece_alert.alert_type),
    STATE_CHANGED(state_changed_alert.alert_type),
    DHT_REPLY(dht_reply_alert.alert_type),
    DHT_BOOTSTRAP(dht_bootstrap_alert.alert_type),
    DHT_GET_PEERS(dht_get_peers_alert.alert_type),
    EXTERNAL_IP(external_ip_alert.alert_type),
    LISTEN_SUCCEEDED(listen_succeeded_alert.alert_type),
    STATE_UPDATE(state_update_alert.alert_type),
    SESSION_STATS(session_stats_alert.alert_type),
    SCRAPE_REPLY(scrape_reply_alert.alert_type),
    SCRAPE_FAILED(scrape_failed_alert.alert_type),
    LSD_PEER(lsd_peer_alert.alert_type),
    PEER_BLOCKED(peer_blocked_alert.alert_type),
    PERFORMANCE(performance_alert.alert_type),
    PIECE_FINISHED(piece_finished_alert.alert_type),
    SAVE_RESUME_DATA_FAILED(save_resume_data_failed_alert.alert_type),
    STORAGE_MOVED(storage_moved_alert.alert_type),
    TORRENT_DELETE_FAILED(torrent_delete_failed_alert.alert_type),
    URL_SEED(url_seed_alert.alert_type),
    INVALID_REQUEST(invalid_request_alert.alert_type),
    LISTEN_FAILED(listen_failed_alert.alert_type),
    PEER_BAN(peer_ban_alert.alert_type),
    PEER_CONNECT(peer_connect_alert.alert_type),
    PEER_DISCONNECTED(peer_disconnected_alert.alert_type),
    PEER_ERROR(peer_error_alert.alert_type),
    PEER_SNUBBED(peer_snubbed_alert.alert_type),
    PEER_UNSNUBBED(peer_unsnubbed_alert.alert_type),
    REQUEST_DROPPED(request_dropped_alert.alert_type),
    UDP_ERROR(udp_error_alert.alert_type),
    BLOCK_DOWNLOADING(block_downloading_alert.alert_type),
    BLOCK_TIMEOUT(block_timeout_alert.alert_type),
    CACHE_FLUSHED(cache_flushed_alert.alert_type),
    DHT_ANNOUNCE(dht_announce_alert.alert_type),
    STORAGE_MOVED_FAILED(storage_moved_failed_alert.alert_type),
    TRACKERID(trackerid_alert.alert_type),
    UNWANTED_BLOCK(unwanted_block_alert.alert_type),
    DHT_ERROR(dht_error_alert.alert_type),
    DHT_PUT(dht_put_alert.alert_type),
    DHT_MUTABLE_ITEM(dht_mutable_item_alert.alert_type),
    DHT_IMMUTABLE_ITEM(dht_immutable_item_alert.alert_type),
    I2P(i2p_alert.alert_type),
    DHT_OUTGOING_GET_PEERS(dht_outgoing_get_peers_alert.alert_type),
    LOG(log_alert.alert_type),
    TORRENT_LOG(torrent_log_alert.alert_type),
    PEER_LOG(peer_log_alert.alert_type),
    LSD_ERROR(lsd_error_alert.alert_type),
    DHT_STATS(dht_stats_alert.alert_type),
    INCOMING_REQUEST(incoming_request_alert.alert_type),
    DHT_LOG(dht_log_alert.alert_type),
    DHT_PKT(dht_pkt_alert.alert_type),
    DHT_GET_PEERS_REPLY(dht_get_peers_reply_alert.alert_type),
    DHT_DIRECT_RESPONSE(dht_direct_response_alert.alert_type),
    PICKER_LOG(picker_log_alert.alert_type),
    SESSION_ERROR(session_error_alert.alert_type),
    DHT_LIVE_NODES(dht_live_nodes_alert.alert_type),
    SESSION_STATS_HEADER(session_stats_header_alert.alert_type),
    DHT_SAMPLE_INFOHASHES(dht_sample_infohashes_alert.alert_type),
    BLOCK_UPLOADED(block_uploaded_alert.alert_type),
    ALERTS_DROPPED(alerts_dropped_alert.alert_type),
    SOCKS5(socks5_alert.alert_type),
    FILE_PRIO(file_prio_alert.alert_type),
    OVERSIZED_FILE(oversized_file_alert.alert_type),
    TORRENT_CONFLICT(torrent_conflict_alert.alert_type),
    PEER_INFO(peer_info_alert.alert_type),
    FILE_PROGRESS(file_progress_alert.alert_type),
    PIECE_INFO(piece_info_alert.alert_type),
    PIECE_AVAILABILITY(piece_availability_alert.alert_type),
    TRACKER_LIST(tracker_list_alert.alert_type),
    UNKNOWN(-1);

    private static final AlertType[] TABLE = buildTable();
    private final int swigValue;

    AlertType(int i) {
        this.swigValue = i;
    }

    private static AlertType[] buildTable() {
        AlertType[] alertTypeArr = new AlertType[Alerts.NUM_ALERT_TYPES];
        AlertType alertType = UNKNOWN;
        alertTypeArr[0] = alertType;
        alertTypeArr[1] = alertType;
        alertTypeArr[2] = alertType;
        alertTypeArr[3] = alertType;
        alertTypeArr[4] = TORRENT_REMOVED;
        alertTypeArr[5] = READ_PIECE;
        alertTypeArr[6] = FILE_COMPLETED;
        alertTypeArr[7] = FILE_RENAMED;
        alertTypeArr[8] = FILE_RENAME_FAILED;
        alertTypeArr[9] = PERFORMANCE;
        alertTypeArr[10] = STATE_CHANGED;
        alertTypeArr[11] = TRACKER_ERROR;
        alertTypeArr[12] = TRACKER_WARNING;
        alertTypeArr[13] = SCRAPE_REPLY;
        alertTypeArr[14] = SCRAPE_FAILED;
        alertTypeArr[15] = TRACKER_REPLY;
        alertTypeArr[16] = DHT_REPLY;
        alertTypeArr[17] = TRACKER_ANNOUNCE;
        alertTypeArr[18] = HASH_FAILED;
        alertTypeArr[19] = PEER_BAN;
        alertTypeArr[20] = PEER_UNSNUBBED;
        alertTypeArr[21] = PEER_SNUBBED;
        alertTypeArr[22] = PEER_ERROR;
        alertTypeArr[23] = PEER_CONNECT;
        alertTypeArr[24] = PEER_DISCONNECTED;
        alertTypeArr[25] = INVALID_REQUEST;
        alertTypeArr[26] = TORRENT_FINISHED;
        alertTypeArr[27] = PIECE_FINISHED;
        alertTypeArr[28] = REQUEST_DROPPED;
        alertTypeArr[29] = BLOCK_TIMEOUT;
        alertTypeArr[30] = BLOCK_FINISHED;
        alertTypeArr[31] = BLOCK_DOWNLOADING;
        alertTypeArr[32] = UNWANTED_BLOCK;
        alertTypeArr[33] = STORAGE_MOVED;
        alertTypeArr[34] = STORAGE_MOVED_FAILED;
        alertTypeArr[35] = TORRENT_DELETED;
        alertTypeArr[36] = TORRENT_DELETE_FAILED;
        alertTypeArr[37] = SAVE_RESUME_DATA;
        alertTypeArr[38] = SAVE_RESUME_DATA_FAILED;
        alertTypeArr[39] = TORRENT_PAUSED;
        alertTypeArr[40] = TORRENT_RESUMED;
        alertTypeArr[41] = TORRENT_CHECKED;
        alertTypeArr[42] = URL_SEED;
        alertTypeArr[43] = FILE_ERROR;
        alertTypeArr[44] = METADATA_FAILED;
        alertTypeArr[45] = METADATA_RECEIVED;
        alertTypeArr[46] = UDP_ERROR;
        alertTypeArr[47] = EXTERNAL_IP;
        alertTypeArr[48] = LISTEN_FAILED;
        alertTypeArr[49] = LISTEN_SUCCEEDED;
        alertTypeArr[50] = PORTMAP_ERROR;
        alertTypeArr[51] = PORTMAP;
        alertTypeArr[52] = PORTMAP_LOG;
        alertTypeArr[53] = FASTRESUME_REJECTED;
        alertTypeArr[54] = PEER_BLOCKED;
        alertTypeArr[55] = DHT_ANNOUNCE;
        alertTypeArr[56] = DHT_GET_PEERS;
        alertTypeArr[57] = alertType;
        alertTypeArr[58] = CACHE_FLUSHED;
        alertTypeArr[59] = alertType;
        alertTypeArr[60] = LSD_PEER;
        alertTypeArr[61] = TRACKERID;
        alertTypeArr[62] = DHT_BOOTSTRAP;
        alertTypeArr[63] = alertType;
        alertTypeArr[64] = TORRENT_ERROR;
        alertTypeArr[65] = TORRENT_NEED_CERT;
        alertTypeArr[66] = INCOMING_CONNECTION;
        alertTypeArr[67] = ADD_TORRENT;
        alertTypeArr[68] = STATE_UPDATE;
        alertTypeArr[69] = alertType;
        alertTypeArr[70] = SESSION_STATS;
        alertTypeArr[71] = alertType;
        alertTypeArr[72] = alertType;
        alertTypeArr[73] = DHT_ERROR;
        alertTypeArr[74] = DHT_IMMUTABLE_ITEM;
        alertTypeArr[75] = DHT_MUTABLE_ITEM;
        alertTypeArr[76] = DHT_PUT;
        alertTypeArr[77] = I2P;
        alertTypeArr[78] = DHT_OUTGOING_GET_PEERS;
        alertTypeArr[79] = LOG;
        alertTypeArr[80] = TORRENT_LOG;
        alertTypeArr[81] = PEER_LOG;
        alertTypeArr[82] = LSD_ERROR;
        alertTypeArr[83] = DHT_STATS;
        alertTypeArr[84] = INCOMING_REQUEST;
        alertTypeArr[85] = DHT_LOG;
        alertTypeArr[86] = DHT_PKT;
        alertTypeArr[87] = DHT_GET_PEERS_REPLY;
        alertTypeArr[88] = DHT_DIRECT_RESPONSE;
        alertTypeArr[89] = PICKER_LOG;
        alertTypeArr[90] = SESSION_ERROR;
        alertTypeArr[91] = DHT_LIVE_NODES;
        alertTypeArr[92] = SESSION_STATS_HEADER;
        alertTypeArr[93] = DHT_SAMPLE_INFOHASHES;
        alertTypeArr[94] = BLOCK_UPLOADED;
        alertTypeArr[95] = ALERTS_DROPPED;
        alertTypeArr[96] = SOCKS5;
        alertTypeArr[97] = FILE_PRIO;
        alertTypeArr[98] = OVERSIZED_FILE;
        alertTypeArr[99] = TORRENT_CONFLICT;
        alertTypeArr[100] = PEER_INFO;
        alertTypeArr[101] = FILE_PROGRESS;
        alertTypeArr[102] = PIECE_INFO;
        alertTypeArr[103] = PIECE_AVAILABILITY;
        alertTypeArr[104] = TRACKER_LIST;
        return alertTypeArr;
    }

    public static AlertType fromSwig(int i) {
        return TABLE[i];
    }

    public int swig() {
        return this.swigValue;
    }
}
