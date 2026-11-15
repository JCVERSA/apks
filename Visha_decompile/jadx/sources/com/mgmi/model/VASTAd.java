package com.mgmi.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.HttpHeaders;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class VASTAd implements Parcelable {
    public static final Parcelable.Creator<VASTAd> CREATOR = new Parcelable.Creator<VASTAd>() {
        @Override
        public VASTAd createFromParcel(Parcel parcel) {
            VASTAd vASTAd = new VASTAd();
            vASTAd.mTrackingEventMap = parcel.readHashMap(Map.class.getClassLoader());
            vASTAd.mediaFiles = parcel.readArrayList(VASTMediaFile.class.getClassLoader());
            vASTAd.staticResources = parcel.readArrayList(VASTStaticResource.class.getClassLoader());
            vASTAd.landAdLog = parcel.readInt();
            return vASTAd;
        }

        @Override
        public VASTAd[] newArray(int i) {
            return new VASTAd[i];
        }
    };
    private static final String DEFAULT_KEY = "[DEFAULT]";
    private int AdRollTime;
    private String InteractJsonM;
    private String MgMiniProgramUrl;
    private String action;
    private String adOrigin;
    private int adStyle;
    private String adlosturl;
    private String bid;
    private com.mgmi.e.a bidResult;
    private String channelId;
    private int cid;
    protected String clk_trac_macro;
    protected String clk_trac_value;
    private List<e> companionPlusList;
    private String contLabel;
    private String countDownId;
    private VASTMediaFile currentMediaFile;
    private VASTStaticResource currentStaticResource;
    private int delayRand;
    private String discription;
    private int duration;
    private int errorReportType;
    public String extra_type;
    private boolean hasPosition;
    private boolean hasSendCompleteTrackings;
    private boolean hasSendFirstQuartileTrackings;
    private boolean hasSendImpression;
    private boolean hasSendMidpointTrackings;
    private boolean hasSendSkipeTrackings;
    private boolean hasSendStartTrackings;
    private boolean hasSendThirdQuartileTrackings;
    private HeadInfo headInfo;
    private int height;
    public int imp_tp;
    private boolean isLoadFail;
    private boolean isMk;
    private s mButtonObject;
    private e mCompanions;
    private List<i> mInteractItemInfos;
    protected int mMIDAdTotalTime;
    private boolean mSelfRender;
    protected boolean mSupoortClick;
    private List<i> mVastAdPres;
    private int mid;
    public int msg_box;
    private long nt;
    private String orginTargetURI;
    private int pair_id;
    private String planId;
    public int pre_play;
    private String rainId;
    public String reportUrl;
    public int req_type;
    protected boolean resDoanlowdSuccess;
    public int show_type;
    private int skipTimeout;
    private Map<String, List<com.mgmi.net.bean.c>> skipTrackingBeen;
    private String sspPrice;
    private String taskId;
    private String title;
    public int tkct;
    private int vastAid;
    private String vastTargetStyle;
    private String vastTargetURI;
    private Clicks videoClick;
    public int vip_show;
    private String voiceSrc;
    private int width;
    private d zipOnline;
    private boolean supportChangeColor = true;
    private int displayWdith = -5;
    private int displayHeight = -5;
    private long expire = 0;
    private String mAdtype = "none";
    public String resInfo = "";
    private int mFlowWifiState = 1;
    private int mFlow_cellular = 1;
    private int roolTime = 0;
    private int close = 0;
    private boolean hasSendResourceInflat = false;
    private int mShowAdLog = 0;
    private int ad_timer = 1;
    private int dao_time = 5;
    public int back_btn = -1;
    public int voice_btn = -1;
    public int clk_btn = -1;
    public int clk_area = -1;
    private String clk_macro = "";
    private int stPreTime = 3;
    private int autoLand = 0;
    private int landAdLog = 0;
    private int SchGuideM = 0;
    private int SchGuideA = 0;
    protected String mInsertTime = null;
    private String adFrom = "mgtv";
    private List<VASTMediaFile> mediaFiles = new ArrayList();
    private List<VASTStaticResource> staticResources = new ArrayList();
    private final List<String> errors = new ArrayList();
    private List<String> traceUrls = new ArrayList();
    private final Map<String, List<String>> mImpressionMap = new HashMap();
    private Map<String, Map<String, List<String>>> mTrackingEventMap = new HashMap();
    private List<String> winNotices = new ArrayList();
    private List<String> lossNotices = new ArrayList();

    private List<String> getListFromMap(Map<String, List<String>> map, String str) {
        if (map == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_KEY;
        }
        List<String> list = map.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        map.put(str, arrayList);
        return arrayList;
    }

    private Map<String, List<String>> getMapFromMap(Map<String, Map<String, List<String>>> map, String str) {
        if (map == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_KEY;
        }
        Map<String, List<String>> map2 = map.get(str);
        if (map2 != null) {
            return map2;
        }
        HashMap map3 = new HashMap();
        map.put(str, map3);
        return map3;
    }

    private boolean isListEmpty(Map<String, List<String>> map, String str) {
        if (map == null || map.isEmpty()) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_KEY;
        }
        List<String> list = map.get(str);
        return list == null || list.isEmpty();
    }

    public void addCommonCompanionPlus(e eVar) {
        if (this.companionPlusList == null) {
            this.companionPlusList = new ArrayList();
        }
        this.companionPlusList.add(eVar);
    }

    public void addCompanionNative(d dVar) {
        if (this.mCompanions == null) {
            this.mCompanions = new e();
        }
        this.mCompanions.a(dVar);
    }

    public void addCompanionZipOnline(d dVar) {
        if (this.mCompanions == null) {
            this.mCompanions = new e();
        }
        this.mCompanions.a(dVar);
    }

    public void addError(String str) {
        this.errors.add(str);
    }

    public void addImpression(String str, String str2) {
        List<String> listFromMap;
        if (TextUtils.isEmpty(str2) || (listFromMap = getListFromMap(this.mImpressionMap, str)) == null || listFromMap.contains(str2)) {
            return;
        }
        listFromMap.add(str2);
    }

    public void addLossNotices(String str) {
        this.lossNotices.add(str);
    }

    public void addMediafile(VASTMediaFile vASTMediaFile) {
        this.mediaFiles.add(vASTMediaFile);
    }

    public void addStaticResource(VASTStaticResource vASTStaticResource) {
        this.staticResources.add(vASTStaticResource);
    }

    public void addTraceCheck(String str) {
        if (this.traceUrls == null) {
            this.traceUrls = new ArrayList();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.traceUrls.add(str);
    }

    public void addTrackingEvent(String str, String str2, String str3) {
        List<String> trackingEventList = getTrackingEventList(str, str2);
        if (trackingEventList == null || trackingEventList.contains(str3)) {
            return;
        }
        trackingEventList.add(str3);
    }

    public void addTrackingEventBean(String str, com.mgmi.net.bean.c cVar) {
        if (this.skipTrackingBeen == null) {
            this.skipTrackingBeen = new HashMap();
        }
        if (str == null || TextUtils.isEmpty(str)) {
            str = DEFAULT_KEY;
        }
        List<com.mgmi.net.bean.c> arrayList = this.skipTrackingBeen.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.skipTrackingBeen.put(str, arrayList);
        }
        arrayList.add(cVar);
    }

    public void addWinNotices(String str) {
        this.winNotices.add(str);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String getAction() {
        return this.action;
    }

    public String getAdFrom() {
        return this.adFrom;
    }

    public String getAdOrigin() {
        return this.adOrigin;
    }

    public int getAdRollTime() {
        return this.AdRollTime;
    }

    public int getAdStyle() {
        return this.adStyle;
    }

    public int getAd_timer() {
        return this.ad_timer;
    }

    public String getAdlosturl() {
        return this.adlosturl;
    }

    public List<VASTStaticResource> getAllStaticResource() {
        if (this.staticResources.isEmpty()) {
            return null;
        }
        return this.staticResources;
    }

    public int getAutoLand() {
        return this.autoLand;
    }

    public int getBack_btn() {
        return this.back_btn;
    }

    public String getBid() {
        return this.bid;
    }

    public com.mgmi.e.a getBidResult() {
        return this.bidResult;
    }

    public s getButtonObject() {
        return this.mButtonObject;
    }

    public String getChannelId() {
        return this.channelId;
    }

    public int getCid() {
        return this.cid;
    }

    public int getClk_area() {
        return this.clk_area;
    }

    public int getClk_btn() {
        return this.clk_btn;
    }

    public String getClk_macro() {
        return this.clk_macro;
    }

    public String getClk_trac_macro() {
        return this.clk_trac_macro;
    }

    public String getClk_trac_value() {
        return this.clk_trac_value;
    }

    public int getClose() {
        return this.close;
    }

    public List<e> getCommonPlusList() {
        return this.companionPlusList;
    }

    public String getContLabel() {
        return this.contLabel;
    }

    public String getCountDownId() {
        return this.countDownId;
    }

    public VASTMediaFile getCurrentMediaFile() {
        if (this.mediaFiles.isEmpty()) {
            return null;
        }
        VASTMediaFile vASTMediaFile = this.currentMediaFile;
        if (vASTMediaFile != null) {
            return vASTMediaFile;
        }
        VASTMediaFile vASTMediaFile2 = this.mediaFiles.get(0);
        this.currentMediaFile = vASTMediaFile2;
        return vASTMediaFile2;
    }

    public VASTStaticResource getCurrentStaticResource() {
        if (this.staticResources.isEmpty()) {
            return null;
        }
        VASTStaticResource vASTStaticResource = this.currentStaticResource;
        if (vASTStaticResource != null) {
            return vASTStaticResource;
        }
        VASTStaticResource vASTStaticResource2 = this.staticResources.get(0);
        this.currentStaticResource = vASTStaticResource2;
        return vASTStaticResource2;
    }

    public int getDaoTime() {
        return this.dao_time;
    }

    public int getDelayRand() {
        return this.delayRand;
    }

    public String getDiscription() {
        return this.discription;
    }

    public int getDisplayHeight() {
        return this.displayHeight;
    }

    public int getDisplayWdith() {
        return this.displayWdith;
    }

    public int getDuration() {
        return this.duration;
    }

    public int getErrorReportType() {
        return this.errorReportType;
    }

    public List<String> getErrors() {
        return this.errors;
    }

    public long getExpire() {
        return this.expire;
    }

    public String getExtra_type() {
        return this.extra_type;
    }

    public HeadInfo getHeadInfo() {
        return this.headInfo;
    }

    public int getHeight() {
        return this.height;
    }

    public int getImp_tp() {
        return this.imp_tp;
    }

    public List<String> getImpression() {
        return getImpression(null);
    }

    public String getInsertTime() {
        return this.mInsertTime;
    }

    public List<i> getInteractItemInfos() {
        return this.mInteractItemInfos;
    }

    public String getInteractJsonM() {
        return this.InteractJsonM;
    }

    public String getInteractResJsonUrl() {
        List<VASTMediaFile> mediaFiles = getMediaFiles();
        if (mediaFiles != null && mediaFiles.size() > 0) {
            for (VASTMediaFile vASTMediaFile : mediaFiles) {
                if (vASTMediaFile != null) {
                    return vASTMediaFile.getValue();
                }
            }
        }
        return null;
    }

    public int getLandAdLog() {
        return this.landAdLog;
    }

    public List<String> getLossNotices() {
        return this.lossNotices;
    }

    public List<VASTMediaFile> getMediaFiles() {
        return this.mediaFiles;
    }

    public String getMgMiniProgramUrl() {
        return this.MgMiniProgramUrl;
    }

    public int getMid() {
        return this.mid;
    }

    public int getMsg_box() {
        return this.msg_box;
    }

    public VASTMediaFile getNextMediaFile() {
        if (this.mediaFiles.isEmpty()) {
            return null;
        }
        if (this.currentMediaFile == null) {
            VASTMediaFile vASTMediaFile = this.mediaFiles.get(0);
            this.currentMediaFile = vASTMediaFile;
            return vASTMediaFile;
        }
        int size = this.mediaFiles.size() - 1;
        if (this.currentMediaFile.equals(this.mediaFiles.get(size))) {
            return null;
        }
        for (int i = 0; i < size; i++) {
            if (this.currentMediaFile.equals(this.mediaFiles.get(i))) {
                VASTMediaFile vASTMediaFile2 = this.mediaFiles.get(i + 1);
                this.currentMediaFile = vASTMediaFile2;
                return vASTMediaFile2;
            }
        }
        return null;
    }

    public VASTStaticResource getNextStaticResource() {
        if (this.staticResources.isEmpty()) {
            return null;
        }
        if (this.currentStaticResource == null) {
            VASTStaticResource vASTStaticResource = this.staticResources.get(0);
            this.currentStaticResource = vASTStaticResource;
            return vASTStaticResource;
        }
        int size = this.staticResources.size() - 1;
        if (this.currentStaticResource.equals(this.staticResources.get(size))) {
            return null;
        }
        for (int i = 0; i < size; i++) {
            if (this.currentStaticResource.equals(this.staticResources.get(i))) {
                VASTStaticResource vASTStaticResource2 = this.staticResources.get(i + 1);
                this.currentStaticResource = vASTStaticResource2;
                return vASTStaticResource2;
            }
        }
        return null;
    }

    public long getNt() {
        return this.nt;
    }

    public String getOrginTargetURI() {
        return this.orginTargetURI;
    }

    public int getPairid() {
        return this.pair_id;
    }

    public String getPlanId() {
        return this.planId;
    }

    public int getPre_play() {
        return this.pre_play;
    }

    public String getRainId() {
        return this.rainId;
    }

    public String getReportUrl() {
        return this.reportUrl;
    }

    public int getReq_type() {
        return this.req_type;
    }

    public String getResInfo() {
        return this.resInfo;
    }

    public int getRoolTime() {
        return this.roolTime;
    }

    public int getSchGuideA() {
        return this.SchGuideA;
    }

    public int getSchGuideM() {
        return this.SchGuideM;
    }

    public int getShow_type() {
        return this.show_type;
    }

    public int getSkipTimeout() {
        return this.skipTimeout;
    }

    public String getSspPrice() {
        return this.sspPrice;
    }

    public List<VASTStaticResource> getStaticResources() {
        return this.staticResources;
    }

    public String getTaskId() {
        return this.taskId;
    }

    public String getTitle() {
        return this.title;
    }

    public int getTkct() {
        return this.tkct;
    }

    public List<String> getTraceCheck() {
        return this.traceUrls;
    }

    public List<String> getTrackingEventClose() {
        return getTrackingEventClose(null);
    }

    public List<String> getTrackingEventComplete() {
        return getTrackingEventComplete(null);
    }

    public List<String> getTrackingEventDlComplete(String str) {
        return getTrackingEventList(str, "insFin");
    }

    public List<String> getTrackingEventDlFinish(String str) {
        return getTrackingEventList(str, "dlFin");
    }

    public List<String> getTrackingEventDlInstall(String str) {
        return getTrackingEventList(str, "insSt");
    }

    public List<String> getTrackingEventDlStart(String str) {
        return getTrackingEventList(str, "dlSt");
    }

    public List<String> getTrackingEventFirst() {
        return getTrackingEventFirst(null);
    }

    public List<String> getTrackingEventFullScreen() {
        return getTrackingEventFullScreen(null);
    }

    public List<String> getTrackingEventLandclose(String str) {
        return getTrackingEventList(str, "landClose");
    }

    public final List<String> getTrackingEventList(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_KEY;
        }
        Map<String, List<String>> mapFromMap = getMapFromMap(this.mTrackingEventMap, str);
        if (mapFromMap == null) {
            return null;
        }
        return getListFromMap(mapFromMap, str2);
    }

    public List<String> getTrackingEventMid() {
        return getTrackingEventMid(null);
    }

    public List<String> getTrackingEventMute() {
        return getTrackingEventMute(null);
    }

    public List<String> getTrackingEventSkip(String str) {
        return getTrackingEventList(str, "skip");
    }

    public List<String> getTrackingEventStart() {
        return getTrackingEventStart(null);
    }

    public List<String> getTrackingEventThird() {
        return getTrackingEventThird(null);
    }

    public List<String> getTrackingEventUnMute() {
        return getTrackingEventUnMute(null);
    }

    public List<String> getTrackingEventlandClick(String str) {
        return getTrackingEventList(str, "landClick");
    }

    public List<i> getVastAdPres() {
        return this.mVastAdPres;
    }

    public int getVastAid() {
        return this.vastAid;
    }

    public String getVastTargetStyle() {
        return this.vastTargetStyle;
    }

    public String getVastTargetURI() {
        return this.vastTargetURI;
    }

    public Clicks getVideoClick() {
        return this.videoClick;
    }

    public int getVip_show() {
        return this.vip_show;
    }

    public String getVoiceSrc() {
        return this.voiceSrc;
    }

    public int getVoice_btn() {
        return this.voice_btn;
    }

    public int getWidth() {
        return this.width;
    }

    public List<String> getWinNotices() {
        return this.winNotices;
    }

    public String getmAdtype() {
        return this.mAdtype;
    }

    public e getmCompanions() {
        return this.mCompanions;
    }

    public int getmFlowWifiState() {
        return this.mFlowWifiState;
    }

    public int getmFlow_cellular() {
        return this.mFlow_cellular;
    }

    public int getmMIDAdTotalTime() {
        return this.mMIDAdTotalTime;
    }

    public boolean hasFireImpressions() {
        return this.hasSendImpression;
    }

    public boolean hasSendCompleteTrackings() {
        return this.hasSendCompleteTrackings;
    }

    public boolean hasSendFirstQuartileTrackings() {
        return this.hasSendFirstQuartileTrackings;
    }

    public boolean hasSendMidpointTrackings() {
        return this.hasSendMidpointTrackings;
    }

    public boolean hasSendSkipeTrackings() {
        return this.hasSendSkipeTrackings;
    }

    public boolean hasSendStartTrackings() {
        return this.hasSendStartTrackings;
    }

    public boolean hasSendThirdQuartileTrackings() {
        return this.hasSendThirdQuartileTrackings;
    }

    public boolean isExpired() {
        if (0 == this.expire) {
            return false;
        }
        return new Date().after(new Date(this.expire * 1000));
    }

    public boolean isHasPosition() {
        return this.hasPosition;
    }

    public boolean isHasSendResourceInflat() {
        return this.hasSendResourceInflat;
    }

    public boolean isImpressionEmpty(String str) {
        return isListEmpty(this.mImpressionMap, str);
    }

    public boolean isInteractAd() {
        return getAdStyle() == 3;
    }

    public boolean isInteractValide() {
        return false;
    }

    public boolean isLoadFail() {
        return this.isLoadFail;
    }

    public boolean isMediaVast() {
        return getCurrentMediaFile() != null;
    }

    public boolean isMk() {
        return this.isMk;
    }

    public boolean isSelfRender() {
        return this.mSelfRender;
    }

    public boolean isShowAdLog() {
        return this.mShowAdLog != 1;
    }

    public boolean isShowLandAdLog() {
        return this.landAdLog == 1;
    }

    public boolean isSupportChangeColor() {
        return this.supportChangeColor;
    }

    public boolean ismSupoortClick() {
        return this.mSupoortClick;
    }

    public void reset() {
        this.currentMediaFile = null;
        this.currentStaticResource = null;
        this.hasSendImpression = false;
    }

    public void resetStaticResource() {
        this.currentStaticResource = null;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setAdFrom(String str) {
        this.adFrom = str;
    }

    public void setAdOrigin(String str) {
        this.adOrigin = str;
    }

    public void setAdRollTime(int i) {
        this.AdRollTime = i;
    }

    public void setAdStyle(int i) {
        this.adStyle = i;
    }

    public void setAd_timer(int i) {
        this.ad_timer = i;
    }

    public void setAdlosturl(String str) {
        this.adlosturl = str;
    }

    public void setAutoLand(int i) {
        this.autoLand = i;
    }

    public void setBack_btn(int i) {
        this.back_btn = i;
    }

    public void setBid(String str) {
        this.bid = str;
    }

    public void setBidResult(com.mgmi.e.a aVar) {
        this.bidResult = aVar;
    }

    public void setButtonObject(s sVar) {
        this.mButtonObject = sVar;
    }

    public void setChannelId(String str) {
        this.channelId = str;
    }

    public void setCid(int i) {
        this.cid = i;
    }

    public void setClk_area(int i) {
        this.clk_area = i;
    }

    public void setClk_btn(int i) {
        this.clk_btn = i;
    }

    public void setClk_macro(String str) {
        this.clk_macro = str;
    }

    public void setClk_trac_macro(String str) {
        this.clk_trac_macro = str;
    }

    public void setClk_trac_value(String str) {
        this.clk_trac_value = str;
    }

    public void setClose(int i) {
        this.close = i;
    }

    public void setContLabel(String str) {
        this.contLabel = str;
    }

    public void setCountDownId(String str) {
        this.countDownId = str;
    }

    public void setDaoTime(int i) {
        this.dao_time = i;
    }

    public void setDelayRand(int i) {
        this.delayRand = i;
    }

    public void setDiscription(String str) {
        this.discription = str;
    }

    public void setDisplayHeight(int i) {
        this.displayHeight = i;
    }

    public void setDisplayWdith(int i) {
        this.displayWdith = i;
    }

    public void setDuration(int i) {
        this.duration = i;
    }

    public void setErrorReportType(int i) {
        this.errorReportType = i;
    }

    public void setExpire(long j) {
        this.expire = j;
    }

    public void setExtra_type(String str) {
        this.extra_type = str;
    }

    public void setHasFireImpressions(boolean z) {
        this.hasSendImpression = z;
    }

    public void setHasPosition(boolean z) {
        this.hasPosition = z;
    }

    public void setHasSendCompleteTrackings(boolean z) {
        this.hasSendCompleteTrackings = z;
    }

    public void setHasSendMidpointTrackings(boolean z) {
        this.hasSendMidpointTrackings = z;
    }

    public void setHasSendResourceInflat(boolean z) {
        this.hasSendResourceInflat = z;
    }

    public void setHasSendStartTrackings(boolean z) {
        this.hasSendStartTrackings = z;
    }

    public void setHasSendThirdQuartileTrackings(boolean z) {
        this.hasSendThirdQuartileTrackings = z;
    }

    public void setHasSendfirstQuartileTrackings(boolean z) {
        this.hasSendFirstQuartileTrackings = z;
    }

    public void setHasSkipTrackings(boolean z) {
        this.hasSendSkipeTrackings = z;
    }

    public void setHeadInfo(HeadInfo headInfo) {
        this.headInfo = headInfo;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public void setImp_tp(int i) {
        this.imp_tp = i;
    }

    public void setInsertTime(String str) {
        this.mInsertTime = str;
    }

    public void setInteractItemInfos(List<i> list) {
        this.mInteractItemInfos = list;
    }

    public void setInteractJsonM(String str) {
        this.InteractJsonM = str;
    }

    public void setLandAdLog(int i) {
        this.landAdLog = i;
    }

    public void setLoadFail(boolean z) {
        this.isLoadFail = z;
    }

    public void setMgMiniProgramUrl(String str) {
        this.MgMiniProgramUrl = str;
    }

    public void setMid(int i) {
        this.mid = i;
    }

    public void setMk(boolean z) {
        this.isMk = z;
    }

    public void setMsg_box(int i) {
        this.msg_box = i;
    }

    public void setNt(long j) {
        this.nt = j;
    }

    public void setOrginTargetURI(String str) {
        this.orginTargetURI = str;
    }

    public void setPairid(int i) {
        this.pair_id = i;
    }

    public void setPlanId(String str) {
        this.planId = str;
    }

    public void setPre_play(int i) {
        this.pre_play = i;
    }

    public void setRainId(String str) {
        this.rainId = str;
    }

    public void setReportUrl(String str) {
        this.reportUrl = str;
    }

    public void setReq_type(int i) {
        this.req_type = i;
    }

    public void setResInfo(String str) {
        this.resInfo = str;
    }

    public void setRoolTime(int i) {
        this.roolTime = i;
    }

    public void setSchGuideA(int i) {
        this.SchGuideA = i;
    }

    public void setSchGuideM(int i) {
        this.SchGuideM = i;
    }

    public void setSelfRender(boolean z) {
        this.mSelfRender = z;
    }

    public void setShowAdLog(int i) {
        this.mShowAdLog = i;
    }

    public void setShow_type(int i) {
        this.show_type = i;
    }

    public void setSkipTimeout(int i) {
        this.skipTimeout = i;
    }

    public void setSspPrice(String str) {
        this.sspPrice = str;
    }

    public void setSupportChangeColor(boolean z) {
        this.supportChangeColor = z;
    }

    public void setTaskId(String str) {
        this.taskId = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setTkct(int i) {
        this.tkct = i;
    }

    public void setVastAdPres(List<i> list) {
        this.mVastAdPres = list;
    }

    public void setVastAid(int i) {
        this.vastAid = i;
    }

    public void setVastTargetStyle(String str) {
        this.vastTargetStyle = str;
    }

    public void setVastTargetURI(String str) {
        this.vastTargetURI = str;
    }

    public void setVideoClick(Clicks clicks) {
        this.videoClick = clicks;
    }

    public void setVip_show(int i) {
        this.vip_show = i;
    }

    public void setVoiceSrc(String str) {
        this.voiceSrc = str;
    }

    public void setVoice_btn(int i) {
        this.voice_btn = i;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public void setmAdtype(String str) {
        this.mAdtype = str;
    }

    public void setmCompanions(e eVar) {
        this.mCompanions = eVar;
    }

    public void setmFlowWifiState(int i) {
        this.mFlowWifiState = i;
    }

    public void setmFlow_cellular(int i) {
        this.mFlow_cellular = i;
    }

    public void setmMIDAdTotalTime(int i) {
        this.mMIDAdTotalTime = i;
    }

    public void setmSupoortClick(boolean z) {
        this.mSupoortClick = z;
    }

    public String toString() {
        return "VASTAd{mediaFiles=" + this.mediaFiles + ", staticResources=" + this.staticResources + ", errors=" + this.errors + ", adlosturl='" + this.adlosturl + "', width=" + this.width + ", height=" + this.height + ", taskId='" + this.taskId + "', vastAid=" + this.vastAid + ", expire=" + this.expire + ", delayRand=" + this.delayRand + ", mAdtype='" + this.mAdtype + "', title='" + this.title + "', resInfo='" + this.resInfo + "', MgMiniProgramUrl='" + this.MgMiniProgramUrl + "', discription='" + this.discription + "', videoClick=" + this.videoClick + ", adOrigin='" + this.adOrigin + "', bid='" + this.bid + "', action='" + this.action + "', mImpressionMap=" + this.mImpressionMap + ", mVastAdPres=" + this.mVastAdPres + ", mTrackingEventMap=" + this.mTrackingEventMap + ", mInteractItemInfos=" + this.mInteractItemInfos + ", mButtonObject=" + this.mButtonObject + ", planId='" + this.planId + "', mCompanions=" + this.mCompanions + ", companionPlusList=" + this.companionPlusList + ", zipOnline=" + this.zipOnline + ", AdRollTime=" + this.AdRollTime + ", skipTimeout=" + this.skipTimeout + ", duration=" + this.duration + ", adFrom='" + this.adFrom + "', mFlowWifiState=" + this.mFlowWifiState + ", roolTime=" + this.roolTime + ", vastTargetURI='" + this.vastTargetURI + "', orginTargetURI='" + this.orginTargetURI + "', vastTargetStyle='" + this.vastTargetStyle + "', close=" + this.close + ", currentMediaFile=" + this.currentMediaFile + ", currentStaticResource=" + this.currentStaticResource + ", hasSendImpression=" + this.hasSendImpression + ", hasSendStartTrackings=" + this.hasSendStartTrackings + ", hasSendCompleteTrackings=" + this.hasSendCompleteTrackings + ", hasSendFirstQuartileTrackings=" + this.hasSendFirstQuartileTrackings + ", hasSendSkipeTrackings=" + this.hasSendSkipeTrackings + ", hasSendMidpointTrackings=" + this.hasSendMidpointTrackings + ", hasSendThirdQuartileTrackings=" + this.hasSendThirdQuartileTrackings + ", hasSendResourceInflat=" + this.hasSendResourceInflat + ", mShowAdLog=" + this.mShowAdLog + ", headInfo=" + this.headInfo + ", errorReportType=" + this.errorReportType + ", traceUrls=" + this.traceUrls + ", skipTrackingBeen=" + this.skipTrackingBeen + ", adStyle=" + this.adStyle + ", mid=" + this.mid + ", pair_id=" + this.pair_id + ", ad_timer=" + this.ad_timer + ", dao_time=" + this.dao_time + ", pre_play=" + this.pre_play + ", req_type=" + this.req_type + ", show_type=" + this.show_type + ", extra_type='" + this.extra_type + "', back_btn=" + this.back_btn + ", voice_btn=" + this.voice_btn + ", clk_btn=" + this.clk_btn + ", clk_area=" + this.clk_area + ", msg_box=" + this.msg_box + ", imp_tp=" + this.imp_tp + ", vip_show=" + this.vip_show + ", clk_macro='" + this.clk_macro + "', stPreTime=" + this.stPreTime + ", autoLand=" + this.autoLand + ", cid=" + this.cid + ", InteractJsonM='" + this.InteractJsonM + "', voiceSrc='" + this.voiceSrc + "', isLoadFail=" + this.isLoadFail + ", hasPosition=" + this.hasPosition + ", contLabel='" + this.contLabel + "', tkct=" + this.tkct + ", reportUrl='" + this.reportUrl + "', rainId='" + this.rainId + "', countDownId='" + this.countDownId + "', channelId='" + this.channelId + "', nt=" + this.nt + ", mInsertTime='" + this.mInsertTime + "', resDoanlowdSuccess=" + this.resDoanlowdSuccess + ", mMIDAdTotalTime=" + this.mMIDAdTotalTime + ", mSupoortClick=" + this.mSupoortClick + '}';
    }

    public void updateInteractResource() {
        List<VASTMediaFile> mediaFiles = getMediaFiles();
        if (mediaFiles == null || mediaFiles.size() <= 0) {
            return;
        }
        for (VASTMediaFile vASTMediaFile : mediaFiles) {
            if (vASTMediaFile != null) {
                vASTMediaFile.getValue();
                return;
            }
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeMap(this.mTrackingEventMap);
        parcel.writeList(this.mediaFiles);
        parcel.writeList(this.staticResources);
        parcel.writeInt(this.landAdLog);
    }

    public List<String> getImpression(String str) {
        return getListFromMap(this.mImpressionMap, str);
    }

    public List<String> getTrackingEventClose(String str) {
        return getTrackingEventList(str, HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE);
    }

    public List<String> getTrackingEventComplete(String str) {
        return getTrackingEventList(str, "complete");
    }

    public List<String> getTrackingEventDlComplete() {
        return getTrackingEventDlComplete(null);
    }

    public List<String> getTrackingEventDlFinish() {
        return getTrackingEventDlFinish(null);
    }

    public List<String> getTrackingEventDlInstall() {
        return getTrackingEventDlInstall(null);
    }

    public List<String> getTrackingEventDlStart() {
        return getTrackingEventDlStart(null);
    }

    public List<String> getTrackingEventFirst(String str) {
        return getTrackingEventList(str, "firstQuartile");
    }

    public List<String> getTrackingEventFullScreen(String str) {
        return getTrackingEventList(str, "full");
    }

    public List<String> getTrackingEventMid(String str) {
        return getTrackingEventList(str, "midpoint");
    }

    public List<String> getTrackingEventMute(String str) {
        return getTrackingEventList(str, "mute");
    }

    public List<String> getTrackingEventStart(String str) {
        return getTrackingEventList(str, TtmlNode.START);
    }

    public List<String> getTrackingEventThird(String str) {
        return getTrackingEventList(str, "thirdQuartile");
    }

    public List<String> getTrackingEventUnMute(String str) {
        return getTrackingEventList(str, "unmute");
    }

    public final List<com.mgmi.net.bean.c> getTrackingEventList(String str) {
        if (this.skipTrackingBeen == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_KEY;
        }
        List<com.mgmi.net.bean.c> list = this.skipTrackingBeen.get(str);
        if (list == null) {
            return null;
        }
        return list;
    }
}
