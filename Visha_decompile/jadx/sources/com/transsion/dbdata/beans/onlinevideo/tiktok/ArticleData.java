package com.transsion.dbdata.beans.onlinevideo.tiktok;

import com.google.gson.annotations.SerializedName;
import com.lzy.okgo.model.Progress;
import java.io.Serializable;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001d\u0018\u0000 R2\u00020\u0001:\u0001RB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010Q\u001a\u00020\u0005H\u0016R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR \u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001e\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R \u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR \u0010\u001f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0007\"\u0004\b!\u0010\tR \u0010\"\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0007\"\u0004\b$\u0010\tR \u0010%\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0007\"\u0004\b'\u0010\tR\u001e\u0010(\u001a\u00020)8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R&\u0010.\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010/8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R \u00105\u001a\u0004\u0018\u0001068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001e\u0010;\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010\u0016\"\u0004\b=\u0010\u0018R\u001e\u0010>\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010\u0016\"\u0004\b@\u0010\u0018R\u001e\u0010A\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u0016\"\u0004\bC\u0010\u0018R\u001e\u0010D\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010\u0016\"\u0004\bF\u0010\u0018R\u001e\u0010G\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010\u0016\"\u0004\bI\u0010\u0018R\u001c\u0010J\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010\u0007\"\u0004\bL\u0010\tR$\u0010N\u001a\u00020\u00142\u0006\u0010M\u001a\u00020\u0014@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bO\u0010\u0016\"\u0004\bP\u0010\u0018¨\u0006S"}, d2 = {"Lcom/transsion/dbdata/beans/onlinevideo/tiktok/ArticleData;", "Ljava/io/Serializable;", MethodDecl.initName, "()V", "docId", "", "getDocId", "()Ljava/lang/String;", "setDocId", "(Ljava/lang/String;)V", "articleClass", "getArticleClass", "setArticleClass", "title", "getTitle", "setTitle", "articleUrl", "getArticleUrl", "setArticleUrl", "publishTime", "", "getPublishTime", "()J", "setPublishTime", "(J)V", "videoInfo", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;", "getVideoInfo", "()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;", "setVideoInfo", "(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/VideoInfo;)V", "language", "getLanguage", "setLanguage", "country", "getCountry", "setCountry", Progress.TAG, "getTag", "setTag", "coverMode", "", "getCoverMode", "()I", "setCoverMode", "(I)V", "coverImageList", "", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/CoverImage;", "getCoverImageList", "()Ljava/util/List;", "setCoverImageList", "(Ljava/util/List;)V", "userInfo", "Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;", "getUserInfo", "()Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;", "setUserInfo", "(Lcom/transsion/dbdata/beans/onlinevideo/tiktok/UserInfo;)V", "videoWatchCount", "getVideoWatchCount", "setVideoWatchCount", "diggCount", "getDiggCount", "setDiggCount", "buryCount", "getBuryCount", "setBuryCount", "shareCount", "getShareCount", "setShareCount", "commentCount", "getCommentCount", "setCommentCount", "reqId", "getReqId", "setReqId", ES6Iterator.VALUE_PROPERTY, "playPosition", "getPlayPosition", "setPlayPosition", "toString", "Companion", "dbdata_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ArticleData implements Serializable {
    private static final long serialVersionUID = 1;

    @SerializedName("article_class")
    private String articleClass;

    @SerializedName("article_url")
    private String articleUrl;

    @SerializedName("bury_count")
    private long buryCount;

    @SerializedName("comment_count")
    private long commentCount;

    @SerializedName("country")
    private String country;

    @SerializedName("cover_image_list")
    private List<CoverImage> coverImageList;

    @SerializedName("cover_mode")
    private int coverMode;

    @SerializedName("digg_count")
    private long diggCount;

    @SerializedName("doc_id")
    private String docId;

    @SerializedName("language")
    private String language;
    private transient long playPosition;

    @SerializedName("publish_time")
    private long publishTime;
    private transient String reqId;

    @SerializedName("share_count")
    private long shareCount;

    @SerializedName(Progress.TAG)
    private String tag;

    @SerializedName("title")
    private String title;

    @SerializedName("user_info")
    private UserInfo userInfo;

    @SerializedName("video_info")
    private VideoInfo videoInfo;

    @SerializedName("video_watch_count")
    private long videoWatchCount;

    public final String getArticleClass() {
        return this.articleClass;
    }

    public final String getArticleUrl() {
        return this.articleUrl;
    }

    public final long getBuryCount() {
        return this.buryCount;
    }

    public final long getCommentCount() {
        return this.commentCount;
    }

    public final String getCountry() {
        return this.country;
    }

    public final List<CoverImage> getCoverImageList() {
        return this.coverImageList;
    }

    public final int getCoverMode() {
        return this.coverMode;
    }

    public final long getDiggCount() {
        return this.diggCount;
    }

    public final String getDocId() {
        return this.docId;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final long getPlayPosition() {
        return this.playPosition;
    }

    public final long getPublishTime() {
        return this.publishTime;
    }

    public final String getReqId() {
        return this.reqId;
    }

    public final long getShareCount() {
        return this.shareCount;
    }

    public final String getTag() {
        return this.tag;
    }

    public final String getTitle() {
        return this.title;
    }

    public final UserInfo getUserInfo() {
        return this.userInfo;
    }

    public final VideoInfo getVideoInfo() {
        return this.videoInfo;
    }

    public final long getVideoWatchCount() {
        return this.videoWatchCount;
    }

    public final void setArticleClass(String str) {
        this.articleClass = str;
    }

    public final void setArticleUrl(String str) {
        this.articleUrl = str;
    }

    public final void setBuryCount(long j) {
        this.buryCount = j;
    }

    public final void setCommentCount(long j) {
        this.commentCount = j;
    }

    public final void setCountry(String str) {
        this.country = str;
    }

    public final void setCoverImageList(List<CoverImage> list) {
        this.coverImageList = list;
    }

    public final void setCoverMode(int i) {
        this.coverMode = i;
    }

    public final void setDiggCount(long j) {
        this.diggCount = j;
    }

    public final void setDocId(String str) {
        this.docId = str;
    }

    public final void setLanguage(String str) {
        this.language = str;
    }

    public final void setPlayPosition(long j) {
        this.playPosition = Math.max(0L, j);
    }

    public final void setPublishTime(long j) {
        this.publishTime = j;
    }

    public final void setReqId(String str) {
        this.reqId = str;
    }

    public final void setShareCount(long j) {
        this.shareCount = j;
    }

    public final void setTag(String str) {
        this.tag = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }

    public final void setVideoInfo(VideoInfo videoInfo) {
        this.videoInfo = videoInfo;
    }

    public final void setVideoWatchCount(long j) {
        this.videoWatchCount = j;
    }

    public String toString() {
        return "ArticleData(docId=" + this.docId + ", articleClass=" + this.articleClass + ", title=" + this.title + ", articleUrl=" + this.articleUrl + ", publishTime=" + this.publishTime + ", videoInfo=" + this.videoInfo + ", language=" + this.language + ", country=" + this.country + ", tag=" + this.tag + ", coverMode=" + this.coverMode + ", coverImageList=" + this.coverImageList + ", userInfo=" + this.userInfo + ", videoWatchCount=" + this.videoWatchCount + ", diggCount=" + this.diggCount + ", buryCount=" + this.buryCount + ", shareCount=" + this.shareCount + ", commentCount=" + this.commentCount + ", playPosition=" + this.playPosition + ")";
    }
}
