package org.libtorrent4j;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.libtorrent4j.swig.add_torrent_params;
import org.libtorrent4j.swig.error_code;
import org.libtorrent4j.swig.int_vector;
import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.storage_mode_t;
import org.libtorrent4j.swig.string_int_pair;
import org.libtorrent4j.swig.string_int_pair_vector;
import org.libtorrent4j.swig.string_vector;
import org.libtorrent4j.swig.tcp_endpoint_vector;
import org.libtorrent4j.swig.torrent_flags_t;
import org.libtorrent4j.swig.torrent_info;

public final class AddTorrentParams extends SwigObject<add_torrent_params> {
    public AddTorrentParams(add_torrent_params add_torrent_paramsVar) {
        super(add_torrent_paramsVar);
    }

    public static AddTorrentParams parseMagnetUri(String str) {
        error_code error_codeVar = new error_code();
        add_torrent_params add_torrent_paramsVar = libtorrent.parse_magnet_uri(str, error_codeVar);
        if (error_codeVar.value() == 0) {
            return new AddTorrentParams(add_torrent_paramsVar);
        }
        throw new IllegalArgumentException("Invalid magnet uri: " + error_codeVar.message());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Entry writeResumeData(AddTorrentParams addTorrentParams) {
        return new Entry(libtorrent.write_resume_data((add_torrent_params) addTorrentParams.h));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static byte[] writeResumeDataBuf(AddTorrentParams addTorrentParams) {
        return Vectors.byte_vector2bytes(libtorrent.write_resume_data_buf_ex((add_torrent_params) addTorrentParams.h));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayList<TcpEndpoint> bannedPeers() {
        tcp_endpoint_vector banned_peers = ((add_torrent_params) this.h).getBanned_peers();
        int size = banned_peers.size();
        ArrayList<TcpEndpoint> arrayList = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            arrayList.add(new TcpEndpoint(banned_peers.get(i)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Priority[] filePriorities() {
        return Priority.vector2array(((add_torrent_params) this.h).get_file_priorities());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getComment() {
        return ((add_torrent_params) this.h).getComment();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getCreatedBy() {
        return ((add_torrent_params) this.h).getCreated_by();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long getCreationDate() {
        return ((add_torrent_params) this.h).getCreation_date();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayList<Pair<String, Integer>> getDhtNodes() {
        string_int_pair_vector dht_nodes = ((add_torrent_params) this.h).getDht_nodes();
        ArrayList<Pair<String, Integer>> arrayList = new ArrayList<>(dht_nodes.size());
        for (string_int_pair string_int_pairVar : dht_nodes) {
            arrayList.add(new Pair<>(string_int_pairVar.getFirst(), Integer.valueOf(string_int_pairVar.getSecond())));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getDownloadLimit() {
        return ((add_torrent_params) this.h).getDownload_limit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public torrent_flags_t getFlags() {
        return ((add_torrent_params) this.h).getFlags();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public InfoHash getInfoHashes() {
        return new InfoHash(((add_torrent_params) this.h).getInfo_hashes());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long getLastDownload() {
        return ((add_torrent_params) this.h).getLast_download();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long getLastUpload() {
        return ((add_torrent_params) this.h).getLast_upload();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getMaxConnections() {
        return ((add_torrent_params) this.h).getMax_connections();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getMaxUploads() {
        return ((add_torrent_params) this.h).getMax_uploads();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getName() {
        return ((add_torrent_params) this.h).getName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getSavePath() {
        return ((add_torrent_params) this.h).getSave_path();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public StorageMode getStorageMode() {
        return StorageMode.fromSwig(((add_torrent_params) this.h).getStorage_mode().swigValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TorrentInfo getTorrentInfo() {
        torrent_info torrent_infoVarTi_ptr = ((add_torrent_params) this.h).ti_ptr();
        if (torrent_infoVarTi_ptr == null || !torrent_infoVarTi_ptr.is_valid()) {
            return null;
        }
        return new TorrentInfo(torrent_infoVarTi_ptr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getTrackerId() {
        return ((add_torrent_params) this.h).getTrackerid();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<Integer> getTrackerTiers() {
        return new ArrayList(((add_torrent_params) this.h).getTracker_tiers());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<String> getTrackers() {
        return new ArrayList(((add_torrent_params) this.h).getTrackers());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getUploadLimit() {
        return ((add_torrent_params) this.h).getUpload_limit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<String> getUrlSeeds() {
        return new ArrayList(((add_torrent_params) this.h).getUrl_seeds());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getVersion() {
        return ((add_torrent_params) this.h).getVersion();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayList<TcpEndpoint> peers() {
        tcp_endpoint_vector peers = ((add_torrent_params) this.h).getPeers();
        int size = peers.size();
        ArrayList<TcpEndpoint> arrayList = new ArrayList<>();
        for (int i = 0; i < size; i++) {
            arrayList.add(new TcpEndpoint(peers.get(i)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Priority[] piecePriorities() {
        return Priority.vector2array(((add_torrent_params) this.h).get_piece_priorities());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setComment(String str) {
        ((add_torrent_params) this.h).setComment(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setCreatedBy(String str) {
        ((add_torrent_params) this.h).setCreated_by(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setCreationDate(long j) {
        ((add_torrent_params) this.h).setCreation_date(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setDhtNodes(List<Pair<String, Integer>> list) {
        string_int_pair_vector string_int_pair_vectorVar = new string_int_pair_vector();
        Iterator<Pair<String, Integer>> it = list.iterator();
        while (it.hasNext()) {
            string_int_pair_vectorVar.add(it.next().to_string_int_pair());
        }
        ((add_torrent_params) this.h).setDht_nodes(string_int_pair_vectorVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setDownloadLimit(int i) {
        ((add_torrent_params) this.h).setDownload_limit(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setFlags(torrent_flags_t torrent_flags_tVar) {
        ((add_torrent_params) this.h).setFlags(torrent_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setInfoHashes(InfoHash infoHash) {
        ((add_torrent_params) this.h).setInfo_hashes(infoHash.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setLastDownload(long j) {
        ((add_torrent_params) this.h).setLast_download(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setLastUpload(long j) {
        ((add_torrent_params) this.h).setLast_upload(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setMaxConnections(int i) {
        ((add_torrent_params) this.h).setMax_connections(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setMaxUploads(int i) {
        ((add_torrent_params) this.h).setMax_uploads(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setName(String str) {
        ((add_torrent_params) this.h).setName(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSavePath(String str) {
        ((add_torrent_params) this.h).setSave_path(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setStorageMode(StorageMode storageMode) {
        ((add_torrent_params) this.h).setStorage_mode(storage_mode_t.swigToEnum(storageMode.swig()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setTorrentInfo(TorrentInfo torrentInfo) {
        ((add_torrent_params) this.h).set_ti(torrentInfo.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setTrackerId(String str) {
        ((add_torrent_params) this.h).setTrackerid(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setTrackerTiers(List<Integer> list) {
        ((add_torrent_params) this.h).setTracker_tiers(new int_vector(list));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setTrackers(List<String> list) {
        ((add_torrent_params) this.h).setTrackers(new string_vector(list));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setUploadLimit(int i) {
        ((add_torrent_params) this.h).setUpload_limit(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setUrlSeeds(List<String> list) {
        ((add_torrent_params) this.h).setUrl_seeds(new string_vector(list));
    }

    public AddTorrentParams() {
        this(new add_torrent_params());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void filePriorities(Priority[] priorityArr) {
        ((add_torrent_params) this.h).set_file_priorities(Priority.array2vector(priorityArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void piecePriorities(Priority[] priorityArr) {
        ((add_torrent_params) this.h).set_piece_priorities(Priority.array2vector(priorityArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void bannedPeers(List<TcpEndpoint> list) {
        tcp_endpoint_vector tcp_endpoint_vectorVar = new tcp_endpoint_vector();
        Iterator<TcpEndpoint> it = list.iterator();
        while (it.hasNext()) {
            tcp_endpoint_vectorVar.add(it.next().swig());
        }
        ((add_torrent_params) this.h).setBanned_peers(tcp_endpoint_vectorVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void peers(List<TcpEndpoint> list) {
        tcp_endpoint_vector tcp_endpoint_vectorVar = new tcp_endpoint_vector();
        Iterator<TcpEndpoint> it = list.iterator();
        while (it.hasNext()) {
            tcp_endpoint_vectorVar.add(it.next().swig());
        }
        ((add_torrent_params) this.h).setPeers(tcp_endpoint_vectorVar);
    }
}
