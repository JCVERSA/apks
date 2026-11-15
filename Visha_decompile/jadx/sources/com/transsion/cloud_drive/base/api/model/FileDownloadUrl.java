package com.transsion.cloud_drive.base.api.model;

import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.v95;
import defpackage.y45;
import java.time.LocalDateTime;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R$\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0004R$\u0010\u000b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\u0007\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u0004R$\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0010\u0010\u0007\u001a\u0004\b\u0011\u0010\t\"\u0004\b\u0012\u0010\u0004R$\u0010\u0013\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0014\u0010\u0007\u001a\u0004\b\u0015\u0010\t\"\u0004\b\u0016\u0010\u0004R&\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0019\u0010\u0007\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b \u0010\u0007\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\t¨\u0006&"}, d2 = {"Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;", "", "url", "", "(Ljava/lang/String;)V", "contentHash", "getContentHash$annotations", "()V", "getContentHash", "()Ljava/lang/String;", "setContentHash", "contentHashName", "getContentHashName$annotations", "getContentHashName", "setContentHashName", "crc", "getCrc$annotations", "getCrc", "setCrc", "crc64Hash", "getCrc64Hash$annotations", "getCrc64Hash", "setCrc64Hash", "expiration", "Ljava/time/LocalDateTime;", "getExpiration$annotations", "getExpiration", "()Ljava/time/LocalDateTime;", "setExpiration", "(Ljava/time/LocalDateTime;)V", PlayAudioData.TAG_SIZE, "", "getSize$annotations", "getSize", "()J", "setSize", "(J)V", "getUrl", "cloud-drive-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FileDownloadUrl {
    private String contentHash;
    private String contentHashName;
    private String crc;
    private String crc64Hash;
    private LocalDateTime expiration;
    private long size;
    private final String url;

    public FileDownloadUrl(@v95(name = "url") String str) {
        y45.j(str, "url");
        this.url = str;
        this.contentHashName = "";
        this.contentHash = "";
        this.crc64Hash = "";
        this.crc = "";
    }

    @v95(name = "content_hash")
    public static void getContentHash$annotations() {
    }

    @v95(name = "content_hash_name")
    public static void getContentHashName$annotations() {
    }

    @v95(name = "crc")
    public static void getCrc$annotations() {
    }

    @v95(name = "crc64_hash")
    public static void getCrc64Hash$annotations() {
    }

    @v95(name = "expiration")
    public static void getExpiration$annotations() {
    }

    @v95(name = PlayAudioData.TAG_SIZE)
    public static void getSize$annotations() {
    }

    public final String getContentHash() {
        return this.contentHash;
    }

    public final String getContentHashName() {
        return this.contentHashName;
    }

    public final String getCrc() {
        return this.crc;
    }

    public final String getCrc64Hash() {
        return this.crc64Hash;
    }

    public final LocalDateTime getExpiration() {
        return this.expiration;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setContentHash(String str) {
        y45.j(str, "<set-?>");
        this.contentHash = str;
    }

    public final void setContentHashName(String str) {
        y45.j(str, "<set-?>");
        this.contentHashName = str;
    }

    public final void setCrc(String str) {
        y45.j(str, "<set-?>");
        this.crc = str;
    }

    public final void setCrc64Hash(String str) {
        y45.j(str, "<set-?>");
        this.crc64Hash = str;
    }

    public final void setExpiration(LocalDateTime localDateTime) {
        this.expiration = localDateTime;
    }

    public final void setSize(long j) {
        this.size = j;
    }
}
