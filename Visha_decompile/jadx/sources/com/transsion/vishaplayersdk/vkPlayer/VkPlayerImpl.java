package com.transsion.vishaplayersdk.vkPlayer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbService;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.base.config.ControllerLayoutConfig;
import com.transsion.vishaplayersdk.base.config.PlayerConstant;
import com.transsion.vishaplayersdk.base.config.PlayerError;
import com.transsion.vishaplayersdk.gsyplayer.base.MediaPlayerImpl;
import com.transsion.vishaplayersdk.gsyplayer.base.model.GSYModel;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import defpackage.wz5;
import io.appmetrica.analytics.coreutils.internal.StringUtils;

public class VkPlayerImpl extends MediaPlayerImpl implements AnalyticsListener {
    private static final String TAG = PlayerConstant.TAG_GLOBAL_PREFIX_PLAYER + VkPlayerImpl.class.getSimpleName();
    private View mCustomView;
    private WebChromeClient.CustomViewCallback mCustomViewCallback;
    private VkPlayerJsCallback mJsCallback;
    private int mVideoHeight;
    private int mVideoWidth;
    protected WebView mVkPlayer;
    private boolean mPlaying = false;
    private int mCurrentTime = -1;
    private int mDuration = -1;
    private boolean mMuted = true;
    private boolean mInitMute = true;
    private int mFirstInitEd = 0;
    private boolean mNeedCheckTouch = false;

    public static class VkPlayerJsCallback {
        private String lastEvent;
        private long lastInitTime;
        private VkPlayerImpl mVkPlayer;
        private final long refreshMuteTime = 1000;
        private final int checkTimeNum = 2;

        public VkPlayerJsCallback(VkPlayerImpl vkPlayerImpl) {
            this.mVkPlayer = vkPlayerImpl;
        }

        public void lambda$on$0() {
            VkPlayerImpl vkPlayerImpl = this.mVkPlayer;
            if (vkPlayerImpl != null) {
                vkPlayerImpl.setMute(false);
            }
        }

        public void lambda$on$1() {
            VkPlayerImpl vkPlayerImpl = this.mVkPlayer;
            if (vkPlayerImpl != null) {
                vkPlayerImpl.start();
            }
        }

        public void destroy() {
            this.mVkPlayer = null;
        }

