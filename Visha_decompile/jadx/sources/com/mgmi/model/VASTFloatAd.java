package com.mgmi.model;

import android.text.TextUtils;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.e9d;
import defpackage.l2d;
import java.util.ArrayList;
import java.util.List;

public class VASTFloatAd extends VASTAd {
    private a adOptionMessage;
    private int adStyle;
    private b aiFollow;
    public boolean autoOpen;
    List<l2d> bubbleEntryListentry;
    private c caption;
    private int close;
    private int delayRandTime;
    private com.mgmi.platform.view.a entry;
    private int fixed;
    private boolean hasRender;
    public boolean hasReportClick;
    private g innerFeed;
    private h innerVideo;
    private boolean isWaitRollDuration;
    public boolean landPageHasClicked;
    private e9d mECommerce;
    private t mVoteMessage;
    private MqtData mqtData;
    private List<k> multiChooses;
    private int playerUse;
    private int rolltime;
    private float left = -1.0f;
    private float right = -1.0f;
    private float bottom = -1.0f;
    private float top = -1.0f;
    private int menuItemTotal = 0;
    private boolean interact = false;
    private int joinMethod = 3;
    private int mBgColor = 255;

    public void addBubbleEntry(l2d l2dVar) {
        if (this.bubbleEntryListentry == null) {
            this.bubbleEntryListentry = new ArrayList();
        }
        this.bubbleEntryListentry.add(l2dVar);
    }

    public void addMultiChooseEntry(k kVar) {
        if (this.multiChooses == null) {
            this.multiChooses = new ArrayList();
        }
        this.multiChooses.add(kVar);
    }

    public void addOptionMenu(String str) {
        a aVar = this.adOptionMessage;
        if (aVar != null) {
            aVar.a(str);
        }
        int i = this.menuItemTotal + 1;
        this.menuItemTotal = i;
        if (i == 2) {
            this.bubbleEntryListentry.add(this.adOptionMessage.c());
        }
    }

    public a getAdOptionMessage() {
        return this.adOptionMessage;
    }

    @Override
    public int getAdStyle() {
        return this.adStyle;
    }

    public b getAiFollow() {
        return this.aiFollow;
    }

    public int getBgColor() {
        return this.mBgColor;
    }

    public float getBottom() {
        return this.bottom;
    }

    public List<l2d> getBubbleEntryListentry() {
        return this.bubbleEntryListentry;
    }

    public c getCaption() {
        return this.caption;
    }

    @Override
    public int getClose() {
        return this.close;
    }

    public com.mgmi.ads.api.f getCornerType() {
        int i = this.playerUse;
        if (i == 1) {
            return com.mgmi.ads.api.f.FIX_RIGHT_BOTTOM;
        }
        return i == 2 ? com.mgmi.ads.api.f.FIX_LEFT_BOTTOM : com.mgmi.ads.api.f.COMMON;
    }

    public int getDelayRandTime() {
        return this.delayRandTime;
    }

    public e9d getECommerce() {
        return this.mECommerce;
    }

    public com.mgmi.platform.view.a getEntry() {
        return this.entry;
    }

    public g getInnerFeed() {
        return this.innerFeed;
    }

    public h getInnerVideo() {
        return this.innerVideo;
    }

    public boolean getInteract() {
        return this.interact;
    }

    public int getJoinMethod() {
        return this.joinMethod;
    }

    public float getLeft() {
        return this.left;
    }

    public boolean getLoopStyle() {
        return this.fixed != 1;
    }

    public MqtData getMqtData() {
        return this.mqtData;
    }

    public List<k> getMultiChooses() {
        return this.multiChooses;
    }

    public float getRight() {
        return this.right;
    }

    public int getRolltime() {
        return this.rolltime;
    }

    public float getTop() {
        return this.top;
    }

    @Override
    public List<String> getTrackingEventClose() {
        return getTrackingEventClose(null);
    }

    public List<String> getTrackingEventView() {
        return getTrackingEventView(null);
    }

