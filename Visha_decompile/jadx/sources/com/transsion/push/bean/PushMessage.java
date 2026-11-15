package com.transsion.push.bean;

import defpackage.pab;

public class PushMessage {

    @pab(name = "app_name")
    public String appName;

    @pab(name = PushMessageKey.KEY_APP_CHANNEL_ID)
    public String channelId;

    @pab(name = PushMessageKey.KEY_APP_CHANNEL_NAME)
    public String channelName;

    @pab(name = PushMessageKey.KEY_NOTI_CLICK_URLS)
    public String clickUrlList;

    @pab(name = PushMessageKey.KEY_TCM_CUSTOM_DISPLAY)
    public String customDisplay;

    @pab(name = PushMessageKey.KEY_DISPLAY_POLICY)
    public int displayPolicy;

    @pab(name = PushMessageKey.KEY_TCM_EVENT_PARAMS)
    public String eventParams;

    @pab(name = PushMessageKey.KEY_TCM_EVENT_TYPE)
    public int eventType;

    @pab(name = PushMessageKey.KEY_NOTI_FLOAT_NOTICE)
    public String floatNotice;

    @pab(name = PushMessageKey.KEY_APP_GROUP_ID)
    public String groupId;

    @pab(name = PushMessageKey.KEY_APP_GROUP_MAX_COUNT)
    public String groupMaxCount;

    @pab(name = PushMessageKey.KEY_NOTI_SMALL_ICON_COLOR)
    public String iconColor;

    @pab(name = PushMessageKey.KEY_NOTI_IGNORE_EXPIRE)
    public int ignoreExpire;

    @pab(name = PushMessageKey.KEY_NOTI_IMP_URLS)
    public String impUrlList;

    @pab(name = PushMessageKey.KEY_NOTI_IS_HEADSUP)
    public int isHeadsUp;

    @pab(name = PushMessageKey.KEY_APP_LAYOUT_STYLE_ID)
    public int layoutStyleId;

    @pab(name = PushMessageKey.KEY_TCM_MATERIAL_ID)
    public String materialId;

    @pab(name = PushMessageKey.KEY_TCM_MSG_ID)
    public long messageId;

    @pab(name = PushMessageKey.KEY_TCM_MSG_TTL)
    public int msgTtl;

    @pab(name = PushMessageKey.KEY_NOTI_BTN)
    public String notiBtn;

    @pab(name = PushMessageKey.KEY_NOTI_BTN_BG_COLOR)
    public String notiBtnBgColor;

    @pab(name = PushMessageKey.KEY_NOTI_BTN_WORD_COLOR)
    public String notiBtnTxtColor;

    @pab(name = PushMessageKey.KEY_NOTI_DESC)
    public String notiDes;

    @pab(name = PushMessageKey.KEY_NOTI_EX_TYPE)
    public int notiExType;

    @pab(name = PushMessageKey.KEY_NOTI_BTN_EX)
    public String notiExtensionBtn;

    @pab(name = PushMessageKey.KEY_NOTI_ICON)
    public String notiIcon;

    @pab(name = PushMessageKey.KEY_NOTI_IMG)
    public String notiImg;

    @pab(name = PushMessageKey.KEY_NOTI_IMG_EX)
    public String notiImgEx;

    @pab(name = PushMessageKey.KEY_NOTI_OPEN_CONTENT)
    public String notiOpenContent;

    @pab(name = PushMessageKey.KEY_NOTI_OPEN_TYPE)
    public int notiOpenType;

    @pab(name = PushMessageKey.KEY_NOTI_OPTIONAL_ICON)
    public String notiOptionalIcon;

    @pab(name = PushMessageKey.KEY_NOTI_SMALL_ICON)
    public String notiSmallIcon;

    @pab(name = PushMessageKey.KEY_NOTI_TITLE)
    public String notiTitle;

    @pab(name = PushMessageKey.KEY_NOTI_TITLE_EX)
    public String notiTitleEx;

    @pab(name = PushMessageKey.KEY_NOTI_TXT_EX)
    public String notiTxtEx;

    @pab(name = PushMessageKey.KEY_NOTI_TYPE)
    public int notiType;

    @pab(name = PushMessageKey.KEY_TCM_MSG_PKGNAME)
    public String packageName;

    @pab(name = PushMessageKey.KEY_TCM_MSG_PKG)
    public String pkgId;

    @pab(name = PushMessageKey.KEY_TCM_MSG_PRIORITY)
    public int priority;

    @pab(name = PushMessageKey.KEY_NOTI_RETRACE_MSG_ID)
    public long retraceMsgId;

    @pab(name = PushMessageKey.KEY_TCM_MSG_RPKG)
    public String rpkg;

    @pab(name = PushMessageKey.KEY_TCM_SCHEDULE_DATE)
    public String scheduleDate;

