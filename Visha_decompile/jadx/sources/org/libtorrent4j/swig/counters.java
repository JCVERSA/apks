package org.libtorrent4j.swig;

public class counters {
    protected transient boolean swigCMemOwn;
    private transient long swigCPtr;

    public counters(long j, boolean z) {
        this.swigCMemOwn = z;
        this.swigCPtr = j;
    }

    public static long getCPtr(counters countersVar) {
        if (countersVar == null) {
            return 0L;
        }
        return countersVar.swigCPtr;
    }

    public static long swigRelease(counters countersVar) {
        if (countersVar == null) {
            return 0L;
        }
        if (!countersVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = countersVar.swigCPtr;
        countersVar.swigCMemOwn = false;
        countersVar.delete();
        return j;
    }

    public long at(int i) {
        return libtorrent_jni.counters_at(this.swigCPtr, this, i);
    }

    public void blend_stats_counter(int i, long j, int i2) {
        libtorrent_jni.counters_blend_stats_counter(this.swigCPtr, this, i, j, i2);
    }

    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_counters(j);
                }
                this.swigCPtr = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        delete();
    }

    public long inc_stats_counter(int i, long j) {
        return libtorrent_jni.counters_inc_stats_counter__SWIG_0(this.swigCPtr, this, i, j);
    }

    public void set_value(int i, long j) {
        libtorrent_jni.counters_set_value(this.swigCPtr, this, i, j);
    }

    public long inc_stats_counter(int i) {
        return libtorrent_jni.counters_inc_stats_counter__SWIG_1(this.swigCPtr, this, i);
    }

    public static final class stats_counter_t {
        public static final stats_counter_t aborted_peers;
        public static final stats_counter_t addrinuse_peers;
        public static final stats_counter_t banned_for_hash_failure;
        public static final stats_counter_t boost_connection_attempts;
        public static final stats_counter_t broken_pipe_peers;
        public static final stats_counter_t buffer_peers;
        public static final stats_counter_t cancelled_piece_requests;
        public static final stats_counter_t choked_piece_requests;
        public static final stats_counter_t connaborted_peers;
        public static final stats_counter_t connect_timeouts;
        public static final stats_counter_t connection_attempt_loops;
        public static final stats_counter_t connection_attempts;
        public static final stats_counter_t connrefused_peers;
        public static final stats_counter_t connreset_peers;
        public static final stats_counter_t dht_announce_peer_in;
        public static final stats_counter_t dht_announce_peer_out;
        public static final stats_counter_t dht_bytes_in;
        public static final stats_counter_t dht_bytes_out;
        public static final stats_counter_t dht_find_node_in;
        public static final stats_counter_t dht_find_node_out;
        public static final stats_counter_t dht_get_in;
        public static final stats_counter_t dht_get_out;
        public static final stats_counter_t dht_get_peers_in;
        public static final stats_counter_t dht_get_peers_out;
        public static final stats_counter_t dht_invalid_announce;
        public static final stats_counter_t dht_invalid_find_node;
        public static final stats_counter_t dht_invalid_get;
        public static final stats_counter_t dht_invalid_get_peers;
        public static final stats_counter_t dht_invalid_put;
        public static final stats_counter_t dht_invalid_sample_infohashes;
        public static final stats_counter_t dht_messages_in;
        public static final stats_counter_t dht_messages_in_dropped;
        public static final stats_counter_t dht_messages_out;
        public static final stats_counter_t dht_messages_out_dropped;
        public static final stats_counter_t dht_ping_in;
        public static final stats_counter_t dht_ping_out;
        public static final stats_counter_t dht_put_in;
        public static final stats_counter_t dht_put_out;
        public static final stats_counter_t dht_sample_infohashes_in;
        public static final stats_counter_t dht_sample_infohashes_out;
        public static final stats_counter_t disconnected_peers;
        public static final stats_counter_t disk_hash_time;
        public static final stats_counter_t disk_job_time;
        public static final stats_counter_t disk_read_time;
        public static final stats_counter_t disk_write_time;
        public static final stats_counter_t end_game_piece_picks;
        public static final stats_counter_t eof_peers;
        public static final stats_counter_t error_encrypted_peers;
        public static final stats_counter_t error_incoming_peers;
        public static final stats_counter_t error_outgoing_peers;
        public static final stats_counter_t error_peers;
        public static final stats_counter_t error_rc4_peers;
        public static final stats_counter_t error_tcp_peers;
        public static final stats_counter_t error_utp_peers;
        public static final stats_counter_t file_pool_hits;
        public static final stats_counter_t file_pool_misses;
        public static final stats_counter_t file_pool_race;
        public static final stats_counter_t file_pool_thread_stall;
        public static final stats_counter_t hash_fail_piece_picks;
        public static final stats_counter_t incoming_connections;
        public static final stats_counter_t incoming_piece_picks;
        public static final stats_counter_t incoming_redundant_piece_picks;
        public static final stats_counter_t interesting_piece_picks;
        public static final stats_counter_t invalid_arg_peers;
        public static final stats_counter_t invalid_piece_requests;
        public static final stats_counter_t max_piece_requests;
        public static final stats_counter_t missed_connection_attempts;
        public static final stats_counter_t no_access_peers;
        public static final stats_counter_t no_memory_peers;
        public static final stats_counter_t no_peer_connection_attempts;
        public static final stats_counter_t notconnected_peers;
        public static final stats_counter_t num_banned_peers;
        public static final stats_counter_t num_blocks_hashed;
        public static final stats_counter_t num_blocks_read;
        public static final stats_counter_t num_blocks_written;
        public static final stats_counter_t num_have_pieces;
        public static final stats_counter_t num_incoming_allowed_fast;
        public static final stats_counter_t num_incoming_bitfield;
        public static final stats_counter_t num_incoming_cancel;
        public static final stats_counter_t num_incoming_choke;
        public static final stats_counter_t num_incoming_dht_port;
        public static final stats_counter_t num_incoming_ext_handshake;
        public static final stats_counter_t num_incoming_extended;
        public static final stats_counter_t num_incoming_have;
        public static final stats_counter_t num_incoming_have_all;
        public static final stats_counter_t num_incoming_have_none;
        public static final stats_counter_t num_incoming_interested;
        public static final stats_counter_t num_incoming_metadata;
        public static final stats_counter_t num_incoming_not_interested;
        public static final stats_counter_t num_incoming_pex;
        public static final stats_counter_t num_incoming_piece;
        public static final stats_counter_t num_incoming_reject;
        public static final stats_counter_t num_incoming_request;
        public static final stats_counter_t num_incoming_suggest;
        public static final stats_counter_t num_incoming_unchoke;
        public static final stats_counter_t num_outgoing_allowed_fast;
        public static final stats_counter_t num_outgoing_bitfield;
        public static final stats_counter_t num_outgoing_cancel;
        public static final stats_counter_t num_outgoing_choke;
        public static final stats_counter_t num_outgoing_dht_port;
        public static final stats_counter_t num_outgoing_ext_handshake;
        public static final stats_counter_t num_outgoing_extended;
        public static final stats_counter_t num_outgoing_hash_reject;
        public static final stats_counter_t num_outgoing_hash_request;
        public static final stats_counter_t num_outgoing_hashes;
        public static final stats_counter_t num_outgoing_have;
        public static final stats_counter_t num_outgoing_have_all;
        public static final stats_counter_t num_outgoing_have_none;
        public static final stats_counter_t num_outgoing_interested;
        public static final stats_counter_t num_outgoing_metadata;
        public static final stats_counter_t num_outgoing_not_interested;
        public static final stats_counter_t num_outgoing_pex;
        public static final stats_counter_t num_outgoing_piece;
        public static final stats_counter_t num_outgoing_reject;
        public static final stats_counter_t num_outgoing_request;
        public static final stats_counter_t num_outgoing_suggest;
        public static final stats_counter_t num_outgoing_unchoke;
        public static final stats_counter_t num_piece_failed;
        public static final stats_counter_t num_piece_passed;
        public static final stats_counter_t num_read_back;
        public static final stats_counter_t num_read_ops;
        public static final stats_counter_t num_stats_counters;
        public static final stats_counter_t num_total_pieces_added;
        public static final stats_counter_t num_write_ops;
        public static final stats_counter_t on_accept_counter;
        public static final stats_counter_t on_disk_counter;
        public static final stats_counter_t on_disk_queue_counter;
        public static final stats_counter_t on_lsd_counter;
        public static final stats_counter_t on_lsd_peer_counter;
        public static final stats_counter_t on_read_counter;
        public static final stats_counter_t on_tick_counter;
        public static final stats_counter_t on_udp_counter;
        public static final stats_counter_t on_write_counter;
        public static final stats_counter_t perm_peers;
        public static final stats_counter_t piece_picker_busy_loops;
        public static final stats_counter_t piece_picker_partial_loops;
        public static final stats_counter_t piece_picker_rand_loops;
        public static final stats_counter_t piece_picker_rand_start_loops;
        public static final stats_counter_t piece_picker_rare_loops;
        public static final stats_counter_t piece_picker_reverse_rare_loops;
        public static final stats_counter_t piece_picker_sequential_loops;
        public static final stats_counter_t piece_picker_suggest_loops;
        public static final stats_counter_t piece_rejects;
        public static final stats_counter_t piece_requests;
        public static final stats_counter_t recv_bytes;
        public static final stats_counter_t recv_failed_bytes;
        public static final stats_counter_t recv_ip_overhead_bytes;
        public static final stats_counter_t recv_payload_bytes;
        public static final stats_counter_t recv_redundant_bytes;
        public static final stats_counter_t recv_tracker_bytes;
        public static final stats_counter_t reject_piece_picks;
        public static final stats_counter_t sent_bytes;
        public static final stats_counter_t sent_ip_overhead_bytes;
        public static final stats_counter_t sent_payload_bytes;
        public static final stats_counter_t sent_tracker_bytes;
        public static final stats_counter_t snubbed_piece_picks;
        public static final stats_counter_t socket_recv_size10;
        public static final stats_counter_t socket_recv_size11;
        public static final stats_counter_t socket_recv_size12;
        public static final stats_counter_t socket_recv_size13;
        public static final stats_counter_t socket_recv_size14;
        public static final stats_counter_t socket_recv_size15;
        public static final stats_counter_t socket_recv_size16;
        public static final stats_counter_t socket_recv_size17;
        public static final stats_counter_t socket_recv_size18;
        public static final stats_counter_t socket_recv_size19;
        public static final stats_counter_t socket_recv_size20;
        public static final stats_counter_t socket_recv_size3;
        public static final stats_counter_t socket_recv_size4;
        public static final stats_counter_t socket_recv_size5;
        public static final stats_counter_t socket_recv_size6;
        public static final stats_counter_t socket_recv_size7;
        public static final stats_counter_t socket_recv_size8;
        public static final stats_counter_t socket_recv_size9;
        public static final stats_counter_t socket_send_size10;
        public static final stats_counter_t socket_send_size11;
        public static final stats_counter_t socket_send_size12;
        public static final stats_counter_t socket_send_size13;
        public static final stats_counter_t socket_send_size14;
        public static final stats_counter_t socket_send_size15;
        public static final stats_counter_t socket_send_size16;
        public static final stats_counter_t socket_send_size17;
        public static final stats_counter_t socket_send_size18;
        public static final stats_counter_t socket_send_size19;
        public static final stats_counter_t socket_send_size20;
        public static final stats_counter_t socket_send_size3;
        public static final stats_counter_t socket_send_size4;
        public static final stats_counter_t socket_send_size5;
        public static final stats_counter_t socket_send_size6;
        public static final stats_counter_t socket_send_size7;
        public static final stats_counter_t socket_send_size8;
        public static final stats_counter_t socket_send_size9;
        private static int swigNext;
        private static stats_counter_t[] swigValues;
        public static final stats_counter_t timeout_peers;
        public static final stats_counter_t too_many_peers;
        public static final stats_counter_t transport_timeout_peers;
        public static final stats_counter_t unchoke_piece_picks;
        public static final stats_counter_t uninteresting_peers;
        public static final stats_counter_t unreachable_peers;
        public static final stats_counter_t utp_fast_retransmit;
        public static final stats_counter_t utp_invalid_pkts_in;
        public static final stats_counter_t utp_packet_loss;
        public static final stats_counter_t utp_packet_resend;
        public static final stats_counter_t utp_packets_in;
        public static final stats_counter_t utp_packets_out;
        public static final stats_counter_t utp_payload_pkts_in;
        public static final stats_counter_t utp_payload_pkts_out;
        public static final stats_counter_t utp_redundant_pkts_in;
        public static final stats_counter_t utp_samples_above_target;
        public static final stats_counter_t utp_samples_below_target;
        public static final stats_counter_t utp_timeout;
        public static final stats_counter_t waste_piece_cancelled;
        public static final stats_counter_t waste_piece_closing;
        public static final stats_counter_t waste_piece_end_game;
        public static final stats_counter_t waste_piece_seed;
        public static final stats_counter_t waste_piece_timed_out;
        public static final stats_counter_t waste_piece_unknown;
        private final String swigName;
        private final int swigValue;

        static {
            stats_counter_t stats_counter_tVar = new stats_counter_t("error_peers");
            error_peers = stats_counter_tVar;
            stats_counter_t stats_counter_tVar2 = new stats_counter_t("disconnected_peers");
            disconnected_peers = stats_counter_tVar2;
            stats_counter_t stats_counter_tVar3 = new stats_counter_t("eof_peers");
            eof_peers = stats_counter_tVar3;
            stats_counter_t stats_counter_tVar4 = new stats_counter_t("connreset_peers");
            connreset_peers = stats_counter_tVar4;
            stats_counter_t stats_counter_tVar5 = new stats_counter_t("connrefused_peers");
            connrefused_peers = stats_counter_tVar5;
            stats_counter_t stats_counter_tVar6 = new stats_counter_t("connaborted_peers");
            connaborted_peers = stats_counter_tVar6;
            stats_counter_t stats_counter_tVar7 = new stats_counter_t("notconnected_peers");
            notconnected_peers = stats_counter_tVar7;
            stats_counter_t stats_counter_tVar8 = new stats_counter_t("perm_peers");
            perm_peers = stats_counter_tVar8;
            stats_counter_t stats_counter_tVar9 = new stats_counter_t("buffer_peers");
            buffer_peers = stats_counter_tVar9;
            stats_counter_t stats_counter_tVar10 = new stats_counter_t("unreachable_peers");
            unreachable_peers = stats_counter_tVar10;
            stats_counter_t stats_counter_tVar11 = new stats_counter_t("broken_pipe_peers");
            broken_pipe_peers = stats_counter_tVar11;
            stats_counter_t stats_counter_tVar12 = new stats_counter_t("addrinuse_peers");
            addrinuse_peers = stats_counter_tVar12;
            stats_counter_t stats_counter_tVar13 = new stats_counter_t("no_access_peers");
            no_access_peers = stats_counter_tVar13;
            stats_counter_t stats_counter_tVar14 = new stats_counter_t("invalid_arg_peers");
            invalid_arg_peers = stats_counter_tVar14;
            stats_counter_t stats_counter_tVar15 = new stats_counter_t("aborted_peers");
            aborted_peers = stats_counter_tVar15;
            stats_counter_t stats_counter_tVar16 = new stats_counter_t("piece_requests");
            piece_requests = stats_counter_tVar16;
            stats_counter_t stats_counter_tVar17 = new stats_counter_t("max_piece_requests");
            max_piece_requests = stats_counter_tVar17;
            stats_counter_t stats_counter_tVar18 = new stats_counter_t("invalid_piece_requests");
            invalid_piece_requests = stats_counter_tVar18;
            stats_counter_t stats_counter_tVar19 = new stats_counter_t("choked_piece_requests");
            choked_piece_requests = stats_counter_tVar19;
            stats_counter_t stats_counter_tVar20 = new stats_counter_t("cancelled_piece_requests");
            cancelled_piece_requests = stats_counter_tVar20;
            stats_counter_t stats_counter_tVar21 = new stats_counter_t("piece_rejects");
            piece_rejects = stats_counter_tVar21;
            stats_counter_t stats_counter_tVar22 = new stats_counter_t("error_incoming_peers");
            error_incoming_peers = stats_counter_tVar22;
            stats_counter_t stats_counter_tVar23 = new stats_counter_t("error_outgoing_peers");
            error_outgoing_peers = stats_counter_tVar23;
            stats_counter_t stats_counter_tVar24 = new stats_counter_t("error_rc4_peers");
            error_rc4_peers = stats_counter_tVar24;
            stats_counter_t stats_counter_tVar25 = new stats_counter_t("error_encrypted_peers");
            error_encrypted_peers = stats_counter_tVar25;
            stats_counter_t stats_counter_tVar26 = new stats_counter_t("error_tcp_peers");
            error_tcp_peers = stats_counter_tVar26;
            stats_counter_t stats_counter_tVar27 = new stats_counter_t("error_utp_peers");
            error_utp_peers = stats_counter_tVar27;
            stats_counter_t stats_counter_tVar28 = new stats_counter_t("reject_piece_picks");
            reject_piece_picks = stats_counter_tVar28;
            stats_counter_t stats_counter_tVar29 = new stats_counter_t("unchoke_piece_picks");
            unchoke_piece_picks = stats_counter_tVar29;
            stats_counter_t stats_counter_tVar30 = new stats_counter_t("incoming_redundant_piece_picks");
            incoming_redundant_piece_picks = stats_counter_tVar30;
            stats_counter_t stats_counter_tVar31 = new stats_counter_t("incoming_piece_picks");
            incoming_piece_picks = stats_counter_tVar31;
            stats_counter_t stats_counter_tVar32 = new stats_counter_t("end_game_piece_picks");
            end_game_piece_picks = stats_counter_tVar32;
            stats_counter_t stats_counter_tVar33 = new stats_counter_t("snubbed_piece_picks");
            snubbed_piece_picks = stats_counter_tVar33;
            stats_counter_t stats_counter_tVar34 = new stats_counter_t("interesting_piece_picks");
            interesting_piece_picks = stats_counter_tVar34;
            stats_counter_t stats_counter_tVar35 = new stats_counter_t("hash_fail_piece_picks");
            hash_fail_piece_picks = stats_counter_tVar35;
            stats_counter_t stats_counter_tVar36 = new stats_counter_t("piece_picker_partial_loops");
            piece_picker_partial_loops = stats_counter_tVar36;
            stats_counter_t stats_counter_tVar37 = new stats_counter_t("piece_picker_suggest_loops");
            piece_picker_suggest_loops = stats_counter_tVar37;
            stats_counter_t stats_counter_tVar38 = new stats_counter_t("piece_picker_sequential_loops");
            piece_picker_sequential_loops = stats_counter_tVar38;
            stats_counter_t stats_counter_tVar39 = new stats_counter_t("piece_picker_reverse_rare_loops");
            piece_picker_reverse_rare_loops = stats_counter_tVar39;
            stats_counter_t stats_counter_tVar40 = new stats_counter_t("piece_picker_rare_loops");
            piece_picker_rare_loops = stats_counter_tVar40;
            stats_counter_t stats_counter_tVar41 = new stats_counter_t("piece_picker_rand_start_loops");
            piece_picker_rand_start_loops = stats_counter_tVar41;
            stats_counter_t stats_counter_tVar42 = new stats_counter_t("piece_picker_rand_loops");
            piece_picker_rand_loops = stats_counter_tVar42;
            stats_counter_t stats_counter_tVar43 = new stats_counter_t("piece_picker_busy_loops");
            piece_picker_busy_loops = stats_counter_tVar43;
            stats_counter_t stats_counter_tVar44 = new stats_counter_t("connect_timeouts");
            connect_timeouts = stats_counter_tVar44;
            stats_counter_t stats_counter_tVar45 = new stats_counter_t("uninteresting_peers");
            uninteresting_peers = stats_counter_tVar45;
            stats_counter_t stats_counter_tVar46 = new stats_counter_t("timeout_peers");
            timeout_peers = stats_counter_tVar46;
            stats_counter_t stats_counter_tVar47 = new stats_counter_t("no_memory_peers");
            no_memory_peers = stats_counter_tVar47;
            stats_counter_t stats_counter_tVar48 = new stats_counter_t("too_many_peers");
            too_many_peers = stats_counter_tVar48;
            stats_counter_t stats_counter_tVar49 = new stats_counter_t("transport_timeout_peers");
            transport_timeout_peers = stats_counter_tVar49;
            stats_counter_t stats_counter_tVar50 = new stats_counter_t("num_banned_peers");
            num_banned_peers = stats_counter_tVar50;
            stats_counter_t stats_counter_tVar51 = new stats_counter_t("banned_for_hash_failure");
            banned_for_hash_failure = stats_counter_tVar51;
            stats_counter_t stats_counter_tVar52 = new stats_counter_t("connection_attempts");
            connection_attempts = stats_counter_tVar52;
            stats_counter_t stats_counter_tVar53 = new stats_counter_t("connection_attempt_loops");
            connection_attempt_loops = stats_counter_tVar53;
            stats_counter_t stats_counter_tVar54 = new stats_counter_t("boost_connection_attempts");
            boost_connection_attempts = stats_counter_tVar54;
            stats_counter_t stats_counter_tVar55 = new stats_counter_t("missed_connection_attempts");
            missed_connection_attempts = stats_counter_tVar55;
            stats_counter_t stats_counter_tVar56 = new stats_counter_t("no_peer_connection_attempts");
            no_peer_connection_attempts = stats_counter_tVar56;
            stats_counter_t stats_counter_tVar57 = new stats_counter_t("incoming_connections");
            incoming_connections = stats_counter_tVar57;
            stats_counter_t stats_counter_tVar58 = new stats_counter_t("on_read_counter");
            on_read_counter = stats_counter_tVar58;
            stats_counter_t stats_counter_tVar59 = new stats_counter_t("on_write_counter");
            on_write_counter = stats_counter_tVar59;
            stats_counter_t stats_counter_tVar60 = new stats_counter_t("on_tick_counter");
            on_tick_counter = stats_counter_tVar60;
            stats_counter_t stats_counter_tVar61 = new stats_counter_t("on_lsd_counter");
            on_lsd_counter = stats_counter_tVar61;
            stats_counter_t stats_counter_tVar62 = new stats_counter_t("on_lsd_peer_counter");
            on_lsd_peer_counter = stats_counter_tVar62;
            stats_counter_t stats_counter_tVar63 = new stats_counter_t("on_udp_counter");
            on_udp_counter = stats_counter_tVar63;
            stats_counter_t stats_counter_tVar64 = new stats_counter_t("on_accept_counter");
            on_accept_counter = stats_counter_tVar64;
            stats_counter_t stats_counter_tVar65 = new stats_counter_t("on_disk_queue_counter");
            on_disk_queue_counter = stats_counter_tVar65;
            stats_counter_t stats_counter_tVar66 = new stats_counter_t("on_disk_counter");
            on_disk_counter = stats_counter_tVar66;
            stats_counter_t stats_counter_tVar67 = new stats_counter_t("num_incoming_choke");
            num_incoming_choke = stats_counter_tVar67;
            stats_counter_t stats_counter_tVar68 = new stats_counter_t("num_incoming_unchoke");
            num_incoming_unchoke = stats_counter_tVar68;
            stats_counter_t stats_counter_tVar69 = new stats_counter_t("num_incoming_interested");
            num_incoming_interested = stats_counter_tVar69;
            stats_counter_t stats_counter_tVar70 = new stats_counter_t("num_incoming_not_interested");
            num_incoming_not_interested = stats_counter_tVar70;
            stats_counter_t stats_counter_tVar71 = new stats_counter_t("num_incoming_have");
            num_incoming_have = stats_counter_tVar71;
            stats_counter_t stats_counter_tVar72 = new stats_counter_t("num_incoming_bitfield");
            num_incoming_bitfield = stats_counter_tVar72;
            stats_counter_t stats_counter_tVar73 = new stats_counter_t("num_incoming_request");
            num_incoming_request = stats_counter_tVar73;
            stats_counter_t stats_counter_tVar74 = new stats_counter_t("num_incoming_piece");
            num_incoming_piece = stats_counter_tVar74;
            stats_counter_t stats_counter_tVar75 = new stats_counter_t("num_incoming_cancel");
            num_incoming_cancel = stats_counter_tVar75;
            stats_counter_t stats_counter_tVar76 = new stats_counter_t("num_incoming_dht_port");
            num_incoming_dht_port = stats_counter_tVar76;
            stats_counter_t stats_counter_tVar77 = new stats_counter_t("num_incoming_suggest");
            num_incoming_suggest = stats_counter_tVar77;
            stats_counter_t stats_counter_tVar78 = new stats_counter_t("num_incoming_have_all");
            num_incoming_have_all = stats_counter_tVar78;
            stats_counter_t stats_counter_tVar79 = new stats_counter_t("num_incoming_have_none");
            num_incoming_have_none = stats_counter_tVar79;
            stats_counter_t stats_counter_tVar80 = new stats_counter_t("num_incoming_reject");
            num_incoming_reject = stats_counter_tVar80;
            stats_counter_t stats_counter_tVar81 = new stats_counter_t("num_incoming_allowed_fast");
            num_incoming_allowed_fast = stats_counter_tVar81;
            stats_counter_t stats_counter_tVar82 = new stats_counter_t("num_incoming_ext_handshake");
            num_incoming_ext_handshake = stats_counter_tVar82;
            stats_counter_t stats_counter_tVar83 = new stats_counter_t("num_incoming_pex");
            num_incoming_pex = stats_counter_tVar83;
            stats_counter_t stats_counter_tVar84 = new stats_counter_t("num_incoming_metadata");
            num_incoming_metadata = stats_counter_tVar84;
            stats_counter_t stats_counter_tVar85 = new stats_counter_t("num_incoming_extended");
            num_incoming_extended = stats_counter_tVar85;
            stats_counter_t stats_counter_tVar86 = new stats_counter_t("num_outgoing_choke");
            num_outgoing_choke = stats_counter_tVar86;
            stats_counter_t stats_counter_tVar87 = new stats_counter_t("num_outgoing_unchoke");
            num_outgoing_unchoke = stats_counter_tVar87;
            stats_counter_t stats_counter_tVar88 = new stats_counter_t("num_outgoing_interested");
            num_outgoing_interested = stats_counter_tVar88;
            stats_counter_t stats_counter_tVar89 = new stats_counter_t("num_outgoing_not_interested");
            num_outgoing_not_interested = stats_counter_tVar89;
            stats_counter_t stats_counter_tVar90 = new stats_counter_t("num_outgoing_have");
            num_outgoing_have = stats_counter_tVar90;
            stats_counter_t stats_counter_tVar91 = new stats_counter_t("num_outgoing_bitfield");
            num_outgoing_bitfield = stats_counter_tVar91;
            stats_counter_t stats_counter_tVar92 = new stats_counter_t("num_outgoing_request");
            num_outgoing_request = stats_counter_tVar92;
            stats_counter_t stats_counter_tVar93 = new stats_counter_t("num_outgoing_piece");
            num_outgoing_piece = stats_counter_tVar93;
            stats_counter_t stats_counter_tVar94 = new stats_counter_t("num_outgoing_cancel");
            num_outgoing_cancel = stats_counter_tVar94;
            stats_counter_t stats_counter_tVar95 = new stats_counter_t("num_outgoing_dht_port");
            num_outgoing_dht_port = stats_counter_tVar95;
            stats_counter_t stats_counter_tVar96 = new stats_counter_t("num_outgoing_suggest");
            num_outgoing_suggest = stats_counter_tVar96;
            stats_counter_t stats_counter_tVar97 = new stats_counter_t("num_outgoing_have_all");
            num_outgoing_have_all = stats_counter_tVar97;
            stats_counter_t stats_counter_tVar98 = new stats_counter_t("num_outgoing_have_none");
            num_outgoing_have_none = stats_counter_tVar98;
            stats_counter_t stats_counter_tVar99 = new stats_counter_t("num_outgoing_reject");
            num_outgoing_reject = stats_counter_tVar99;
            stats_counter_t stats_counter_tVar100 = new stats_counter_t("num_outgoing_allowed_fast");
            num_outgoing_allowed_fast = stats_counter_tVar100;
            stats_counter_t stats_counter_tVar101 = new stats_counter_t("num_outgoing_ext_handshake");
            num_outgoing_ext_handshake = stats_counter_tVar101;
            stats_counter_t stats_counter_tVar102 = new stats_counter_t("num_outgoing_pex");
            num_outgoing_pex = stats_counter_tVar102;
            stats_counter_t stats_counter_tVar103 = new stats_counter_t("num_outgoing_metadata");
            num_outgoing_metadata = stats_counter_tVar103;
            stats_counter_t stats_counter_tVar104 = new stats_counter_t("num_outgoing_extended");
            num_outgoing_extended = stats_counter_tVar104;
            stats_counter_t stats_counter_tVar105 = new stats_counter_t("num_outgoing_hash_request");
            num_outgoing_hash_request = stats_counter_tVar105;
            stats_counter_t stats_counter_tVar106 = new stats_counter_t("num_outgoing_hashes");
            num_outgoing_hashes = stats_counter_tVar106;
            stats_counter_t stats_counter_tVar107 = new stats_counter_t("num_outgoing_hash_reject");
            num_outgoing_hash_reject = stats_counter_tVar107;
            stats_counter_t stats_counter_tVar108 = new stats_counter_t("num_piece_passed");
            num_piece_passed = stats_counter_tVar108;
            stats_counter_t stats_counter_tVar109 = new stats_counter_t("num_piece_failed");
            num_piece_failed = stats_counter_tVar109;
            stats_counter_t stats_counter_tVar110 = new stats_counter_t("num_have_pieces");
            num_have_pieces = stats_counter_tVar110;
            stats_counter_t stats_counter_tVar111 = new stats_counter_t("num_total_pieces_added");
            num_total_pieces_added = stats_counter_tVar111;
            stats_counter_t stats_counter_tVar112 = new stats_counter_t("num_blocks_written");
            num_blocks_written = stats_counter_tVar112;
            stats_counter_t stats_counter_tVar113 = new stats_counter_t("num_blocks_read");
            num_blocks_read = stats_counter_tVar113;
            stats_counter_t stats_counter_tVar114 = new stats_counter_t("num_blocks_hashed");
            num_blocks_hashed = stats_counter_tVar114;
            stats_counter_t stats_counter_tVar115 = new stats_counter_t("num_write_ops");
            num_write_ops = stats_counter_tVar115;
            stats_counter_t stats_counter_tVar116 = new stats_counter_t("num_read_ops");
            num_read_ops = stats_counter_tVar116;
            stats_counter_t stats_counter_tVar117 = new stats_counter_t("num_read_back");
            num_read_back = stats_counter_tVar117;
            stats_counter_t stats_counter_tVar118 = new stats_counter_t("file_pool_hits");
            file_pool_hits = stats_counter_tVar118;
            stats_counter_t stats_counter_tVar119 = new stats_counter_t("file_pool_misses");
            file_pool_misses = stats_counter_tVar119;
            stats_counter_t stats_counter_tVar120 = new stats_counter_t("file_pool_thread_stall");
            file_pool_thread_stall = stats_counter_tVar120;
            stats_counter_t stats_counter_tVar121 = new stats_counter_t("file_pool_race");
            file_pool_race = stats_counter_tVar121;
            stats_counter_t stats_counter_tVar122 = new stats_counter_t("disk_read_time");
            disk_read_time = stats_counter_tVar122;
            stats_counter_t stats_counter_tVar123 = new stats_counter_t("disk_write_time");
            disk_write_time = stats_counter_tVar123;
            stats_counter_t stats_counter_tVar124 = new stats_counter_t("disk_hash_time");
            disk_hash_time = stats_counter_tVar124;
            stats_counter_t stats_counter_tVar125 = new stats_counter_t("disk_job_time");
            disk_job_time = stats_counter_tVar125;
            stats_counter_t stats_counter_tVar126 = new stats_counter_t("waste_piece_timed_out");
            waste_piece_timed_out = stats_counter_tVar126;
            stats_counter_t stats_counter_tVar127 = new stats_counter_t("waste_piece_cancelled");
            waste_piece_cancelled = stats_counter_tVar127;
            stats_counter_t stats_counter_tVar128 = new stats_counter_t("waste_piece_unknown");
            waste_piece_unknown = stats_counter_tVar128;
            stats_counter_t stats_counter_tVar129 = new stats_counter_t("waste_piece_seed");
            waste_piece_seed = stats_counter_tVar129;
            stats_counter_t stats_counter_tVar130 = new stats_counter_t("waste_piece_end_game");
            waste_piece_end_game = stats_counter_tVar130;
            stats_counter_t stats_counter_tVar131 = new stats_counter_t("waste_piece_closing");
            waste_piece_closing = stats_counter_tVar131;
            stats_counter_t stats_counter_tVar132 = new stats_counter_t("sent_payload_bytes");
            sent_payload_bytes = stats_counter_tVar132;
            stats_counter_t stats_counter_tVar133 = new stats_counter_t("sent_bytes");
            sent_bytes = stats_counter_tVar133;
            stats_counter_t stats_counter_tVar134 = new stats_counter_t("sent_ip_overhead_bytes");
            sent_ip_overhead_bytes = stats_counter_tVar134;
            stats_counter_t stats_counter_tVar135 = new stats_counter_t("sent_tracker_bytes");
            sent_tracker_bytes = stats_counter_tVar135;
            stats_counter_t stats_counter_tVar136 = new stats_counter_t("recv_payload_bytes");
            recv_payload_bytes = stats_counter_tVar136;
            stats_counter_t stats_counter_tVar137 = new stats_counter_t("recv_bytes");
            recv_bytes = stats_counter_tVar137;
            stats_counter_t stats_counter_tVar138 = new stats_counter_t("recv_ip_overhead_bytes");
            recv_ip_overhead_bytes = stats_counter_tVar138;
            stats_counter_t stats_counter_tVar139 = new stats_counter_t("recv_tracker_bytes");
            recv_tracker_bytes = stats_counter_tVar139;
            stats_counter_t stats_counter_tVar140 = new stats_counter_t("recv_failed_bytes");
            recv_failed_bytes = stats_counter_tVar140;
            stats_counter_t stats_counter_tVar141 = new stats_counter_t("recv_redundant_bytes");
            recv_redundant_bytes = stats_counter_tVar141;
            stats_counter_t stats_counter_tVar142 = new stats_counter_t("dht_messages_in");
            dht_messages_in = stats_counter_tVar142;
            stats_counter_t stats_counter_tVar143 = new stats_counter_t("dht_messages_in_dropped");
            dht_messages_in_dropped = stats_counter_tVar143;
            stats_counter_t stats_counter_tVar144 = new stats_counter_t("dht_messages_out");
            dht_messages_out = stats_counter_tVar144;
            stats_counter_t stats_counter_tVar145 = new stats_counter_t("dht_messages_out_dropped");
            dht_messages_out_dropped = stats_counter_tVar145;
            stats_counter_t stats_counter_tVar146 = new stats_counter_t("dht_bytes_in");
            dht_bytes_in = stats_counter_tVar146;
            stats_counter_t stats_counter_tVar147 = new stats_counter_t("dht_bytes_out");
            dht_bytes_out = stats_counter_tVar147;
            stats_counter_t stats_counter_tVar148 = new stats_counter_t("dht_ping_in");
            dht_ping_in = stats_counter_tVar148;
            stats_counter_t stats_counter_tVar149 = new stats_counter_t("dht_ping_out");
            dht_ping_out = stats_counter_tVar149;
            stats_counter_t stats_counter_tVar150 = new stats_counter_t("dht_find_node_in");
            dht_find_node_in = stats_counter_tVar150;
            stats_counter_t stats_counter_tVar151 = new stats_counter_t("dht_find_node_out");
            dht_find_node_out = stats_counter_tVar151;
            stats_counter_t stats_counter_tVar152 = new stats_counter_t("dht_get_peers_in");
            dht_get_peers_in = stats_counter_tVar152;
            stats_counter_t stats_counter_tVar153 = new stats_counter_t("dht_get_peers_out");
            dht_get_peers_out = stats_counter_tVar153;
            stats_counter_t stats_counter_tVar154 = new stats_counter_t("dht_announce_peer_in");
            dht_announce_peer_in = stats_counter_tVar154;
            stats_counter_t stats_counter_tVar155 = new stats_counter_t("dht_announce_peer_out");
            dht_announce_peer_out = stats_counter_tVar155;
            stats_counter_t stats_counter_tVar156 = new stats_counter_t("dht_get_in");
            dht_get_in = stats_counter_tVar156;
            stats_counter_t stats_counter_tVar157 = new stats_counter_t("dht_get_out");
            dht_get_out = stats_counter_tVar157;
            stats_counter_t stats_counter_tVar158 = new stats_counter_t("dht_put_in");
            dht_put_in = stats_counter_tVar158;
            stats_counter_t stats_counter_tVar159 = new stats_counter_t("dht_put_out");
            dht_put_out = stats_counter_tVar159;
            stats_counter_t stats_counter_tVar160 = new stats_counter_t("dht_sample_infohashes_in");
            dht_sample_infohashes_in = stats_counter_tVar160;
            stats_counter_t stats_counter_tVar161 = new stats_counter_t("dht_sample_infohashes_out");
            dht_sample_infohashes_out = stats_counter_tVar161;
            stats_counter_t stats_counter_tVar162 = new stats_counter_t("dht_invalid_announce");
            dht_invalid_announce = stats_counter_tVar162;
            stats_counter_t stats_counter_tVar163 = new stats_counter_t("dht_invalid_get_peers");
            dht_invalid_get_peers = stats_counter_tVar163;
            stats_counter_t stats_counter_tVar164 = new stats_counter_t("dht_invalid_find_node");
            dht_invalid_find_node = stats_counter_tVar164;
            stats_counter_t stats_counter_tVar165 = new stats_counter_t("dht_invalid_put");
            dht_invalid_put = stats_counter_tVar165;
            stats_counter_t stats_counter_tVar166 = new stats_counter_t("dht_invalid_get");
            dht_invalid_get = stats_counter_tVar166;
            stats_counter_t stats_counter_tVar167 = new stats_counter_t("dht_invalid_sample_infohashes");
            dht_invalid_sample_infohashes = stats_counter_tVar167;
            stats_counter_t stats_counter_tVar168 = new stats_counter_t("utp_packet_loss");
            utp_packet_loss = stats_counter_tVar168;
            stats_counter_t stats_counter_tVar169 = new stats_counter_t("utp_timeout");
            utp_timeout = stats_counter_tVar169;
            stats_counter_t stats_counter_tVar170 = new stats_counter_t("utp_packets_in");
            utp_packets_in = stats_counter_tVar170;
            stats_counter_t stats_counter_tVar171 = new stats_counter_t("utp_packets_out");
            utp_packets_out = stats_counter_tVar171;
            stats_counter_t stats_counter_tVar172 = new stats_counter_t("utp_fast_retransmit");
            utp_fast_retransmit = stats_counter_tVar172;
            stats_counter_t stats_counter_tVar173 = new stats_counter_t("utp_packet_resend");
            utp_packet_resend = stats_counter_tVar173;
            stats_counter_t stats_counter_tVar174 = new stats_counter_t("utp_samples_above_target");
            utp_samples_above_target = stats_counter_tVar174;
            stats_counter_t stats_counter_tVar175 = new stats_counter_t("utp_samples_below_target");
            utp_samples_below_target = stats_counter_tVar175;
            stats_counter_t stats_counter_tVar176 = new stats_counter_t("utp_payload_pkts_in");
            utp_payload_pkts_in = stats_counter_tVar176;
            stats_counter_t stats_counter_tVar177 = new stats_counter_t("utp_payload_pkts_out");
            utp_payload_pkts_out = stats_counter_tVar177;
            stats_counter_t stats_counter_tVar178 = new stats_counter_t("utp_invalid_pkts_in");
            utp_invalid_pkts_in = stats_counter_tVar178;
            stats_counter_t stats_counter_tVar179 = new stats_counter_t("utp_redundant_pkts_in");
            utp_redundant_pkts_in = stats_counter_tVar179;
            stats_counter_t stats_counter_tVar180 = new stats_counter_t("socket_send_size3");
            socket_send_size3 = stats_counter_tVar180;
            stats_counter_t stats_counter_tVar181 = new stats_counter_t("socket_send_size4");
            socket_send_size4 = stats_counter_tVar181;
            stats_counter_t stats_counter_tVar182 = new stats_counter_t("socket_send_size5");
            socket_send_size5 = stats_counter_tVar182;
            stats_counter_t stats_counter_tVar183 = new stats_counter_t("socket_send_size6");
            socket_send_size6 = stats_counter_tVar183;
            stats_counter_t stats_counter_tVar184 = new stats_counter_t("socket_send_size7");
            socket_send_size7 = stats_counter_tVar184;
            stats_counter_t stats_counter_tVar185 = new stats_counter_t("socket_send_size8");
            socket_send_size8 = stats_counter_tVar185;
            stats_counter_t stats_counter_tVar186 = new stats_counter_t("socket_send_size9");
            socket_send_size9 = stats_counter_tVar186;
            stats_counter_t stats_counter_tVar187 = new stats_counter_t("socket_send_size10");
            socket_send_size10 = stats_counter_tVar187;
            stats_counter_t stats_counter_tVar188 = new stats_counter_t("socket_send_size11");
            socket_send_size11 = stats_counter_tVar188;
            stats_counter_t stats_counter_tVar189 = new stats_counter_t("socket_send_size12");
            socket_send_size12 = stats_counter_tVar189;
            stats_counter_t stats_counter_tVar190 = new stats_counter_t("socket_send_size13");
            socket_send_size13 = stats_counter_tVar190;
            stats_counter_t stats_counter_tVar191 = new stats_counter_t("socket_send_size14");
            socket_send_size14 = stats_counter_tVar191;
            stats_counter_t stats_counter_tVar192 = new stats_counter_t("socket_send_size15");
            socket_send_size15 = stats_counter_tVar192;
            stats_counter_t stats_counter_tVar193 = new stats_counter_t("socket_send_size16");
            socket_send_size16 = stats_counter_tVar193;
            stats_counter_t stats_counter_tVar194 = new stats_counter_t("socket_send_size17");
            socket_send_size17 = stats_counter_tVar194;
            stats_counter_t stats_counter_tVar195 = new stats_counter_t("socket_send_size18");
            socket_send_size18 = stats_counter_tVar195;
            stats_counter_t stats_counter_tVar196 = new stats_counter_t("socket_send_size19");
            socket_send_size19 = stats_counter_tVar196;
            stats_counter_t stats_counter_tVar197 = new stats_counter_t("socket_send_size20");
            socket_send_size20 = stats_counter_tVar197;
            stats_counter_t stats_counter_tVar198 = new stats_counter_t("socket_recv_size3");
            socket_recv_size3 = stats_counter_tVar198;
            stats_counter_t stats_counter_tVar199 = new stats_counter_t("socket_recv_size4");
            socket_recv_size4 = stats_counter_tVar199;
            stats_counter_t stats_counter_tVar200 = new stats_counter_t("socket_recv_size5");
            socket_recv_size5 = stats_counter_tVar200;
            stats_counter_t stats_counter_tVar201 = new stats_counter_t("socket_recv_size6");
            socket_recv_size6 = stats_counter_tVar201;
            stats_counter_t stats_counter_tVar202 = new stats_counter_t("socket_recv_size7");
            socket_recv_size7 = stats_counter_tVar202;
            stats_counter_t stats_counter_tVar203 = new stats_counter_t("socket_recv_size8");
            socket_recv_size8 = stats_counter_tVar203;
            stats_counter_t stats_counter_tVar204 = new stats_counter_t("socket_recv_size9");
            socket_recv_size9 = stats_counter_tVar204;
            stats_counter_t stats_counter_tVar205 = new stats_counter_t("socket_recv_size10");
            socket_recv_size10 = stats_counter_tVar205;
            stats_counter_t stats_counter_tVar206 = new stats_counter_t("socket_recv_size11");
            socket_recv_size11 = stats_counter_tVar206;
            stats_counter_t stats_counter_tVar207 = new stats_counter_t("socket_recv_size12");
            socket_recv_size12 = stats_counter_tVar207;
            stats_counter_t stats_counter_tVar208 = new stats_counter_t("socket_recv_size13");
            socket_recv_size13 = stats_counter_tVar208;
            stats_counter_t stats_counter_tVar209 = new stats_counter_t("socket_recv_size14");
            socket_recv_size14 = stats_counter_tVar209;
            stats_counter_t stats_counter_tVar210 = new stats_counter_t("socket_recv_size15");
            socket_recv_size15 = stats_counter_tVar210;
            stats_counter_t stats_counter_tVar211 = new stats_counter_t("socket_recv_size16");
            socket_recv_size16 = stats_counter_tVar211;
            stats_counter_t stats_counter_tVar212 = new stats_counter_t("socket_recv_size17");
            socket_recv_size17 = stats_counter_tVar212;
            stats_counter_t stats_counter_tVar213 = new stats_counter_t("socket_recv_size18");
            socket_recv_size18 = stats_counter_tVar213;
            stats_counter_t stats_counter_tVar214 = new stats_counter_t("socket_recv_size19");
            socket_recv_size19 = stats_counter_tVar214;
            stats_counter_t stats_counter_tVar215 = new stats_counter_t("socket_recv_size20");
            socket_recv_size20 = stats_counter_tVar215;
            stats_counter_t stats_counter_tVar216 = new stats_counter_t("num_stats_counters");
            num_stats_counters = stats_counter_tVar216;
            swigValues = new stats_counter_t[]{stats_counter_tVar, stats_counter_tVar2, stats_counter_tVar3, stats_counter_tVar4, stats_counter_tVar5, stats_counter_tVar6, stats_counter_tVar7, stats_counter_tVar8, stats_counter_tVar9, stats_counter_tVar10, stats_counter_tVar11, stats_counter_tVar12, stats_counter_tVar13, stats_counter_tVar14, stats_counter_tVar15, stats_counter_tVar16, stats_counter_tVar17, stats_counter_tVar18, stats_counter_tVar19, stats_counter_tVar20, stats_counter_tVar21, stats_counter_tVar22, stats_counter_tVar23, stats_counter_tVar24, stats_counter_tVar25, stats_counter_tVar26, stats_counter_tVar27, stats_counter_tVar28, stats_counter_tVar29, stats_counter_tVar30, stats_counter_tVar31, stats_counter_tVar32, stats_counter_tVar33, stats_counter_tVar34, stats_counter_tVar35, stats_counter_tVar36, stats_counter_tVar37, stats_counter_tVar38, stats_counter_tVar39, stats_counter_tVar40, stats_counter_tVar41, stats_counter_tVar42, stats_counter_tVar43, stats_counter_tVar44, stats_counter_tVar45, stats_counter_tVar46, stats_counter_tVar47, stats_counter_tVar48, stats_counter_tVar49, stats_counter_tVar50, stats_counter_tVar51, stats_counter_tVar52, stats_counter_tVar53, stats_counter_tVar54, stats_counter_tVar55, stats_counter_tVar56, stats_counter_tVar57, stats_counter_tVar58, stats_counter_tVar59, stats_counter_tVar60, stats_counter_tVar61, stats_counter_tVar62, stats_counter_tVar63, stats_counter_tVar64, stats_counter_tVar65, stats_counter_tVar66, stats_counter_tVar67, stats_counter_tVar68, stats_counter_tVar69, stats_counter_tVar70, stats_counter_tVar71, stats_counter_tVar72, stats_counter_tVar73, stats_counter_tVar74, stats_counter_tVar75, stats_counter_tVar76, stats_counter_tVar77, stats_counter_tVar78, stats_counter_tVar79, stats_counter_tVar80, stats_counter_tVar81, stats_counter_tVar82, stats_counter_tVar83, stats_counter_tVar84, stats_counter_tVar85, stats_counter_tVar86, stats_counter_tVar87, stats_counter_tVar88, stats_counter_tVar89, stats_counter_tVar90, stats_counter_tVar91, stats_counter_tVar92, stats_counter_tVar93, stats_counter_tVar94, stats_counter_tVar95, stats_counter_tVar96, stats_counter_tVar97, stats_counter_tVar98, stats_counter_tVar99, stats_counter_tVar100, stats_counter_tVar101, stats_counter_tVar102, stats_counter_tVar103, stats_counter_tVar104, stats_counter_tVar105, stats_counter_tVar106, stats_counter_tVar107, stats_counter_tVar108, stats_counter_tVar109, stats_counter_tVar110, stats_counter_tVar111, stats_counter_tVar112, stats_counter_tVar113, stats_counter_tVar114, stats_counter_tVar115, stats_counter_tVar116, stats_counter_tVar117, stats_counter_tVar118, stats_counter_tVar119, stats_counter_tVar120, stats_counter_tVar121, stats_counter_tVar122, stats_counter_tVar123, stats_counter_tVar124, stats_counter_tVar125, stats_counter_tVar126, stats_counter_tVar127, stats_counter_tVar128, stats_counter_tVar129, stats_counter_tVar130, stats_counter_tVar131, stats_counter_tVar132, stats_counter_tVar133, stats_counter_tVar134, stats_counter_tVar135, stats_counter_tVar136, stats_counter_tVar137, stats_counter_tVar138, stats_counter_tVar139, stats_counter_tVar140, stats_counter_tVar141, stats_counter_tVar142, stats_counter_tVar143, stats_counter_tVar144, stats_counter_tVar145, stats_counter_tVar146, stats_counter_tVar147, stats_counter_tVar148, stats_counter_tVar149, stats_counter_tVar150, stats_counter_tVar151, stats_counter_tVar152, stats_counter_tVar153, stats_counter_tVar154, stats_counter_tVar155, stats_counter_tVar156, stats_counter_tVar157, stats_counter_tVar158, stats_counter_tVar159, stats_counter_tVar160, stats_counter_tVar161, stats_counter_tVar162, stats_counter_tVar163, stats_counter_tVar164, stats_counter_tVar165, stats_counter_tVar166, stats_counter_tVar167, stats_counter_tVar168, stats_counter_tVar169, stats_counter_tVar170, stats_counter_tVar171, stats_counter_tVar172, stats_counter_tVar173, stats_counter_tVar174, stats_counter_tVar175, stats_counter_tVar176, stats_counter_tVar177, stats_counter_tVar178, stats_counter_tVar179, stats_counter_tVar180, stats_counter_tVar181, stats_counter_tVar182, stats_counter_tVar183, stats_counter_tVar184, stats_counter_tVar185, stats_counter_tVar186, stats_counter_tVar187, stats_counter_tVar188, stats_counter_tVar189, stats_counter_tVar190, stats_counter_tVar191, stats_counter_tVar192, stats_counter_tVar193, stats_counter_tVar194, stats_counter_tVar195, stats_counter_tVar196, stats_counter_tVar197, stats_counter_tVar198, stats_counter_tVar199, stats_counter_tVar200, stats_counter_tVar201, stats_counter_tVar202, stats_counter_tVar203, stats_counter_tVar204, stats_counter_tVar205, stats_counter_tVar206, stats_counter_tVar207, stats_counter_tVar208, stats_counter_tVar209, stats_counter_tVar210, stats_counter_tVar211, stats_counter_tVar212, stats_counter_tVar213, stats_counter_tVar214, stats_counter_tVar215, stats_counter_tVar216};
            swigNext = 0;
        }

        private stats_counter_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static stats_counter_t swigToEnum(int i) {
            stats_counter_t[] stats_counter_tVarArr = swigValues;
            if (i < stats_counter_tVarArr.length && i >= 0) {
                stats_counter_t stats_counter_tVar = stats_counter_tVarArr[i];
                if (stats_counter_tVar.swigValue == i) {
                    return stats_counter_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                stats_counter_t[] stats_counter_tVarArr2 = swigValues;
                if (i2 >= stats_counter_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + stats_counter_t.class + " with value " + i);
                }
                stats_counter_t stats_counter_tVar2 = stats_counter_tVarArr2[i2];
                if (stats_counter_tVar2.swigValue == i) {
                    return stats_counter_tVar2;
                }
                i2++;
            }
        }

        public final int swigValue() {
            return this.swigValue;
        }

        public String toString() {
            return this.swigName;
        }

        private stats_counter_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private stats_counter_t(String str, stats_counter_t stats_counter_tVar) {
            this.swigName = str;
            int i = stats_counter_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class stats_gauge_t {
        public static final stats_gauge_t blocked_disk_jobs;
        public static final stats_gauge_t dht_allocated_observers;
        public static final stats_gauge_t dht_immutable_data;
        public static final stats_gauge_t dht_mutable_data;
        public static final stats_gauge_t dht_node_cache;
        public static final stats_gauge_t dht_nodes;
        public static final stats_gauge_t dht_peers;
        public static final stats_gauge_t dht_torrents;
        public static final stats_gauge_t disk_blocks_in_use;
        public static final stats_gauge_t file_pool_size;
        public static final stats_gauge_t has_incoming_connections;
        public static final stats_gauge_t limiter_down_bytes;
        public static final stats_gauge_t limiter_down_queue;
        public static final stats_gauge_t limiter_up_bytes;
        public static final stats_gauge_t limiter_up_queue;
        public static final stats_gauge_t non_filter_torrents;
        public static final stats_gauge_t num_checking_torrents;
        public static final stats_gauge_t num_counters;
        public static final stats_gauge_t num_downloading_torrents;
        public static final stats_gauge_t num_error_torrents;
        public static final stats_gauge_t num_fenced_check_fastresume;
        public static final stats_gauge_t num_fenced_clear_piece;
        public static final stats_gauge_t num_fenced_delete_files;
        public static final stats_gauge_t num_fenced_file_priority;
        public static final stats_gauge_t num_fenced_flush_hashed;
        public static final stats_gauge_t num_fenced_flush_piece;
        public static final stats_gauge_t num_fenced_flush_storage;
        public static final stats_gauge_t num_fenced_hash;
        public static final stats_gauge_t num_fenced_load_torrent;
        public static final stats_gauge_t num_fenced_move_storage;
        public static final stats_gauge_t num_fenced_read;
        public static final stats_gauge_t num_fenced_release_files;
        public static final stats_gauge_t num_fenced_rename_file;
        public static final stats_gauge_t num_fenced_save_resume_data;
        public static final stats_gauge_t num_fenced_stop_torrent;
        public static final stats_gauge_t num_fenced_tick_storage;
        public static final stats_gauge_t num_fenced_write;
        public static final stats_gauge_t num_gauges_counters;
        public static final stats_gauge_t num_http_proxy_peers;
        public static final stats_gauge_t num_i2p_peers;
        public static final stats_gauge_t num_jobs;
        public static final stats_gauge_t num_outstanding_accept;
        public static final stats_gauge_t num_peers_connected;
        public static final stats_gauge_t num_peers_down_disk;
        public static final stats_gauge_t num_peers_down_interested;
        public static final stats_gauge_t num_peers_down_requests;
        public static final stats_gauge_t num_peers_down_unchoked;
        public static final stats_gauge_t num_peers_end_game;
        public static final stats_gauge_t num_peers_half_open;
        public static final stats_gauge_t num_peers_up_disk;
        public static final stats_gauge_t num_peers_up_interested;
        public static final stats_gauge_t num_peers_up_requests;
        public static final stats_gauge_t num_peers_up_unchoked;
        public static final stats_gauge_t num_peers_up_unchoked_all;
        public static final stats_gauge_t num_peers_up_unchoked_optimistic;
        public static final stats_gauge_t num_queued_download_torrents;
        public static final stats_gauge_t num_queued_seeding_torrents;
        public static final stats_gauge_t num_queued_tracker_announces;
        public static final stats_gauge_t num_read_jobs;
        public static final stats_gauge_t num_running_disk_jobs;
        public static final stats_gauge_t num_running_threads;
        public static final stats_gauge_t num_seeding_torrents;
        public static final stats_gauge_t num_socks5_peers;
        public static final stats_gauge_t num_ssl_http_proxy_peers;
        public static final stats_gauge_t num_ssl_peers;
        public static final stats_gauge_t num_ssl_socks5_peers;
        public static final stats_gauge_t num_ssl_utp_peers;
        public static final stats_gauge_t num_stopped_torrents;
        public static final stats_gauge_t num_tcp_peers;
        public static final stats_gauge_t num_unchoke_slots;
        public static final stats_gauge_t num_upload_only_torrents;
        public static final stats_gauge_t num_utp_close_wait;
        public static final stats_gauge_t num_utp_connected;
        public static final stats_gauge_t num_utp_deleted;
        public static final stats_gauge_t num_utp_fin_sent;
        public static final stats_gauge_t num_utp_idle;
        public static final stats_gauge_t num_utp_peers;
        public static final stats_gauge_t num_utp_syn_sent;
        public static final stats_gauge_t num_write_jobs;
        public static final stats_gauge_t num_writing_threads;
        public static final stats_gauge_t queued_disk_jobs;
        public static final stats_gauge_t queued_write_bytes;
        public static final stats_gauge_t request_latency;
        private static int swigNext;
        private static stats_gauge_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            stats_gauge_t stats_gauge_tVar = new stats_gauge_t("num_checking_torrents", libtorrent_jni.counters_num_checking_torrents_get());
            num_checking_torrents = stats_gauge_tVar;
            stats_gauge_t stats_gauge_tVar2 = new stats_gauge_t("num_stopped_torrents");
            num_stopped_torrents = stats_gauge_tVar2;
            stats_gauge_t stats_gauge_tVar3 = new stats_gauge_t("num_upload_only_torrents");
            num_upload_only_torrents = stats_gauge_tVar3;
            stats_gauge_t stats_gauge_tVar4 = new stats_gauge_t("num_downloading_torrents");
            num_downloading_torrents = stats_gauge_tVar4;
            stats_gauge_t stats_gauge_tVar5 = new stats_gauge_t("num_seeding_torrents");
            num_seeding_torrents = stats_gauge_tVar5;
            stats_gauge_t stats_gauge_tVar6 = new stats_gauge_t("num_queued_seeding_torrents");
            num_queued_seeding_torrents = stats_gauge_tVar6;
            stats_gauge_t stats_gauge_tVar7 = new stats_gauge_t("num_queued_download_torrents");
            num_queued_download_torrents = stats_gauge_tVar7;
            stats_gauge_t stats_gauge_tVar8 = new stats_gauge_t("num_error_torrents");
            num_error_torrents = stats_gauge_tVar8;
            stats_gauge_t stats_gauge_tVar9 = new stats_gauge_t("non_filter_torrents");
            non_filter_torrents = stats_gauge_tVar9;
            stats_gauge_t stats_gauge_tVar10 = new stats_gauge_t("num_tcp_peers");
            num_tcp_peers = stats_gauge_tVar10;
            stats_gauge_t stats_gauge_tVar11 = new stats_gauge_t("num_socks5_peers");
            num_socks5_peers = stats_gauge_tVar11;
            stats_gauge_t stats_gauge_tVar12 = new stats_gauge_t("num_http_proxy_peers");
            num_http_proxy_peers = stats_gauge_tVar12;
            stats_gauge_t stats_gauge_tVar13 = new stats_gauge_t("num_utp_peers");
            num_utp_peers = stats_gauge_tVar13;
            stats_gauge_t stats_gauge_tVar14 = new stats_gauge_t("num_i2p_peers");
            num_i2p_peers = stats_gauge_tVar14;
            stats_gauge_t stats_gauge_tVar15 = new stats_gauge_t("num_ssl_peers");
            num_ssl_peers = stats_gauge_tVar15;
            stats_gauge_t stats_gauge_tVar16 = new stats_gauge_t("num_ssl_socks5_peers");
            num_ssl_socks5_peers = stats_gauge_tVar16;
            stats_gauge_t stats_gauge_tVar17 = new stats_gauge_t("num_ssl_http_proxy_peers");
            num_ssl_http_proxy_peers = stats_gauge_tVar17;
            stats_gauge_t stats_gauge_tVar18 = new stats_gauge_t("num_ssl_utp_peers");
            num_ssl_utp_peers = stats_gauge_tVar18;
            stats_gauge_t stats_gauge_tVar19 = new stats_gauge_t("num_peers_half_open");
            num_peers_half_open = stats_gauge_tVar19;
            stats_gauge_t stats_gauge_tVar20 = new stats_gauge_t("num_peers_connected");
            num_peers_connected = stats_gauge_tVar20;
            stats_gauge_t stats_gauge_tVar21 = new stats_gauge_t("num_peers_up_interested");
            num_peers_up_interested = stats_gauge_tVar21;
            stats_gauge_t stats_gauge_tVar22 = new stats_gauge_t("num_peers_down_interested");
            num_peers_down_interested = stats_gauge_tVar22;
            stats_gauge_t stats_gauge_tVar23 = new stats_gauge_t("num_peers_up_unchoked_all");
            num_peers_up_unchoked_all = stats_gauge_tVar23;
            stats_gauge_t stats_gauge_tVar24 = new stats_gauge_t("num_peers_up_unchoked_optimistic");
            num_peers_up_unchoked_optimistic = stats_gauge_tVar24;
            stats_gauge_t stats_gauge_tVar25 = new stats_gauge_t("num_peers_up_unchoked");
            num_peers_up_unchoked = stats_gauge_tVar25;
            stats_gauge_t stats_gauge_tVar26 = new stats_gauge_t("num_peers_down_unchoked");
            num_peers_down_unchoked = stats_gauge_tVar26;
            stats_gauge_t stats_gauge_tVar27 = new stats_gauge_t("num_peers_up_requests");
            num_peers_up_requests = stats_gauge_tVar27;
            stats_gauge_t stats_gauge_tVar28 = new stats_gauge_t("num_peers_down_requests");
            num_peers_down_requests = stats_gauge_tVar28;
            stats_gauge_t stats_gauge_tVar29 = new stats_gauge_t("num_peers_up_disk");
            num_peers_up_disk = stats_gauge_tVar29;
            stats_gauge_t stats_gauge_tVar30 = new stats_gauge_t("num_peers_down_disk");
            num_peers_down_disk = stats_gauge_tVar30;
            stats_gauge_t stats_gauge_tVar31 = new stats_gauge_t("num_peers_end_game");
            num_peers_end_game = stats_gauge_tVar31;
            stats_gauge_t stats_gauge_tVar32 = new stats_gauge_t("request_latency");
            request_latency = stats_gauge_tVar32;
            stats_gauge_t stats_gauge_tVar33 = new stats_gauge_t("disk_blocks_in_use");
            disk_blocks_in_use = stats_gauge_tVar33;
            stats_gauge_t stats_gauge_tVar34 = new stats_gauge_t("queued_disk_jobs");
            queued_disk_jobs = stats_gauge_tVar34;
            stats_gauge_t stats_gauge_tVar35 = new stats_gauge_t("num_running_disk_jobs");
            num_running_disk_jobs = stats_gauge_tVar35;
            stats_gauge_t stats_gauge_tVar36 = new stats_gauge_t("num_read_jobs");
            num_read_jobs = stats_gauge_tVar36;
            stats_gauge_t stats_gauge_tVar37 = new stats_gauge_t("num_write_jobs");
            num_write_jobs = stats_gauge_tVar37;
            stats_gauge_t stats_gauge_tVar38 = new stats_gauge_t("num_jobs");
            num_jobs = stats_gauge_tVar38;
            stats_gauge_t stats_gauge_tVar39 = new stats_gauge_t("num_writing_threads");
            num_writing_threads = stats_gauge_tVar39;
            stats_gauge_t stats_gauge_tVar40 = new stats_gauge_t("num_running_threads");
            num_running_threads = stats_gauge_tVar40;
            stats_gauge_t stats_gauge_tVar41 = new stats_gauge_t("blocked_disk_jobs");
            blocked_disk_jobs = stats_gauge_tVar41;
            stats_gauge_t stats_gauge_tVar42 = new stats_gauge_t("file_pool_size");
            file_pool_size = stats_gauge_tVar42;
            stats_gauge_t stats_gauge_tVar43 = new stats_gauge_t("queued_write_bytes");
            queued_write_bytes = stats_gauge_tVar43;
            stats_gauge_t stats_gauge_tVar44 = new stats_gauge_t("num_unchoke_slots");
            num_unchoke_slots = stats_gauge_tVar44;
            stats_gauge_t stats_gauge_tVar45 = new stats_gauge_t("num_fenced_read");
            num_fenced_read = stats_gauge_tVar45;
            stats_gauge_t stats_gauge_tVar46 = new stats_gauge_t("num_fenced_write");
            num_fenced_write = stats_gauge_tVar46;
            stats_gauge_t stats_gauge_tVar47 = new stats_gauge_t("num_fenced_hash");
            num_fenced_hash = stats_gauge_tVar47;
            stats_gauge_t stats_gauge_tVar48 = new stats_gauge_t("num_fenced_move_storage");
            num_fenced_move_storage = stats_gauge_tVar48;
            stats_gauge_t stats_gauge_tVar49 = new stats_gauge_t("num_fenced_release_files");
            num_fenced_release_files = stats_gauge_tVar49;
            stats_gauge_t stats_gauge_tVar50 = new stats_gauge_t("num_fenced_delete_files");
            num_fenced_delete_files = stats_gauge_tVar50;
            stats_gauge_t stats_gauge_tVar51 = new stats_gauge_t("num_fenced_check_fastresume");
            num_fenced_check_fastresume = stats_gauge_tVar51;
            stats_gauge_t stats_gauge_tVar52 = new stats_gauge_t("num_fenced_save_resume_data");
            num_fenced_save_resume_data = stats_gauge_tVar52;
            stats_gauge_t stats_gauge_tVar53 = new stats_gauge_t("num_fenced_rename_file");
            num_fenced_rename_file = stats_gauge_tVar53;
            stats_gauge_t stats_gauge_tVar54 = new stats_gauge_t("num_fenced_stop_torrent");
            num_fenced_stop_torrent = stats_gauge_tVar54;
            stats_gauge_t stats_gauge_tVar55 = new stats_gauge_t("num_fenced_flush_piece");
            num_fenced_flush_piece = stats_gauge_tVar55;
            stats_gauge_t stats_gauge_tVar56 = new stats_gauge_t("num_fenced_flush_hashed");
            num_fenced_flush_hashed = stats_gauge_tVar56;
            stats_gauge_t stats_gauge_tVar57 = new stats_gauge_t("num_fenced_flush_storage");
            num_fenced_flush_storage = stats_gauge_tVar57;
            stats_gauge_t stats_gauge_tVar58 = new stats_gauge_t("num_fenced_file_priority");
            num_fenced_file_priority = stats_gauge_tVar58;
            stats_gauge_t stats_gauge_tVar59 = new stats_gauge_t("num_fenced_load_torrent");
            num_fenced_load_torrent = stats_gauge_tVar59;
            stats_gauge_t stats_gauge_tVar60 = new stats_gauge_t("num_fenced_clear_piece");
            num_fenced_clear_piece = stats_gauge_tVar60;
            stats_gauge_t stats_gauge_tVar61 = new stats_gauge_t("num_fenced_tick_storage");
            num_fenced_tick_storage = stats_gauge_tVar61;
            stats_gauge_t stats_gauge_tVar62 = new stats_gauge_t("dht_nodes");
            dht_nodes = stats_gauge_tVar62;
            stats_gauge_t stats_gauge_tVar63 = new stats_gauge_t("dht_node_cache");
            dht_node_cache = stats_gauge_tVar63;
            stats_gauge_t stats_gauge_tVar64 = new stats_gauge_t("dht_torrents");
            dht_torrents = stats_gauge_tVar64;
            stats_gauge_t stats_gauge_tVar65 = new stats_gauge_t("dht_peers");
            dht_peers = stats_gauge_tVar65;
            stats_gauge_t stats_gauge_tVar66 = new stats_gauge_t("dht_immutable_data");
            dht_immutable_data = stats_gauge_tVar66;
            stats_gauge_t stats_gauge_tVar67 = new stats_gauge_t("dht_mutable_data");
            dht_mutable_data = stats_gauge_tVar67;
            stats_gauge_t stats_gauge_tVar68 = new stats_gauge_t("dht_allocated_observers");
            dht_allocated_observers = stats_gauge_tVar68;
            stats_gauge_t stats_gauge_tVar69 = new stats_gauge_t("has_incoming_connections");
            has_incoming_connections = stats_gauge_tVar69;
            stats_gauge_t stats_gauge_tVar70 = new stats_gauge_t("limiter_up_queue");
            limiter_up_queue = stats_gauge_tVar70;
            stats_gauge_t stats_gauge_tVar71 = new stats_gauge_t("limiter_down_queue");
            limiter_down_queue = stats_gauge_tVar71;
            stats_gauge_t stats_gauge_tVar72 = new stats_gauge_t("limiter_up_bytes");
            limiter_up_bytes = stats_gauge_tVar72;
            stats_gauge_t stats_gauge_tVar73 = new stats_gauge_t("limiter_down_bytes");
            limiter_down_bytes = stats_gauge_tVar73;
            stats_gauge_t stats_gauge_tVar74 = new stats_gauge_t("num_utp_idle");
            num_utp_idle = stats_gauge_tVar74;
            stats_gauge_t stats_gauge_tVar75 = new stats_gauge_t("num_utp_syn_sent");
            num_utp_syn_sent = stats_gauge_tVar75;
            stats_gauge_t stats_gauge_tVar76 = new stats_gauge_t("num_utp_connected");
            num_utp_connected = stats_gauge_tVar76;
            stats_gauge_t stats_gauge_tVar77 = new stats_gauge_t("num_utp_fin_sent");
            num_utp_fin_sent = stats_gauge_tVar77;
            stats_gauge_t stats_gauge_tVar78 = new stats_gauge_t("num_utp_close_wait");
            num_utp_close_wait = stats_gauge_tVar78;
            stats_gauge_t stats_gauge_tVar79 = new stats_gauge_t("num_utp_deleted");
            num_utp_deleted = stats_gauge_tVar79;
            stats_gauge_t stats_gauge_tVar80 = new stats_gauge_t("num_outstanding_accept");
            num_outstanding_accept = stats_gauge_tVar80;
            stats_gauge_t stats_gauge_tVar81 = new stats_gauge_t("num_queued_tracker_announces");
            num_queued_tracker_announces = stats_gauge_tVar81;
            stats_gauge_t stats_gauge_tVar82 = new stats_gauge_t("num_counters");
            num_counters = stats_gauge_tVar82;
            stats_gauge_t stats_gauge_tVar83 = new stats_gauge_t("num_gauges_counters", libtorrent_jni.counters_num_gauges_counters_get());
            num_gauges_counters = stats_gauge_tVar83;
            swigValues = new stats_gauge_t[]{stats_gauge_tVar, stats_gauge_tVar2, stats_gauge_tVar3, stats_gauge_tVar4, stats_gauge_tVar5, stats_gauge_tVar6, stats_gauge_tVar7, stats_gauge_tVar8, stats_gauge_tVar9, stats_gauge_tVar10, stats_gauge_tVar11, stats_gauge_tVar12, stats_gauge_tVar13, stats_gauge_tVar14, stats_gauge_tVar15, stats_gauge_tVar16, stats_gauge_tVar17, stats_gauge_tVar18, stats_gauge_tVar19, stats_gauge_tVar20, stats_gauge_tVar21, stats_gauge_tVar22, stats_gauge_tVar23, stats_gauge_tVar24, stats_gauge_tVar25, stats_gauge_tVar26, stats_gauge_tVar27, stats_gauge_tVar28, stats_gauge_tVar29, stats_gauge_tVar30, stats_gauge_tVar31, stats_gauge_tVar32, stats_gauge_tVar33, stats_gauge_tVar34, stats_gauge_tVar35, stats_gauge_tVar36, stats_gauge_tVar37, stats_gauge_tVar38, stats_gauge_tVar39, stats_gauge_tVar40, stats_gauge_tVar41, stats_gauge_tVar42, stats_gauge_tVar43, stats_gauge_tVar44, stats_gauge_tVar45, stats_gauge_tVar46, stats_gauge_tVar47, stats_gauge_tVar48, stats_gauge_tVar49, stats_gauge_tVar50, stats_gauge_tVar51, stats_gauge_tVar52, stats_gauge_tVar53, stats_gauge_tVar54, stats_gauge_tVar55, stats_gauge_tVar56, stats_gauge_tVar57, stats_gauge_tVar58, stats_gauge_tVar59, stats_gauge_tVar60, stats_gauge_tVar61, stats_gauge_tVar62, stats_gauge_tVar63, stats_gauge_tVar64, stats_gauge_tVar65, stats_gauge_tVar66, stats_gauge_tVar67, stats_gauge_tVar68, stats_gauge_tVar69, stats_gauge_tVar70, stats_gauge_tVar71, stats_gauge_tVar72, stats_gauge_tVar73, stats_gauge_tVar74, stats_gauge_tVar75, stats_gauge_tVar76, stats_gauge_tVar77, stats_gauge_tVar78, stats_gauge_tVar79, stats_gauge_tVar80, stats_gauge_tVar81, stats_gauge_tVar82, stats_gauge_tVar83};
            swigNext = 0;
        }

        private stats_gauge_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static stats_gauge_t swigToEnum(int i) {
            stats_gauge_t[] stats_gauge_tVarArr = swigValues;
            if (i < stats_gauge_tVarArr.length && i >= 0) {
                stats_gauge_t stats_gauge_tVar = stats_gauge_tVarArr[i];
                if (stats_gauge_tVar.swigValue == i) {
                    return stats_gauge_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                stats_gauge_t[] stats_gauge_tVarArr2 = swigValues;
                if (i2 >= stats_gauge_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + stats_gauge_t.class + " with value " + i);
                }
                stats_gauge_t stats_gauge_tVar2 = stats_gauge_tVarArr2[i2];
                if (stats_gauge_tVar2.swigValue == i) {
                    return stats_gauge_tVar2;
                }
                i2++;
            }
        }

        public final int swigValue() {
            return this.swigValue;
        }

        public String toString() {
            return this.swigName;
        }

        private stats_gauge_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private stats_gauge_t(String str, stats_gauge_t stats_gauge_tVar) {
            this.swigName = str;
            int i = stats_gauge_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public counters() {
        this(libtorrent_jni.new_counters__SWIG_0(), true);
    }

    public counters(counters countersVar) {
        this(libtorrent_jni.new_counters__SWIG_1(getCPtr(countersVar), countersVar), true);
    }
}
