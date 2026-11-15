package com.hunantv.media.player.datasource.p2p;

public class HttpEndEntity {
    public int down_size;
    public int error_code;
    public int error_type;
    public int file_size;
    public String hash;
    public String ip;
    public String url;

    public String toString() {
        return "HttpEndEntity{url='" + this.url + "', ip='" + this.ip + "', hash='" + this.hash + "', error_type=" + this.error_type + ", error_code=" + this.error_code + ", down_size=" + this.down_size + ", file_size=" + this.file_size + '}';
    }
}
