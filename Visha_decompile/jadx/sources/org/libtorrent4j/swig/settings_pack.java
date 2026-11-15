package org.libtorrent4j.swig;

import androidx.webkit.ProxyConfig;

public class settings_pack extends settings_interface {
    private transient long swigCPtr;
    public static final int num_string_settings = libtorrent_jni.settings_pack_num_string_settings_get();
    public static final int num_bool_settings = libtorrent_jni.settings_pack_num_bool_settings_get();
    public static final int num_int_settings = libtorrent_jni.settings_pack_num_int_settings_get();

    public settings_pack(long j, boolean z) {
        super(libtorrent_jni.settings_pack_SWIGUpcast(j), z);
        this.swigCPtr = j;
    }

    public static long getCPtr(settings_pack settings_packVar) {
        if (settings_packVar == null) {
            return 0L;
        }
        return settings_packVar.swigCPtr;
    }

    public static long swigRelease(settings_pack settings_packVar) {
        if (settings_packVar == null) {
            return 0L;
        }
        if (!settings_packVar.swigCMemOwn) {
            throw new RuntimeException("Cannot release ownership as memory is not owned");
        }
        long j = settings_packVar.swigCPtr;
        settings_packVar.swigCMemOwn = false;
        settings_packVar.delete();
        return j;
    }

    public void clear() {
        libtorrent_jni.settings_pack_clear__SWIG_0(this.swigCPtr, this);
    }

    @Override
    public synchronized void delete() {
        try {
            long j = this.swigCPtr;
            if (j != 0) {
                if (this.swigCMemOwn) {
                    this.swigCMemOwn = false;
                    libtorrent_jni.delete_settings_pack(j);
                }
                this.swigCPtr = 0L;
            }
            super.delete();
        } catch (Throwable th) {
            throw th;
        }
    }

    public void finalize() {
        delete();
    }

    @Override
    public boolean get_bool(int i) {
        return libtorrent_jni.settings_pack_get_bool(this.swigCPtr, this, i);
    }

    public byte_vector get_bytes(int i) {
        return new byte_vector(libtorrent_jni.settings_pack_get_bytes(this.swigCPtr, this, i), true);
    }

    @Override
    public int get_int(int i) {
        return libtorrent_jni.settings_pack_get_int(this.swigCPtr, this, i);
    }

    @Override
    public String get_str(int i) {
        return libtorrent_jni.settings_pack_get_str(this.swigCPtr, this, i);
    }

    @Override
    public boolean has_val(int i) {
        return libtorrent_jni.settings_pack_has_val(this.swigCPtr, this, i);
    }

    @Override
    public void set_bool(int i, boolean z) {
        libtorrent_jni.settings_pack_set_bool(this.swigCPtr, this, i, z);
    }

    public void set_bytes(int i, byte_vector byte_vectorVar) {
        libtorrent_jni.settings_pack_set_bytes(this.swigCPtr, this, i, byte_vector.getCPtr(byte_vectorVar), byte_vectorVar);
    }

    @Override
    public void set_int(int i, int i2) {
        libtorrent_jni.settings_pack_set_int(this.swigCPtr, this, i, i2);
    }

    @Override
    public void set_str(int i, String str) {
        libtorrent_jni.settings_pack_set_str(this.swigCPtr, this, i, str);
    }

    public void clear(int i) {
        libtorrent_jni.settings_pack_clear__SWIG_1(this.swigCPtr, this, i);
    }

    public static final class bandwidth_mixed_algo_t {
        public static final bandwidth_mixed_algo_t peer_proportional;
        public static final bandwidth_mixed_algo_t prefer_tcp;
        private static int swigNext;
        private static bandwidth_mixed_algo_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            bandwidth_mixed_algo_t bandwidth_mixed_algo_tVar = new bandwidth_mixed_algo_t("prefer_tcp", libtorrent_jni.settings_pack_prefer_tcp_get());
            prefer_tcp = bandwidth_mixed_algo_tVar;
            bandwidth_mixed_algo_t bandwidth_mixed_algo_tVar2 = new bandwidth_mixed_algo_t("peer_proportional", libtorrent_jni.settings_pack_peer_proportional_get());
            peer_proportional = bandwidth_mixed_algo_tVar2;
            swigValues = new bandwidth_mixed_algo_t[]{bandwidth_mixed_algo_tVar, bandwidth_mixed_algo_tVar2};
            swigNext = 0;
        }

