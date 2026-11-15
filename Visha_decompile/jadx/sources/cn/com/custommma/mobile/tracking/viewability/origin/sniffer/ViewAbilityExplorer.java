package cn.com.custommma.mobile.tracking.viewability.origin.sniffer;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import cn.com.custommma.mobile.tracking.api.Countly;
import cn.com.custommma.mobile.tracking.api.ViewAbilityHandler;
import cn.com.custommma.mobile.tracking.viewability.origin.CallBack;
import cn.com.custommma.mobile.tracking.viewability.origin.ViewAbilityStats;
import defpackage.k2;
import defpackage.oe5;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class ViewAbilityExplorer implements Serializable {
    private static final long serialVersionUID = 1;
    private transient k2 abilityCallback;
    private String adURL;
    private transient View adView;
    private ViewAbilityConfig config;
    private String explorerID;
    private CallBack exposeCallBack;
    private int exposeValidDuration;
    private String impressionID;
    private ViewAbilityHandler.MonitorType monitorType;
    private List<AbilityVideoProgress> videoProgressList;
    private ViewAbilityStats viewAbilityStats;
    public ViewFrameBlock viewFrameBlock;
    private boolean viewabilityState = false;
    private boolean isVideoProcessMonitor = false;
    private boolean isNeedRecord = true;
    private String videoProcessIdentifier = null;
    private boolean isVideoProcessTracking = false;
    private boolean isViewabilityTrackFinished = false;
    private boolean isStrongInteract = false;
    private AbilityStatus abilityStatus = AbilityStatus.EXPLORERING;

    public ViewAbilityExplorer(String str, String str2, View view, String str3, ViewAbilityConfig viewAbilityConfig, ViewAbilityStats viewAbilityStats, CallBack callBack, ViewAbilityHandler.MonitorType monitorType) {
        this.viewFrameBlock = null;
        this.explorerID = str;
        this.adURL = str2;
        this.adView = view;
        this.impressionID = str3;
        this.config = viewAbilityConfig;
        this.viewAbilityStats = viewAbilityStats;
        this.exposeCallBack = callBack;
        this.monitorType = monitorType;
        this.viewFrameBlock = new ViewFrameBlock(viewAbilityStats.getViewabilityTrackPolicy(), viewAbilityConfig.getMaxUploadAmount(), viewAbilityStats.getURLShowCoverRate() > 0.0f ? 1.0f - this.viewAbilityStats.getURLShowCoverRate() : viewAbilityConfig.getCoverRateScale());
        initConfigParams();
    }

    private void initConfigParams() {
        try {
            if (this.viewAbilityStats.getURLExposeDuration() > 0) {
                this.exposeValidDuration = this.viewAbilityStats.getURLExposeDuration();
            } else {
                this.exposeValidDuration = this.viewAbilityStats.isVideoExpose() ? this.config.getVideoExposeValidDuration() : this.config.getExposeValidDuration();
            }
            String str = this.viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITY_VIDEO_PROGRESS);
            if (!this.viewAbilityStats.isVideoExpose() || this.viewAbilityStats.getURLVideoDuration() <= 0 || !this.viewAbilityStats.isVideoProgressTrack() || TextUtils.isEmpty(str)) {
                this.isVideoProcessMonitor = false;
            } else {
                this.isVideoProcessMonitor = true;
                this.videoProgressList = this.viewAbilityStats.getURLVideoProcessTrackList();
                this.videoProcessIdentifier = str;
            }
            String str2 = this.viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITY_RECORD);
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            if (this.adURL.contains(this.viewAbilityStats.getSeparator() + str2 + this.viewAbilityStats.getEqualizer() + "0")) {
                this.isNeedRecord = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void trackVideoProgress() {
        long j;
        synchronized (ViewAbilityExplorer.class) {
            try {
                this.isVideoProcessTracking = true;
                AbilityVideoProgress abilityVideoProgress = this.videoProgressList.get(0);
                int uRLVideoDuration = this.viewAbilityStats.getURLVideoDuration() / 4;
                if (abilityVideoProgress != AbilityVideoProgress.TRACK1_4) {
                    if (abilityVideoProgress == AbilityVideoProgress.TRACK2_4) {
                        uRLVideoDuration *= 2;
                    } else if (abilityVideoProgress == AbilityVideoProgress.TRACK3_4) {
                        uRLVideoDuration *= 3;
                    } else if (abilityVideoProgress == AbilityVideoProgress.TRACK4_4) {
                        uRLVideoDuration *= 4;
                    } else {
                        j = 0;
                    }
                    j = uRLVideoDuration;
                } else {
                    j = uRLVideoDuration;
                }
                if (this.viewFrameBlock.getMaxDuration() >= j) {
                    this.videoProgressList.remove(abilityVideoProgress);
                }
                if (this.videoProgressList.size() == 0 || this.adView == null) {
                    this.isVideoProcessTracking = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void verifyBreakCondition() throws Exception {
        if (this.isViewabilityTrackFinished) {
            return;
        }
        if (this.viewFrameBlock.getMaxDuration() >= this.config.getMaxDuration() && this.viewFrameBlock.getExposeDuration() < 0.001d) {
            oe5.h("ID:" + this.impressionID + " 已经达到最大监测时长,且当前无曝光,终止定时任务,等待数据上报,max duration:" + this.viewFrameBlock.getMaxDuration() + "  config duration:" + this.config.getInspectInterval());
            this.monitorType = ViewAbilityHandler.MonitorType.NONVIEWABLE;
        } else if (this.viewFrameBlock.getExposeDuration() >= this.exposeValidDuration) {
            oe5.h("ID:" + this.impressionID + " 已满足可视曝光时长,终止定时任务,等待数据上报");
            this.viewabilityState = true;
            this.monitorType = ViewAbilityHandler.MonitorType.VIEWABLE;
        } else {
            if (this.adView != null) {
                return;
            }
            oe5.h("ID:" + this.impressionID + " AdView 已被释放,终止定时任务,等待数据上报");
            this.monitorType = ViewAbilityHandler.MonitorType.UNMEASURED;
        }
        breakToUpload(this.exposeCallBack, this.monitorType);
    }

    public void breakToUpload(CallBack callBack, ViewAbilityHandler.MonitorType monitorType) throws Exception {
        List<HashMap<String, Object>> listGenerateUploadEvents = this.viewFrameBlock.generateUploadEvents(this.viewAbilityStats);
        if (Countly.n) {
            HashMap map = new HashMap();
            map.put(ViewAbilityStats.IMPRESSIONID, this.impressionID);
            map.put(ViewAbilityStats.ADVIEWABILITYEVENTS, listGenerateUploadEvents);
            map.put(ViewAbilityStats.ADVIEWABILITY, Integer.valueOf(this.viewabilityState ? 1 : 0));
            map.put(ViewAbilityStats.ADVIEWABILITY_RESULT, Integer.valueOf(this.viewabilityState ? 1 : 4));
            map.put(ViewAbilityStats.ADMEASURABILITY, 1);
            JSONObject jSONObject = new JSONObject(map);
            oe5.b("<-------------------------------------------------------------------------------->");
            oe5.a("ID:" + this.impressionID + " 原始数据帧长度:" + this.viewFrameBlock.blockLength() + " 准备生成MMA监测链接");
            oe5.e(jSONObject.toString());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.adURL);
        try {
            String strReplace = new JSONArray((Collection) listGenerateUploadEvents).toString().replace("\"", "");
            String separator = this.viewAbilityStats.getSeparator();
            String equalizer = this.viewAbilityStats.getEqualizer();
            String str = this.viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITYEVENTS);
            if (!TextUtils.isEmpty(str) && this.isNeedRecord) {
                sb.append(separator);
                sb.append(str);
                sb.append(equalizer);
                sb.append(URLEncoder.encode(strReplace, "utf-8"));
            }
            String str2 = this.viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITY);
            if (!TextUtils.isEmpty(str2)) {
                sb.append(separator);
                sb.append(str2);
                sb.append(equalizer);
                sb.append(String.valueOf(this.viewabilityState ? 1 : 0));
            }
            String str3 = this.viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITY_RESULT);
            if (!TextUtils.isEmpty(str3)) {
                sb.append(separator);
                sb.append(str3);
                sb.append(equalizer);
                sb.append(String.valueOf(this.viewabilityState ? 1 : 4));
            }
            String str4 = this.viewAbilityStats.get(ViewAbilityStats.ADMEASURABILITY);
            if (!TextUtils.isEmpty(str4)) {
                sb.append(separator);
                sb.append(str4);
                sb.append(equalizer);
                sb.append("1");
            }
            String str5 = this.viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITY_VIDEO_PLAYTYPE);
            if (!TextUtils.isEmpty(str5) && this.viewAbilityStats.isVideoExpose()) {
                sb.append(separator);
                sb.append(str5);
                sb.append(equalizer);
                sb.append(String.valueOf(this.viewAbilityStats.getVideoPlayType()));
            }
            if (this.isStrongInteract) {
                String str6 = this.viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITY_STRONG_INTERACT);
                if (!TextUtils.isEmpty(str6)) {
                    sb.append(separator);
                    sb.append(str6);
                    sb.append(equalizer);
                    sb.append("1");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        oe5.a("最终监测链接:" + sb.toString());
        this.isViewabilityTrackFinished = true;
        if (!this.isVideoProcessMonitor || !this.isVideoProcessTracking) {
            throw null;
        }
        oe5.b("<-------------------------------------------------------------------------------->");
    }

    public AbilityStatus getAbilityStatus() {
        return this.abilityStatus;
    }

    public void onExplore(Context context) {
        try {
            synchronized (ViewAbilityExplorer.class) {
                try {
                    View view = this.adView;
                    if (view != null) {
                        ViewFrameSlice viewFrameSlice = new ViewFrameSlice(view, context);
                        viewFrameSlice.getCoverRate();
                        this.viewFrameBlock.onPush(viewFrameSlice);
                    }
                    if (this.isVideoProcessMonitor && this.videoProgressList.size() > 0) {
                        trackVideoProgress();
                    }
                    verifyBreakCondition();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setAbilityCallback(k2 k2Var) {
    }

    public void setStrongInteract(boolean z) {
        this.isStrongInteract = z;
        this.viewabilityState = true;
    }

    public void stop() {
        this.isVideoProcessTracking = false;
        try {
            breakToUpload(this.exposeCallBack, this.monitorType);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String toString() {
        return "[ impressionID=" + this.impressionID + ",explorerID=" + this.explorerID + ",adURL=" + this.adURL + ",view=" + this.adView + " block=" + this.viewFrameBlock.toString() + " ]";
    }

    public void breakToUpload(k2 k2Var, CallBack callBack, ViewAbilityHandler.MonitorType monitorType) throws Exception {
        breakToUpload(callBack, monitorType);
    }
}
