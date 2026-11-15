package com.mgmi.ads.api;

import android.graphics.Bitmap;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.mgmi.ads.api.render.AdWidgetInfo;
import com.mgmi.net.bean.CustomBootAdBean;
import java.util.List;

public abstract class a {

    public enum EnumC0161a {
        START_POSITIVE_REQUESTED,
        ON_CLICK_AUTOPLAYERVIEW,
        VIP_START_POSITIVE_REQUESTED,
        PAUSE_POSITIVE_REQUESTED,
        START_PLAY_AD,
        RESUME_POSITIVE_REQUESTED,
        ON_FOCUSHEAD_COMPLETE,
        FULLSCREEN_REQUESTED,
        USER_CLICK_FREEICON_REQUESTED,
        BACK_BUTTON_REQUEST,
        PLAYER_PROGRESS_UPDATE,
        ON_RESUME_BYUSER,
        ON_PAUSE_BYUSER,
        AD_PLAYER_FREE_NOTICE,
        AD_REQUEST_SUCCESS,
        AD_REQUEST_FAIL,
        AD_PRE_REQUEST_REACTDATA_SUCCESS,
        AD_PLAYER_ON_FIRST_FRAME,
        AD_BACK_PICTURE_IS_SHOW,
        AD_REQUEST_NET_CALLBACK,
        VIDEO_AD_START,
        AD_FINISH,
        CLOSE_AD,
        PRE_AD_PLAYER_ERROR,
        PRE_AD_PLAY_COMPLETE,
        NO_PRE_AD,
        JUMP_VIP,
        JUMP_SCHEMA,
        JUMP_HARFSCREEN_SCHEMA,
        JUMP_SHOWTIME_HARFSCREEN_SCHEMA,
        LOAD_HARFSCREEN_SCHEMA,
        AD_COUNTDOWN_NOTIFY,
        RENDER_FLOAT_WEBVIEW_NOTIFY,
        DESPEAR_FLOAT_SCHEME_NOTIFY,
        RENDER_FLOAT_SCHEME_NOTIFY,
        DESPEAR_FLOAT_NOTIFY,
        ALL_FLOAT_DESPEAR_NOTIFY,
        APPEAR_FLOAT_NOTIFY,
        AD_RENDER_READY,
        AD_RENDER_SUCCESS,
        AD_RENDER_FAIL,
        AD_PAUSED_SUCCESS,
        AD_HAS_AIAD,
        AD_NO_AIAD,
        AD_HAS_ADS,
        AD_NO_ADS,
        AD_REQUEST_START_SHOWTIME,
        AD_REQUEST_FINISH_SHOWTIME,
        AD_REQUEST_CLOSE_CLICKURL,
        AD_HAS_FOCUS,
        START_PLAY_SLIDE_AD,
        SLIDE_AD_FINISH,
        SLIDE_AD_PLAY_ERROR,
        CLOSE_PAUSE_AD,
        AD_REQUEST_HALF_COVER,
        AD_REQUEST_FULL_COVER,
        AD_COVER_FINISH,
        AD_COVER_START,
        AD_INTERACTION_START,
        AD_INTERACTION_OVER,
        SHOW_MANGO_WIKI_SCHEME_NOTIFY,
        DISPEAR_MANGO_WIKI_SCHEME_NOTIFY,
        AD_REQUEST_SHRINK_SIZE,
        AD_REQUEST_RESUME_SIZE,
        AD_REQUEST_TOUCH_EVENT,
        AD_RELEASE_TOUCH_EVENT,
        AD_VIP_TEXT_SHOW_EVENT,
        AD_NOTIFY_DIANA,
        AD_NOTIFY_HIDE_HALF_WEB,
        IMAX_BOOT_JUMP,
        AD_BACK_PICTURE_IS_FINISH,
        HALFSCREEN_REQUESTED,
        AD_COUNT_CLICK,
        AD_PAUSEAD_REPLAYER,
        AD_PREPARED,
        IMAGE_AD_START
    }

    public enum b {
        TYPE_MINIPROGRAM
    }

    public boolean canDisplayFloatAd() {
        return true;
    }

    public ViewGroup getAdViewParentCover(EnumC0161a enumC0161a) {
        return null;
    }

    public int getContentCurrentPosition() {
        return 0;
    }

    public int getContentDuration() {
        return 0;
    }

    public int getDefinition() {
        return 1;
    }

    public float getPlaySpeed() {
        return 1.0f;
    }

    public Bitmap getSnapshot(int i, int i2) {
        return null;
    }

    public int getVideoFormat() {
        return 1;
    }

    public int getVideoHeight() {
        return 0;
    }

    public int getVideoWidth() {
        return 0;
    }

    public void gotoMiniProgram(b bVar, String str, String str2, d dVar) {
    }

    public void isAdComplete(boolean z) {
    }

    public boolean isContentPlaying() {
        return true;
    }

    public boolean isContentResourceAvailable() {
        return true;
    }

    public boolean isFullScreen() {
        return true;
    }

    public boolean isMutilScreen() {
        return false;
    }

    public boolean isOpenBarrage() {
        return true;
    }

    public boolean isVideoFullScreenSwitchOn() {
        return false;
    }

    public void onADLoaded(List<com.mgtv.a.b.a.a> list) {
    }

    public void onAdListener(EnumC0161a enumC0161a, @Nullable AdWidgetInfoImp adWidgetInfoImp) {
    }

    public void onPCornerPrepared(com.mgtv.a.b.a.a aVar) {
    }

    public void onUpdateStatus(boolean z, boolean z2, boolean z3) {
    }

    public void requestChangeSize(boolean z, float f) {
    }

    public ViewGroup getAdViewParentCover(EnumC0161a enumC0161a, com.mgmi.ads.api.a.b bVar) {
        return null;
    }

    public void onAdListener(EnumC0161a enumC0161a, @Nullable CustomBootAdBean customBootAdBean) {
    }

    public void onAdListener(EnumC0161a enumC0161a, @Nullable List<AdWidgetInfo> list) {
    }
}
