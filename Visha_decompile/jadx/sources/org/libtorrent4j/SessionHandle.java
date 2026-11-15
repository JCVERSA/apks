package org.libtorrent4j;

import java.util.ArrayList;
import java.util.List;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.int_vector;
import org.libtorrent4j.swig.portmap_protocol;
import org.libtorrent4j.swig.remove_flags_t;
import org.libtorrent4j.swig.reopen_network_flags_t;
import org.libtorrent4j.swig.save_state_flags_t;
import org.libtorrent4j.swig.session_flags_t;
import org.libtorrent4j.swig.session_handle;
import org.libtorrent4j.swig.status_flags_t;
import org.libtorrent4j.swig.torrent_handle;
import org.libtorrent4j.swig.torrent_handle_vector;

public final class SessionHandle extends SwigObject<session_handle> {
    public static final int DHT_ANNOUNCE_IMPLIED_PORT = 2;
    public static final int DHT_ANNOUNCE_SEED = 1;
    public static final int DHT_ANNOUNCE_SSL_TORRENT = 4;
    public static final portmap_protocol UDP = session_handle.udp;
    public static final portmap_protocol TCP = session_handle.tcp;
    public static final save_state_flags_t SAVE_SETTINGS = session_handle.save_settings;
    public static final save_state_flags_t SAVE_DHT_STATE = session_handle.save_dht_state;
    public static final save_state_flags_t SAVE_EXTENSION_STATE = session_handle.save_extension_state;
    public static final save_state_flags_t SAVE_IP_FILTER = session_handle.save_ip_filter;
    public static final remove_flags_t DELETE_FILES = session_handle.delete_files;
    public static final remove_flags_t DELETE_PARTFILE = session_handle.delete_partfile;
    public static final session_flags_t PAUSED = session_handle.paused;
    public static final reopen_network_flags_t REOPEN_MAP_PORTS = session_handle.reopen_map_ports;

    public SessionHandle(session_handle session_handleVar) {
        super(session_handleVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addDhtNode(Pair<String, Integer> pair) {
        ((session_handle) this.h).add_dht_node(pair.to_string_int_pair());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int[] addPortMapping(PortmapProtocol portmapProtocol, int i, int i2) {
        int_vector int_vectorVarAdd_port_mapping_ex = ((session_handle) this.h).add_port_mapping_ex(portmap_protocol.swigToEnum(portmapProtocol.swig()), i, i2);
        int size = int_vectorVarAdd_port_mapping_ex.size();
        int[] iArr = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            iArr[i3] = int_vectorVarAdd_port_mapping_ex.get(i3).intValue();
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TorrentHandle addTorrent(AddTorrentParams addTorrentParams, ErrorCode errorCode) {
        error_code error_codeVar = new error_code();
        TorrentHandle torrentHandle = new TorrentHandle(((session_handle) this.h).add_torrent(addTorrentParams.swig(), error_codeVar));
        errorCode.assign(error_codeVar);
        return torrentHandle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void applySettings(SettingsPack settingsPack) {
        ((session_handle) this.h).apply_settings(settingsPack.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void asyncAddTorrent(AddTorrentParams addTorrentParams) {
        ((session_handle) this.h).async_add_torrent(addTorrentParams.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void deletePortMapping(int i) {
        ((session_handle) this.h).delete_port_mapping_ex(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dhtAnnounce(Sha1Hash sha1Hash, int i, byte b) {
        ((session_handle) this.h).dht_announce_ex(sha1Hash.swig(), i, b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dhtDirectRequest(UdpEndpoint udpEndpoint, Entry entry, long j) {
        ((session_handle) this.h).dht_direct_request(udpEndpoint.swig(), entry.swig(), j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dhtGetItem(Sha1Hash sha1Hash) {
        ((session_handle) this.h).dht_get_item(sha1Hash.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dhtGetPeers(Sha1Hash sha1Hash) {
        ((session_handle) this.h).dht_get_peers(sha1Hash.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Sha1Hash dhtPutItem(Entry entry) {
        return new Sha1Hash(((session_handle) this.h).dht_put_item(entry.swig()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TorrentHandle findTorrent(Sha1Hash sha1Hash) {
        torrent_handle torrent_handleVarFind_torrent = ((session_handle) this.h).find_torrent(sha1Hash.swig());
        if (torrent_handleVarFind_torrent == null || !torrent_handleVarFind_torrent.is_valid()) {
            return null;
        }
        return new TorrentHandle(torrent_handleVarFind_torrent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getListenPort() {
        return ((session_handle) this.h).listen_port();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getSslListenPort() {
        return ((session_handle) this.h).ssl_listen_port();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isDhtRunning() {
        return ((session_handle) this.h).is_dht_running();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isListening() {
        return ((session_handle) this.h).is_listening();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isPaused() {
        return ((session_handle) this.h).is_paused();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isValid() {
        return ((session_handle) this.h).is_valid();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void pause() {
        ((session_handle) this.h).pause();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void postDhtStats() {
        ((session_handle) this.h).post_dht_stats();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void postSessionStats() {
        ((session_handle) this.h).post_session_stats();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void postTorrentUpdates(status_flags_t status_flags_tVar) {
        ((session_handle) this.h).post_torrent_updates(status_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeTorrent(TorrentHandle torrentHandle, remove_flags_t remove_flags_tVar) {
        if (torrentHandle.isValid()) {
            ((session_handle) this.h).remove_torrent(torrentHandle.swig(), remove_flags_tVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void reopenNetworkSockets(reopen_network_flags_t reopen_network_flags_tVar) {
        ((session_handle) this.h).reopen_network_sockets(reopen_network_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void resume() {
        ((session_handle) this.h).resume();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SessionParams sessionState(save_state_flags_t save_state_flags_tVar) {
        return new SessionParams(((session_handle) this.h).session_state(save_state_flags_tVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SettingsPack settings() {
        return new SettingsPack(((session_handle) this.h).get_settings());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<TorrentHandle> torrents() {
        torrent_handle_vector torrent_handle_vectorVar = ((session_handle) this.h).get_torrents();
        int size = torrent_handle_vectorVar.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new TorrentHandle(torrent_handle_vectorVar.get(i)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dhtAnnounce(Sha1Hash sha1Hash) {
        ((session_handle) this.h).dht_announce_ex(sha1Hash.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dhtDirectRequest(UdpEndpoint udpEndpoint, Entry entry) {
        ((session_handle) this.h).dht_direct_request(udpEndpoint.swig(), entry.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dhtGetItem(byte[] bArr, byte[] bArr2) {
        ((session_handle) this.h).dht_get_item(Vectors.bytes2byte_array_32(bArr), Vectors.bytes2byte_vector(bArr2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dhtPutItem(byte[] bArr, byte[] bArr2, Entry entry, byte[] bArr3) {
        ((session_handle) this.h).dht_put_item(Vectors.bytes2byte_array_32(bArr), Vectors.bytes2byte_array_64(bArr2), entry.swig(), Vectors.bytes2byte_vector(bArr3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void postTorrentUpdates() {
        ((session_handle) this.h).post_torrent_updates();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void reopenNetworkSockets() {
        ((session_handle) this.h).reopen_network_sockets();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SessionParams sessionState() {
        return new SessionParams(((session_handle) this.h).session_state());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeTorrent(TorrentHandle torrentHandle) {
        if (torrentHandle.isValid()) {
            ((session_handle) this.h).remove_torrent(torrentHandle.swig());
        }
    }
}
