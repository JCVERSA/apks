package com.transsion.hubsdk.api.lighting;

import android.os.Bundle;
import android.util.SparseArray;
import org.apache.commons.text.StringSubstitutor;

public class TranSceneConfig {
    public static final int EFFECT_COLOR_DEFAULT = -1;
    public static final int EFFECT_ID_DEFAULT = -1;
    public static final int EFFECT_LOOP_DEFAULT = -1;
    public static final int EFFECT_SELECTION_MODE_CONSTANT_OR_INTERMITTENT = 1;
    public static final int EFFECT_SELECTION_MODE_FIXED_OR_RANDOM = 2;
    public static final int EFFECT_SELECTION_MODE_NORMAL = 0;
    public static final int EFFECT_TYPE_CONSTANT = 0;
    public static final int EFFECT_TYPE_DEFAULT = -1;
    public static final int EFFECT_TYPE_FIXED = 3;
    public static final int EFFECT_TYPE_INTERMITTENT = 1;
    public static final int EFFECT_TYPE_RANDOM = 2;
    public static final int SCENE_ID_DEFAULT = -1;
    public static final int SCENE_TYPE_BATTERY_FULL = 702;
    public static final int SCENE_TYPE_BATTERY_LOW = 703;
    public static final int SCENE_TYPE_BOOTING = 700;
    public static final int SCENE_TYPE_CAMERA_COUNTDOWN = 810;
    public static final int SCENE_TYPE_CAMERA_COUNTDOWN_10 = 813;
    public static final int SCENE_TYPE_CAMERA_COUNTDOWN_3 = 811;
    public static final int SCENE_TYPE_CAMERA_COUNTDOWN_5 = 812;
    public static final int SCENE_TYPE_CAMERA_RECORD = 800;
    public static final int SCENE_TYPE_CHARGING = 701;
    public static final int SCENE_TYPE_CUSTOM_EFFECT_FRAME_CONTROL = 20001;
    public static final int SCENE_TYPE_FLIP = 860;
    public static final int SCENE_TYPE_GAME_CENTER_ENTER = 300;
    public static final int SCENE_TYPE_GAME_FF = 440;
    public static final int SCENE_TYPE_GAME_FF_FIRE = 441;
    public static final int SCENE_TYPE_GAME_FF_KILL = 443;
    public static final int SCENE_TYPE_GAME_FF_SCOPE_OPEN = 442;
    public static final int SCENE_TYPE_GAME_HOK = 350;
    public static final int SCENE_TYPE_GAME_HOK_DOMINATE = 361;
    public static final int SCENE_TYPE_GAME_HOK_FIRST_BLOOD = 351;
    public static final int SCENE_TYPE_GAME_HOK_KILL_1 = 352;
    public static final int SCENE_TYPE_GAME_HOK_KILL_2 = 353;
    public static final int SCENE_TYPE_GAME_HOK_KILL_3 = 354;
    public static final int SCENE_TYPE_GAME_HOK_KILL_4 = 355;
    public static final int SCENE_TYPE_GAME_HOK_KILL_5 = 356;
    public static final int SCENE_TYPE_GAME_HOK_KILL_6 = 357;
    public static final int SCENE_TYPE_GAME_HOK_KILL_7 = 358;
    public static final int SCENE_TYPE_GAME_HOK_KILL_8 = 359;
    public static final int SCENE_TYPE_GAME_HOK_LEGENDARY = 362;
    public static final int SCENE_TYPE_GAME_HOK_MONSTER_KILL = 360;
    public static final int SCENE_TYPE_GAME_HOK_SWEEP = 363;
    public static final int SCENE_TYPE_GAME_HOK_UNRIVALED = 364;
    public static final int SCENE_TYPE_GAME_HOK_VICTORY = 365;
    public static final int SCENE_TYPE_GAME_LAUNCH = 301;
    public static final int SCENE_TYPE_GAME_MLBB = 310;
    public static final int SCENE_TYPE_GAME_MLBB_FIRST_BLOOD = 311;
    public static final int SCENE_TYPE_GAME_MLBB_GODLIKE = 321;
    public static final int SCENE_TYPE_GAME_MLBB_HIGH_KILL_1 = 317;
    public static final int SCENE_TYPE_GAME_MLBB_HIGH_KILL_2 = 318;
    public static final int SCENE_TYPE_GAME_MLBB_KILL_1 = 312;
    public static final int SCENE_TYPE_GAME_MLBB_KILL_2 = 313;
    public static final int SCENE_TYPE_GAME_MLBB_KILL_3 = 314;
    public static final int SCENE_TYPE_GAME_MLBB_KILL_4 = 315;
    public static final int SCENE_TYPE_GAME_MLBB_KILL_5 = 316;
    public static final int SCENE_TYPE_GAME_MLBB_LEGENDARY = 322;
    public static final int SCENE_TYPE_GAME_MLBB_MONSTER_KILL = 320;
    public static final int SCENE_TYPE_GAME_MLBB_UNSTOPPABLE = 319;
    public static final int SCENE_TYPE_GAME_MLBB_VICTORY = 323;
    public static final int SCENE_TYPE_GAME_PUBG = 400;
    public static final int SCENE_TYPE_GAME_PUBG_DRIVE = 402;
    public static final int SCENE_TYPE_GAME_PUBG_FIRE = 401;
    public static final int SCENE_TYPE_GAME_PUBG_JUMP = 403;
    public static final int SCENE_TYPE_GAME_PUBG_LAND = 404;
    public static final int SCENE_TYPE_GAME_PUBG_SCOPE_4X = 406;
    public static final int SCENE_TYPE_GAME_PUBG_SCOPE_6X = 407;
    public static final int SCENE_TYPE_GAME_PUBG_SCOPE_8X = 408;
    public static final int SCENE_TYPE_GAME_PUBG_SCOPE_OPEN = 405;
    public static final int SCENE_TYPE_GAME_STREAMING = 20000;
    public static final int SCENE_TYPE_GLOBAL_SWITCH = 705;
    public static final int SCENE_TYPE_HEALTH_MONITOR = 704;
    public static final int SCENE_TYPE_INCALL = 100;
    public static final int SCENE_TYPE_INCALL_COLLEAGUE = 103;
    public static final int SCENE_TYPE_INCALL_FAMILY = 102;
    public static final int SCENE_TYPE_INCALL_FRIEND = 101;
    public static final int SCENE_TYPE_INCALL_OTHERS = 104;
    public static final int SCENE_TYPE_INCALL_STRANGER_FRAUD = 121;
    public static final int SCENE_TYPE_INCALL_STRANGER_HARASSMENT = 120;
    public static final int SCENE_TYPE_INCALL_STRANGER_OTHERS = 122;
    public static final int SCENE_TYPE_MUSIC = 200;
    public static final int SCENE_TYPE_NFC = 861;
    public static final int SCENE_TYPE_NOTIFICATION = 1;
    public static final int SCENE_TYPE_NOTIFICATION_BRAVE_BROWSER = 25;
    public static final int SCENE_TYPE_NOTIFICATION_CALLAPP = 27;
    public static final int SCENE_TYPE_NOTIFICATION_DISCORD = 18;
    public static final int SCENE_TYPE_NOTIFICATION_FACEBOOK = 2;
    public static final int SCENE_TYPE_NOTIFICATION_FACEBOOK_LITE = 7;
    public static final int SCENE_TYPE_NOTIFICATION_FACEBOOK_MESSENGER = 3;
    public static final int SCENE_TYPE_NOTIFICATION_GBWHATSAPP = 13;
    public static final int SCENE_TYPE_NOTIFICATION_GMAIL = 10;
    public static final int SCENE_TYPE_NOTIFICATION_GOOGLE_CHROME = 5;
    public static final int SCENE_TYPE_NOTIFICATION_GOOGLE_DIALER = 31;
    public static final int SCENE_TYPE_NOTIFICATION_GOOGLE_DUO = 11;
    public static final int SCENE_TYPE_NOTIFICATION_GOOGLE_MESSAGES = 12;
    public static final int SCENE_TYPE_NOTIFICATION_HIBROWSER = 15;
    public static final int SCENE_TYPE_NOTIFICATION_IMO = 19;
    public static final int SCENE_TYPE_NOTIFICATION_INSTAGRAM = 6;
    public static final int SCENE_TYPE_NOTIFICATION_JTWHATSAPP = 26;
    public static final int SCENE_TYPE_NOTIFICATION_LINE = 16;
    public static final int SCENE_TYPE_NOTIFICATION_MICHAT = 22;
    public static final int SCENE_TYPE_NOTIFICATION_MISS_CALL_EVENT = 30;
    public static final int SCENE_TYPE_NOTIFICATION_OPERA_MINI = 20;
    public static final int SCENE_TYPE_NOTIFICATION_SMART_MESSAGE_APP = 29;
    public static final int SCENE_TYPE_NOTIFICATION_SNAPCHAT = 9;
    public static final int SCENE_TYPE_NOTIFICATION_TELEGRAM = 8;
    public static final int SCENE_TYPE_NOTIFICATION_TELEGRAM_WEB = 32;
    public static final int SCENE_TYPE_NOTIFICATION_TRUECALLER = 24;
    public static final int SCENE_TYPE_NOTIFICATION_UCBROWSER = 17;
    public static final int SCENE_TYPE_NOTIFICATION_VIBER_MESSENGER = 21;
    public static final int SCENE_TYPE_NOTIFICATION_VK_LIVE_CHARTTING = 14;
    public static final int SCENE_TYPE_NOTIFICATION_WHATSAPP_BUSINESS = 23;
    public static final int SCENE_TYPE_NOTIFICATION_WHATSAPP_MESSENGER = 4;
    public static final int SCENE_TYPE_NOTIFICATION_ZELLO_PPT_WALKIE_TALKIE = 28;
    public static final int SCENE_TYPE_PARTY = 210;
    public static final int SCENE_TYPE_PREVIEW_MASTER = 1000;
    public static final int SCENE_TYPE_PREVIEW_STOP = 1999;
    public static final int SCENE_TYPE_SCREEN_FLASH = 862;
    public static final int SCENE_TYPE_SHAKE = 863;
    public static final int SCENE_TYPE_SHIELD_FLASH = 801;
    public static final int SCENE_TYPE_SMART_DEVICE_CONNECT = 850;
    public static final int SCENE_TYPE_STEPLESS_BRIGHTNESS = 1010;
    public static final int SCENE_TYPE_TIMER = 820;
    public static final int SCENE_TYPE_TIMER_PAUSE = 822;
    public static final int SCENE_TYPE_TIMER_RUNNING = 821;
    public static final int SCENE_TYPE_VOICE_ASSISTANT = 220;
    public static final int SCENE_TYPE_VOICE_ASSISTANT_BLINK = 226;
    public static final int SCENE_TYPE_VOICE_ASSISTANT_EYES = 223;
    public static final int SCENE_TYPE_VOICE_ASSISTANT_REPLY = 222;
    public static final int SCENE_TYPE_VOICE_ASSISTANT_UNHAPPY = 224;
    public static final int SCENE_TYPE_VOICE_ASSISTANT_WAKE = 221;
    public static final int SCENE_TYPE_VOLUME_CHANGE = 840;
    public static final int SCENE_TYPE_VOLUME_MAX = 841;
    public static final int SCENE_TYPE_WIDGET_INTERACT = 830;
    public static final int TSCENE_TYPE_VOICE_ASSISTANT_SMILE = 225;
    private final Bundle mBundle;
    private int mChooseEffect;
    private boolean mIsEnable;
    private final boolean mIsMainUser;
    public String mLedModeName;
    private final int mPriority;
    private final int mSceneId;
    private final boolean mSupportBrightness;
    private final SparseArray<TranEffectConfig> mSupportEffects;
    public int mEffectSelectionMode = 0;
    public int mEffectType = -1;
    public int mConstantEffectId = 0;
    public int mIntermittentEffectId = 0;
    public int mFixedEffectId = 0;
    public int mRandomEffectId = 0;
    public boolean mIsAffectedByGlobalSwitch = true;
    public boolean mSupportCustomEffect = false;
    public boolean mSupportColor = false;
    public boolean mSupportLightingDisplay = false;
    public int mFft = 0;
    public int mLoop = 0;
    public int mPara1 = 0;
    public int mPara2 = 0;
    public int mPara3 = 0;
    public int mSubPriority = 0;