        /* JADX WARN: Code duplicated, block: B:46:0x011e  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        @JavascriptInterface
        public void on(String str, String str2) {
            byte b;
            Log.i(VkPlayerImpl.TAG, "on eventName: " + str + ", data: " + str2);
            this.lastEvent = str;
            try {
                JSONObject object = JSON.parseObject(str2);
                boolean z = this.mVkPlayer.mPlaying;
                int i = this.mVkPlayer.mCurrentTime;
                boolean z2 = this.mVkPlayer.mMuted;
                if (object != null) {
                    this.mVkPlayer.mPlaying = VkConstant.VK_PLAYING.equals(object.getString(ICode.CALL.CALL_KEY_STATE));
                    this.mVkPlayer.mCurrentTime = object.getIntValue("time");
                    this.mVkPlayer.mDuration = object.getIntValue("duration");
                    this.mVkPlayer.mMuted = object.getBooleanValue("muted");
                } else {
                    Log.w(VkPlayerImpl.TAG, "on jsonObject isNull");
                }
                if (!this.mVkPlayer.mPlaying && z) {
                    this.mVkPlayer.postNotificationMsg(1015, new Object[0]);
                    wz5.N("pause");
                } else if (this.mVkPlayer.mPlaying && !z) {
                    wz5.N(PlayAudioData.TAG_NEED_PLAY);
                }
                int i2 = i - this.mVkPlayer.mCurrentTime;
                if (i2 > 2) {
                    wz5.N("retreat");
                } else if (i2 < -2) {
                    wz5.N("forward");
                }
                if (this.mVkPlayer.mMuted && !z2) {
                    wz5.N("mute");
                }
            } catch (Exception e) {
                LogUtils.l(VkPlayerImpl.TAG, "on_error: " + e.getMessage());
            }
            try {
                switch (str.hashCode()) {
                    case -1897185151:
                        if (!str.equals(VkConstant.VK_EVENT_STARTED)) {
                            b = -1;
                        } else {
                            b = 0;
                        }
                        break;
                    case -1184076369:
                        if (!str.equals(VkConstant.VK_EVENT_INIT_ED)) {
                            b = -1;
                        } else {
                            b = 3;
                        }
                        break;
                    case -995321554:
                        if (!str.equals("paused")) {
                            b = -1;
                        } else {
                            b = 1;
                        }
                        break;
                    case 96784904:
                        if (!str.equals("error")) {
                            b = -1;
                        } else {
                            b = 2;
                        }
                        break;
                    default:
                        b = -1;
                        break;
                }
                if (b == 0) {
                    this.mVkPlayer.notifyOnPrepared();
                    this.mVkPlayer.notifyStartPlay();
                    return;
                }
                if (b == 1) {
                    this.mVkPlayer.postNotificationMsg(1015, new Object[0]);
                    return;
                }
                if (b == 2) {
                    this.mVkPlayer.postErrorState(Boolean.TRUE, "");
                    return;
                }
                if (b != 3) {
                    return;
                }
                if (this.mVkPlayer.mFirstInitEd == 0) {
                    Log.i(VkPlayerImpl.TAG, "1 initMute: " + this.mVkPlayer.mInitMute);
                    if (!this.mVkPlayer.mInitMute && this.mVkPlayer.mMuted) {
                        ThreadUtils.s(new Runnable() {
                            @Override
                            public final void run() {
                                this.b.lambda$on$0();
                            }
                        });
                    }
                    this.mVkPlayer.mFirstInitEd = 1;
                } else if (this.mVkPlayer.mFirstInitEd == 1) {
                    if (!this.mVkPlayer.isPlaying()) {
                        Log.i(VkPlayerImpl.TAG, "initStart");
                        ThreadUtils.s(new Runnable() {
                            @Override
                            public final void run() {
                                this.b.lambda$on$1();
                            }
                        });
                    }
                    this.mVkPlayer.mFirstInitEd = 2;
                }
                this.lastInitTime = System.currentTimeMillis();
            } catch (Exception e2) {
                Log.w(VkPlayerImpl.TAG, "on_error: " + e2.getMessage());
            }
        }
    }

    public enum VkPlayerMethod {
        GET_CURRENT_TIME("getCurrentTime()", Integer.class),
        PLAY("play()"),
        PAUSE("pause()"),
        SEEK("seek"),
        SEEK_LIVE("seekLive()"),
        SET_VOLUME("setVolume"),
        GET_VOLUME("getVolume()", Float.class),
        GET_DURATION("getDuration()", Integer.class),
        GET_QUALITY("getQuality()"),
        MUTE("mute()"),
        UN_MUTE("unmute()"),
        IS_MUTED("isMuted()", Boolean.class),
        GET_STATE("getState()", String.class),
        DESTROY("destroy()");

        private static final String JS_METHOD_CALL_PREFIX = "javascript:window.";
        private static final String JS_METHOD_CALL_SUFFIX = "";
        private final String methodName;
        public final Class<?> resultType;

        VkPlayerMethod(String str) {
            this.methodName = str;
            this.resultType = Void.TYPE;
        }

        public String createJsMethodCall() {
            return JS_METHOD_CALL_PREFIX + this.methodName + "";
        }

        public String createJsMethodCall(Object... objArr) {
            StringBuilder sb = new StringBuilder();
            sb.append(JS_METHOD_CALL_PREFIX);
            sb.append(this.methodName);
            sb.append("(");
            for (int i = 0; i < objArr.length; i++) {
                sb.append(objArr[i]);
                if (i != objArr.length - 1) {
                    sb.append(StringUtils.COMMA);
                }
            }
            sb.append(")");
            return sb.toString();
        }

        VkPlayerMethod(String str, Class cls) {
            this.methodName = str;
            this.resultType = cls;
        }
    }

    public boolean lambda$initPlayer$0(View view, MotionEvent motionEvent) {
        if (!this.mNeedCheckTouch || !isPlaying()) {
            return false;
        }
        ViewParent parent = this.mVkPlayer.getParent();
        if (parent == null) {
            return true;
        }
        ((ViewGroup) parent).onTouchEvent(motionEvent);
        return true;
    }

    private void refreshView(ViewGroup viewGroup) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        View view = this.mVkPlayer;
        if (view != null) {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            viewGroup.addView(view, layoutParams);
            this.mVkPlayer.setWebChromeClient(new WebChromeClient(viewGroup) {
                private final Activity parentActivity;
                final ViewGroup val$parent;

                {
                    this.val$parent = viewGroup;
                    this.parentActivity = (Activity) viewGroup.getContext();
                }

                private void hideSystemUI() {
                    this.parentActivity.getWindow().getDecorView().setSystemUiVisibility(4102);
                }

                private void showSystemUI() {
                    this.parentActivity.getWindow().getDecorView().setSystemUiVisibility(0);
                }

                @Override
                public void onHideCustomView() {
                    this.parentActivity.setRequestedOrientation(1);
                    if (VkPlayerImpl.this.mCustomView != null) {
                        ((FrameLayout) this.parentActivity.getWindow().getDecorView()).removeView(VkPlayerImpl.this.mCustomView);
                        VkPlayerImpl.this.mCustomView = null;
                    }
                    if (VkPlayerImpl.this.mCustomViewCallback != null) {
                        VkPlayerImpl.this.mCustomViewCallback.onCustomViewHidden();
                        VkPlayerImpl.this.mCustomViewCallback = null;
                    }
                    showSystemUI();
                    wz5.O("videomode", "miniplayer");
                    wz5.N("vert_play");
                }

                @Override
                public void onShowCustomView(View view2, WebChromeClient.CustomViewCallback customViewCallback) {
                    this.parentActivity.setRequestedOrientation(0);
                    VkPlayerImpl.this.mCustomView = view2;
                    VkPlayerImpl.this.mCustomViewCallback = customViewCallback;
                    ((FrameLayout) this.parentActivity.getWindow().getDecorView()).addView(VkPlayerImpl.this.mCustomView, new FrameLayout.LayoutParams(-1, -1));
                    hideSystemUI();
                    wz5.O("videomode", "player");
                }
            });
        }
    }

    @Override
    public long getCurrentPosition() {
        return this.mCurrentTime;
    }

    @Override
    public long getDuration() {
        return this.mDuration;
    }

    @Override
    public int getVideoHeight() {
        Log.i(TAG, "getVideoHeight: " + this.mVideoHeight);
        return this.mVideoHeight;
    }

    @Override
    public int getVideoWidth() {
        Log.i(TAG, "getVideoWidth: " + this.mVideoWidth);
        return this.mVideoWidth;
    }

    @SuppressLint({"SetJavaScriptEnabled", "ClickableViewAccessibility"})
    public void initPlayer(Context context, GSYModel gSYModel) {
        WebView.setWebContentsDebuggingEnabled(true);
        if (this.mJsCallback == null) {
            this.mJsCallback = new VkPlayerJsCallback(this);
        }
        WebView webView = new WebView(context);
        this.mVkPlayer = webView;
        webView.setBackgroundResource(R.color.biometric_error_color);
        this.mVkPlayer.setWebViewClient(new WebViewClient() {
            @Override
            public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView2, webResourceRequest, webResourceError);
                Log.e(VkPlayerImpl.TAG, "Error loading page: " + ((Object) webResourceError.getDescription()));
            }

            @Override
            public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                return true;
            }
        });
        WebSettings settings = this.mVkPlayer.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setCacheMode(-1);
        settings.setMediaPlaybackRequiresUserGesture(false);
        this.mVkPlayer.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.lambda$initPlayer$0(view, motionEvent);
            }
        });
        this.mVkPlayer.addJavascriptInterface(this.mJsCallback, "AndroidVk");
        this.mVkPlayer.loadUrl(GslbService.getInstance().getDomainByApi(VkConstant.VK_URL) + VkConstant.VK_URL + Uri.encode(gSYModel.getUrl()) + "&appName=aiCalculator");
        this.mInitMute = PlayHandler.getInstance().mVkInitMute;
        this.mNeedCheckTouch = PlayHandler.getInstance().mVkTouchCheck;
        String str = TAG;
        Log.i(str, "mNeedCheckTouch: " + PlayHandler.getInstance().mVkTouchCheck);
        this.mVkPlayer.onResume();
        this.mVkPlayer.resumeTimers();
        Log.i(str, "initPlayer: " + this.mVkPlayer.getUrl());
    }

    @Override
    public boolean isPlaying() {
        if (this.mVkPlayer != null) {
            return this.mPlaying;
        }
        return false;
    }

    public void layoutPlayController(ControllerLayoutConfig controllerLayoutConfig) {
        if (this.mVkPlayer == null) {
            LogUtils.m(TAG, "layout_play_controller_failed: mVkPlayer not init");
            return;
        }
        if (controllerLayoutConfig != null && !controllerLayoutConfig.isValidConfig()) {
            refreshView(controllerLayoutConfig.getParentContainer());
            return;
        }
        LogUtils.m(TAG, "layout_play_controller_failed: invalid layout config");
        postNotificationMsg(1034, Long.valueOf(PlayerError.TRANSSION_PLAYER_ERROR_PLAYER_SET_SURFACE_FAILED));
        postNotificationMsg(1000, Boolean.TRUE, Long.valueOf(PlayerError.TRANSSION_PLAYER_ERROR_PLAYER_SET_SURFACE_FAILED));
    }

    public void onActivityPause() {
        if (this.mVkPlayer != null) {
            Log.i(TAG, "onActivityPause");
            this.mVkPlayer.onPause();
            this.mVkPlayer.pauseTimers();
        }
    }

    public void onActivityResume() {
        if (this.mVkPlayer != null) {
            Log.i(TAG, "onActivityResume");
            this.mVkPlayer.onResume();
            this.mVkPlayer.resumeTimers();
        }
    }

    @Override
    @UnstableApi
    public void onVideoSizeChanged(@NonNull AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        Log.i(TAG, "onVideoSizeChanged: " + this.mVkPlayer + ", " + videoSize);
        try {
            int i = videoSize.width;
            float f = videoSize.pixelWidthHeightRatio;
            this.mVideoWidth = (int) (i * f);
            int i2 = videoSize.height;
            this.mVideoHeight = i2;
            notifyOnVideoSizeChanged((int) (i * f), i2, 1, 1);
            int i3 = videoSize.unappliedRotationDegrees;
            if (i3 > 0) {
                notifyOnInfo(10001, i3);
            }
        } catch (IllegalStateException e) {
            Log.w(TAG, "onVideoSizeChanged: " + e.getMessage());
        }
    }

    @Override
    public void pause() throws IllegalStateException {
        Log.i(TAG, "pause: " + this.mVkPlayer + ", " + this.mPlaying);
        if (this.mVkPlayer == null || !this.mPlaying) {
            return;
        }
        this.mVkPlayer.evaluateJavascript(VkPlayerMethod.PAUSE.createJsMethodCall(Long.valueOf(System.currentTimeMillis())), null);
        this.mPlaying = false;
    }

    @Override
    public void release() {
        Log.i(TAG, "release: " + this.mVkPlayer + ", " + this.mPlaying);
        resetListeners();
        reset();
    }

    @Override
    public void reset() {
        Log.i(TAG, "reset: " + this.mVkPlayer + ", " + this.mPlaying);
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        this.mCurrentTime = -1;
        this.mDuration = -1;
        this.mMuted = true;
        this.mInitMute = true;
        this.mFirstInitEd = 0;
        this.mNeedCheckTouch = false;
        VkPlayerJsCallback vkPlayerJsCallback = this.mJsCallback;
        if (vkPlayerJsCallback != null) {
            vkPlayerJsCallback.destroy();
            this.mJsCallback = null;
        }
        if (this.mVkPlayer != null) {
            this.mVkPlayer.evaluateJavascript(VkPlayerMethod.DESTROY.createJsMethodCall(), null);
            this.mVkPlayer.stopLoading();
            this.mVkPlayer.clearHistory();
            ViewParent parent = this.mVkPlayer.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(this.mVkPlayer);
            }
            this.mVkPlayer.destroy();
            this.mVkPlayer = null;
        }
    }

    @Override
    public void seekTo(long j) throws IllegalStateException {
        Log.i(TAG, "seekTo: " + this.mVkPlayer + ", " + j);
        if (this.mVkPlayer != null) {
            this.mVkPlayer.evaluateJavascript(VkPlayerMethod.SEEK.createJsMethodCall(Long.valueOf(j / 1000)), null);
        }
    }

    public void setMute(boolean z) {
        if (this.mVkPlayer == null || z == this.mMuted) {
            return;
        }
        Log.i(TAG, "setMute: " + this.mVkPlayer + ", " + z);
        this.mVkPlayer.evaluateJavascript((z ? VkPlayerMethod.MUTE : VkPlayerMethod.UN_MUTE).createJsMethodCall(), null);
    }

    @Override
    public void start() throws IllegalStateException {
        Log.i(TAG, "start: " + this.mVkPlayer + ", " + this.mPlaying);
        if (this.mVkPlayer == null || this.mPlaying) {
            return;
        }
        this.mVkPlayer.evaluateJavascript(VkPlayerMethod.PLAY.createJsMethodCall(), null);
        this.mPlaying = true;
    }

    @Override
    public void stop() throws IllegalStateException {
        Log.i(TAG, "stop: " + this.mVkPlayer + ", " + this.mPlaying);
        pause();
    }

    @Override
    public void togglePlay() throws IllegalStateException {
        Log.i(TAG, "togglePlay: " + this.mVkPlayer + ", " + this.mPlaying);
        if (isPlaying()) {
            pause();
        } else {
            start();
        }
    }
}
