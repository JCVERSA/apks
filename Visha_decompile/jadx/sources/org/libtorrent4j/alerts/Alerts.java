package org.libtorrent4j.alerts;

import org.libtorrent4j.swig.alert;
import org.libtorrent4j.swig.libtorrent;

public final class Alerts {
    public static final int NUM_ALERT_TYPES = libtorrent.getNum_alert_types();
    private static final CastLambda[] TABLE = buildTable();

    public interface CastLambda {
        Alert<?> cast(alert alertVar);
    }

    private Alerts() {
    }

    private static CastLambda[] buildTable() {
        CastLambda[] castLambdaArr = new CastLambda[NUM_ALERT_TYPES];
        castLambdaArr[0] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[1] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[2] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[3] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[4] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentRemovedAlert(alert.cast_to_torrent_removed_alert(alertVar));
            }
        };
        castLambdaArr[5] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new ReadPieceAlert(alert.cast_to_read_piece_alert(alertVar));
            }
        };
        castLambdaArr[6] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new FileCompletedAlert(alert.cast_to_file_completed_alert(alertVar));
            }
        };
        castLambdaArr[7] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new FileRenamedAlert(alert.cast_to_file_renamed_alert(alertVar));
            }
        };
        castLambdaArr[8] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new FileRenameFailedAlert(alert.cast_to_file_rename_failed_alert(alertVar));
            }
        };
        castLambdaArr[9] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PerformanceAlert(alert.cast_to_performance_alert(alertVar));
            }
        };
        castLambdaArr[10] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new StateChangedAlert(alert.cast_to_state_changed_alert(alertVar));
            }
        };
        castLambdaArr[11] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TrackerErrorAlert(alert.cast_to_tracker_error_alert(alertVar));
            }
        };
        castLambdaArr[12] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TrackerWarningAlert(alert.cast_to_tracker_warning_alert(alertVar));
            }
        };
        castLambdaArr[13] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new ScrapeReplyAlert(alert.cast_to_scrape_reply_alert(alertVar));
            }
        };
        castLambdaArr[14] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new ScrapeFailedAlert(alert.cast_to_scrape_failed_alert(alertVar));
            }
        };
        castLambdaArr[15] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TrackerReplyAlert(alert.cast_to_tracker_reply_alert(alertVar));
            }
        };
        castLambdaArr[16] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtReplyAlert(alert.cast_to_dht_reply_alert(alertVar));
            }
        };
        castLambdaArr[17] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TrackerAnnounceAlert(alert.cast_to_tracker_announce_alert(alertVar));
            }
        };
        castLambdaArr[18] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new HashFailedAlert(alert.cast_to_hash_failed_alert(alertVar));
            }
        };
        castLambdaArr[19] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PeerBanAlert(alert.cast_to_peer_ban_alert(alertVar));
            }
        };
        castLambdaArr[20] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PeerUnsnubbedAlert(alert.cast_to_peer_unsnubbed_alert(alertVar));
            }
        };
        castLambdaArr[21] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PeerSnubbedAlert(alert.cast_to_peer_snubbed_alert(alertVar));
            }
        };
        castLambdaArr[22] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PeerErrorAlert(alert.cast_to_peer_error_alert(alertVar));
            }
        };
        castLambdaArr[23] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PeerConnectAlert(alert.cast_to_peer_connect_alert(alertVar));
            }
        };
        castLambdaArr[24] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PeerDisconnectedAlert(alert.cast_to_peer_disconnected_alert(alertVar));
            }
        };
        castLambdaArr[25] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new InvalidRequestAlert(alert.cast_to_invalid_request_alert(alertVar));
            }
        };
        castLambdaArr[26] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentFinishedAlert(alert.cast_to_torrent_finished_alert(alertVar));
            }
        };
        castLambdaArr[27] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PieceFinishedAlert(alert.cast_to_piece_finished_alert(alertVar));
            }
        };
        castLambdaArr[28] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new RequestDroppedAlert(alert.cast_to_request_dropped_alert(alertVar));
            }
        };
        castLambdaArr[29] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new BlockTimeoutAlert(alert.cast_to_block_timeout_alert(alertVar));
            }
        };
        castLambdaArr[30] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new BlockFinishedAlert(alert.cast_to_block_finished_alert(alertVar));
            }
        };
        castLambdaArr[31] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new BlockDownloadingAlert(alert.cast_to_block_downloading_alert(alertVar));
            }
        };
        castLambdaArr[32] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new UnwantedBlockAlert(alert.cast_to_unwanted_block_alert(alertVar));
            }
        };
        castLambdaArr[33] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new StorageMovedAlert(alert.cast_to_storage_moved_alert(alertVar));
            }
        };
        castLambdaArr[34] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new StorageMovedFailedAlert(alert.cast_to_storage_moved_failed_alert(alertVar));
            }
        };
        castLambdaArr[35] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentDeletedAlert(alert.cast_to_torrent_deleted_alert(alertVar));
            }
        };
        castLambdaArr[36] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentDeleteFailedAlert(alert.cast_to_torrent_delete_failed_alert(alertVar));
            }
        };
        castLambdaArr[37] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new SaveResumeDataAlert(alert.cast_to_save_resume_data_alert(alertVar));
            }
        };
        castLambdaArr[38] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new SaveResumeDataFailedAlert(alert.cast_to_save_resume_data_failed_alert(alertVar));
            }
        };
        castLambdaArr[39] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentPausedAlert(alert.cast_to_torrent_paused_alert(alertVar));
            }
        };
        castLambdaArr[40] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentResumedAlert(alert.cast_to_torrent_resumed_alert(alertVar));
            }
        };
        castLambdaArr[41] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentCheckedAlert(alert.cast_to_torrent_checked_alert(alertVar));
            }
        };
        castLambdaArr[42] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new UrlSeedAlert(alert.cast_to_url_seed_alert(alertVar));
            }
        };
        castLambdaArr[43] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new FileErrorAlert(alert.cast_to_file_error_alert(alertVar));
            }
        };
        castLambdaArr[44] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new MetadataFailedAlert(alert.cast_to_metadata_failed_alert(alertVar));
            }
        };
        castLambdaArr[45] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new MetadataReceivedAlert(alert.cast_to_metadata_received_alert(alertVar));
            }
        };
        castLambdaArr[46] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new UdpErrorAlert(alert.cast_to_udp_error_alert(alertVar));
            }
        };
        castLambdaArr[47] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new ExternalIpAlert(alert.cast_to_external_ip_alert(alertVar));
            }
        };
        castLambdaArr[48] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new ListenFailedAlert(alert.cast_to_listen_failed_alert(alertVar));
            }
        };
        castLambdaArr[49] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new ListenSucceededAlert(alert.cast_to_listen_succeeded_alert(alertVar));
            }
        };
        castLambdaArr[50] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PortmapErrorAlert(alert.cast_to_portmap_error_alert(alertVar));
            }
        };
        castLambdaArr[51] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PortmapAlert(alert.cast_to_portmap_alert(alertVar));
            }
        };
        castLambdaArr[52] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PortmapLogAlert(alert.cast_to_portmap_log_alert(alertVar));
            }
        };
        castLambdaArr[53] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new FastresumeRejectedAlert(alert.cast_to_fastresume_rejected_alert(alertVar));
            }
        };
        castLambdaArr[54] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PeerBlockedAlert(alert.cast_to_peer_blocked_alert(alertVar));
            }
        };
        castLambdaArr[55] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtAnnounceAlert(alert.cast_to_dht_announce_alert(alertVar));
            }
        };
        castLambdaArr[56] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtGetPeersAlert(alert.cast_to_dht_get_peers_alert(alertVar));
            }
        };
        castLambdaArr[57] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[58] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new CacheFlushedAlert(alert.cast_to_cache_flushed_alert(alertVar));
            }
        };
        castLambdaArr[59] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[60] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new LsdPeerAlert(alert.cast_to_lsd_peer_alert(alertVar));
            }
        };
        castLambdaArr[61] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TrackeridAlert(alert.cast_to_trackerid_alert(alertVar));
            }
        };
        castLambdaArr[62] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtBootstrapAlert(alert.cast_to_dht_bootstrap_alert(alertVar));
            }
        };
        castLambdaArr[63] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[64] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentErrorAlert(alert.cast_to_torrent_error_alert(alertVar));
            }
        };
        castLambdaArr[65] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentNeedCertAlert(alert.cast_to_torrent_need_cert_alert(alertVar));
            }
        };
        castLambdaArr[66] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new IncomingConnectionAlert(alert.cast_to_incoming_connection_alert(alertVar));
            }
        };
        castLambdaArr[67] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new AddTorrentAlert(alert.cast_to_add_torrent_alert(alertVar));
            }
        };
        castLambdaArr[68] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new StateUpdateAlert(alert.cast_to_state_update_alert(alertVar));
            }
        };
        castLambdaArr[69] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[70] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new SessionStatsAlert(alert.cast_to_session_stats_alert(alertVar));
            }
        };
        castLambdaArr[71] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[72] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return Alerts.handleUnknownAlert(alertVar);
            }
        };
        castLambdaArr[73] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtErrorAlert(alert.cast_to_dht_error_alert(alertVar));
            }
        };
        castLambdaArr[74] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtImmutableItemAlert(alert.cast_to_dht_immutable_item_alert(alertVar));
            }
        };
        castLambdaArr[75] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtMutableItemAlert(alert.cast_to_dht_mutable_item_alert(alertVar));
            }
        };
        castLambdaArr[76] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtPutAlert(alert.cast_to_dht_put_alert(alertVar));
            }
        };
        castLambdaArr[77] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new I2pAlert(alert.cast_to_i2p_alert(alertVar));
            }
        };
        castLambdaArr[78] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtOutgoingGetPeersAlert(alert.cast_to_dht_outgoing_get_peers_alert(alertVar));
            }
        };
        castLambdaArr[79] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new LogAlert(alert.cast_to_log_alert(alertVar));
            }
        };
        castLambdaArr[80] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new TorrentLogAlert(alert.cast_to_torrent_log_alert(alertVar));
            }
        };
        castLambdaArr[81] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PeerLogAlert(alert.cast_to_peer_log_alert(alertVar));
            }
        };
        castLambdaArr[82] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new LsdErrorAlert(alert.cast_to_lsd_error_alert(alertVar));
            }
        };
        castLambdaArr[83] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtStatsAlert(alert.cast_to_dht_stats_alert(alertVar));
            }
        };
        castLambdaArr[84] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new IncomingRequestAlert(alert.cast_to_incoming_request_alert(alertVar));
            }
        };
        castLambdaArr[85] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtLogAlert(alert.cast_to_dht_log_alert(alertVar));
            }
        };
        castLambdaArr[86] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtPktAlert(alert.cast_to_dht_pkt_alert(alertVar));
            }
        };
        castLambdaArr[87] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtGetPeersReplyAlert(alert.cast_to_dht_get_peers_reply_alert(alertVar));
            }
        };
        castLambdaArr[88] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtDirectResponseAlert(alert.cast_to_dht_direct_response_alert(alertVar));
            }
        };
        castLambdaArr[89] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new PickerLogAlert(alert.cast_to_picker_log_alert(alertVar));
            }
        };
        castLambdaArr[90] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new SessionErrorAlert(alert.cast_to_session_error_alert(alertVar));
            }
        };
        castLambdaArr[91] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtLiveNodesAlert(alert.cast_to_dht_live_nodes_alert(alertVar));
            }
        };
        castLambdaArr[92] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new SessionStatsHeaderAlert(alert.cast_to_session_stats_header_alert(alertVar));
            }
        };
        castLambdaArr[93] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new DhtSampleInfohashesAlert(alert.cast_to_dht_sample_infohashes_alert(alertVar));
            }
        };
        castLambdaArr[94] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new BlockUploadedAlert(alert.cast_to_block_uploaded_alert(alertVar));
            }
        };
        castLambdaArr[95] = new CastLambda() {
            @Override
            public Alert cast(alert alertVar) {
                return new AlertsDroppedAlert(alert.cast_to_alerts_dropped_alert(alertVar));
            }
        };
        castLambdaArr[96] = new CastLambda() {
            @Override
            public Alert<?> cast(alert alertVar) {
                return new Socks5Alert(alert.cast_to_socks5_alert(alertVar));
            }
        };
        castLambdaArr[97] = new CastLambda() {
            @Override
            public Alert<?> cast(alert alertVar) {
                return new FilePrioAlert(alert.cast_to_file_prio_alert(alertVar));
            }
        };
        castLambdaArr[98] = new CastLambda() {
            @Override
            public Alert<?> cast(alert alertVar) {
                return new OversizedFileAlert(alert.cast_to_oversized_file_alert(alertVar));
            }
        };
        castLambdaArr[99] = new CastLambda() {
            @Override
            public Alert<?> cast(alert alertVar) {
                return new TorrentConflictAlert(alert.cast_to_torrent_conflict_alert(alertVar));
            }
        };
        castLambdaArr[100] = new CastLambda() {
            @Override
            public Alert<?> cast(alert alertVar) {
                return new PeerInfoAlert(alert.cast_to_peer_info_alert(alertVar));
            }
        };
        castLambdaArr[101] = new CastLambda() {
            @Override
            public Alert<?> cast(alert alertVar) {
                return new FileProgressAlert(alert.cast_to_file_progress_alert(alertVar));
            }
        };
        castLambdaArr[102] = new CastLambda() {
            @Override
            public Alert<?> cast(alert alertVar) {
                return new PieceInfoAlert(alert.cast_to_piece_info_alert(alertVar));
            }
        };
        castLambdaArr[103] = new CastLambda() {
            @Override
            public Alert<?> cast(alert alertVar) {
                return new PieceAvailabilityAlert(alert.cast_to_piece_availability_alert(alertVar));
            }
        };
        castLambdaArr[104] = new CastLambda() {
            @Override
            public Alert<?> cast(alert alertVar) {
                return new TrackerListAlert(alert.cast_to_tracker_list_alert(alertVar));
            }
        };
        return castLambdaArr;
    }

    public static Alert cast(alert alertVar) {
        return TABLE[alertVar.type()].cast(alertVar);
    }

    public static Alert<?> handleUnknownAlert(alert alertVar) {
        throw new IllegalArgumentException("alert not known: " + alertVar.type() + " - " + alertVar.message());
    }
}
