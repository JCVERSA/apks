package org.libtorrent4j.swig;

import com.hisavana.common.tracking.TrackingKey;
import com.lzy.okgo.model.Progress;

public class peer_log_alert extends peer_alert {
    private transient long swigCPtr;
    public static final alert_priority priority = alert_priority.swigToEnum(libtorrent_jni.peer_log_alert_priority_get());
    public static final int alert_type = libtorrent_jni.peer_log_alert_alert_type_get();
    public static final alert_category_t static_category = new alert_category_t(libtorrent_jni.peer_log_alert_static_category_get(), false);

    public peer_log_alert(long j, boolean z) {
        super(libtorrent_jni.peer_log_alert_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(peer_log_alert peer_log_alertVar) {
        if (peer_log_alertVar == null) {
            return 0L;
        }
        return peer_log_alertVar.swigCPtr;
    }

    public static long swigRelease(peer_log_alert peer_log_alertVar) {
        if (peer_log_alertVar == null) {
            return 0L;
        }
        if (!peer_log_alertVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = peer_log_alertVar.swigCPtr;
        peer_log_alertVar.swigCMemOwn = false;
        peer_log_alertVar.delete();
        return j;
    }

    @Override
    public alert_category_t category() {
        return new alert_category_t(libtorrent_jni.peer_log_alert_category(this.swigCPtr, this), true);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_peer_log_alert(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public void finalize() {
        delete();
    }

    public direction_t getDirection() {
        return direction_t.swigToEnum(libtorrent_jni.peer_log_alert_direction_get(this.swigCPtr, this));
    }

    public event_t getEvent_type() {
        return event_t.swigToEnum(libtorrent_jni.peer_log_alert_event_type_get(this.swigCPtr, this));
    }

    public String log_message() {
        return libtorrent_jni.peer_log_alert_log_message(this.swigCPtr, this);
    }

    @Override
    public String message() {
        return libtorrent_jni.peer_log_alert_message(this.swigCPtr, this);
    }

    public void setDirection(direction_t direction_tVar) {
        libtorrent_jni.peer_log_alert_direction_set(this.swigCPtr, this, direction_tVar.swigValue());
    }

    public void setEvent_type(event_t event_tVar) {
        libtorrent_jni.peer_log_alert_event_type_set(this.swigCPtr, this, event_tVar.swigValue());
    }

    @Override
    public int type() {
        return libtorrent_jni.peer_log_alert_type(this.swigCPtr, this);
    }

    @Override
    public String what() {
        return libtorrent_jni.peer_log_alert_what(this.swigCPtr, this);
    }

    public static final class direction_t {
        public static final direction_t incoming;
        public static final direction_t incoming_message;
        public static final direction_t info;
        public static final direction_t outgoing;
        public static final direction_t outgoing_message;
        private static int swigNext;
        private static direction_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            direction_t direction_tVar = new direction_t("incoming_message");
            incoming_message = direction_tVar;
            direction_t direction_tVar2 = new direction_t("outgoing_message");
            outgoing_message = direction_tVar2;
            direction_t direction_tVar3 = new direction_t("incoming");
            incoming = direction_tVar3;
            direction_t direction_tVar4 = new direction_t("outgoing");
            outgoing = direction_tVar4;
            direction_t direction_tVar5 = new direction_t("info");
            info = direction_tVar5;
            swigValues = new direction_t[]{direction_tVar, direction_tVar2, direction_tVar3, direction_tVar4, direction_tVar5};
            swigNext = 0;
        }

        private direction_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static direction_t swigToEnum(int i) {
            direction_t[] direction_tVarArr = swigValues;
            if (i < direction_tVarArr.length && i >= 0) {
                direction_t direction_tVar = direction_tVarArr[i];
                if (direction_tVar.swigValue == i) {
                    return direction_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                direction_t[] direction_tVarArr2 = swigValues;
                if (i2 >= direction_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + direction_t.class + " with value " + i);
                }
                direction_t direction_tVar2 = direction_tVarArr2[i2];
                if (direction_tVar2.swigValue == i) {
                    return direction_tVar2;
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

        private direction_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private direction_t(String str, direction_t direction_tVar) {
            this.swigName = str;
            int i = direction_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class event_t {
        public static final event_t allowed;
        public static final event_t allowed_fast;
        public static final event_t assign_bandwidth;
        public static final event_t async_connect;
        public static final event_t async_read;
        public static final event_t async_write;
        public static final event_t attach;
        public static final event_t available;
        public static final event_t banning_peer;
        public static final event_t bind;
        public static final event_t bitfield;
        public static final event_t cancel;
        public static final event_t cancel_all_requests;
        public static final event_t cannot_read;
        public static final event_t cannot_write;
        public static final event_t choke;
        public static final event_t choking_peer;
        public static final event_t chunked_encoding;
        public static final event_t close_reason;
        public static final event_t closing_connection;
        public static final event_t connect_failed;
        public static final event_t connection;
        public static final event_t connection_closed;
        public static final event_t connection_established;
        public static final event_t connection_failed;
        public static final event_t construct;
        public static final event_t corked_write;
        public static final event_t dht_port;
        public static final event_t disk_buffer;
        public static final event_t dont_have;
        public static final event_t duplicate_peer;
        public static final event_t duplicate_peer_resolution;
        public static final event_t encryption;
        public static final event_t exception;
        public static final event_t extended_handshake;
        public static final event_t extension_message;
        public static final event_t extensions;
        public static final event_t file_async_read;
        public static final event_t file_async_read_complete;
        public static final event_t file_async_write;
        public static final event_t file_async_write_complete;
        public static final event_t graceful_pause;
        public static final event_t grow_buffer;
        public static final event_t handle_padfile;
        public static final event_t handshake;
        public static final event_t hash_reject;
        public static final event_t hash_request;
        public static final event_t hashes;
        public static final event_t have;
        public static final event_t have_all;
        public static final event_t have_none;
        public static final event_t holepunch;
        public static final event_t holepunch_mode;
        public static final event_t i2p_pex;
        public static final event_t i2p_pex_diff;
        public static final event_t i2p_pex_full;
        public static final event_t incoming_payload;
        public static final event_t incoming_zeroes;
        public static final event_t init;
        public static final event_t interested;
        public static final event_t invalid_allowed_fast;
        public static final event_t invalid_cancel;
        public static final event_t invalid_have;
        public static final event_t invalid_http_response;
        public static final event_t invalid_piece;
        public static final event_t invalid_request;
        public static final event_t invalid_suggest;
        public static final event_t keepalive;
        public static final event_t last_activity;
        public static final event_t local_endpoint;
        public static final event_t location;
        public static final event_t max_out_queue_size;
        public static final event_t merging_requests;
        public static final event_t missing_file;
        public static final event_t mutual_no_interest;
        public static final event_t no_handshake;
        public static final event_t no_request;
        public static final event_t not_interested;
        public static final event_t on_connected;
        public static final event_t on_files_checked;
        public static final event_t on_metadata;
        public static final event_t on_receive_data;
        public static final event_t on_send_data;
        public static final event_t open;
        public static final event_t optimistic_unchoke;
        public static final event_t peer_class;
        public static final event_t peer_error;
        public static final event_t pex;
        public static final event_t pex_diff;
        public static final event_t pex_full;
        public static final event_t piece;
        public static final event_t piece_failed;
        public static final event_t piece_picker;
        public static final event_t piece_request_timed_out;
        public static final event_t pop_request;
        public static final event_t predictive_have;
        public static final event_t read;
        public static final event_t receive_bytes;
        public static final event_t received;
        public static final event_t reject;
        public static final event_t request;
        public static final event_t request_bandwidth;
        public static final event_t request_time;
        public static final event_t restart_data;
        public static final event_t save_restart_data;
        public static final event_t seed;
        public static final event_t seed_mode_file_async_hash;
        public static final event_t seed_mode_file_hash;
        public static final event_t send_barrier;
        public static final event_t send_buffer_depleted;
        public static final event_t send_buffer_watermark;
        public static final event_t set_dscp;
        public static final event_t set_non_blocking;
        public static final event_t set_peer_class;
        public static final event_t share_mode;
        public static final event_t short_lived_disconnect;
        public static final event_t slow_start;
        public static final event_t socket_buffer;
        public static final event_t status;
        public static final event_t suggest_piece;
        public static final event_t super_seeding;
        private static int swigNext;
        private static event_t[] swigValues;
        public static final event_t sync_read;
        public static final event_t torrent;
        public static final event_t torrent_aborted;
        public static final event_t tracker_response;
        public static final event_t unchoke;
        public static final event_t update_interest;
        public static final event_t update_queue_size;
        public static final event_t upload_only;
        public static final event_t ut_metadata;
        public static final event_t waiting_for_disk;
        public static final event_t web_seed;
        public static final event_t wrote;
        private final String swigName;
        private final int swigValue;

        static {
            event_t event_tVar = new event_t("tracker_response");
            tracker_response = event_tVar;
            event_t event_tVar2 = new event_t("allowed");
            allowed = event_tVar2;
            event_t event_tVar3 = new event_t("seed");
            seed = event_tVar3;
            event_t event_tVar4 = new event_t("cancel_all_requests");
            cancel_all_requests = event_tVar4;
            event_t event_tVar5 = new event_t("short_lived_disconnect");
            short_lived_disconnect = event_tVar5;
            event_t event_tVar6 = new event_t("graceful_pause");
            graceful_pause = event_tVar6;
            event_t event_tVar7 = new event_t(TrackingKey.REQUEST_TIME);
            request_time = event_tVar7;
            event_t event_tVar8 = new event_t("connection");
            connection = event_tVar8;
            event_t event_tVar9 = new event_t("set_peer_class");
            set_peer_class = event_tVar9;
            event_t event_tVar10 = new event_t("peer_class");
            peer_class = event_tVar10;
            event_t event_tVar11 = new event_t("local_endpoint");
            local_endpoint = event_tVar11;
            event_t event_tVar12 = new event_t("update_interest");
            update_interest = event_tVar12;
            event_t event_tVar13 = new event_t("init");
            init = event_tVar13;
            event_t event_tVar14 = new event_t("received");
            received = event_tVar14;
            event_t event_tVar15 = new event_t("attach");
            attach = event_tVar15;
            event_t event_tVar16 = new event_t("construct");
            construct = event_tVar16;
            event_t event_tVar17 = new event_t("encryption");
            encryption = event_tVar17;
            event_t event_tVar18 = new event_t("extensions");
            extensions = event_tVar18;
            event_t event_tVar19 = new event_t("upload_only");
            upload_only = event_tVar19;
            event_t event_tVar20 = new event_t("share_mode");
            share_mode = event_tVar20;
            event_t event_tVar21 = new event_t("send_barrier");
            send_barrier = event_tVar21;
            event_t event_tVar22 = new event_t("piece_picker");
            piece_picker = event_tVar22;
            event_t event_tVar23 = new event_t("duplicate_peer");
            duplicate_peer = event_tVar23;
            event_t event_tVar24 = new event_t("duplicate_peer_resolution");
            duplicate_peer_resolution = event_tVar24;
            event_t event_tVar25 = new event_t("super_seeding");
            super_seeding = event_tVar25;
            event_t event_tVar26 = new event_t("merging_requests");
            merging_requests = event_tVar26;
            event_t event_tVar27 = new event_t("predictive_have");
            predictive_have = event_tVar27;
            event_t event_tVar28 = new event_t("banning_peer");
            banning_peer = event_tVar28;
            event_t event_tVar29 = new event_t("choking_peer");
            choking_peer = event_tVar29;
            event_t event_tVar30 = new event_t("torrent");
            torrent = event_tVar30;
            event_t event_tVar31 = new event_t("optimistic_unchoke");
            optimistic_unchoke = event_tVar31;
            event_t event_tVar32 = new event_t("max_out_queue_size");
            max_out_queue_size = event_tVar32;
            event_t event_tVar33 = new event_t("update_queue_size");
            update_queue_size = event_tVar33;
            event_t event_tVar34 = new event_t("last_activity");
            last_activity = event_tVar34;
            event_t event_tVar35 = new event_t("mutual_no_interest");
            mutual_no_interest = event_tVar35;
            event_t event_tVar36 = new event_t("slow_start");
            slow_start = event_tVar36;
            event_t event_tVar37 = new event_t("send_buffer_watermark");
            send_buffer_watermark = event_tVar37;
            event_t event_tVar38 = new event_t("torrent_aborted");
            torrent_aborted = event_tVar38;
            event_t event_tVar39 = new event_t("piece_failed");
            piece_failed = event_tVar39;
            event_t event_tVar40 = new event_t("request_bandwidth");
            request_bandwidth = event_tVar40;
            event_t event_tVar41 = new event_t("assign_bandwidth");
            assign_bandwidth = event_tVar41;
            event_t event_tVar42 = new event_t("waiting_for_disk");
            waiting_for_disk = event_tVar42;
            event_t event_tVar43 = new event_t("close_reason");
            close_reason = event_tVar43;
            event_t event_tVar44 = new event_t("peer_error");
            peer_error = event_tVar44;
            event_t event_tVar45 = new event_t("no_handshake");
            no_handshake = event_tVar45;
            event_t event_tVar46 = new event_t("no_request");
            no_request = event_tVar46;
            event_t event_tVar47 = new event_t("piece_request_timed_out");
            piece_request_timed_out = event_tVar47;
            event_t event_tVar48 = new event_t("invalid_cancel");
            invalid_cancel = event_tVar48;
            event_t event_tVar49 = new event_t("invalid_request");
            invalid_request = event_tVar49;
            event_t event_tVar50 = new event_t("invalid_piece");
            invalid_piece = event_tVar50;
            event_t event_tVar51 = new event_t("invalid_suggest");
            invalid_suggest = event_tVar51;
            event_t event_tVar52 = new event_t("invalid_have");
            invalid_have = event_tVar52;
            event_t event_tVar53 = new event_t("invalid_allowed_fast");
            invalid_allowed_fast = event_tVar53;
            event_t event_tVar54 = new event_t("exception");
            exception = event_tVar54;
            event_t event_tVar55 = new event_t("holepunch");
            holepunch = event_tVar55;
            event_t event_tVar56 = new event_t("holepunch_mode");
            holepunch_mode = event_tVar56;
            event_t event_tVar57 = new event_t("send_buffer_depleted");
            send_buffer_depleted = event_tVar57;
            event_t event_tVar58 = new event_t("available");
            available = event_tVar58;
            event_t event_tVar59 = new event_t("grow_buffer");
            grow_buffer = event_tVar59;
            event_t event_tVar60 = new event_t("async_write");
            async_write = event_tVar60;
            event_t event_tVar61 = new event_t("async_read");
            async_read = event_tVar61;
            event_t event_tVar62 = new event_t("sync_read");
            sync_read = event_tVar62;
            event_t event_tVar63 = new event_t("cannot_write");
            cannot_write = event_tVar63;
            event_t event_tVar64 = new event_t("cannot_read");
            cannot_read = event_tVar64;
            event_t event_tVar65 = new event_t("on_receive_data");
            on_receive_data = event_tVar65;
            event_t event_tVar66 = new event_t("on_send_data");
            on_send_data = event_tVar66;
            event_t event_tVar67 = new event_t("wrote");
            wrote = event_tVar67;
            event_t event_tVar68 = new event_t("read");
            read = event_tVar68;
            event_t event_tVar69 = new event_t("corked_write");
            corked_write = event_tVar69;
            event_t event_tVar70 = new event_t("file_async_write");
            file_async_write = event_tVar70;
            event_t event_tVar71 = new event_t("file_async_write_complete");
            file_async_write_complete = event_tVar71;
            event_t event_tVar72 = new event_t("file_async_read");
            file_async_read = event_tVar72;
            event_t event_tVar73 = new event_t("file_async_read_complete");
            file_async_read_complete = event_tVar73;
            event_t event_tVar74 = new event_t("seed_mode_file_async_hash");
            seed_mode_file_async_hash = event_tVar74;
            event_t event_tVar75 = new event_t("seed_mode_file_hash");
            seed_mode_file_hash = event_tVar75;
            event_t event_tVar76 = new event_t("disk_buffer");
            disk_buffer = event_tVar76;
            event_t event_tVar77 = new event_t("on_files_checked");
            on_files_checked = event_tVar77;
            event_t event_tVar78 = new event_t("open");
            open = event_tVar78;
            event_t event_tVar79 = new event_t("bind");
            bind = event_tVar79;
            event_t event_tVar80 = new event_t("socket_buffer");
            socket_buffer = event_tVar80;
            event_t event_tVar81 = new event_t("set_non_blocking");
            set_non_blocking = event_tVar81;
            event_t event_tVar82 = new event_t("set_dscp");
            set_dscp = event_tVar82;
            event_t event_tVar83 = new event_t("async_connect");
            async_connect = event_tVar83;
            event_t event_tVar84 = new event_t("connection_failed");
            connection_failed = event_tVar84;
            event_t event_tVar85 = new event_t("connection_closed");
            connection_closed = event_tVar85;
            event_t event_tVar86 = new event_t("closing_connection");
            closing_connection = event_tVar86;
            event_t event_tVar87 = new event_t("connect_failed");
            connect_failed = event_tVar87;
            event_t event_tVar88 = new event_t("on_connected");
            on_connected = event_tVar88;
            event_t event_tVar89 = new event_t("connection_established");
            connection_established = event_tVar89;
            event_t event_tVar90 = new event_t("ut_metadata");
            ut_metadata = event_tVar90;
            event_t event_tVar91 = new event_t("on_metadata");
            on_metadata = event_tVar91;
            event_t event_tVar92 = new event_t("pex");
            pex = event_tVar92;
            event_t event_tVar93 = new event_t("pex_diff");
            pex_diff = event_tVar93;
            event_t event_tVar94 = new event_t("pex_full");
            pex_full = event_tVar94;
            event_t event_tVar95 = new event_t("i2p_pex");
            i2p_pex = event_tVar95;
            event_t event_tVar96 = new event_t("i2p_pex_diff");
            i2p_pex_diff = event_tVar96;
            event_t event_tVar97 = new event_t("i2p_pex_full");
            i2p_pex_full = event_tVar97;
            event_t event_tVar98 = new event_t("web_seed");
            web_seed = event_tVar98;
            event_t event_tVar99 = new event_t("save_restart_data");
            save_restart_data = event_tVar99;
            event_t event_tVar100 = new event_t("restart_data");
            restart_data = event_tVar100;
            event_t event_tVar101 = new event_t("location");
            location = event_tVar101;
            event_t event_tVar102 = new event_t("missing_file");
            missing_file = event_tVar102;
            event_t event_tVar103 = new event_t("receive_bytes");
            receive_bytes = event_tVar103;
            event_t event_tVar104 = new event_t("status");
            status = event_tVar104;
            event_t event_tVar105 = new event_t("invalid_http_response");
            invalid_http_response = event_tVar105;
            event_t event_tVar106 = new event_t("chunked_encoding");
            chunked_encoding = event_tVar106;
            event_t event_tVar107 = new event_t("incoming_payload");
            incoming_payload = event_tVar107;
            event_t event_tVar108 = new event_t("incoming_zeroes");
            incoming_zeroes = event_tVar108;
            event_t event_tVar109 = new event_t("pop_request");
            pop_request = event_tVar109;
            event_t event_tVar110 = new event_t("handle_padfile");
            handle_padfile = event_tVar110;
            event_t event_tVar111 = new event_t("allowed_fast");
            allowed_fast = event_tVar111;
            event_t event_tVar112 = new event_t("have_none");
            have_none = event_tVar112;
            event_t event_tVar113 = new event_t("have_all");
            have_all = event_tVar113;
            event_t event_tVar114 = new event_t("have");
            have = event_tVar114;
            event_t event_tVar115 = new event_t("dont_have");
            dont_have = event_tVar115;
            event_t event_tVar116 = new event_t("dht_port");
            dht_port = event_tVar116;
            event_t event_tVar117 = new event_t("cancel");
            cancel = event_tVar117;
            event_t event_tVar118 = new event_t("reject");
            reject = event_tVar118;
            event_t event_tVar119 = new event_t("interested");
            interested = event_tVar119;
            event_t event_tVar120 = new event_t("not_interested");
            not_interested = event_tVar120;
            event_t event_tVar121 = new event_t("keepalive");
            keepalive = event_tVar121;
            event_t event_tVar122 = new event_t("choke");
            choke = event_tVar122;
            event_t event_tVar123 = new event_t("unchoke");
            unchoke = event_tVar123;
            event_t event_tVar124 = new event_t("suggest_piece");
            suggest_piece = event_tVar124;
            event_t event_tVar125 = new event_t("bitfield");
            bitfield = event_tVar125;
            event_t event_tVar126 = new event_t(Progress.REQUEST);
            request = event_tVar126;
            event_t event_tVar127 = new event_t("handshake");
            handshake = event_tVar127;
            event_t event_tVar128 = new event_t("hash_request");
            hash_request = event_tVar128;
            event_t event_tVar129 = new event_t("hashes");
            hashes = event_tVar129;
            event_t event_tVar130 = new event_t("hash_reject");
            hash_reject = event_tVar130;
            event_t event_tVar131 = new event_t("extension_message");
            extension_message = event_tVar131;
            event_t event_tVar132 = new event_t("extended_handshake");
            extended_handshake = event_tVar132;
            event_t event_tVar133 = new event_t("piece");
            piece = event_tVar133;
            swigValues = new event_t[]{event_tVar, event_tVar2, event_tVar3, event_tVar4, event_tVar5, event_tVar6, event_tVar7, event_tVar8, event_tVar9, event_tVar10, event_tVar11, event_tVar12, event_tVar13, event_tVar14, event_tVar15, event_tVar16, event_tVar17, event_tVar18, event_tVar19, event_tVar20, event_tVar21, event_tVar22, event_tVar23, event_tVar24, event_tVar25, event_tVar26, event_tVar27, event_tVar28, event_tVar29, event_tVar30, event_tVar31, event_tVar32, event_tVar33, event_tVar34, event_tVar35, event_tVar36, event_tVar37, event_tVar38, event_tVar39, event_tVar40, event_tVar41, event_tVar42, event_tVar43, event_tVar44, event_tVar45, event_tVar46, event_tVar47, event_tVar48, event_tVar49, event_tVar50, event_tVar51, event_tVar52, event_tVar53, event_tVar54, event_tVar55, event_tVar56, event_tVar57, event_tVar58, event_tVar59, event_tVar60, event_tVar61, event_tVar62, event_tVar63, event_tVar64, event_tVar65, event_tVar66, event_tVar67, event_tVar68, event_tVar69, event_tVar70, event_tVar71, event_tVar72, event_tVar73, event_tVar74, event_tVar75, event_tVar76, event_tVar77, event_tVar78, event_tVar79, event_tVar80, event_tVar81, event_tVar82, event_tVar83, event_tVar84, event_tVar85, event_tVar86, event_tVar87, event_tVar88, event_tVar89, event_tVar90, event_tVar91, event_tVar92, event_tVar93, event_tVar94, event_tVar95, event_tVar96, event_tVar97, event_tVar98, event_tVar99, event_tVar100, event_tVar101, event_tVar102, event_tVar103, event_tVar104, event_tVar105, event_tVar106, event_tVar107, event_tVar108, event_tVar109, event_tVar110, event_tVar111, event_tVar112, event_tVar113, event_tVar114, event_tVar115, event_tVar116, event_tVar117, event_tVar118, event_tVar119, event_tVar120, event_tVar121, event_tVar122, event_tVar123, event_tVar124, event_tVar125, event_tVar126, event_tVar127, event_tVar128, event_tVar129, event_tVar130, event_tVar131, event_tVar132, event_tVar133};
            swigNext = 0;
        }

        private event_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static event_t swigToEnum(int i) {
            event_t[] event_tVarArr = swigValues;
            if (i < event_tVarArr.length && i >= 0) {
                event_t event_tVar = event_tVarArr[i];
                if (event_tVar.swigValue == i) {
                    return event_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                event_t[] event_tVarArr2 = swigValues;
                if (i2 >= event_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + event_t.class + " with value " + i);
                }
                event_t event_tVar2 = event_tVarArr2[i2];
                if (event_tVar2.swigValue == i) {
                    return event_tVar2;
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

        private event_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private event_t(String str, event_t event_tVar) {
            this.swigName = str;
            int i = event_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }
}