    @pab(name = PushMessageKey.KEY_TCM_MSG_SDKSHOW)
    public int sdkShow;

    @pab(name = PushMessageKey.KEY_TCM_SEQ)
    public String seq;

    @pab(name = PushMessageKey.KEY_TCM_SOURCE_TYPE)
    public String sourceType;

    @pab(name = PushMessageKey.KEY_TCM_TAG)
    public String tag;

    @pab(name = PushMessageKey.KEY_TCM_MSG_TIMESTAMP)
    public String timeStamp;

    @pab(name = "trans_data")
    public String transData;

    @pab(name = PushMessageKey.KEY_TCM_MSG_TYPE)
    public int type;

    public String getAppName() {
        return this.appName;
    }

    public String getChannelId() {
        return this.channelId;
    }

    public String getChannelName() {
        return this.channelName;
    }

    public String getClickUrlList() {
        return this.clickUrlList;
    }

    public String getCustomDisplay() {
        return this.customDisplay;
    }

    public int getDisplayPolicy() {
        return this.displayPolicy;
    }

    public String getEventParams() {
        return this.eventParams;
    }

    public int getEventType() {
        return this.eventType;
    }

    public String getFloatNotice() {
        return this.floatNotice;
    }

    public String getGroupId() {
        return this.groupId;
    }

    public String getGroupMaxCount() {
        return this.groupMaxCount;
    }

    public String getIconColor() {
        return this.iconColor;
    }

    public int getIgnoreExpire() {
        return this.ignoreExpire;
    }

    public String getImpUrlList() {
        return this.impUrlList;
    }

    public int getIsHeadsUp() {
        return this.isHeadsUp;
    }

    public int getLayoutStyleId() {
        return this.layoutStyleId;
    }

    public String getMaterialId() {
        return this.materialId;
    }

    public long getMessageId() {
        return this.messageId;
    }

    public int getMsgTtl() {
        return this.msgTtl;
    }

    public String getNotiBtn() {
        return this.notiBtn;
    }

    public String getNotiBtnBgColor() {
        return this.notiBtnBgColor;
    }

    public String getNotiBtnTxtColor() {
        return this.notiBtnTxtColor;
    }

    public String getNotiDes() {
        return this.notiDes;
    }

    public int getNotiExType() {
        return this.notiExType;
    }

    public String getNotiExtensionBtn() {
        return this.notiExtensionBtn;
    }

    public String getNotiIcon() {
        return this.notiIcon;
    }

    public String getNotiImg() {
        return this.notiImg;
    }

    public String getNotiImgEx() {
        return this.notiImgEx;
    }

    public String getNotiOpenContent() {
        return this.notiOpenContent;
    }

    public int getNotiOpenType() {
        return this.notiOpenType;
    }

    public String getNotiOptionalIcon() {
        return this.notiOptionalIcon;
    }

    public String getNotiSmallIcon() {
        return this.notiSmallIcon;
    }

    public String getNotiTitle() {
        return this.notiTitle;
    }

    public String getNotiTitleEx() {
        return this.notiTitleEx;
    }

    public String getNotiTxtEx() {
        return this.notiTxtEx;
    }