    public t getVoteMessage() {
        return this.mVoteMessage;
    }

    public boolean isHasRender() {
        return this.hasRender;
    }

    public boolean isPlayerUse() {
        return getCornerType() != com.mgmi.ads.api.f.COMMON;
    }

    public boolean isWaitRollDuration() {
        return this.isWaitRollDuration;
    }

    public void setAdOptionMessage(a aVar) {
        this.adOptionMessage = aVar;
    }

    @Override
    public void setAdStyle(int i) {
        this.adStyle = i;
    }

    public void setAiFollow(b bVar) {
        this.aiFollow = bVar;
    }

    public void setBgColor(int i) {
        this.mBgColor = i;
    }

    public void setBottom(float f) {
        this.bottom = f;
    }

    public void setCaption(c cVar) {
        this.caption = cVar;
    }

    @Override
    public void setClose(int i) {
        this.close = i;
    }

    public void setDelayRandTime(int i) {
        this.delayRandTime = i;
    }

    public void setECommerce(e9d e9dVar) {
        this.mECommerce = e9dVar;
    }

    public void setEntry(com.mgmi.platform.view.a aVar) {
        this.entry = aVar;
    }

    public void setFixed(int i) {
        this.fixed = i;
    }

    public void setHasRender(boolean z) {
        this.hasRender = z;
    }

    public void setInnerFeed(g gVar) {
        this.innerFeed = gVar;
    }

    public void setInnerVideo(h hVar) {
        this.innerVideo = hVar;
    }

    public void setInteract(String str) {
        if (TextUtils.isEmpty(str) || !str.equals("12")) {
            this.interact = false;
        } else {
            this.interact = true;
        }
    }

    public void setJoinMethod(int i) {
        this.joinMethod = i;
    }

    public void setLeft(float f) {
        this.left = f;
    }

    public void setMqtData(MqtData mqtData) {
        this.mqtData = mqtData;
    }

    public void setPlayerUse(int i) {
        this.playerUse = i;
    }

    public void setRight(float f) {
        this.right = f;
    }

    public void setRolltime(int i) {
        this.rolltime = i;
    }

    public void setTop(float f) {
        this.top = f;
    }

    public void setVoteMessage(t tVar) {
        this.mVoteMessage = tVar;
    }

    public void setWaitRollDuration(boolean z) {
        this.isWaitRollDuration = z;
    }

    @Override
    public String toString() {
        return "VASTFloatAd{hasRender=" + this.hasRender + ", rolltime=" + this.rolltime + ", close=" + this.close + ", left=" + this.left + ", right=" + this.right + ", bottom=" + this.bottom + ", top=" + this.top + ", aiFollow=" + this.aiFollow + ", mqtData=" + this.mqtData + ", isWaitRollDuration=" + this.isWaitRollDuration + ", landPageHasClicked=" + this.landPageHasClicked + ", autoOpen=" + this.autoOpen + ", hasReportClick=" + this.hasReportClick + ", multiChooses=" + this.multiChooses + ", entry=" + this.entry + ", bubbleEntryListentry=" + this.bubbleEntryListentry + ", playerUse=" + this.playerUse + ", menuItemTotal=" + this.menuItemTotal + ", adOptionMessage=" + this.adOptionMessage + ", mECommerce=" + this.mECommerce + ", delayRandTime=" + this.delayRandTime + ", mVoteMessage=" + this.mVoteMessage + ", fixed=" + this.fixed + ", adStyle=" + this.adStyle + ", interact=" + this.interact + ", joinMethod=" + this.joinMethod + ", mBgColor=" + this.mBgColor + ", innerVideo=" + this.innerVideo + ", caption=" + this.caption + ", innerFeed=" + this.innerFeed + '}';
    }

    @Override
    public List<String> getTrackingEventClose(String str) {
        return getTrackingEventList(str, HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE);
    }

    public List<String> getTrackingEventView(String str) {
        return getTrackingEventList(str, "view");
    }
}
