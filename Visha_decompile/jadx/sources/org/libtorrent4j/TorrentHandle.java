package org.libtorrent4j;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.libtorrent4j.swig.add_piece_flags_t;
import org.libtorrent4j.swig.announce_entry_vector;
import org.libtorrent4j.swig.deadline_flags_t;
import org.libtorrent4j.swig.file_progress_flags_t;
import org.libtorrent4j.swig.int64_vector;
import org.libtorrent4j.swig.int_vector;
import org.libtorrent4j.swig.libtorrent;
import org.libtorrent4j.swig.partial_piece_info_vector;
import org.libtorrent4j.swig.peer_info_vector;
import org.libtorrent4j.swig.reannounce_flags_t;
import org.libtorrent4j.swig.resume_data_flags_t;
import org.libtorrent4j.swig.status_flags_t;
import org.libtorrent4j.swig.torrent_flags_t;
import org.libtorrent4j.swig.torrent_handle;
import org.libtorrent4j.swig.torrent_info;

public final class TorrentHandle extends SwigObject<torrent_handle> {
    private static final long REQUEST_STATUS_RESOLUTION_MILLIS = 500;
    private TorrentStatus lastStatus;
    private long lastStatusRequestTime;
    private static final status_flags_t STATUS_FLAGS_ZERO = new status_flags_t();
    public static final add_piece_flags_t OVERWRITE_EXISTING = torrent_handle.overwrite_existing;
    public static final status_flags_t QUERY_DISTRIBUTED_COPIES = torrent_handle.query_distributed_copies;
    public static final status_flags_t QUERY_ACCURATE_DOWNLOAD_COUNTERS = torrent_handle.query_accurate_download_counters;
    public static final status_flags_t QUERY_LAST_SEEN_COMPLETE = torrent_handle.query_last_seen_complete;
    public static final status_flags_t QUERY_PIECES = torrent_handle.query_pieces;
    public static final status_flags_t QUERY_VERIFIED_PIECES = torrent_handle.query_verified_pieces;
    public static final status_flags_t QUERY_TORRENT_FILE = torrent_handle.query_torrent_file;
    public static final status_flags_t QUERY_NAME = torrent_handle.query_name;
    public static final status_flags_t QUERY_SAVE_PATH = torrent_handle.query_save_path;
    public static final resume_data_flags_t FLUSH_DISK_CACHE = torrent_handle.flush_disk_cache;
    public static final resume_data_flags_t SAVE_INFO_DICT = torrent_handle.save_info_dict;
    public static final resume_data_flags_t ONLY_IF_MODIFIED = torrent_handle.only_if_modified;
    public static final reannounce_flags_t IGNORE_MIN_INTERVAL = torrent_handle.ignore_min_interval;
    public static final deadline_flags_t ALERT_WHEN_AVAILABLE = torrent_handle.alert_when_available;
    public static final file_progress_flags_t PIECE_GRANULARITY = torrent_handle.piece_granularity;

