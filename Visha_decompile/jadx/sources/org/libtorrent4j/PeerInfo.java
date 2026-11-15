package org.libtorrent4j;

import org.libtorrent4j.swig.peer_info;

public class PeerInfo {
    protected String client;
    protected ConnectionType connectionType;
    protected int downSpeed;
    protected int flags;
    protected String ip;
    protected float progress;
    protected int progressPpm;
    protected byte source;
    protected long totalDownload;
    protected long totalUpload;
    protected int upSpeed;

    public enum ConnectionType {
        STANDARD_BITTORRENT(peer_info.standard_bittorrent.to_int()),
        WEB_SEED(peer_info.web_seed.to_int()),
        HTTP_SEED(peer_info.http_seed.to_int()),
        UNKNOWN(-1);

        private final int swigValue;

        ConnectionType(int i) {
            this.swigValue = i;
        }

        public static ConnectionType fromSwig(int i) {
            for (ConnectionType connectionType : (ConnectionType[]) ConnectionType.class.getEnumConstants()) {
                if (connectionType.swig() == i) {
                    return connectionType;
                }
            }
            return UNKNOWN;
        }

        public int swig() {
            return this.swigValue;
        }
    }

    public PeerInfo(peer_info peer_infoVar) {
        init(peer_infoVar);
    }

    public String client() {
        return this.client;
    }

    public ConnectionType connectionType() {
        return this.connectionType;
    }

    public int downSpeed() {
        return this.downSpeed;
    }

    public int flags() {
        return this.flags;
    }

    public void init(peer_info peer_infoVar) {
        this.client = Vectors.byte_vector2utf8(peer_infoVar.get_client());
        this.totalDownload = peer_infoVar.getTotal_download();
        this.totalUpload = peer_infoVar.getTotal_upload();
        this.flags = peer_infoVar.get_flags();
        this.source = peer_infoVar.get_source();
        this.upSpeed = peer_infoVar.getUp_speed();
        this.downSpeed = peer_infoVar.getDown_speed();
        this.connectionType = ConnectionType.fromSwig(peer_infoVar.getConnection_type().to_int());
        this.progress = peer_infoVar.getProgress();
        this.progressPpm = peer_infoVar.getProgress_ppm();
        this.ip = new TcpEndpoint(peer_infoVar.remote_endpoint()).toString();
    }

    public String ip() {
        return this.ip;
    }

    public float progress() {
        return this.progress;
    }

    public int progressPpm() {
        return this.progressPpm;
    }

    public byte source() {
        return this.source;
    }

    public long totalDownload() {
        return this.totalDownload;
    }

    public long totalUpload() {
        return this.totalUpload;
    }

    public int upSpeed() {
        return this.upSpeed;
    }
}
