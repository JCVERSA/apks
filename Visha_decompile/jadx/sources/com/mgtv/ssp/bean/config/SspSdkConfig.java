package com.mgtv.ssp.bean.config;

import com.mgtv.json.JsonInterface;
import com.mgtv.ssp.utils.d;

public class SspSdkConfig implements JsonInterface {
    private int apiRetry;
    private String apiRetryDomain;
    private int cardInfMerge;
    private int cpRetry;
    private String cpRetryDomain;
    private String cxid;
    private int detailInfMerge;
    private String downloadServerConfig;
    private String downloadUrlHls;
    private String downloadUrlMp4;
    private DomainConfig globalConf;
    private int immersionInfMerge;
    private int lmFrontPid;
    private String loadingIcon;
    private long loadingTime;
    private String loadingTitle;
    private int maxDownloadTaskNum;
    private int maxOfflineDownloadSpeedKB;
    private String pdata;
    private int qmSdk;
    private int render;
    private String reportH5;
    private String rtype;
    private int saveBreakPoint = 0;
    private int showLoading;
    private int status;
    private int supportVip;
    private String tokenA;
    private String vipVideoHint;
    private int vodInfMerge;
    private int vodSoundOff;

    public class DomainConfig implements JsonInterface {
        public String apiDomain;
        public String apperrLogDomain;
        public String bzDomain;
        public String cpDomain;
        public String dataDomain;
        public String dsunDomain;
        public String getTokenDomain;
        public String guidDomain;
        public String playLogDomain;
        public String retryDomain;
        public String supportDomain;
        public String v2LogDomain;

        public DomainConfig() {
        }
    }

    public int getApiRetry() {
        return this.apiRetry;
    }

    public String getApiRetryDomain() {
        return this.apiRetryDomain;
    }

    public int getCardInfMerge() {
        return this.cardInfMerge;
    }

    public int getCpRetry() {
        return this.cpRetry;
    }

    public String getCpRetryDomain() {
        return this.cpRetryDomain;
    }

    public String getCxid() {
        return this.cxid;
    }

    public int getDetailInfMerge() {
        return this.detailInfMerge;
    }

    public String getDownloadServerConfig() {
        return this.downloadServerConfig;
    }

    public String getDownloadUrlHls() {
        return this.downloadUrlHls;
    }

    public String getDownloadUrlMp4() {
        return this.downloadUrlMp4;
    }

    public DomainConfig getGlobalConf() {
        return this.globalConf;
    }

    public int getImmersionInfMerge() {
        return this.immersionInfMerge;
    }

    public int getLmFrontPid() {
        return this.lmFrontPid;
    }

    public String getLoadingIcon() {
        return this.loadingIcon;
    }

    public long getLoadingTime() {
        return this.loadingTime;
    }

    public String getLoadingTitle() {
        return this.loadingTitle;
    }

    public int getMaxDownloadTaskNum() {
        return this.maxDownloadTaskNum;
    }

    public int getMaxOfflineDownloadSpeedKB() {
        return this.maxOfflineDownloadSpeedKB;
    }

    public String getPdata() {
        return this.pdata;
    }

    public int getQmSdk() {
        return this.qmSdk;
    }

    public int getRender() {
        return this.render;
    }

    public String getReportH5() {
        return d.a(this.reportH5, "MG^UNION!2022@").replace("__ABROAD__", com.hunantv.imgo.b.a.b());
    }

    public String getRtype() {
        return this.rtype;
    }

    public int getSaveBreakPoint() {
        return this.saveBreakPoint;
    }

    public int getShowLoading() {
        return this.showLoading;
    }

    public int getStatus() {
        return this.status;
    }

    public int getSupportVip() {
        return this.supportVip;
    }

    public String getTokenA() {
        return this.tokenA;
    }

    public String getVipVideoHint() {
        return this.vipVideoHint;
    }

    public int getVodInfMerge() {
        return this.vodInfMerge;
    }

    public int getVodSoundOff() {
        return this.vodSoundOff;
    }

    public void setApiRetry(int i) {
        this.apiRetry = i;
    }

    public void setApiRetryDomain(String str) {
        this.apiRetryDomain = str;
    }

    public void setCardInfMerge(int i) {
        this.cardInfMerge = i;
    }

    public void setCpRetry(int i) {
        this.cpRetry = i;
    }

    public void setCpRetryDomain(String str) {
        this.cpRetryDomain = str;
    }

    public void setCxid(String str) {
        this.cxid = str;
    }

    public void setDetailInfMerge(int i) {
        this.detailInfMerge = i;
    }

    public void setDownloadServerConfig(String str) {
        this.downloadServerConfig = str;
    }

    public void setDownloadUrlHls(String str) {
        this.downloadUrlHls = str;
    }

    public void setDownloadUrlMp4(String str) {
        this.downloadUrlMp4 = str;
    }

    public void setGlobalConf(DomainConfig domainConfig) {
        this.globalConf = domainConfig;
    }

    public void setImmersionInfMerge(int i) {
        this.immersionInfMerge = i;
    }

    public void setLmFrontPid(int i) {
        this.lmFrontPid = i;
    }

    public void setLoadingIcon(String str) {
        this.loadingIcon = str;
    }

    public void setLoadingTime(long j) {
        this.loadingTime = j;
    }

    public void setLoadingTitle(String str) {
        this.loadingTitle = str;
    }

    public void setMaxDownloadTaskNum(int i) {
        this.maxDownloadTaskNum = i;
    }

    public void setMaxOfflineDownloadSpeedKB(int i) {
        this.maxOfflineDownloadSpeedKB = i;
    }

    public void setPdata(String str) {
        this.pdata = str;
    }

    public void setQmSdk(int i) {
        this.qmSdk = i;
    }

    public void setRender(int i) {
        this.render = i;
    }

    public void setReportH5(String str) {
        this.reportH5 = str;
    }

    public void setRtype(String str) {
        this.rtype = str;
    }

    public void setSaveBreakPoint(int i) {
        this.saveBreakPoint = i;
    }

    public void setShowLoading(int i) {
        this.showLoading = i;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public void setSupportVip(int i) {
        this.supportVip = i;
    }

    public void setTokenA(String str) {
        this.tokenA = str;
    }

    public void setVipVideoHint(String str) {
        this.vipVideoHint = str;
    }

    public void setVodInfMerge(int i) {
        this.vodInfMerge = i;
    }

    public void setVodSoundOff(int i) {
        this.vodSoundOff = i;
    }
}
