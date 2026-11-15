package com.transsion.dbdata.beans.sniff;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.av3;
import defpackage.fc7;
import defpackage.r0a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SniffVideoInfoBean {
    public boolean bAsyncServerTask;
    String cookie;
    String encryptionType;
    boolean hasResources;
    private String img;
    boolean invalid;
    private int minHeight;
    private int minWidth;
    private String name;
    public String requestBody;
    public String sniffUrl;
    int source;
    private String title;
    String uaAgent;
    public String userAgent;
    String videoCover;
    private String videoFileName;
    List<VideoFileInfoBean> videoList;

    private void checkName() {
        this.videoFileName = av3.a(this.videoFileName);
    }

    public static SniffVideoInfoBean fromSniffResultBean(SniffResultBean sniffResultBean) {
        SniffVideoInfoBean sniffVideoInfoBean = new SniffVideoInfoBean();
        sniffVideoInfoBean.setVideoList(new ArrayList());
        if (sniffResultBean != null) {
            sniffVideoInfoBean.videoCover = sniffResultBean.getResourceCover();
            sniffVideoInfoBean.videoFileName = av3.a(sniffResultBean.getResourceTitle());
            sniffVideoInfoBean.requestBody = sniffResultBean.getSniffRequestBody();
            sniffVideoInfoBean.uaAgent = sniffResultBean.getUserAgent();
            sniffVideoInfoBean.cookie = sniffResultBean.getCookie();
            sniffVideoInfoBean.sniffUrl = sniffResultBean.getSniffUrl();
            sniffVideoInfoBean.bAsyncServerTask = sniffResultBean.isAsyncServerTask();
            if (r0a.g(sniffResultBean.getResourceTitle())) {
                sniffVideoInfoBean.title = System.currentTimeMillis() + Consts.DOT + "mp4";
                sniffVideoInfoBean.videoFileName = System.currentTimeMillis() + Consts.DOT + "mp4";
            } else {
                sniffVideoInfoBean.title = av3.a(sniffResultBean.getResourceTitle()) + Consts.DOT + "mp4";
                sniffVideoInfoBean.videoFileName = av3.a(sniffResultBean.getResourceTitle() + Consts.DOT + "mp4");
            }
            sniffVideoInfoBean.source = 0;
            sniffVideoInfoBean.uaAgent = sniffResultBean.getUserAgent();
            if (sniffResultBean.getVideoList() != null) {
                Iterator<SniffResultBean.Video> it = sniffResultBean.getVideoList().iterator();
                if (it.hasNext()) {
                    SniffResultBean.Video next = it.next();
                    VideoFileInfoBean videoFileInfoBean = new VideoFileInfoBean();
                    videoFileInfoBean.url = next.getUrl();
                    if (TextUtils.isEmpty(sniffVideoInfoBean.videoCover)) {
                        sniffVideoInfoBean.videoCover = next.getUrl();
                    }
                    videoFileInfoBean.size = next.getSize().intValue();
                    videoFileInfoBean.type = next.getMimeTypeString();
                    sniffVideoInfoBean.getVideoList().add(videoFileInfoBean);
                }
            }
            if (sniffResultBean.getAudioList() != null) {
                Iterator<SniffResultBean.Audio> it2 = sniffResultBean.getAudioList().iterator();
                if (it2.hasNext()) {
                    SniffResultBean.Audio next2 = it2.next();
                    VideoFileInfoBean videoFileInfoBean2 = new VideoFileInfoBean();
                    videoFileInfoBean2.url = next2.getUrl();
                    if (TextUtils.isEmpty(sniffVideoInfoBean.videoCover)) {
                        sniffVideoInfoBean.videoCover = next2.getUrl();
                    }
                    videoFileInfoBean2.size = next2.getSize().intValue();
                    videoFileInfoBean2.type = next2.getMimeTypeString();
                    sniffVideoInfoBean.getVideoList().add(videoFileInfoBean2);
                }
            }
            if (sniffResultBean.getPictureList() != null) {
                Iterator<SniffResultBean.Picture> it3 = sniffResultBean.getPictureList().iterator();
                if (it3.hasNext()) {
                    SniffResultBean.Picture next3 = it3.next();
                    VideoFileInfoBean videoFileInfoBean3 = new VideoFileInfoBean();
                    videoFileInfoBean3.url = next3.getUrl();
                    if (TextUtils.isEmpty(sniffVideoInfoBean.videoCover)) {
                        sniffVideoInfoBean.videoCover = next3.getUrl();
                    }
                    videoFileInfoBean3.size = next3.getSize().intValue();
                    videoFileInfoBean3.type = next3.getMimeTypeString();
                    sniffVideoInfoBean.getVideoList().add(videoFileInfoBean3);
                }
            }
        }
        return sniffVideoInfoBean;
    }

    public static boolean isNotEmpty(SniffVideoInfoBean sniffVideoInfoBean) {
        return fc7.c(sniffVideoInfoBean) && sniffVideoInfoBean.isNotEmpty();
    }

    public String getCookie() {
        return this.cookie;
    }

    public String getEncryptionType() {
        return this.encryptionType;
    }

    public String getFirstVideoMineType() {
        List<VideoFileInfoBean> list = this.videoList;
        return (list == null || list.size() <= 0 || this.videoList.get(0) == null) ? "MP4" : this.videoList.get(0).getType();
    }

    public String getFirstVideoResolution() {
        List<VideoFileInfoBean> list = this.videoList;
        return (list == null || list.size() <= 0 || this.videoList.get(0) == null) ? "HD" : this.videoList.get(0).getResolution();
    }

    public long getFirstVideoSize() {
        List<VideoFileInfoBean> list = this.videoList;
        if (list == null || list.size() <= 0 || this.videoList.get(0) == null) {
            return 0L;
        }
        return this.videoList.get(0).getSize();
    }

    public String getFirstVideoUrl() {
        List<VideoFileInfoBean> list = this.videoList;
        return (list == null || list.size() <= 0 || this.videoList.get(0) == null) ? "" : this.videoList.get(0).getUrl();
    }

    public int getMinHeight() {
        return this.minHeight;
    }

    public String getMinResolutionUrl() {
        int videoHeight = Integer.MAX_VALUE;
        String url = null;
        for (VideoFileInfoBean videoFileInfoBean : this.videoList) {
            if (videoHeight > videoFileInfoBean.getVideoHeight()) {
                videoHeight = videoFileInfoBean.getVideoHeight();
                this.minHeight = videoHeight;
                this.minWidth = videoFileInfoBean.getVideoWidth();
                url = videoFileInfoBean.getUrl();
            }
        }
        return url;
    }

    public int getMinWidth() {
        return this.minWidth;
    }

    public int getSource() {
        return this.source;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUaAgent() {
        return this.uaAgent;
    }

    public String getVideoCover() {
        if (r0a.g(this.videoCover) && !r0a.g(this.img)) {
            this.videoCover = this.img;
        }
        return this.videoCover;
    }

    public String getVideoFileName() {
        if (r0a.g(this.videoFileName) && (!r0a.g(this.name) || !r0a.g(this.title))) {
            this.videoFileName = av3.a(this.name);
        }
        return this.videoFileName;
    }

    public List<VideoFileInfoBean> getVideoList() {
        return this.videoList;
    }

    public boolean isCanDownload() {
        return this.hasResources;
    }

    public boolean isInvalid() {
        return this.invalid;
    }

    public void setCookie(String str) {
        this.cookie = str;
    }

    public void setEncryptionType(String str) {
        this.encryptionType = str;
    }

    public void setHasResources(boolean z) {
        this.hasResources = z;
    }

    public void setInvalid(boolean z) {
        this.invalid = z;
    }

    public void setSource(int i) {
        this.source = i;
    }

    public void setTitle(String str) {
        this.title = av3.a(str);
    }

    public void setUaAgent(String str) {
        this.uaAgent = str;
    }

    public void setVideoCover(String str) {
        this.videoCover = str;
    }

    public void setVideoFileName(String str) {
        if (r0a.g(str)) {
            return;
        }
        this.videoFileName = str;
        checkName();
    }

    public void setVideoList(List<VideoFileInfoBean> list) {
        this.videoList = list;
    }

    @NonNull
    public String toString() {
        return "SniffVideoInfoBean{videoFileName='" + this.videoFileName + "', videoCover='" + this.videoCover + "'，name='" + this.name + "', img='" + this.img + "', encryptionType='" + this.encryptionType + "', hasResources=" + this.hasResources + ", videoList=" + this.videoList + ", minWidth=" + this.minWidth + ", minHeight=" + this.minHeight + ", source=" + this.source + ", uaAgent='" + this.uaAgent + "'}";
    }

    public boolean isNotEmpty() {
        List<VideoFileInfoBean> list = this.videoList;
        return list != null && list.size() > 0;
    }
}