    public int getNotiType() {
        return this.notiType;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPkgId() {
        return this.pkgId;
    }

    public int getPriority() {
        return this.priority;
    }

    public long getRetraceMsgId() {
        return this.retraceMsgId;
    }

    public String getRpkg() {
        return this.rpkg;
    }

    public String getScheduleDate() {
        return this.scheduleDate;
    }

    public int getSdkShow() {
        return this.sdkShow;
    }

    public String getSeq() {
        return this.seq;
    }

    public String getSourceType() {
        return this.sourceType;
    }

    public String getTag() {
        return this.tag;
    }

    public String getTimeStamp() {
        return this.timeStamp;
    }

    public String getTransData() {
        return this.transData;
    }

    public int getType() {
        return this.type;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setChannelId(String str) {
        this.channelId = str;
    }

    public void setChannelName(String str) {
        this.channelName = str;
    }

    public void setClickUrlList(String str) {
        this.clickUrlList = str;
    }

    public void setCustomDisplay(String str) {
        this.customDisplay = str;
    }

    public void setDisplayPolicy(int i) {
        this.displayPolicy = i;
    }

    public void setEventParams(String str) {
        this.eventParams = str;
    }

    public void setEventType(int i) {
        this.eventType = i;
    }

    public void setFloatNotice(String str) {
        this.floatNotice = str;
    }

    public void setGroupId(String str) {
        this.groupId = str;
    }

    public void setGroupMaxCount(String str) {
        this.groupMaxCount = str;
    }

    public void setIconColor(String str) {
        this.iconColor = str;
    }

    public void setIgnoreExpire(int i) {
        this.ignoreExpire = i;
    }

    public void setImpUrlList(String str) {
        this.impUrlList = str;
    }

    public void setIsHeadsUp(int i) {
        this.isHeadsUp = i;
    }

    public void setLayoutStyleId(int i) {
        this.layoutStyleId = i;
    }

    public void setMaterialId(String str) {
        this.materialId = str;
    }

    public void setMessageId(long j) {
        this.messageId = j;
    }

    public void setMsgTtl(int i) {
        this.msgTtl = i;
    }

    public void setNotiBtn(String str) {
        this.notiBtn = str;
    }

    public void setNotiBtnBgColor(String str) {
        this.notiBtnBgColor = str;
    }

    public void setNotiBtnTxtColor(String str) {
        this.notiBtnTxtColor = str;
    }

    public void setNotiDes(String str) {
        this.notiDes = str;
    }

    public void setNotiExType(int i) {
        this.notiExType = i;
    }

    public void setNotiExtensionBtn(String str) {
        this.notiExtensionBtn = str;
    }

    public void setNotiIcon(String str) {
        this.notiIcon = str;
    }

    public void setNotiImg(String str) {
        this.notiImg = str;
    }

    public void setNotiImgEx(String str) {
        this.notiImgEx = str;
    }

    public void setNotiOpenContent(String str) {
        this.notiOpenContent = str;
    }

    public void setNotiOpenType(int i) {
        this.notiOpenType = i;
    }

    public void setNotiOptionalIcon(String str) {
        this.notiOptionalIcon = str;
    }

    public void setNotiSmallIcon(String str) {
        this.notiSmallIcon = str;
    }

    public void setNotiTitle(String str) {
        this.notiTitle = str;
    }

    public void setNotiTitleEx(String str) {
        this.notiTitleEx = str;
    }

    public void setNotiTxtEx(String str) {
        this.notiTxtEx = str;
    }

    public void setNotiType(int i) {
        this.notiType = i;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPkgId(String str) {
        this.pkgId = str;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public void setRetraceMsgId(long j) {
        this.retraceMsgId = j;
    }

    public void setRpkg(String str) {
        this.rpkg = str;
    }

    public void setScheduleDate(String str) {
        this.scheduleDate = str;
    }

    public void setSdkShow(int i) {
        this.sdkShow = i;
    }

    public void setSeq(String str) {
        this.seq = str;
    }

    public void setSourceType(String str) {
        this.sourceType = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setTimeStamp(String str) {
        this.timeStamp = str;
    }

    public void setTransData(String str) {
        this.transData = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "PushMessage{messageId=" + this.messageId + ", type=" + this.type + ", pkgId='" + this.pkgId + "', priority=" + this.priority + ", sdkShow=" + this.sdkShow + ", msgTtl=" + this.msgTtl + ", ignoreExpire=" + this.ignoreExpire + ", packageName='" + this.packageName + "', rpkg='" + this.rpkg + "', timeStamp='" + this.timeStamp + "', notiType=" + this.notiType + ", notiExType=" + this.notiExType + ", notiTitle='" + this.notiTitle + "', notiDes='" + this.notiDes + "', notiImg='" + this.notiImg + "', notiIcon='" + this.notiIcon + "', notiBtn='" + this.notiBtn + "', notiImgEx='" + this.notiImgEx + "', notiTitleEx='" + this.notiTitleEx + "', notiTxtEx='" + this.notiTxtEx + "', notiOpenType=" + this.notiOpenType + ", notiOpenContent='" + this.notiOpenContent + "', transData='" + this.transData + "', notiSmallIcon='" + this.notiSmallIcon + "', displayPolicy=" + this.displayPolicy + ", appName='" + this.appName + "', layoutStyleId=" + this.layoutStyleId + ", channelId='" + this.channelId + "', channelName='" + this.channelName + "', iconColor='" + this.iconColor + "', impUrlList='" + this.impUrlList + "', clickUrlList='" + this.clickUrlList + "', isHeadsUp=" + this.isHeadsUp + ", retraceMsgId=" + this.retraceMsgId + ", floatNotice=" + this.floatNotice + ", groupId='" + this.groupId + "', groupMaxCount='" + this.groupMaxCount + "', notiExtensionBtn='" + this.notiExtensionBtn + "', notiOptionalIcon='" + this.notiOptionalIcon + "', notiBtnTxtColor='" + this.notiBtnTxtColor + "', notiBtnBgColor='" + this.notiBtnBgColor + "', materialId='" + this.materialId + "', sourceType='" + this.sourceType + "', seq='" + this.seq + "', scheduleDate='" + this.scheduleDate + "', tag='" + this.tag + "', eventType=" + this.eventType + ", eventParams='" + this.eventParams + "', customDisplay='" + this.customDisplay + "'}";
    }
}
