package org.libtorrent4j;

import org.libtorrent4j.swig.resume_data_flags_t;
import org.libtorrent4j.swig.torrent_flags_t;
import org.libtorrent4j.swig.torrent_status;

public final class TorrentStatus implements Cloneable {
    private final torrent_status ts;

    public enum State {
        CHECKING_FILES(torrent_status.state_t.checking_files.swigValue()),
        DOWNLOADING_METADATA(torrent_status.state_t.downloading_metadata.swigValue()),
        DOWNLOADING(torrent_status.state_t.downloading.swigValue()),
        FINISHED(torrent_status.state_t.finished.swigValue()),
        SEEDING(torrent_status.state_t.seeding.swigValue()),
        CHECKING_RESUME_DATA(torrent_status.state_t.checking_resume_data.swigValue()),
        UNKNOWN(-1);

        private final int swigValue;

        State(int i) {
            this.swigValue = i;
        }

        public static State fromSwig(int i) {
            for (State state : (State[]) State.class.getEnumConstants()) {
                if (state.swig() == i) {
                    return state;
                }
            }
            return UNKNOWN;
        }

        public int swig() {
            return this.swigValue;
        }
    }

    public TorrentStatus(torrent_status torrent_statusVar) {
        this.ts = torrent_statusVar;
    }

    private static long time2millis(long j) {
        return j * 1000;
    }

    public long activeDuration() {
        return this.ts.get_active_duration();
    }

    public long addedTime() {
        return time2millis(this.ts.getAdded_time());
    }

    public long allTimeDownload() {
        return this.ts.getAll_time_download();
    }

    public long allTimeUpload() {
        return this.ts.getAll_time_upload();
    }

    public boolean announcingToDht() {
        return this.ts.getAnnouncing_to_dht();
    }

    public boolean announcingToLsd() {
        return this.ts.getAnnouncing_to_lsd();
    }

    public boolean announcingToTrackers() {
        return this.ts.getAnnouncing_to_trackers();
    }

    public int blockSize() {
        return this.ts.getBlock_size();
    }

    public long completedTime() {
        return time2millis(this.ts.getCompleted_time());
    }

    public int connectCandidates() {
        return this.ts.getConnect_candidates();
    }

    public int connectionsLimit() {
        return this.ts.getConnections_limit();
    }

    public String currentTracker() {
        return this.ts.getCurrent_tracker();
    }

    public float distributedCopies() {
        return this.ts.getDistributed_copies();
    }

    public int distributedFraction() {
        return this.ts.getDistributed_fraction();
    }

    public int distributedFullCopies() {
        return this.ts.getDistributed_full_copies();
    }

    public int downBandwidthQueue() {
        return this.ts.getDown_bandwidth_queue();
    }

    public int downloadPayloadRate() {
        return this.ts.getDownload_payload_rate();
    }

    public int downloadRate() {
        return this.ts.getDownload_rate();
    }

    public ErrorCode errorCode() {
        return new ErrorCode(this.ts.getErrc());
    }

    public long finishedDuration() {
        return this.ts.get_finished_duration();
    }

    public torrent_flags_t flags() {
        return this.ts.getFlags();
    }

    public InfoHash getInfoHashes() {
        return new InfoHash(this.ts.getInfo_hashes());
    }

    public boolean hasIncoming() {
        return this.ts.getHas_incoming();
    }

    public boolean hasMetadata() {
        return this.ts.getHas_metadata();
    }

    public boolean isFinished() {
        return this.ts.getIs_finished();
    }

    public boolean isMovingStorage() {
        return this.ts.getMoving_storage();
    }

    public boolean isSeeding() {
        return this.ts.getIs_seeding();
    }

    public long lastDownload() {
        return this.ts.get_last_download();
    }

    public long lastSeenComplete() {
        return time2millis(this.ts.getLast_seen_complete());
    }

    public long lastUpload() {
        return this.ts.get_last_upload();
    }

    public int listPeers() {
        return this.ts.getList_peers();
    }

    public int listSeeds() {
        return this.ts.getList_seeds();
    }

    public String name() {
        return this.ts.getName();
    }

    public resume_data_flags_t needSaveResumeData() {
        return this.ts.getNeed_save_resume_data();
    }

    public long nextAnnounce() {
        return this.ts.get_next_announce();
    }

    public int numComplete() {
        return this.ts.getNum_complete();
    }

    public int numConnections() {
        return this.ts.getNum_connections();
    }

    public int numIncomplete() {
        return this.ts.getNum_incomplete();
    }

    public int numPeers() {
        return this.ts.getNum_peers();
    }

    public int numPieces() {
        return this.ts.getNum_pieces();
    }

    public int numSeeds() {
        return this.ts.getNum_seeds();
    }

    public int numUploads() {
        return this.ts.getNum_uploads();
    }

    public PieceIndexBitfield pieces() {
        return new PieceIndexBitfield(this.ts.get_pieces(), this.ts);
    }

    public float progress() {
        return this.ts.getProgress();
    }

    public int progressPpm() {
        return this.ts.getProgress_ppm();
    }

    public int queuePosition() {
        return this.ts.get_queue_position();
    }

    public int seedRank() {
        return this.ts.getSeed_rank();
    }

    public long seedingDuration() {
        return this.ts.get_seeding_duration();
    }

    public State state() {
        return State.fromSwig(this.ts.getState().swigValue());
    }

    public final StorageMode storageMode() {
        return StorageMode.fromSwig(this.ts.getStorage_mode().swigValue());
    }

    public torrent_status swig() {
        return this.ts;
    }

    public long total() {
        return this.ts.getTotal();
    }

    public long totalDone() {
        return this.ts.getTotal_done();
    }

    public long totalDownload() {
        return this.ts.getTotal_download();
    }

    public long totalFailedBytes() {
        return this.ts.getTotal_failed_bytes();
    }

    public long totalPayloadDownload() {
        return this.ts.getTotal_payload_download();
    }

    public long totalPayloadUpload() {
        return this.ts.getTotal_payload_upload();
    }

    public long totalRedundantBytes() {
        return this.ts.getTotal_redundant_bytes();
    }

    public long totalUpload() {
        return this.ts.getTotal_upload();
    }

    public long totalWanted() {
        return this.ts.getTotal_wanted();
    }

    public long totalWantedDone() {
        return this.ts.getTotal_wanted_done();
    }

    public int upBandwidthQueue() {
        return this.ts.getUp_bandwidth_queue();
    }

    public int uploadPayloadRate() {
        return this.ts.getUpload_payload_rate();
    }

    public int uploadRate() {
        return this.ts.getUpload_rate();
    }

    public int uploadsLimit() {
        return this.ts.getUploads_limit();
    }

    public PieceIndexBitfield verifiedPieces() {
        return new PieceIndexBitfield(this.ts.get_verified_pieces(), this.ts);
    }

    public TorrentStatus clone() {
        return new TorrentStatus(new torrent_status(this.ts));
    }
}