    public TorrentHandle(torrent_handle torrent_handleVar) {
        super(torrent_handleVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addPiece(int i, byte[] bArr, add_piece_flags_t add_piece_flags_tVar) {
        ((torrent_handle) this.h).add_piece_bytes(i, Vectors.bytes2byte_vector(bArr), add_piece_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addTracker(AnnounceEntry announceEntry) {
        ((torrent_handle) this.h).add_tracker(announceEntry.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addUrlSeed(String str) {
        ((torrent_handle) this.h).add_url_seed(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void clearPieceDeadlines() {
        ((torrent_handle) this.h).clear_piece_deadlines();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean equals(Object obj) {
        if (obj instanceof TorrentHandle) {
            return ((torrent_handle) this.h).eq((torrent_handle) ((TorrentHandle) obj).h);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Priority[] filePriorities() {
        return Priority.vector2array(((torrent_handle) this.h).get_file_priorities_ex());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void filePriority(int i, Priority priority) {
        ((torrent_handle) this.h).file_priority_ex(i, priority.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long[] fileProgress(file_progress_flags_t file_progress_flags_tVar) {
        int64_vector int64_vectorVar = new int64_vector();
        ((torrent_handle) this.h).file_progress(int64_vectorVar, file_progress_flags_tVar);
        return Vectors.int64_vector2longs(int64_vectorVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void flushCache() {
        ((torrent_handle) this.h).flush_cache();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceDHTAnnounce() {
        ((torrent_handle) this.h).force_dht_announce();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceLSDAnnounce() {
        ((torrent_handle) this.h).force_lsd_announce();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceReannounce(int i, int i2, reannounce_flags_t reannounce_flags_tVar) {
        ((torrent_handle) this.h).force_reannounce(i, i2, reannounce_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceRecheck() {
        ((torrent_handle) this.h).force_recheck();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getDownloadLimit() {
        return ((torrent_handle) this.h).download_limit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrayList<PartialPieceInfo> getDownloadQueue() {
        partial_piece_info_vector partial_piece_info_vectorVar = new partial_piece_info_vector();
        ((torrent_handle) this.h).get_download_queue(partial_piece_info_vectorVar);
        int size = partial_piece_info_vectorVar.size();
        ArrayList<PartialPieceInfo> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new PartialPieceInfo(partial_piece_info_vectorVar.get(i)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public torrent_flags_t getFlags() {
        return ((torrent_handle) this.h).flags();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String getName() {
        return ((torrent_handle) this.h).status(torrent_handle.query_name).getName();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int getUploadLimit() {
        return ((torrent_handle) this.h).upload_limit();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        return Long.hashCode(((torrent_handle) this.h).id());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean havePiece(int i) {
        return ((torrent_handle) this.h).have_piece(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean inSession() {
        return ((torrent_handle) this.h).in_session();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Sha1Hash infoHash() {
        return new Sha1Hash(((torrent_handle) this.h).info_hash());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isValid() {
        return ((torrent_handle) this.h).is_valid();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String makeMagnetUri() {
        if (((torrent_handle) this.h).is_valid()) {
            return libtorrent.make_magnet_uri_from_torrent_handle((torrent_handle) this.h);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void moveStorage(String str, MoveFlags moveFlags) {
        ((torrent_handle) this.h).move_storage(str, moveFlags.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean needSaveResumeData() {
        return ((torrent_handle) this.h).need_save_resume_data();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void pause() {
        ((torrent_handle) this.h).pause();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<PeerInfo> peerInfo() {
        if (!((torrent_handle) this.h).is_valid()) {
            return new ArrayList();
        }
        peer_info_vector peer_info_vectorVar = new peer_info_vector();
        ((torrent_handle) this.h).get_peer_info(peer_info_vectorVar);
        int size = peer_info_vectorVar.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new PeerInfo(peer_info_vectorVar.get(i)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int[] pieceAvailability() {
        int_vector int_vectorVar = new int_vector();
        ((torrent_handle) this.h).piece_availability(int_vectorVar);
        return Vectors.int_vector2ints(int_vectorVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Priority[] piecePriorities() {
        return Priority.vector2array(((torrent_handle) this.h).get_piece_priorities_ex());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void piecePriority(int i, Priority priority) {
        ((torrent_handle) this.h).piece_priority_ex(i, priority.swig());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void prioritizeFiles(Priority[] priorityArr) {
        ((torrent_handle) this.h).prioritize_files_ex(Priority.array2vector(priorityArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void prioritizePieces(Priority[] priorityArr) {
        ((torrent_handle) this.h).prioritize_pieces_ex(Priority.array2vector(priorityArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int queuePosition() {
        return ((torrent_handle) this.h).queue_position_ex();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void queuePositionBottom() {
        ((torrent_handle) this.h).queue_position_bottom();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void queuePositionDown() {
        ((torrent_handle) this.h).queue_position_down();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void queuePositionSet(int i) {
        ((torrent_handle) this.h).queue_position_set_ex(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void queuePositionTop() {
        ((torrent_handle) this.h).queue_position_top();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void queuePositionUp() {
        ((torrent_handle) this.h).queue_position_up();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void readPiece(int i) {
        ((torrent_handle) this.h).read_piece(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void removeUrlSeed(String str) {
        ((torrent_handle) this.h).remove_url_seed(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void renameFile(int i, String str) {
        ((torrent_handle) this.h).rename_file(i, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void replaceTrackers(List<AnnounceEntry> list) {
        announce_entry_vector announce_entry_vectorVar = new announce_entry_vector();
        Iterator<AnnounceEntry> it = list.iterator();
        while (it.hasNext()) {
            announce_entry_vectorVar.add(it.next().swig());
        }
        ((torrent_handle) this.h).replace_trackers(announce_entry_vectorVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void resetPieceDeadline(int i) {
        ((torrent_handle) this.h).reset_piece_deadline(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void resume() {
        ((torrent_handle) this.h).resume();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String savePath() {
        return ((torrent_handle) this.h).status(torrent_handle.query_save_path).getSave_path();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void saveResumeData(resume_data_flags_t resume_data_flags_tVar) {
        ((torrent_handle) this.h).save_resume_data(resume_data_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void scrapeTracker(int i) {
        ((torrent_handle) this.h).scrape_tracker(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setDownloadLimit(int i) {
        ((torrent_handle) this.h).set_download_limit(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setFlags(torrent_flags_t torrent_flags_tVar, torrent_flags_t torrent_flags_tVar2) {
        ((torrent_handle) this.h).set_flags(torrent_flags_tVar, torrent_flags_tVar2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setPieceDeadline(int i, int i2) {
        ((torrent_handle) this.h).set_piece_deadline(i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSequentialRange(int i, int i2) {
        ((torrent_handle) this.h).set_sequential_range(i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSslCertificate(String str, String str2, String str3) {
        ((torrent_handle) this.h).set_ssl_certificate(str, str2, str3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSslCertificateBuffer(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        ((torrent_handle) this.h).set_ssl_certificate_buffer_ex(Vectors.bytes2byte_vector(bArr), Vectors.bytes2byte_vector(bArr2), Vectors.bytes2byte_vector(bArr3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setUploadLimit(int i) {
        ((torrent_handle) this.h).set_upload_limit(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TorrentStatus status(boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z || jCurrentTimeMillis - this.lastStatusRequestTime >= 500) {
            this.lastStatusRequestTime = jCurrentTimeMillis;
            this.lastStatus = new TorrentStatus(((torrent_handle) this.h).status(STATUS_FLAGS_ZERO));
        }
        return this.lastStatus;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TorrentInfo torrentFile() {
        torrent_info torrent_infoVar;
        if (((torrent_handle) this.h).is_valid() && (torrent_infoVar = ((torrent_handle) this.h).torrent_file_ptr()) != null) {
            return new TorrentInfo(torrent_infoVar);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<AnnounceEntry> trackers() {
        return !((torrent_handle) this.h).is_valid() ? Collections.emptyList() : trackers(((torrent_handle) this.h).trackers());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void unsetFlags(torrent_flags_t torrent_flags_tVar) {
        ((torrent_handle) this.h).unset_flags(torrent_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<String> urlSeeds() {
        return Vectors.string_vector2list(((torrent_handle) this.h).get_url_seeds());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addPiece(int i, byte[] bArr) {
        ((torrent_handle) this.h).add_piece_bytes(i, Vectors.bytes2byte_vector(bArr));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Priority filePriority(int i) {
        return Priority.fromSwig(((torrent_handle) this.h).file_priority_ex(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceReannounce(int i, int i2) {
        ((torrent_handle) this.h).force_reannounce(i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void moveStorage(String str) {
        ((torrent_handle) this.h).move_storage(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Priority piecePriority(int i) {
        return Priority.fromSwig(((torrent_handle) this.h).piece_priority_ex(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void saveResumeData() {
        ((torrent_handle) this.h).save_resume_data();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void scrapeTracker(String str) {
        ((torrent_handle) this.h).scrape_tracker(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setFlags(torrent_flags_t torrent_flags_tVar) {
        ((torrent_handle) this.h).set_flags(torrent_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setPieceDeadline(int i, int i2, deadline_flags_t deadline_flags_tVar) {
        ((torrent_handle) this.h).set_piece_deadline(i, i2, deadline_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSequentialRange(int i) {
        ((torrent_handle) this.h).set_sequential_range(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSslCertificate(String str, String str2, String str3, String str4) {
        ((torrent_handle) this.h).set_ssl_certificate(str, str2, str3, str4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceReannounce(int i, String str, reannounce_flags_t reannounce_flags_tVar) {
        ((torrent_handle) this.h).force_reannounce(i, str, reannounce_flags_tVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void scrapeTracker() {
        ((torrent_handle) this.h).scrape_tracker();
    }

    private static ArrayList<AnnounceEntry> trackers(announce_entry_vector announce_entry_vectorVar) {
        int size = announce_entry_vectorVar.size();
        ArrayList<AnnounceEntry> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new AnnounceEntry(announce_entry_vectorVar.get(i)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long[] fileProgress() {
        int64_vector int64_vectorVar = new int64_vector();
        ((torrent_handle) this.h).file_progress(int64_vectorVar);
        return Vectors.int64_vector2longs(int64_vectorVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceReannounce(int i, String str) {
        ((torrent_handle) this.h).force_reannounce(i, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceReannounce(int i) {
        ((torrent_handle) this.h).force_reannounce(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceReannounce() {
        ((torrent_handle) this.h).force_reannounce();
    }

    public TorrentStatus status() {
        return status(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TorrentStatus status(status_flags_t status_flags_tVar) {
        return new TorrentStatus(((torrent_handle) this.h).status(status_flags_tVar));
    }
}