        private bandwidth_mixed_algo_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static bandwidth_mixed_algo_t swigToEnum(int i) {
            bandwidth_mixed_algo_t[] bandwidth_mixed_algo_tVarArr = swigValues;
            if (i < bandwidth_mixed_algo_tVarArr.length && i >= 0) {
                bandwidth_mixed_algo_t bandwidth_mixed_algo_tVar = bandwidth_mixed_algo_tVarArr[i];
                if (bandwidth_mixed_algo_tVar.swigValue == i) {
                    return bandwidth_mixed_algo_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                bandwidth_mixed_algo_t[] bandwidth_mixed_algo_tVarArr2 = swigValues;
                if (i2 >= bandwidth_mixed_algo_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + bandwidth_mixed_algo_t.class + " with value " + i);
                }
                bandwidth_mixed_algo_t bandwidth_mixed_algo_tVar2 = bandwidth_mixed_algo_tVarArr2[i2];
                if (bandwidth_mixed_algo_tVar2.swigValue == i) {
                    return bandwidth_mixed_algo_tVar2;
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

        private bandwidth_mixed_algo_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private bandwidth_mixed_algo_t(String str, bandwidth_mixed_algo_t bandwidth_mixed_algo_tVar) {
            this.swigName = str;
            int i = bandwidth_mixed_algo_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class bool_types {
        public static final bool_types allow_i2p_mixed;
        public static final bool_types allow_idna;
        public static final bool_types allow_multiple_connections_per_ip;
        public static final bool_types always_send_user_agent;
        public static final bool_types announce_crypto_support;
        public static final bool_types announce_to_all_tiers;
        public static final bool_types announce_to_all_trackers;
        public static final bool_types anonymous_mode;
        public static final bool_types apply_ip_filter_to_trackers;
        public static final bool_types auto_manage_prefer_seeds;
        public static final bool_types auto_sequential;
        public static final bool_types ban_web_seeds;
        public static final bool_types close_redundant_connections;
        public static final bool_types dht_aggressive_lookups;
        public static final bool_types dht_enforce_node_id;
        public static final bool_types dht_extended_routing_table;
        public static final bool_types dht_ignore_dark_internet;
        public static final bool_types dht_prefer_verified_node_ids;
        public static final bool_types dht_privacy_lookups;
        public static final bool_types dht_read_only;
        public static final bool_types dht_restrict_routing_ips;
        public static final bool_types dht_restrict_search_ips;
        public static final bool_types disable_hash_checks;
        public static final bool_types disk_disable_copy_on_write;
        public static final bool_types dont_count_slow_torrents;
        public static final bool_types enable_dht;
        public static final bool_types enable_incoming_tcp;
        public static final bool_types enable_incoming_utp;
        public static final bool_types enable_ip_notifier;
        public static final bool_types enable_lsd;
        public static final bool_types enable_natpmp;
        public static final bool_types enable_outgoing_tcp;
        public static final bool_types enable_outgoing_utp;
        public static final bool_types enable_set_file_valid_data;
        public static final bool_types enable_upnp;
        public static final bool_types incoming_starts_queued_torrents;
        public static final bool_types listen_system_port_fallback;
        public static final bool_types max_bool_setting_internal;
        public static final bool_types no_atime_storage;
        public static final bool_types no_connect_privileged_ports;
        public static final bool_types no_recheck_incomplete_resume;
        public static final bool_types piece_extent_affinity;
        public static final bool_types prefer_rc4;
        public static final bool_types prefer_udp_trackers;
        public static final bool_types prioritize_partial_pieces;
        public static final bool_types proxy_hostnames;
        public static final bool_types proxy_peer_connections;
        public static final bool_types proxy_send_host_in_connect;
        public static final bool_types proxy_tracker_connections;
        public static final bool_types rate_limit_ip_overhead;
        public static final bool_types report_redundant_bytes;
        public static final bool_types report_true_downloaded;
        public static final bool_types report_web_seed_downloads;
        public static final bool_types seeding_outgoing_connections;
        public static final bool_types send_redundant_have;
        public static final bool_types smooth_connects;
        public static final bool_types socks5_udp_send_local_ep;
        public static final bool_types ssrf_mitigation;
        public static final bool_types strict_end_game_mode;
        public static final bool_types support_share_mode;
        private static int swigNext;
        private static bool_types[] swigValues;
        public static final bool_types upnp_ignore_nonrouters;
        public static final bool_types use_dht_as_fallback;
        public static final bool_types use_parole_mode;
        public static final bool_types validate_https_trackers;
        private final String swigName;
        private final int swigValue;

        static {
            bool_types bool_typesVar = new bool_types("allow_multiple_connections_per_ip", libtorrent_jni.settings_pack_allow_multiple_connections_per_ip_get());
            allow_multiple_connections_per_ip = bool_typesVar;
            bool_types bool_typesVar2 = new bool_types("send_redundant_have", libtorrent_jni.settings_pack_send_redundant_have_get());
            send_redundant_have = bool_typesVar2;
            bool_types bool_typesVar3 = new bool_types("use_dht_as_fallback", libtorrent_jni.settings_pack_use_dht_as_fallback_get());
            use_dht_as_fallback = bool_typesVar3;
            bool_types bool_typesVar4 = new bool_types("upnp_ignore_nonrouters");
            upnp_ignore_nonrouters = bool_typesVar4;
            bool_types bool_typesVar5 = new bool_types("use_parole_mode");
            use_parole_mode = bool_typesVar5;
            bool_types bool_typesVar6 = new bool_types("auto_manage_prefer_seeds", libtorrent_jni.settings_pack_auto_manage_prefer_seeds_get());
            auto_manage_prefer_seeds = bool_typesVar6;
            bool_types bool_typesVar7 = new bool_types("dont_count_slow_torrents");
            dont_count_slow_torrents = bool_typesVar7;
            bool_types bool_typesVar8 = new bool_types("close_redundant_connections");
            close_redundant_connections = bool_typesVar8;
            bool_types bool_typesVar9 = new bool_types("prioritize_partial_pieces");
            prioritize_partial_pieces = bool_typesVar9;
            bool_types bool_typesVar10 = new bool_types("rate_limit_ip_overhead");
            rate_limit_ip_overhead = bool_typesVar10;
            bool_types bool_typesVar11 = new bool_types("announce_to_all_tiers");
            announce_to_all_tiers = bool_typesVar11;
            bool_types bool_typesVar12 = new bool_types("announce_to_all_trackers");
            announce_to_all_trackers = bool_typesVar12;
            bool_types bool_typesVar13 = new bool_types("prefer_udp_trackers");
            prefer_udp_trackers = bool_typesVar13;
            bool_types bool_typesVar14 = new bool_types("disable_hash_checks", libtorrent_jni.settings_pack_disable_hash_checks_get());
            disable_hash_checks = bool_typesVar14;
            bool_types bool_typesVar15 = new bool_types("allow_i2p_mixed");
            allow_i2p_mixed = bool_typesVar15;
            bool_types bool_typesVar16 = new bool_types("no_atime_storage", libtorrent_jni.settings_pack_no_atime_storage_get());
            no_atime_storage = bool_typesVar16;
            bool_types bool_typesVar17 = new bool_types("incoming_starts_queued_torrents");
            incoming_starts_queued_torrents = bool_typesVar17;
            bool_types bool_typesVar18 = new bool_types("report_true_downloaded");
            report_true_downloaded = bool_typesVar18;
            bool_types bool_typesVar19 = new bool_types("strict_end_game_mode");
            strict_end_game_mode = bool_typesVar19;
            bool_types bool_typesVar20 = new bool_types("enable_outgoing_utp", libtorrent_jni.settings_pack_enable_outgoing_utp_get());
            enable_outgoing_utp = bool_typesVar20;
            bool_types bool_typesVar21 = new bool_types("enable_incoming_utp");
            enable_incoming_utp = bool_typesVar21;
            bool_types bool_typesVar22 = new bool_types("enable_outgoing_tcp");
            enable_outgoing_tcp = bool_typesVar22;
            bool_types bool_typesVar23 = new bool_types("enable_incoming_tcp");
            enable_incoming_tcp = bool_typesVar23;
            bool_types bool_typesVar24 = new bool_types("no_recheck_incomplete_resume", libtorrent_jni.settings_pack_no_recheck_incomplete_resume_get());
            no_recheck_incomplete_resume = bool_typesVar24;
            bool_types bool_typesVar25 = new bool_types("anonymous_mode");
            anonymous_mode = bool_typesVar25;
            bool_types bool_typesVar26 = new bool_types("report_web_seed_downloads");
            report_web_seed_downloads = bool_typesVar26;
            bool_types bool_typesVar27 = new bool_types("seeding_outgoing_connections", libtorrent_jni.settings_pack_seeding_outgoing_connections_get());
            seeding_outgoing_connections = bool_typesVar27;
            bool_types bool_typesVar28 = new bool_types("no_connect_privileged_ports");
            no_connect_privileged_ports = bool_typesVar28;
            bool_types bool_typesVar29 = new bool_types("smooth_connects");
            smooth_connects = bool_typesVar29;
            bool_types bool_typesVar30 = new bool_types("always_send_user_agent");
            always_send_user_agent = bool_typesVar30;
            bool_types bool_typesVar31 = new bool_types("apply_ip_filter_to_trackers");
            apply_ip_filter_to_trackers = bool_typesVar31;
            bool_types bool_typesVar32 = new bool_types("ban_web_seeds", libtorrent_jni.settings_pack_ban_web_seeds_get());
            ban_web_seeds = bool_typesVar32;
            bool_types bool_typesVar33 = new bool_types("support_share_mode", libtorrent_jni.settings_pack_support_share_mode_get());
            support_share_mode = bool_typesVar33;
            bool_types bool_typesVar34 = new bool_types("report_redundant_bytes", libtorrent_jni.settings_pack_report_redundant_bytes_get());
            report_redundant_bytes = bool_typesVar34;
            bool_types bool_typesVar35 = new bool_types("listen_system_port_fallback");
            listen_system_port_fallback = bool_typesVar35;
            bool_types bool_typesVar36 = new bool_types("announce_crypto_support", libtorrent_jni.settings_pack_announce_crypto_support_get());
            announce_crypto_support = bool_typesVar36;
            bool_types bool_typesVar37 = new bool_types("enable_upnp");
            enable_upnp = bool_typesVar37;
            bool_types bool_typesVar38 = new bool_types("enable_natpmp");
            enable_natpmp = bool_typesVar38;
            bool_types bool_typesVar39 = new bool_types("enable_lsd");
            enable_lsd = bool_typesVar39;
            bool_types bool_typesVar40 = new bool_types("enable_dht");
            enable_dht = bool_typesVar40;
            bool_types bool_typesVar41 = new bool_types("prefer_rc4");
            prefer_rc4 = bool_typesVar41;
            bool_types bool_typesVar42 = new bool_types("proxy_hostnames");
            proxy_hostnames = bool_typesVar42;
            bool_types bool_typesVar43 = new bool_types("proxy_peer_connections");
            proxy_peer_connections = bool_typesVar43;
            bool_types bool_typesVar44 = new bool_types("auto_sequential");
            auto_sequential = bool_typesVar44;
            bool_types bool_typesVar45 = new bool_types("proxy_tracker_connections");
            proxy_tracker_connections = bool_typesVar45;
            bool_types bool_typesVar46 = new bool_types("enable_ip_notifier");
            enable_ip_notifier = bool_typesVar46;
            bool_types bool_typesVar47 = new bool_types("dht_prefer_verified_node_ids");
            dht_prefer_verified_node_ids = bool_typesVar47;
            bool_types bool_typesVar48 = new bool_types("dht_restrict_routing_ips");
            dht_restrict_routing_ips = bool_typesVar48;
            bool_types bool_typesVar49 = new bool_types("dht_restrict_search_ips");
            dht_restrict_search_ips = bool_typesVar49;
            bool_types bool_typesVar50 = new bool_types("dht_extended_routing_table");
            dht_extended_routing_table = bool_typesVar50;
            bool_types bool_typesVar51 = new bool_types("dht_aggressive_lookups");
            dht_aggressive_lookups = bool_typesVar51;
            bool_types bool_typesVar52 = new bool_types("dht_privacy_lookups");
            dht_privacy_lookups = bool_typesVar52;
            bool_types bool_typesVar53 = new bool_types("dht_enforce_node_id");
            dht_enforce_node_id = bool_typesVar53;
            bool_types bool_typesVar54 = new bool_types("dht_ignore_dark_internet");
            dht_ignore_dark_internet = bool_typesVar54;
            bool_types bool_typesVar55 = new bool_types("dht_read_only");
            dht_read_only = bool_typesVar55;
            bool_types bool_typesVar56 = new bool_types("piece_extent_affinity");
            piece_extent_affinity = bool_typesVar56;
            bool_types bool_typesVar57 = new bool_types("validate_https_trackers");
            validate_https_trackers = bool_typesVar57;
            bool_types bool_typesVar58 = new bool_types("ssrf_mitigation");
            ssrf_mitigation = bool_typesVar58;
            bool_types bool_typesVar59 = new bool_types("allow_idna");
            allow_idna = bool_typesVar59;
            bool_types bool_typesVar60 = new bool_types("enable_set_file_valid_data");
            enable_set_file_valid_data = bool_typesVar60;
            bool_types bool_typesVar61 = new bool_types("socks5_udp_send_local_ep");
            socks5_udp_send_local_ep = bool_typesVar61;
            bool_types bool_typesVar62 = new bool_types("proxy_send_host_in_connect");
            proxy_send_host_in_connect = bool_typesVar62;
            bool_types bool_typesVar63 = new bool_types("disk_disable_copy_on_write");
            disk_disable_copy_on_write = bool_typesVar63;
            bool_types bool_typesVar64 = new bool_types("max_bool_setting_internal");
            max_bool_setting_internal = bool_typesVar64;
            swigValues = new bool_types[]{bool_typesVar, bool_typesVar2, bool_typesVar3, bool_typesVar4, bool_typesVar5, bool_typesVar6, bool_typesVar7, bool_typesVar8, bool_typesVar9, bool_typesVar10, bool_typesVar11, bool_typesVar12, bool_typesVar13, bool_typesVar14, bool_typesVar15, bool_typesVar16, bool_typesVar17, bool_typesVar18, bool_typesVar19, bool_typesVar20, bool_typesVar21, bool_typesVar22, bool_typesVar23, bool_typesVar24, bool_typesVar25, bool_typesVar26, bool_typesVar27, bool_typesVar28, bool_typesVar29, bool_typesVar30, bool_typesVar31, bool_typesVar32, bool_typesVar33, bool_typesVar34, bool_typesVar35, bool_typesVar36, bool_typesVar37, bool_typesVar38, bool_typesVar39, bool_typesVar40, bool_typesVar41, bool_typesVar42, bool_typesVar43, bool_typesVar44, bool_typesVar45, bool_typesVar46, bool_typesVar47, bool_typesVar48, bool_typesVar49, bool_typesVar50, bool_typesVar51, bool_typesVar52, bool_typesVar53, bool_typesVar54, bool_typesVar55, bool_typesVar56, bool_typesVar57, bool_typesVar58, bool_typesVar59, bool_typesVar60, bool_typesVar61, bool_typesVar62, bool_typesVar63, bool_typesVar64};
            swigNext = 0;
        }

        private bool_types(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static bool_types swigToEnum(int i) {
            bool_types[] bool_typesVarArr = swigValues;
            if (i < bool_typesVarArr.length && i >= 0) {
                bool_types bool_typesVar = bool_typesVarArr[i];
                if (bool_typesVar.swigValue == i) {
                    return bool_typesVar;
                }
            }
            int i2 = 0;
            while (true) {
                bool_types[] bool_typesVarArr2 = swigValues;
                if (i2 >= bool_typesVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + bool_types.class + " with value " + i);
                }
                bool_types bool_typesVar2 = bool_typesVarArr2[i2];
                if (bool_typesVar2.swigValue == i) {
                    return bool_typesVar2;
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

        private bool_types(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private bool_types(String str, bool_types bool_typesVar) {
            this.swigName = str;
            int i = bool_typesVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class choking_algorithm_t {
        public static final choking_algorithm_t fixed_slots_choker;
        public static final choking_algorithm_t rate_based_choker;
        private static int swigNext;
        private static choking_algorithm_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            choking_algorithm_t choking_algorithm_tVar = new choking_algorithm_t("fixed_slots_choker", libtorrent_jni.settings_pack_fixed_slots_choker_get());
            fixed_slots_choker = choking_algorithm_tVar;
            choking_algorithm_t choking_algorithm_tVar2 = new choking_algorithm_t("rate_based_choker", libtorrent_jni.settings_pack_rate_based_choker_get());
            rate_based_choker = choking_algorithm_tVar2;
            swigValues = new choking_algorithm_t[]{choking_algorithm_tVar, choking_algorithm_tVar2};
            swigNext = 0;
        }

        private choking_algorithm_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static choking_algorithm_t swigToEnum(int i) {
            choking_algorithm_t[] choking_algorithm_tVarArr = swigValues;
            if (i < choking_algorithm_tVarArr.length && i >= 0) {
                choking_algorithm_t choking_algorithm_tVar = choking_algorithm_tVarArr[i];
                if (choking_algorithm_tVar.swigValue == i) {
                    return choking_algorithm_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                choking_algorithm_t[] choking_algorithm_tVarArr2 = swigValues;
                if (i2 >= choking_algorithm_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + choking_algorithm_t.class + " with value " + i);
                }
                choking_algorithm_t choking_algorithm_tVar2 = choking_algorithm_tVarArr2[i2];
                if (choking_algorithm_tVar2.swigValue == i) {
                    return choking_algorithm_tVar2;
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

        private choking_algorithm_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private choking_algorithm_t(String str, choking_algorithm_t choking_algorithm_tVar) {
            this.swigName = str;
            int i = choking_algorithm_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class enc_level {
        public static final enc_level pe_both;
        public static final enc_level pe_plaintext;
        public static final enc_level pe_rc4;
        private static int swigNext;
        private static enc_level[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            enc_level enc_levelVar = new enc_level("pe_plaintext", libtorrent_jni.settings_pack_pe_plaintext_get());
            pe_plaintext = enc_levelVar;
            enc_level enc_levelVar2 = new enc_level("pe_rc4", libtorrent_jni.settings_pack_pe_rc4_get());
            pe_rc4 = enc_levelVar2;
            enc_level enc_levelVar3 = new enc_level("pe_both", libtorrent_jni.settings_pack_pe_both_get());
            pe_both = enc_levelVar3;
            swigValues = new enc_level[]{enc_levelVar, enc_levelVar2, enc_levelVar3};
            swigNext = 0;
        }

        private enc_level(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static enc_level swigToEnum(int i) {
            enc_level[] enc_levelVarArr = swigValues;
            if (i < enc_levelVarArr.length && i >= 0) {
                enc_level enc_levelVar = enc_levelVarArr[i];
                if (enc_levelVar.swigValue == i) {
                    return enc_levelVar;
                }
            }
            int i2 = 0;
            while (true) {
                enc_level[] enc_levelVarArr2 = swigValues;
                if (i2 >= enc_levelVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + enc_level.class + " with value " + i);
                }
                enc_level enc_levelVar2 = enc_levelVarArr2[i2];
                if (enc_levelVar2.swigValue == i) {
                    return enc_levelVar2;
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

        private enc_level(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private enc_level(String str, enc_level enc_levelVar) {
            this.swigName = str;
            int i = enc_levelVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class enc_policy {
        public static final enc_policy pe_disabled;
        public static final enc_policy pe_enabled;
        public static final enc_policy pe_forced;
        private static int swigNext;
        private static enc_policy[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            enc_policy enc_policyVar = new enc_policy("pe_forced");
            pe_forced = enc_policyVar;
            enc_policy enc_policyVar2 = new enc_policy("pe_enabled");
            pe_enabled = enc_policyVar2;
            enc_policy enc_policyVar3 = new enc_policy("pe_disabled");
            pe_disabled = enc_policyVar3;
            swigValues = new enc_policy[]{enc_policyVar, enc_policyVar2, enc_policyVar3};
            swigNext = 0;
        }

        private enc_policy(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static enc_policy swigToEnum(int i) {
            enc_policy[] enc_policyVarArr = swigValues;
            if (i < enc_policyVarArr.length && i >= 0) {
                enc_policy enc_policyVar = enc_policyVarArr[i];
                if (enc_policyVar.swigValue == i) {
                    return enc_policyVar;
                }
            }
            int i2 = 0;
            while (true) {
                enc_policy[] enc_policyVarArr2 = swigValues;
                if (i2 >= enc_policyVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + enc_policy.class + " with value " + i);
                }
                enc_policy enc_policyVar2 = enc_policyVarArr2[i2];
                if (enc_policyVar2.swigValue == i) {
                    return enc_policyVar2;
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

        private enc_policy(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private enc_policy(String str, enc_policy enc_policyVar) {
            this.swigName = str;
            int i = enc_policyVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class int_types {
        public static final int_types active_checking;
        public static final int_types active_dht_limit;
        public static final int_types active_downloads;
        public static final int_types active_limit;
        public static final int_types active_lsd_limit;
        public static final int_types active_seeds;
        public static final int_types active_tracker_limit;
        public static final int_types aio_threads;
        public static final int_types alert_mask;
        public static final int_types alert_queue_size;
        public static final int_types allowed_enc_level;
        public static final int_types allowed_fast_set_size;
        public static final int_types announce_port;
        public static final int_types auto_manage_interval;
        public static final int_types auto_manage_startup;
        public static final int_types auto_scrape_interval;
        public static final int_types auto_scrape_min_interval;
        public static final int_types checking_mem_usage;
        public static final int_types choking_algorithm;
        public static final int_types close_file_interval;
        public static final int_types connect_seed_every_n_download;
        public static final int_types connection_speed;
        public static final int_types connections_limit;
        public static final int_types connections_slack;
        public static final int_types dht_announce_interval;
        public static final int_types dht_block_ratelimit;
        public static final int_types dht_block_timeout;
        public static final int_types dht_item_lifetime;
        public static final int_types dht_max_dht_items;
        public static final int_types dht_max_fail_count;
        public static final int_types dht_max_infohashes_sample_count;
        public static final int_types dht_max_peers;
        public static final int_types dht_max_peers_reply;
        public static final int_types dht_max_torrent_search_reply;
        public static final int_types dht_max_torrents;
        public static final int_types dht_sample_infohashes_interval;
        public static final int_types dht_search_branching;
        public static final int_types dht_upload_rate_limit;
        public static final int_types disk_io_read_mode;
        public static final int_types disk_io_write_mode;
        public static final int_types disk_write_mode;
        public static final int_types download_rate_limit;
        public static final int_types file_pool_size;
        public static final int_types handshake_timeout;
        public static final int_types hashing_threads;
        public static final int_types i2p_inbound_length;
        public static final int_types i2p_inbound_length_variance;
        public static final int_types i2p_inbound_quantity;
        public static final int_types i2p_outbound_length;
        public static final int_types i2p_outbound_length_variance;
        public static final int_types i2p_outbound_quantity;
        public static final int_types i2p_port;
        public static final int_types in_enc_policy;
        public static final int_types inactive_down_rate;
        public static final int_types inactive_up_rate;
        public static final int_types inactivity_timeout;
        public static final int_types initial_picker_threshold;
        public static final int_types listen_queue_size;
        public static final int_types local_service_announce_interval;
        public static final int_types max_allowed_in_request_queue;
        public static final int_types max_concurrent_http_announces;
        public static final int_types max_failcount;
        public static final int_types max_http_recv_buffer_size;
        public static final int_types max_int_setting_internal;
        public static final int_types max_metadata_size;
        public static final int_types max_out_request_queue;
        public static final int_types max_paused_peerlist_size;
        public static final int_types max_peer_recv_buffer_size;
        public static final int_types max_peerlist_size;
        public static final int_types max_pex_peers;
        public static final int_types max_piece_count;
        public static final int_types max_queued_disk_bytes;
        public static final int_types max_rejects;
        public static final int_types max_retry_port_bind;
        public static final int_types max_suggest_pieces;
        public static final int_types max_web_seed_connections;
        public static final int_types metadata_token_limit;
        public static final int_types min_announce_interval;
        public static final int_types min_reconnect_time;
        public static final int_types min_websocket_announce_interval;
        public static final int_types mixed_mode_algorithm;
        public static final int_types mmap_file_size_cutoff;
        public static final int_types num_optimistic_unchoke_slots;
        public static final int_types num_outgoing_ports;
        public static final int_types num_want;
        public static final int_types optimistic_disk_retry;
        public static final int_types optimistic_unchoke_interval;
        public static final int_types out_enc_policy;
        public static final int_types outgoing_port;
        public static final int_types peer_connect_timeout;
        public static final int_types peer_dscp;
        public static final int_types peer_timeout;
        public static final int_types peer_turnover;
        public static final int_types peer_turnover_cutoff;
        public static final int_types peer_turnover_interval;
        public static final int_types piece_timeout;
        public static final int_types predictive_piece_announce;
        public static final int_types proxy_port;
        public static final int_types proxy_type;
        public static final int_types rate_choker_initial_threshold;
        public static final int_types recv_socket_buffer_size;
        public static final int_types request_queue_time;
        public static final int_types request_timeout;
        public static final int_types resolver_cache_timeout;
        public static final int_types seed_choking_algorithm;
        public static final int_types seed_time_limit;
        public static final int_types seed_time_ratio_limit;
        public static final int_types seeding_piece_quota;
        public static final int_types send_buffer_low_watermark;
        public static final int_types send_buffer_watermark;
        public static final int_types send_buffer_watermark_factor;
        public static final int_types send_not_sent_low_watermark;
        public static final int_types send_socket_buffer_size;
        public static final int_types share_mode_target;
        public static final int_types share_ratio_limit;
        public static final int_types stop_tracker_timeout;
        public static final int_types suggest_mode;
        private static int swigNext;
        private static int_types[] swigValues;
        public static final int_types tick_interval;
        public static final int_types torrent_connect_boost;
        public static final int_types tracker_backoff;
        public static final int_types tracker_completion_timeout;
        public static final int_types tracker_maximum_response_length;
        public static final int_types tracker_receive_timeout;
        public static final int_types udp_tracker_token_expiry;
        public static final int_types unchoke_interval;
        public static final int_types unchoke_slots_limit;
        public static final int_types upload_rate_limit;
        public static final int_types upnp_lease_duration;
        public static final int_types urlseed_max_request_bytes;
        public static final int_types urlseed_pipeline_size;
        public static final int_types urlseed_timeout;
        public static final int_types urlseed_wait_retry;
        public static final int_types utp_connect_timeout;
        public static final int_types utp_cwnd_reduce_timer;
        public static final int_types utp_fin_resends;
        public static final int_types utp_gain_factor;
        public static final int_types utp_loss_multiplier;
        public static final int_types utp_min_timeout;
        public static final int_types utp_num_resends;
        public static final int_types utp_syn_resends;
        public static final int_types utp_target_delay;
        public static final int_types web_seed_name_lookup_retry;
        public static final int_types webtorrent_connection_timeout;
        public static final int_types whole_pieces_threshold;
        private final String swigName;
        private final int swigValue;

        static {
            int_types int_typesVar = new int_types("tracker_completion_timeout", libtorrent_jni.settings_pack_tracker_completion_timeout_get());
            tracker_completion_timeout = int_typesVar;
            int_types int_typesVar2 = new int_types("tracker_receive_timeout");
            tracker_receive_timeout = int_typesVar2;
            int_types int_typesVar3 = new int_types("stop_tracker_timeout");
            stop_tracker_timeout = int_typesVar3;
            int_types int_typesVar4 = new int_types("tracker_maximum_response_length");
            tracker_maximum_response_length = int_typesVar4;
            int_types int_typesVar5 = new int_types("piece_timeout");
            piece_timeout = int_typesVar5;
            int_types int_typesVar6 = new int_types("request_timeout");
            request_timeout = int_typesVar6;
            int_types int_typesVar7 = new int_types("request_queue_time");
            request_queue_time = int_typesVar7;
            int_types int_typesVar8 = new int_types("max_allowed_in_request_queue");
            max_allowed_in_request_queue = int_typesVar8;
            int_types int_typesVar9 = new int_types("max_out_request_queue");
            max_out_request_queue = int_typesVar9;
            int_types int_typesVar10 = new int_types("whole_pieces_threshold");
            whole_pieces_threshold = int_typesVar10;
            int_types int_typesVar11 = new int_types("peer_timeout");
            peer_timeout = int_typesVar11;
            int_types int_typesVar12 = new int_types("urlseed_timeout");
            urlseed_timeout = int_typesVar12;
            int_types int_typesVar13 = new int_types("urlseed_pipeline_size");
            urlseed_pipeline_size = int_typesVar13;
            int_types int_typesVar14 = new int_types("urlseed_wait_retry");
            urlseed_wait_retry = int_typesVar14;
            int_types int_typesVar15 = new int_types("file_pool_size");
            file_pool_size = int_typesVar15;
            int_types int_typesVar16 = new int_types("max_failcount");
            max_failcount = int_typesVar16;
            int_types int_typesVar17 = new int_types("min_reconnect_time");
            min_reconnect_time = int_typesVar17;
            int_types int_typesVar18 = new int_types("peer_connect_timeout");
            peer_connect_timeout = int_typesVar18;
            int_types int_typesVar19 = new int_types("connection_speed");
            connection_speed = int_typesVar19;
            int_types int_typesVar20 = new int_types("inactivity_timeout");
            inactivity_timeout = int_typesVar20;
            int_types int_typesVar21 = new int_types("unchoke_interval");
            unchoke_interval = int_typesVar21;
            int_types int_typesVar22 = new int_types("optimistic_unchoke_interval");
            optimistic_unchoke_interval = int_typesVar22;
            int_types int_typesVar23 = new int_types("num_want");
            num_want = int_typesVar23;
            int_types int_typesVar24 = new int_types("initial_picker_threshold");
            initial_picker_threshold = int_typesVar24;
            int_types int_typesVar25 = new int_types("allowed_fast_set_size");
            allowed_fast_set_size = int_typesVar25;
            int_types int_typesVar26 = new int_types("suggest_mode");
            suggest_mode = int_typesVar26;
            int_types int_typesVar27 = new int_types("max_queued_disk_bytes");
            max_queued_disk_bytes = int_typesVar27;
            int_types int_typesVar28 = new int_types("handshake_timeout");
            handshake_timeout = int_typesVar28;
            int_types int_typesVar29 = new int_types("send_buffer_low_watermark");
            send_buffer_low_watermark = int_typesVar29;
            int_types int_typesVar30 = new int_types("send_buffer_watermark");
            send_buffer_watermark = int_typesVar30;
            int_types int_typesVar31 = new int_types("send_buffer_watermark_factor");
            send_buffer_watermark_factor = int_typesVar31;
            int_types int_typesVar32 = new int_types("choking_algorithm");
            choking_algorithm = int_typesVar32;
            int_types int_typesVar33 = new int_types("seed_choking_algorithm");
            seed_choking_algorithm = int_typesVar33;
            int_types int_typesVar34 = new int_types("disk_io_write_mode", libtorrent_jni.settings_pack_disk_io_write_mode_get());
            disk_io_write_mode = int_typesVar34;
            int_types int_typesVar35 = new int_types("disk_io_read_mode");
            disk_io_read_mode = int_typesVar35;
            int_types int_typesVar36 = new int_types("outgoing_port");
            outgoing_port = int_typesVar36;
            int_types int_typesVar37 = new int_types("num_outgoing_ports");
            num_outgoing_ports = int_typesVar37;
            int_types int_typesVar38 = new int_types("peer_dscp");
            peer_dscp = int_typesVar38;
            int_types int_typesVar39 = new int_types("active_downloads", libtorrent_jni.settings_pack_active_downloads_get());
            active_downloads = int_typesVar39;
            int_types int_typesVar40 = new int_types("active_seeds");
            active_seeds = int_typesVar40;
            int_types int_typesVar41 = new int_types("active_checking");
            active_checking = int_typesVar41;
            int_types int_typesVar42 = new int_types("active_dht_limit");
            active_dht_limit = int_typesVar42;
            int_types int_typesVar43 = new int_types("active_tracker_limit");
            active_tracker_limit = int_typesVar43;
            int_types int_typesVar44 = new int_types("active_lsd_limit");
            active_lsd_limit = int_typesVar44;
            int_types int_typesVar45 = new int_types("active_limit");
            active_limit = int_typesVar45;
            int_types int_typesVar46 = new int_types("auto_manage_interval", libtorrent_jni.settings_pack_auto_manage_interval_get());
            auto_manage_interval = int_typesVar46;
            int_types int_typesVar47 = new int_types("seed_time_limit");
            seed_time_limit = int_typesVar47;
            int_types int_typesVar48 = new int_types("auto_scrape_interval");
            auto_scrape_interval = int_typesVar48;
            int_types int_typesVar49 = new int_types("auto_scrape_min_interval");
            auto_scrape_min_interval = int_typesVar49;
            int_types int_typesVar50 = new int_types("max_peerlist_size");
            max_peerlist_size = int_typesVar50;
            int_types int_typesVar51 = new int_types("max_paused_peerlist_size");
            max_paused_peerlist_size = int_typesVar51;
            int_types int_typesVar52 = new int_types("min_announce_interval");
            min_announce_interval = int_typesVar52;
            int_types int_typesVar53 = new int_types("auto_manage_startup");
            auto_manage_startup = int_typesVar53;
            int_types int_typesVar54 = new int_types("seeding_piece_quota");
            seeding_piece_quota = int_typesVar54;
            int_types int_typesVar55 = new int_types("max_rejects");
            max_rejects = int_typesVar55;
            int_types int_typesVar56 = new int_types("recv_socket_buffer_size");
            recv_socket_buffer_size = int_typesVar56;
            int_types int_typesVar57 = new int_types("send_socket_buffer_size");
            send_socket_buffer_size = int_typesVar57;
            int_types int_typesVar58 = new int_types("max_peer_recv_buffer_size");
            max_peer_recv_buffer_size = int_typesVar58;
            int_types int_typesVar59 = new int_types("optimistic_disk_retry", libtorrent_jni.settings_pack_optimistic_disk_retry_get());
            optimistic_disk_retry = int_typesVar59;
            int_types int_typesVar60 = new int_types("max_suggest_pieces");
            max_suggest_pieces = int_typesVar60;
            int_types int_typesVar61 = new int_types("local_service_announce_interval");
            local_service_announce_interval = int_typesVar61;
            int_types int_typesVar62 = new int_types("dht_announce_interval");
            dht_announce_interval = int_typesVar62;
            int_types int_typesVar63 = new int_types("udp_tracker_token_expiry");
            udp_tracker_token_expiry = int_typesVar63;
            int_types int_typesVar64 = new int_types("num_optimistic_unchoke_slots", libtorrent_jni.settings_pack_num_optimistic_unchoke_slots_get());
            num_optimistic_unchoke_slots = int_typesVar64;
            int_types int_typesVar65 = new int_types("max_pex_peers", libtorrent_jni.settings_pack_max_pex_peers_get());
            max_pex_peers = int_typesVar65;
            int_types int_typesVar66 = new int_types("tick_interval");
            tick_interval = int_typesVar66;
            int_types int_typesVar67 = new int_types("share_mode_target");
            share_mode_target = int_typesVar67;
            int_types int_typesVar68 = new int_types("upload_rate_limit");
            upload_rate_limit = int_typesVar68;
            int_types int_typesVar69 = new int_types("download_rate_limit");
            download_rate_limit = int_typesVar69;
            int_types int_typesVar70 = new int_types("dht_upload_rate_limit", libtorrent_jni.settings_pack_dht_upload_rate_limit_get());
            dht_upload_rate_limit = int_typesVar70;
            int_types int_typesVar71 = new int_types("unchoke_slots_limit");
            unchoke_slots_limit = int_typesVar71;
            int_types int_typesVar72 = new int_types("connections_limit", libtorrent_jni.settings_pack_connections_limit_get());
            connections_limit = int_typesVar72;
            int_types int_typesVar73 = new int_types("connections_slack");
            connections_slack = int_typesVar73;
            int_types int_typesVar74 = new int_types("utp_target_delay");
            utp_target_delay = int_typesVar74;
            int_types int_typesVar75 = new int_types("utp_gain_factor");
            utp_gain_factor = int_typesVar75;
            int_types int_typesVar76 = new int_types("utp_min_timeout");
            utp_min_timeout = int_typesVar76;
            int_types int_typesVar77 = new int_types("utp_syn_resends");
            utp_syn_resends = int_typesVar77;
            int_types int_typesVar78 = new int_types("utp_fin_resends");
            utp_fin_resends = int_typesVar78;
            int_types int_typesVar79 = new int_types("utp_num_resends");
            utp_num_resends = int_typesVar79;
            int_types int_typesVar80 = new int_types("utp_connect_timeout");
            utp_connect_timeout = int_typesVar80;
            int_types int_typesVar81 = new int_types("utp_loss_multiplier", libtorrent_jni.settings_pack_utp_loss_multiplier_get());
            utp_loss_multiplier = int_typesVar81;
            int_types int_typesVar82 = new int_types("mixed_mode_algorithm");
            mixed_mode_algorithm = int_typesVar82;
            int_types int_typesVar83 = new int_types("listen_queue_size");
            listen_queue_size = int_typesVar83;
            int_types int_typesVar84 = new int_types("torrent_connect_boost");
            torrent_connect_boost = int_typesVar84;
            int_types int_typesVar85 = new int_types("alert_queue_size");
            alert_queue_size = int_typesVar85;
            int_types int_typesVar86 = new int_types("max_metadata_size");
            max_metadata_size = int_typesVar86;
            int_types int_typesVar87 = new int_types("hashing_threads");
            hashing_threads = int_typesVar87;
            int_types int_typesVar88 = new int_types("checking_mem_usage");
            checking_mem_usage = int_typesVar88;
            int_types int_typesVar89 = new int_types("predictive_piece_announce");
            predictive_piece_announce = int_typesVar89;
            int_types int_typesVar90 = new int_types("aio_threads");
            aio_threads = int_typesVar90;
            int_types int_typesVar91 = new int_types("tracker_backoff", libtorrent_jni.settings_pack_tracker_backoff_get());
            tracker_backoff = int_typesVar91;
            int_types int_typesVar92 = new int_types("share_ratio_limit");
            share_ratio_limit = int_typesVar92;
            int_types int_typesVar93 = new int_types("seed_time_ratio_limit");
            seed_time_ratio_limit = int_typesVar93;
            int_types int_typesVar94 = new int_types("peer_turnover");
            peer_turnover = int_typesVar94;
            int_types int_typesVar95 = new int_types("peer_turnover_cutoff");
            peer_turnover_cutoff = int_typesVar95;
            int_types int_typesVar96 = new int_types("peer_turnover_interval");
            peer_turnover_interval = int_typesVar96;
            int_types int_typesVar97 = new int_types("connect_seed_every_n_download");
            connect_seed_every_n_download = int_typesVar97;
            int_types int_typesVar98 = new int_types("max_http_recv_buffer_size");
            max_http_recv_buffer_size = int_typesVar98;
            int_types int_typesVar99 = new int_types("max_retry_port_bind");
            max_retry_port_bind = int_typesVar99;
            int_types int_typesVar100 = new int_types("alert_mask");
            alert_mask = int_typesVar100;
            int_types int_typesVar101 = new int_types("out_enc_policy");
            out_enc_policy = int_typesVar101;
            int_types int_typesVar102 = new int_types("in_enc_policy");
            in_enc_policy = int_typesVar102;
            int_types int_typesVar103 = new int_types("allowed_enc_level");
            allowed_enc_level = int_typesVar103;
            int_types int_typesVar104 = new int_types("inactive_down_rate");
            inactive_down_rate = int_typesVar104;
            int_types int_typesVar105 = new int_types("inactive_up_rate");
            inactive_up_rate = int_typesVar105;
            int_types int_typesVar106 = new int_types("proxy_type");
            proxy_type = int_typesVar106;
            int_types int_typesVar107 = new int_types("proxy_port");
            proxy_port = int_typesVar107;
            int_types int_typesVar108 = new int_types("i2p_port");
            i2p_port = int_typesVar108;
            int_types int_typesVar109 = new int_types("urlseed_max_request_bytes", libtorrent_jni.settings_pack_urlseed_max_request_bytes_get());
            urlseed_max_request_bytes = int_typesVar109;
            int_types int_typesVar110 = new int_types("web_seed_name_lookup_retry");
            web_seed_name_lookup_retry = int_typesVar110;
            int_types int_typesVar111 = new int_types("close_file_interval");
            close_file_interval = int_typesVar111;
            int_types int_typesVar112 = new int_types("utp_cwnd_reduce_timer");
            utp_cwnd_reduce_timer = int_typesVar112;
            int_types int_typesVar113 = new int_types("max_web_seed_connections");
            max_web_seed_connections = int_typesVar113;
            int_types int_typesVar114 = new int_types("resolver_cache_timeout");
            resolver_cache_timeout = int_typesVar114;
            int_types int_typesVar115 = new int_types("send_not_sent_low_watermark");
            send_not_sent_low_watermark = int_typesVar115;
            int_types int_typesVar116 = new int_types("rate_choker_initial_threshold");
            rate_choker_initial_threshold = int_typesVar116;
            int_types int_typesVar117 = new int_types("upnp_lease_duration");
            upnp_lease_duration = int_typesVar117;
            int_types int_typesVar118 = new int_types("max_concurrent_http_announces");
            max_concurrent_http_announces = int_typesVar118;
            int_types int_typesVar119 = new int_types("dht_max_peers_reply");
            dht_max_peers_reply = int_typesVar119;
            int_types int_typesVar120 = new int_types("dht_search_branching");
            dht_search_branching = int_typesVar120;
            int_types int_typesVar121 = new int_types("dht_max_fail_count");
            dht_max_fail_count = int_typesVar121;
            int_types int_typesVar122 = new int_types("dht_max_torrents");
            dht_max_torrents = int_typesVar122;
            int_types int_typesVar123 = new int_types("dht_max_dht_items");
            dht_max_dht_items = int_typesVar123;
            int_types int_typesVar124 = new int_types("dht_max_peers");
            dht_max_peers = int_typesVar124;
            int_types int_typesVar125 = new int_types("dht_max_torrent_search_reply");
            dht_max_torrent_search_reply = int_typesVar125;
            int_types int_typesVar126 = new int_types("dht_block_timeout");
            dht_block_timeout = int_typesVar126;
            int_types int_typesVar127 = new int_types("dht_block_ratelimit");
            dht_block_ratelimit = int_typesVar127;
            int_types int_typesVar128 = new int_types("dht_item_lifetime");
            dht_item_lifetime = int_typesVar128;
            int_types int_typesVar129 = new int_types("dht_sample_infohashes_interval");
            dht_sample_infohashes_interval = int_typesVar129;
            int_types int_typesVar130 = new int_types("dht_max_infohashes_sample_count");
            dht_max_infohashes_sample_count = int_typesVar130;
            int_types int_typesVar131 = new int_types("max_piece_count");
            max_piece_count = int_typesVar131;
            int_types int_typesVar132 = new int_types("metadata_token_limit");
            metadata_token_limit = int_typesVar132;
            int_types int_typesVar133 = new int_types("disk_write_mode");
            disk_write_mode = int_typesVar133;
            int_types int_typesVar134 = new int_types("mmap_file_size_cutoff");
            mmap_file_size_cutoff = int_typesVar134;
            int_types int_typesVar135 = new int_types("i2p_inbound_quantity");
            i2p_inbound_quantity = int_typesVar135;
            int_types int_typesVar136 = new int_types("i2p_outbound_quantity");
            i2p_outbound_quantity = int_typesVar136;
            int_types int_typesVar137 = new int_types("i2p_inbound_length");
            i2p_inbound_length = int_typesVar137;
            int_types int_typesVar138 = new int_types("i2p_outbound_length");
            i2p_outbound_length = int_typesVar138;
            int_types int_typesVar139 = new int_types("announce_port");
            announce_port = int_typesVar139;
            int_types int_typesVar140 = new int_types("i2p_inbound_length_variance");
            i2p_inbound_length_variance = int_typesVar140;
            int_types int_typesVar141 = new int_types("i2p_outbound_length_variance");
            i2p_outbound_length_variance = int_typesVar141;
            int_types int_typesVar142 = new int_types("min_websocket_announce_interval");
            min_websocket_announce_interval = int_typesVar142;
            int_types int_typesVar143 = new int_types("webtorrent_connection_timeout");
            webtorrent_connection_timeout = int_typesVar143;
            int_types int_typesVar144 = new int_types("max_int_setting_internal");
            max_int_setting_internal = int_typesVar144;
            swigValues = new int_types[]{int_typesVar, int_typesVar2, int_typesVar3, int_typesVar4, int_typesVar5, int_typesVar6, int_typesVar7, int_typesVar8, int_typesVar9, int_typesVar10, int_typesVar11, int_typesVar12, int_typesVar13, int_typesVar14, int_typesVar15, int_typesVar16, int_typesVar17, int_typesVar18, int_typesVar19, int_typesVar20, int_typesVar21, int_typesVar22, int_typesVar23, int_typesVar24, int_typesVar25, int_typesVar26, int_typesVar27, int_typesVar28, int_typesVar29, int_typesVar30, int_typesVar31, int_typesVar32, int_typesVar33, int_typesVar34, int_typesVar35, int_typesVar36, int_typesVar37, int_typesVar38, int_typesVar39, int_typesVar40, int_typesVar41, int_typesVar42, int_typesVar43, int_typesVar44, int_typesVar45, int_typesVar46, int_typesVar47, int_typesVar48, int_typesVar49, int_typesVar50, int_typesVar51, int_typesVar52, int_typesVar53, int_typesVar54, int_typesVar55, int_typesVar56, int_typesVar57, int_typesVar58, int_typesVar59, int_typesVar60, int_typesVar61, int_typesVar62, int_typesVar63, int_typesVar64, int_typesVar65, int_typesVar66, int_typesVar67, int_typesVar68, int_typesVar69, int_typesVar70, int_typesVar71, int_typesVar72, int_typesVar73, int_typesVar74, int_typesVar75, int_typesVar76, int_typesVar77, int_typesVar78, int_typesVar79, int_typesVar80, int_typesVar81, int_typesVar82, int_typesVar83, int_typesVar84, int_typesVar85, int_typesVar86, int_typesVar87, int_typesVar88, int_typesVar89, int_typesVar90, int_typesVar91, int_typesVar92, int_typesVar93, int_typesVar94, int_typesVar95, int_typesVar96, int_typesVar97, int_typesVar98, int_typesVar99, int_typesVar100, int_typesVar101, int_typesVar102, int_typesVar103, int_typesVar104, int_typesVar105, int_typesVar106, int_typesVar107, int_typesVar108, int_typesVar109, int_typesVar110, int_typesVar111, int_typesVar112, int_typesVar113, int_typesVar114, int_typesVar115, int_typesVar116, int_typesVar117, int_typesVar118, int_typesVar119, int_typesVar120, int_typesVar121, int_typesVar122, int_typesVar123, int_typesVar124, int_typesVar125, int_typesVar126, int_typesVar127, int_typesVar128, int_typesVar129, int_typesVar130, int_typesVar131, int_typesVar132, int_typesVar133, int_typesVar134, int_typesVar135, int_typesVar136, int_typesVar137, int_typesVar138, int_typesVar139, int_typesVar140, int_typesVar141, int_typesVar142, int_typesVar143, int_typesVar144};
            swigNext = 0;
        }

        private int_types(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static int_types swigToEnum(int i) {
            int_types[] int_typesVarArr = swigValues;
            if (i < int_typesVarArr.length && i >= 0) {
                int_types int_typesVar = int_typesVarArr[i];
                if (int_typesVar.swigValue == i) {
                    return int_typesVar;
                }
            }
            int i2 = 0;
            while (true) {
                int_types[] int_typesVarArr2 = swigValues;
                if (i2 >= int_typesVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + int_types.class + " with value " + i);
                }
                int_types int_typesVar2 = int_typesVarArr2[i2];
                if (int_typesVar2.swigValue == i) {
                    return int_typesVar2;
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

        private int_types(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private int_types(String str, int_types int_typesVar) {
            this.swigName = str;
            int i = int_typesVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class io_buffer_mode_t {
        public static final io_buffer_mode_t disable_os_cache;
        public static final io_buffer_mode_t enable_os_cache;
        private static int swigNext;
        private static io_buffer_mode_t[] swigValues;
        public static final io_buffer_mode_t write_through;
        private final String swigName;
        private final int swigValue;

        static {
            io_buffer_mode_t io_buffer_mode_tVar = new io_buffer_mode_t("enable_os_cache", libtorrent_jni.settings_pack_enable_os_cache_get());
            enable_os_cache = io_buffer_mode_tVar;
            io_buffer_mode_t io_buffer_mode_tVar2 = new io_buffer_mode_t("disable_os_cache", libtorrent_jni.settings_pack_disable_os_cache_get());
            disable_os_cache = io_buffer_mode_tVar2;
            io_buffer_mode_t io_buffer_mode_tVar3 = new io_buffer_mode_t("write_through", libtorrent_jni.settings_pack_write_through_get());
            write_through = io_buffer_mode_tVar3;
            swigValues = new io_buffer_mode_t[]{io_buffer_mode_tVar, io_buffer_mode_tVar2, io_buffer_mode_tVar3};
            swigNext = 0;
        }

        private io_buffer_mode_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static io_buffer_mode_t swigToEnum(int i) {
            io_buffer_mode_t[] io_buffer_mode_tVarArr = swigValues;
            if (i < io_buffer_mode_tVarArr.length && i >= 0) {
                io_buffer_mode_t io_buffer_mode_tVar = io_buffer_mode_tVarArr[i];
                if (io_buffer_mode_tVar.swigValue == i) {
                    return io_buffer_mode_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                io_buffer_mode_t[] io_buffer_mode_tVarArr2 = swigValues;
                if (i2 >= io_buffer_mode_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + io_buffer_mode_t.class + " with value " + i);
                }
                io_buffer_mode_t io_buffer_mode_tVar2 = io_buffer_mode_tVarArr2[i2];
                if (io_buffer_mode_tVar2.swigValue == i) {
                    return io_buffer_mode_tVar2;
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

        private io_buffer_mode_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private io_buffer_mode_t(String str, io_buffer_mode_t io_buffer_mode_tVar) {
            this.swigName = str;
            int i = io_buffer_mode_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class mmap_write_mode_t {
        public static final mmap_write_mode_t always_mmap_write;
        public static final mmap_write_mode_t always_pwrite;
        public static final mmap_write_mode_t auto_mmap_write;
        private static int swigNext;
        private static mmap_write_mode_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            mmap_write_mode_t mmap_write_mode_tVar = new mmap_write_mode_t("always_pwrite", libtorrent_jni.settings_pack_always_pwrite_get());
            always_pwrite = mmap_write_mode_tVar;
            mmap_write_mode_t mmap_write_mode_tVar2 = new mmap_write_mode_t("always_mmap_write");
            always_mmap_write = mmap_write_mode_tVar2;
            mmap_write_mode_t mmap_write_mode_tVar3 = new mmap_write_mode_t("auto_mmap_write");
            auto_mmap_write = mmap_write_mode_tVar3;
            swigValues = new mmap_write_mode_t[]{mmap_write_mode_tVar, mmap_write_mode_tVar2, mmap_write_mode_tVar3};
            swigNext = 0;
        }

        private mmap_write_mode_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static mmap_write_mode_t swigToEnum(int i) {
            mmap_write_mode_t[] mmap_write_mode_tVarArr = swigValues;
            if (i < mmap_write_mode_tVarArr.length && i >= 0) {
                mmap_write_mode_t mmap_write_mode_tVar = mmap_write_mode_tVarArr[i];
                if (mmap_write_mode_tVar.swigValue == i) {
                    return mmap_write_mode_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                mmap_write_mode_t[] mmap_write_mode_tVarArr2 = swigValues;
                if (i2 >= mmap_write_mode_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + mmap_write_mode_t.class + " with value " + i);
                }
                mmap_write_mode_t mmap_write_mode_tVar2 = mmap_write_mode_tVarArr2[i2];
                if (mmap_write_mode_tVar2.swigValue == i) {
                    return mmap_write_mode_tVar2;
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

        private mmap_write_mode_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private mmap_write_mode_t(String str, mmap_write_mode_t mmap_write_mode_tVar) {
            this.swigName = str;
            int i = mmap_write_mode_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class proxy_type_t {
        public static final proxy_type_t http;
        public static final proxy_type_t http_pw;
        public static final proxy_type_t none;
        public static final proxy_type_t socks4;
        public static final proxy_type_t socks5;
        public static final proxy_type_t socks5_pw;
        private static int swigNext;
        private static proxy_type_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            proxy_type_t proxy_type_tVar = new proxy_type_t("none");
            none = proxy_type_tVar;
            proxy_type_t proxy_type_tVar2 = new proxy_type_t("socks4");
            socks4 = proxy_type_tVar2;
            proxy_type_t proxy_type_tVar3 = new proxy_type_t("socks5");
            socks5 = proxy_type_tVar3;
            proxy_type_t proxy_type_tVar4 = new proxy_type_t("socks5_pw");
            socks5_pw = proxy_type_tVar4;
            proxy_type_t proxy_type_tVar5 = new proxy_type_t(ProxyConfig.MATCH_HTTP);
            http = proxy_type_tVar5;
            proxy_type_t proxy_type_tVar6 = new proxy_type_t("http_pw");
            http_pw = proxy_type_tVar6;
            swigValues = new proxy_type_t[]{proxy_type_tVar, proxy_type_tVar2, proxy_type_tVar3, proxy_type_tVar4, proxy_type_tVar5, proxy_type_tVar6};
            swigNext = 0;
        }

        private proxy_type_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static proxy_type_t swigToEnum(int i) {
            proxy_type_t[] proxy_type_tVarArr = swigValues;
            if (i < proxy_type_tVarArr.length && i >= 0) {
                proxy_type_t proxy_type_tVar = proxy_type_tVarArr[i];
                if (proxy_type_tVar.swigValue == i) {
                    return proxy_type_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                proxy_type_t[] proxy_type_tVarArr2 = swigValues;
                if (i2 >= proxy_type_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + proxy_type_t.class + " with value " + i);
                }
                proxy_type_t proxy_type_tVar2 = proxy_type_tVarArr2[i2];
                if (proxy_type_tVar2.swigValue == i) {
                    return proxy_type_tVar2;
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

        private proxy_type_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private proxy_type_t(String str, proxy_type_t proxy_type_tVar) {
            this.swigName = str;
            int i = proxy_type_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class seed_choking_algorithm_t {
        public static final seed_choking_algorithm_t anti_leech;
        public static final seed_choking_algorithm_t fastest_upload;
        public static final seed_choking_algorithm_t round_robin;
        private static int swigNext;
        private static seed_choking_algorithm_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            seed_choking_algorithm_t seed_choking_algorithm_tVar = new seed_choking_algorithm_t("round_robin");
            round_robin = seed_choking_algorithm_tVar;
            seed_choking_algorithm_t seed_choking_algorithm_tVar2 = new seed_choking_algorithm_t("fastest_upload");
            fastest_upload = seed_choking_algorithm_tVar2;
            seed_choking_algorithm_t seed_choking_algorithm_tVar3 = new seed_choking_algorithm_t("anti_leech");
            anti_leech = seed_choking_algorithm_tVar3;
            swigValues = new seed_choking_algorithm_t[]{seed_choking_algorithm_tVar, seed_choking_algorithm_tVar2, seed_choking_algorithm_tVar3};
            swigNext = 0;
        }

        private seed_choking_algorithm_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static seed_choking_algorithm_t swigToEnum(int i) {
            seed_choking_algorithm_t[] seed_choking_algorithm_tVarArr = swigValues;
            if (i < seed_choking_algorithm_tVarArr.length && i >= 0) {
                seed_choking_algorithm_t seed_choking_algorithm_tVar = seed_choking_algorithm_tVarArr[i];
                if (seed_choking_algorithm_tVar.swigValue == i) {
                    return seed_choking_algorithm_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                seed_choking_algorithm_t[] seed_choking_algorithm_tVarArr2 = swigValues;
                if (i2 >= seed_choking_algorithm_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + seed_choking_algorithm_t.class + " with value " + i);
                }
                seed_choking_algorithm_t seed_choking_algorithm_tVar2 = seed_choking_algorithm_tVarArr2[i2];
                if (seed_choking_algorithm_tVar2.swigValue == i) {
                    return seed_choking_algorithm_tVar2;
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

        private seed_choking_algorithm_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private seed_choking_algorithm_t(String str, seed_choking_algorithm_t seed_choking_algorithm_tVar) {
            this.swigName = str;
            int i = seed_choking_algorithm_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class string_types {
        public static final string_types announce_ip;
        public static final string_types dht_bootstrap_nodes;
        public static final string_types handshake_client_version;
        public static final string_types i2p_hostname;
        public static final string_types listen_interfaces;
        public static final string_types max_string_setting_internal;
        public static final string_types outgoing_interfaces;
        public static final string_types peer_fingerprint;
        public static final string_types proxy_hostname;
        public static final string_types proxy_password;
        public static final string_types proxy_username;
        private static int swigNext;
        private static string_types[] swigValues;
        public static final string_types user_agent;
        public static final string_types webtorrent_stun_server;
        private final String swigName;
        private final int swigValue;

        static {
            string_types string_typesVar = new string_types("user_agent", libtorrent_jni.settings_pack_user_agent_get());
            user_agent = string_typesVar;
            string_types string_typesVar2 = new string_types("announce_ip");
            announce_ip = string_typesVar2;
            string_types string_typesVar3 = new string_types("handshake_client_version", libtorrent_jni.settings_pack_handshake_client_version_get());
            handshake_client_version = string_typesVar3;
            string_types string_typesVar4 = new string_types("outgoing_interfaces");
            outgoing_interfaces = string_typesVar4;
            string_types string_typesVar5 = new string_types("listen_interfaces");
            listen_interfaces = string_typesVar5;
            string_types string_typesVar6 = new string_types("proxy_hostname");
            proxy_hostname = string_typesVar6;
            string_types string_typesVar7 = new string_types("proxy_username");
            proxy_username = string_typesVar7;
            string_types string_typesVar8 = new string_types("proxy_password");
            proxy_password = string_typesVar8;
            string_types string_typesVar9 = new string_types("i2p_hostname");
            i2p_hostname = string_typesVar9;
            string_types string_typesVar10 = new string_types("peer_fingerprint");
            peer_fingerprint = string_typesVar10;
            string_types string_typesVar11 = new string_types("dht_bootstrap_nodes");
            dht_bootstrap_nodes = string_typesVar11;
            string_types string_typesVar12 = new string_types("webtorrent_stun_server");
            webtorrent_stun_server = string_typesVar12;
            string_types string_typesVar13 = new string_types("max_string_setting_internal");
            max_string_setting_internal = string_typesVar13;
            swigValues = new string_types[]{string_typesVar, string_typesVar2, string_typesVar3, string_typesVar4, string_typesVar5, string_typesVar6, string_typesVar7, string_typesVar8, string_typesVar9, string_typesVar10, string_typesVar11, string_typesVar12, string_typesVar13};
            swigNext = 0;
        }

        private string_types(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static string_types swigToEnum(int i) {
            string_types[] string_typesVarArr = swigValues;
            if (i < string_typesVarArr.length && i >= 0) {
                string_types string_typesVar = string_typesVarArr[i];
                if (string_typesVar.swigValue == i) {
                    return string_typesVar;
                }
            }
            int i2 = 0;
            while (true) {
                string_types[] string_typesVarArr2 = swigValues;
                if (i2 >= string_typesVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + string_types.class + " with value " + i);
                }
                string_types string_typesVar2 = string_typesVarArr2[i2];
                if (string_typesVar2.swigValue == i) {
                    return string_typesVar2;
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

        private string_types(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private string_types(String str, string_types string_typesVar) {
            this.swigName = str;
            int i = string_typesVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class suggest_mode_t {
        public static final suggest_mode_t no_piece_suggestions;
        public static final suggest_mode_t suggest_read_cache;
        private static int swigNext;
        private static suggest_mode_t[] swigValues;
        private final String swigName;
        private final int swigValue;

        static {
            suggest_mode_t suggest_mode_tVar = new suggest_mode_t("no_piece_suggestions", libtorrent_jni.settings_pack_no_piece_suggestions_get());
            no_piece_suggestions = suggest_mode_tVar;
            suggest_mode_t suggest_mode_tVar2 = new suggest_mode_t("suggest_read_cache", libtorrent_jni.settings_pack_suggest_read_cache_get());
            suggest_read_cache = suggest_mode_tVar2;
            swigValues = new suggest_mode_t[]{suggest_mode_tVar, suggest_mode_tVar2};
            swigNext = 0;
        }

        private suggest_mode_t(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static suggest_mode_t swigToEnum(int i) {
            suggest_mode_t[] suggest_mode_tVarArr = swigValues;
            if (i < suggest_mode_tVarArr.length && i >= 0) {
                suggest_mode_t suggest_mode_tVar = suggest_mode_tVarArr[i];
                if (suggest_mode_tVar.swigValue == i) {
                    return suggest_mode_tVar;
                }
            }
            int i2 = 0;
            while (true) {
                suggest_mode_t[] suggest_mode_tVarArr2 = swigValues;
                if (i2 >= suggest_mode_tVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + suggest_mode_t.class + " with value " + i);
                }
                suggest_mode_t suggest_mode_tVar2 = suggest_mode_tVarArr2[i2];
                if (suggest_mode_tVar2.swigValue == i) {
                    return suggest_mode_tVar2;
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

        private suggest_mode_t(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private suggest_mode_t(String str, suggest_mode_t suggest_mode_tVar) {
            this.swigName = str;
            int i = suggest_mode_tVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public static final class type_bases {
        public static final type_bases bool_type_base;
        public static final type_bases index_mask;
        public static final type_bases int_type_base;
        public static final type_bases string_type_base;
        private static int swigNext;
        private static type_bases[] swigValues;
        public static final type_bases type_mask;
        private final String swigName;
        private final int swigValue;

        static {
            type_bases type_basesVar = new type_bases("string_type_base", libtorrent_jni.settings_pack_string_type_base_get());
            string_type_base = type_basesVar;
            type_bases type_basesVar2 = new type_bases("int_type_base", libtorrent_jni.settings_pack_int_type_base_get());
            int_type_base = type_basesVar2;
            type_bases type_basesVar3 = new type_bases("bool_type_base", libtorrent_jni.settings_pack_bool_type_base_get());
            bool_type_base = type_basesVar3;
            type_bases type_basesVar4 = new type_bases("type_mask", libtorrent_jni.settings_pack_type_mask_get());
            type_mask = type_basesVar4;
            type_bases type_basesVar5 = new type_bases("index_mask", libtorrent_jni.settings_pack_index_mask_get());
            index_mask = type_basesVar5;
            swigValues = new type_bases[]{type_basesVar, type_basesVar2, type_basesVar3, type_basesVar4, type_basesVar5};
            swigNext = 0;
        }

        private type_bases(String str) {
            this.swigName = str;
            int i = swigNext;
            swigNext = i + 1;
            this.swigValue = i;
        }

        public static type_bases swigToEnum(int i) {
            type_bases[] type_basesVarArr = swigValues;
            if (i < type_basesVarArr.length && i >= 0) {
                type_bases type_basesVar = type_basesVarArr[i];
                if (type_basesVar.swigValue == i) {
                    return type_basesVar;
                }
            }
            int i2 = 0;
            while (true) {
                type_bases[] type_basesVarArr2 = swigValues;
                if (i2 >= type_basesVarArr2.length) {
                    throw new IllegalArgumentException("No enum " + type_bases.class + " with value " + i);
                }
                type_bases type_basesVar2 = type_basesVarArr2[i2];
                if (type_basesVar2.swigValue == i) {
                    return type_basesVar2;
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

        private type_bases(String str, int i) {
            this.swigName = str;
            this.swigValue = i;
            swigNext = i + 1;
        }

        private type_bases(String str, type_bases type_basesVar) {
            this.swigName = str;
            int i = type_basesVar.swigValue;
            this.swigValue = i;
            swigNext = i + 1;
        }
    }

    public settings_pack() {
        this(libtorrent_jni.new_settings_pack__SWIG_0(), true);
    }

    public settings_pack(settings_pack settings_packVar) {
        this(libtorrent_jni.new_settings_pack__SWIG_1(getCPtr(settings_packVar), settings_packVar), true);
    }
}
