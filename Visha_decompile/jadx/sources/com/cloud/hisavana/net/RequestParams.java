package com.cloud.hisavana.net;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.y45;
import java.util.concurrent.ConcurrentHashMap;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00072\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\tR$\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR#\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R#\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00118\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0013\u001a\u0004\b\u0017\u0010\u0015R\"\u0010\u001f\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\"\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u001a\u001a\u0004\b \u0010\u001c\"\u0004\b!\u0010\u001eR\"\u0010%\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001a\u001a\u0004\b#\u0010\u001c\"\u0004\b$\u0010\u001eR\"\u0010+\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010'\u001a\u0004\b\u0012\u0010(\"\u0004\b)\u0010*R\"\u0010-\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u000b\u001a\u0004\b\n\u0010\r\"\u0004\b,\u0010\u000f¨\u0006."}, d2 = {"Lcom/cloud/hisavana/net/RequestParams;", "", MethodDecl.initName, "()V", "", "key", ES6Iterator.VALUE_PROPERTY, "Lzfb;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Ljava/lang/String;Ljava/lang/String;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "Ljava/lang/String;", "e", "()Ljava/lang/String;", "n", "(Ljava/lang/String;)V", "postBody", "Ljava/util/concurrent/ConcurrentHashMap;", "b", "Ljava/util/concurrent/ConcurrentHashMap;", "c", "()Ljava/util/concurrent/ConcurrentHashMap;", "httpHeaders", "d", "httpParams", "", "Z", GslbInterceptor.HEADER_KEY_GSLB, "()Z", CmcdData.OBJECT_TYPE_MANIFEST, "(Z)V", "isFetchFilePath", CmcdData.STREAMING_FORMAT_HLS, "o", "isUseCache", "f", CmcdData.STREAM_TYPE_LIVE, "isDownloadVideo", "", "I", "()I", "k", "(I)V", "cacheMode", "j", "adCreativeId", "adnetwork_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestParams {

    public String postBody;

    public boolean isFetchFilePath;

    public boolean isDownloadVideo;

    public final ConcurrentHashMap httpHeaders = new ConcurrentHashMap();

    public final ConcurrentHashMap httpParams = new ConcurrentHashMap();

    public boolean isUseCache = true;

    public int cacheMode = 1;

    public String adCreativeId = "";

    public final String getAdCreativeId() {
        return this.adCreativeId;
    }

    public final int getCacheMode() {
        return this.cacheMode;
    }

    public final ConcurrentHashMap getHttpHeaders() {
        return this.httpHeaders;
    }

    public final ConcurrentHashMap getHttpParams() {
        return this.httpParams;
    }

    public final String getPostBody() {
        return this.postBody;
    }

    public final boolean getIsDownloadVideo() {
        return this.isDownloadVideo;
    }

    public final boolean getIsFetchFilePath() {
        return this.isFetchFilePath;
    }

    public final boolean getIsUseCache() {
        return this.isUseCache;
    }

    public final void i(String key, String value) {
        if (key == null || value == null) {
            return;
        }
        this.httpHeaders.put(key, value);
    }

    public final void j(String str) {
        y45.j(str, "<set-?>");
        this.adCreativeId = str;
    }

    public final void k(int i) {
        this.cacheMode = i;
    }

    public final void l(boolean z) {
        this.isDownloadVideo = z;
    }

    public final void m(boolean z) {
        this.isFetchFilePath = z;
    }

    public final void n(String str) {
        this.postBody = str;
    }

    public final void o(boolean z) {
        this.isUseCache = z;
    }
}