    public TranSceneConfig(int i, boolean z, SparseArray<TranEffectConfig> sparseArray, int i2, int i3, boolean z2, boolean z3, Bundle bundle) {
        this.mSceneId = i;
        this.mIsEnable = z;
        this.mSupportEffects = sparseArray == null ? new SparseArray<>() : sparseArray;
        this.mChooseEffect = i2;
        this.mPriority = i3;
        this.mSupportBrightness = z2;
        this.mIsMainUser = z3;
        this.mBundle = bundle;
    }

    public int getChooseEffect() {
        return this.mChooseEffect;
    }

    public int getConstantEffectId() {
        return this.mConstantEffectId;
    }

    public TranEffectConfig getEffectConfig(int i) {
        SparseArray<TranEffectConfig> sparseArray = this.mSupportEffects;
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i);
    }

    public int getEffectSelectionMode() {
        return this.mEffectSelectionMode;
    }

    public int getEffectType() {
        return this.mEffectType;
    }

    public boolean getEnable() {
        return this.mIsEnable;
    }

    public Bundle getExtraData() {
        return this.mBundle;
    }

    public int getFft() {
        return this.mFft;
    }

    public int getFixedEffectId() {
        return this.mFixedEffectId;
    }

    public int getIntermittentEffectId() {
        return this.mIntermittentEffectId;
    }

    public String getLedModeName() {
        return this.mLedModeName;
    }

    public int getLoop() {
        return this.mLoop;
    }

    public int getPara1() {
        return this.mPara1;
    }

    public int getPara2() {
        return this.mPara2;
    }

    public int getPara3() {
        return this.mPara3;
    }

    public int getPriority() {
        return this.mPriority;
    }

    public int getRandomEffectId() {
        return this.mRandomEffectId;
    }

    public int getSceneId() {
        return this.mSceneId;
    }

    public int getSubPriority() {
        return this.mSubPriority;
    }

    public SparseArray<TranEffectConfig> getSupportEffects() {
        return this.mSupportEffects;
    }

    public boolean isAffectedByGlobalSwitch() {
        return this.mIsAffectedByGlobalSwitch;
    }

    public boolean isMainUser() {
        return this.mIsMainUser;
    }

    public boolean isSupportBrightness() {
        return this.mSupportBrightness;
    }

    public boolean isSupportColor() {
        return this.mSupportColor;
    }

    public boolean isSupportLightingDisplay() {
        return this.mSupportLightingDisplay;
    }

    public void setAffectedByGlobalSwitch(boolean z) {
        this.mIsAffectedByGlobalSwitch = z;
    }

    public void setChooseEffect(int i) {
        this.mChooseEffect = i;
    }

    public void setConstantEffectId(int i) {
        this.mConstantEffectId = i;
    }

    public void setEffectSelectionMode(int i) {
        this.mEffectSelectionMode = i;
    }

    public void setEffectType(int i) {
        this.mEffectType = i;
    }

    public void setEnable(boolean z) {
        this.mIsEnable = z;
    }

    public void setFft(int i) {
        this.mFft = i;
    }

    public void setFixedEffectId(int i) {
        this.mFixedEffectId = i;
    }

    public void setIntermittentEffectId(int i) {
        this.mIntermittentEffectId = i;
    }

    public void setLedModeName(String str) {
        this.mLedModeName = str;
    }

    public void setLoop(int i) {
        this.mLoop = i;
    }

    public void setPara1(int i) {
        this.mPara1 = i;
    }

    public void setPara2(int i) {
        this.mPara2 = i;
    }

    public void setPara3(int i) {
        this.mPara3 = i;
    }

    public void setRandomEffectId(int i) {
        this.mRandomEffectId = i;
    }

    public void setSubPriority(int i) {
        this.mSubPriority = i;
    }

    public void setSupportColor(boolean z) {
        this.mSupportColor = z;
    }

    public void setSupportLightingDisplay(boolean z) {
        this.mSupportLightingDisplay = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TranSceneConfig{");
        sb.append("mSceneId=");
        sb.append(this.mSceneId);
        sb.append(", mIsEnable=");
        sb.append(this.mIsEnable);
        sb.append(", mChooseEffect=");
        sb.append(this.mChooseEffect);
        sb.append(", mPriority=");
        sb.append(this.mPriority);
        sb.append(", mSupportBrightness=");
        sb.append(this.mSupportBrightness);
        sb.append(", mIsMainUser=");
        sb.append(this.mIsMainUser);
        sb.append(", mEffectSelectionMode=");
        sb.append(this.mEffectSelectionMode);
        sb.append(", mEffectType=");
        sb.append(this.mEffectType);
        sb.append(", mConstantEffectId=");
        sb.append(this.mConstantEffectId);
        sb.append(", mIntermittentEffectId=");
        sb.append(this.mIntermittentEffectId);
        sb.append(", mFixedEffectId=");
        sb.append(this.mFixedEffectId);
        sb.append(", mRandomEffectId=");
        sb.append(this.mRandomEffectId);
        sb.append(", mIsAffectedByGlobalSwitch=");
        sb.append(this.mIsAffectedByGlobalSwitch);
        sb.append(", mSupportCustomEffect=");
        sb.append(this.mSupportCustomEffect);
        sb.append(", mSupportColor=");
        sb.append(this.mSupportColor);
        sb.append(", mSupportLightingDisplay=");
        sb.append(this.mSupportLightingDisplay);
        sb.append(", mFft=");
        sb.append(this.mFft);
        sb.append(", mLoop=");
        sb.append(this.mLoop);
        sb.append(", mLedModeName=");
        sb.append(this.mLedModeName);
        sb.append(", mPara1=");
        sb.append(this.mPara1);
        sb.append(", mPara2=");
        sb.append(this.mPara2);
        sb.append(", mPara3=");
        sb.append(this.mPara3);
        sb.append(", mSubPriority=");
        sb.append(this.mSubPriority);
        sb.append(", mSupportEffects=[");
        if (this.mSupportEffects != null) {
            sb.append("size=");
            sb.append(this.mSupportEffects.size());
            if (this.mSupportEffects.size() > 0) {
                sb.append(", effectIds=[");
                for (int i = 0; i < this.mSupportEffects.size(); i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(this.mSupportEffects.keyAt(i));
                }
                sb.append("]");
            }
        } else {
            sb.append("null");
        }
        sb.append("]");
        sb.append(", mBundle=");
        Bundle bundle = this.mBundle;
        if (bundle != null) {
            sb.append(bundle.toString());
        } else {
            sb.append("null");
        }
        sb.append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }
}
