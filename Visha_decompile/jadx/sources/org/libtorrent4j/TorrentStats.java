package org.libtorrent4j;

import org.libtorrent4j.swig.torrent_status;

public final class TorrentStats {
    private long allTimeDownload;
    private long allTimeUpload;
    private int downloadPayloadRate;
    private int downloadRate;
    private final IntSeries downloadRateSeries;
    private final Sha1Hash ih;
    private boolean isFinished;
    private boolean isPaused;
    private boolean isSeeding;
    private boolean isSequentialDownload;
    private int listPeers;
    private int listSeeds;
    private final int maxSamples;
    private boolean needSaveResume;
    private int numConnections;
    private int numPeers;
    private int numPieces;
    private int numSeeds;
    private float progress;
    private int progressPpm;
    private TorrentStatus.State state;
    private final IntSeries time;
    private long totalDone;
    private long totalDownload;
    private long totalPayloadDownload;
    private long totalPayloadUpload;
    private long totalUpload;
    private long totalWanted;
    private long totalWantedDone;
    private int uploadPayloadRate;
    private int uploadRate;
    private final IntSeries uploadRateSeries;

    public enum SeriesMetric {
        TIME,
        DOWNLOAD_RATE,
        UPLOAD_RATE
    }

    public TorrentStats(Sha1Hash sha1Hash, int i) {
        this.ih = sha1Hash.clone();
        this.maxSamples = i;
        this.time = new IntSeries(i);
        this.downloadRateSeries = new IntSeries(i);
        this.uploadRateSeries = new IntSeries(i);
    }

    public long allTimeDownload() {
        return this.allTimeDownload;
    }

    public long allTimeUpload() {
        return this.allTimeUpload;
    }

    public int downloadPayloadRate() {
        return this.downloadPayloadRate;
    }

    public int downloadRate() {
        return this.downloadRate;
    }

    public boolean isFinished() {
        return this.isFinished;
    }

    public boolean isPaused() {
        return this.isPaused;
    }

    public boolean isSeeding() {
        return this.isSeeding;
    }

    public boolean isSequentialDownload() {
        return this.isSequentialDownload;
    }

    public long last(SeriesMetric seriesMetric) {
        return series(seriesMetric).last();
    }

    public int listPeers() {
        return this.listPeers;
    }

    public int listSeeds() {
        return this.listSeeds;
    }

    public int maxSamples() {
        return this.maxSamples;
    }

    public boolean needSaveResume() {
        return this.needSaveResume;
    }

    public int numConnections() {
        return this.numConnections;
    }

    public int numPeers() {
        return this.numPeers;
    }

    public int numPieces() {
        return this.numPieces;
    }

    public int numSeeds() {
        return this.numSeeds;
    }

    public float progress() {
        return this.progress;
    }

    public int progressPpm() {
        return this.progressPpm;
    }

    public IntSeries series(SeriesMetric seriesMetric) {
        int iOrdinal = seriesMetric.ordinal();
        if (iOrdinal == 0) {
            return this.time;
        }
        if (iOrdinal == 1) {
            return this.downloadRateSeries;
        }
        if (iOrdinal == 2) {
            return this.uploadRateSeries;
        }
        throw new UnsupportedOperationException("metric type not supported");
    }

    public TorrentStatus.State state() {
        return this.state;
    }

    public long totalDone() {
        return this.totalDone;
    }

    public long totalDownload() {
        return this.totalDownload;
    }

    public long totalPayloadDownload() {
        return this.totalPayloadDownload;
    }

    public long totalPayloadUpload() {
        return this.totalPayloadUpload;
    }

    public long totalUpload() {
        return this.totalUpload;
    }

    public long totalWanted() {
        return this.totalWanted;
    }

    public long totalWantedDone() {
        return this.totalWantedDone;
    }

    public void update(TorrentStatus torrentStatus) {
        if (this.ih.equals(torrentStatus.getInfoHashes().getBest())) {
            this.time.add(System.currentTimeMillis());
            torrent_status torrent_statusVarSwig = torrentStatus.swig();
            this.downloadRateSeries.add(torrent_statusVarSwig.getDownload_rate());
            this.uploadRateSeries.add(torrent_statusVarSwig.getUpload_rate());
            this.totalDownload = torrent_statusVarSwig.getTotal_download();
            this.totalUpload = torrent_statusVarSwig.getTotal_upload();
            this.totalPayloadDownload = torrent_statusVarSwig.getTotal_payload_download();
            this.totalPayloadUpload = torrent_statusVarSwig.getTotal_payload_upload();
            this.totalDone = torrent_statusVarSwig.getTotal_done();
            this.totalWantedDone = torrent_statusVarSwig.getTotal_wanted_done();
            this.totalWanted = torrent_statusVarSwig.getTotal_wanted();
            this.allTimeUpload = torrent_statusVarSwig.getAll_time_upload();
            this.allTimeDownload = torrent_statusVarSwig.getAll_time_download();
            this.progress = torrent_statusVarSwig.getProgress();
            this.progressPpm = torrent_statusVarSwig.getProgress_ppm();
            this.downloadRate = torrent_statusVarSwig.getDownload_rate();
            this.uploadRate = torrent_statusVarSwig.getUpload_rate();
            this.downloadPayloadRate = torrent_statusVarSwig.getDownload_payload_rate();
            this.uploadPayloadRate = torrent_statusVarSwig.getUpload_payload_rate();
            this.numSeeds = torrent_statusVarSwig.getNum_seeds();
            this.numPeers = torrent_statusVarSwig.getNum_peers();
            this.listSeeds = torrent_statusVarSwig.getList_seeds();
            this.listPeers = torrent_statusVarSwig.getList_peers();
            this.numPieces = torrent_statusVarSwig.getNum_pieces();
            this.numConnections = torrent_statusVarSwig.getNum_connections();
            this.state = torrentStatus.state();
            this.needSaveResume = torrent_statusVarSwig.getNeed_save_resume_data().non_zero();
            this.isPaused = torrent_statusVarSwig.getFlags().and_(TorrentFlags.PAUSED).non_zero();
            this.isSequentialDownload = torrent_statusVarSwig.getFlags().and_(TorrentFlags.SEQUENTIAL_DOWNLOAD).non_zero();
            this.isSeeding = torrent_statusVarSwig.getIs_seeding();
            this.isFinished = torrent_statusVarSwig.getIs_finished();
        }
    }

    public int uploadPayloadRate() {
        return this.uploadPayloadRate;
    }

    public int uploadRate() {
        return this.uploadRate;
    }
}
