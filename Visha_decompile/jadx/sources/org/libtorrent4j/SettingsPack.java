package org.libtorrent4j;

import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.settings_pack;

public final class SettingsPack extends SwigObject<settings_pack> {
    public SettingsPack(settings_pack settings_packVar) {
        super(settings_packVar);
    }

    public static SettingsPack defaultSettings() {
        return new SettingsPack(libtorrent.default_settings());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int activeChecking() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.active_checking.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int activeDhtLimit() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.active_dht_limit.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int activeDownloads() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.active_downloads.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int activeLimit() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.active_limit.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int activeLsdLimit() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.active_lsd_limit.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int activeSeeds() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.active_seeds.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int activeTrackerLimit() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.active_tracker_limit.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int alertQueueSize() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.alert_queue_size.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean anonymousMode() {
        return ((settings_pack) this.h).get_bool(settings_pack.bool_types.anonymous_mode.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void clear() {
        ((settings_pack) this.h).clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int connectionsLimit() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.connections_limit.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int downloadRateLimit() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.download_rate_limit.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getAnnouncePort() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.announce_port.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean getBoolean(int i) {
        return ((settings_pack) this.h).get_bool(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public byte[] getBytes(int i) {
        return Vectors.byte_vector2bytes(((settings_pack) this.h).get_bytes(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getDhtBootstrapNodes() {
        return ((settings_pack) this.h).get_str(settings_pack.string_types.dht_bootstrap_nodes.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getInteger(int i) {
        return ((settings_pack) this.h).get_int(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getMaxMetadataSize() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.max_metadata_size.swigValue());
    }

    public byte[] getPeerFingerprint() {
        return getBytes(settings_pack.string_types.peer_fingerprint.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getString(int i) {
        return ((settings_pack) this.h).get_str(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getWebtorrentStunServer() {
        return ((settings_pack) this.h).get_str(settings_pack.string_types.webtorrent_stun_server.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean hasValue(int i) {
        return ((settings_pack) this.h).has_val(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int inactivityTimeout() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.inactivity_timeout.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isEnableDht() {
        return ((settings_pack) this.h).get_bool(settings_pack.bool_types.enable_dht.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isEnableLsd() {
        return ((settings_pack) this.h).get_bool(settings_pack.bool_types.enable_lsd.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String listenInterfaces() {
        return ((settings_pack) this.h).get_str(settings_pack.string_types.listen_interfaces.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int maxPeerlistSize() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.max_peerlist_size.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int maxQueuedDiskBytes() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.max_queued_disk_bytes.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean seedingOutgoingConnections() {
        return ((settings_pack) this.h).get_bool(settings_pack.bool_types.seeding_outgoing_connections.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int sendBufferWatermark() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.send_buffer_watermark.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack setAnnouncePort(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.announce_port.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack setBoolean(int i, boolean z) {
        ((settings_pack) this.h).set_bool(i, z);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setBytes(int i, byte[] bArr) {
        ((settings_pack) this.h).set_bytes(i, Vectors.bytes2byte_vector(bArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setDhtBootstrapNodes(String str) {
        ((settings_pack) this.h).set_str(settings_pack.string_types.dht_bootstrap_nodes.swigValue(), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setEnableDht(boolean z) {
        ((settings_pack) this.h).set_bool(settings_pack.bool_types.enable_dht.swigValue(), z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setEnableLsd(boolean z) {
        ((settings_pack) this.h).set_bool(settings_pack.bool_types.enable_lsd.swigValue(), z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack setInteger(int i, int i2) {
        ((settings_pack) this.h).set_int(i, i2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setMaxMetadataSize(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.max_metadata_size.swigValue(), i);
    }

    public void setPeerFingerprint(byte[] bArr) {
        setBytes(settings_pack.string_types.peer_fingerprint.swigValue(), bArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack setString(int i, String str) {
        ((settings_pack) this.h).set_str(i, str);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setWebtorrentStunServer(String str) {
        ((settings_pack) this.h).set_str(settings_pack.string_types.webtorrent_stun_server.swigValue(), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int stopTrackerTimeout() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.stop_tracker_timeout.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int tickInterval() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.tick_interval.swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int uploadRateLimit() {
        return ((settings_pack) this.h).get_int(settings_pack.int_types.upload_rate_limit.swigValue());
    }

    public SettingsPack() {
        this(new settings_pack());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack activeChecking(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.active_checking.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack activeDhtLimit(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.active_dht_limit.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack activeDownloads(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.active_downloads.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack activeLimit(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.active_limit.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack activeLsdLimit(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.active_lsd_limit.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack activeSeeds(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.active_seeds.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack activeTrackerLimit(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.active_tracker_limit.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack alertQueueSize(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.alert_queue_size.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack anonymousMode(boolean z) {
        ((settings_pack) this.h).set_bool(settings_pack.bool_types.anonymous_mode.swigValue(), z);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void clear(int i) {
        ((settings_pack) this.h).clear(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack connectionsLimit(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.connections_limit.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack downloadRateLimit(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.download_rate_limit.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack inactivityTimeout(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.inactivity_timeout.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack listenInterfaces(String str) {
        ((settings_pack) this.h).set_str(settings_pack.string_types.listen_interfaces.swigValue(), str);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack maxPeerlistSize(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.max_peerlist_size.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack maxQueuedDiskBytes(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.max_queued_disk_bytes.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack seedingOutgoingConnections(boolean z) {
        ((settings_pack) this.h).set_bool(settings_pack.bool_types.seeding_outgoing_connections.swigValue(), z);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack sendBufferWatermark(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.send_buffer_watermark.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack stopTrackerTimeout(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.stop_tracker_timeout.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack tickInterval(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.tick_interval.swigValue(), i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack uploadRateLimit(int i) {
        ((settings_pack) this.h).set_int(settings_pack.int_types.upload_rate_limit.swigValue(), i);
        return this;
    }
}
