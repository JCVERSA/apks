package com.transsion.onlinevideo.tiktok.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.tiktok.widget.TiktokShortVideoPlayer;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.render.GSYRenderProxy;
import com.transsion.vishaplayersdk.gsyplayer.utils.GSYVideoType;
import com.transsion.vishaplayersdk.gsyplayer.video.StandardGSYVideoPlayer;
import com.transsion.vishaplayersdk.widgets.ErrorRefreshLayer;
import defpackage.c74;
import defpackage.h27;
import defpackage.o18;
import defpackage.y45;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001d\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 w2\u00020\u0001:\u0001xB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u001d\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0006\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0016\u0010\u0017J;\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001c\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001e\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000fH\u0014¢\u0006\u0004\b!\u0010\u0017J\u0017\u0010#\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u0018H\u0014¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\u000f¢\u0006\u0004\b%\u0010\u0017J\u0019\u0010'\u001a\u00020\u000f2\b\b\u0002\u0010&\u001a\u00020\u0004H\u0007¢\u0006\u0004\b'\u0010\u0011J\u0015\u0010(\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020\u0004¢\u0006\u0004\b(\u0010\u0011J\r\u0010)\u001a\u00020\u000f¢\u0006\u0004\b)\u0010\u0017J\u000f\u0010*\u001a\u00020\u000fH\u0016¢\u0006\u0004\b*\u0010\u0017J\u0017\u0010,\u001a\u00020\u000f2\u0006\u0010+\u001a\u00020\u0004H\u0016¢\u0006\u0004\b,\u0010\u0011J\u000f\u0010\u000e\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u000e\u0010\u0017J\r\u0010-\u001a\u00020\u000f¢\u0006\u0004\b-\u0010\u0017J\r\u0010.\u001a\u00020\u000f¢\u0006\u0004\b.\u0010\u0017J\r\u0010/\u001a\u00020\u000f¢\u0006\u0004\b/\u0010\u0017J\r\u00100\u001a\u00020\u000f¢\u0006\u0004\b0\u0010\u0017J\r\u00101\u001a\u00020\u0004¢\u0006\u0004\b1\u00102J\r\u00103\u001a\u00020\u000f¢\u0006\u0004\b3\u0010\u0017J\u0017\u00105\u001a\u00020\u000f2\b\b\u0002\u00104\u001a\u00020\u0004¢\u0006\u0004\b5\u0010\u0011J\u000f\u00106\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b6\u00107J\r\u00109\u001a\u000208¢\u0006\u0004\b9\u0010:J\u0015\u0010<\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020\u0004¢\u0006\u0004\b<\u0010\u0011J\r\u0010=\u001a\u00020\u0004¢\u0006\u0004\b=\u00102J\r\u0010>\u001a\u00020\u000f¢\u0006\u0004\b>\u0010\u0017J\r\u0010?\u001a\u00020\u0004¢\u0006\u0004\b?\u00102J\u000f\u0010A\u001a\u0004\u0018\u00010@¢\u0006\u0004\bA\u0010BJ\r\u0010C\u001a\u00020\u000f¢\u0006\u0004\bC\u0010\u0017J\u0017\u0010F\u001a\u00020\u00042\u0006\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bF\u0010GJ\r\u0010H\u001a\u00020\u000f¢\u0006\u0004\bH\u0010\u0017J\r\u0010I\u001a\u00020\u000f¢\u0006\u0004\bI\u0010\u0017J\r\u0010J\u001a\u00020\u0004¢\u0006\u0004\bJ\u00102J\r\u0010K\u001a\u00020\u000f¢\u0006\u0004\bK\u0010\u0017J\r\u0010L\u001a\u00020\u0004¢\u0006\u0004\bL\u00102J\r\u0010M\u001a\u00020\u000f¢\u0006\u0004\bM\u0010\u0017J\u0017\u0010O\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u000bH\u0016¢\u0006\u0004\bO\u0010PJ!\u0010O\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u000b2\b\u0010Q\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\bO\u0010RJ\r\u0010S\u001a\u00020\u000f¢\u0006\u0004\bS\u0010\u0017J\r\u0010T\u001a\u00020\u0004¢\u0006\u0004\bT\u00102J\r\u0010U\u001a\u00020\u0004¢\u0006\u0004\bU\u00102J\r\u0010V\u001a\u00020\u0004¢\u0006\u0004\bV\u00102J\u000f\u0010W\u001a\u00020\u000fH\u0002¢\u0006\u0004\bW\u0010\u0017J\u0017\u0010Y\u001a\u00020\u000f2\u0006\u0010X\u001a\u00020\u0004H\u0002¢\u0006\u0004\bY\u0010\u0011J\u000f\u0010Z\u001a\u00020\u000fH\u0002¢\u0006\u0004\bZ\u0010\u0017J\u000f\u0010[\u001a\u00020\u000fH\u0002¢\u0006\u0004\b[\u0010\u0017J\u0017\u0010\\\u001a\u00020\u00042\u0006\u0010N\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\\\u0010]J\u0017\u0010^\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u000bH\u0002¢\u0006\u0004\b^\u0010PJ\u0017\u0010_\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020\u000bH\u0002¢\u0006\u0004\b_\u0010PJ\u000f\u0010`\u001a\u00020\u000fH\u0002¢\u0006\u0004\b`\u0010\u0017R\u0016\u0010c\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010bR\u0016\u0010e\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010bR\u0016\u0010g\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010bR\u0018\u0010j\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010l\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010bR\u0016\u0010n\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010bR*\u0010v\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010o8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010u¨\u0006y"}, d2 = {"Lcom/transsion/onlinevideo/tiktok/widget/TiktokShortVideoPlayer;", "Lcom/transsion/vishaplayersdk/gsyplayer/video/StandardGSYVideoPlayer;", "Landroid/content/Context;", "context", "", "fullFlag", MethodDecl.initName, "(Landroid/content/Context;Z)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getLayoutId", "()I", "startAfterPrepared", "Lzfb;", "setStartAfterPrepared", "(Z)V", "Landroid/view/MotionEvent;", "ev", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "hideAllWidget", "()V", "", "deltaX", "", "seekTime", "seekTimePosition", "totalTime", "totalTimeDuration", "showProgressDialog", "(FLjava/lang/String;ILjava/lang/String;I)V", "dismissProgressDialog", "percent", "showBrightnessDialog", "(F)V", "applyFullScreenScaleMode", "sessionMuted", "configureTtMutePolicyOnEnter", "syncTtSessionMute", "clearTtAudioFocusPolicyOnLeave", "startPlay", "seek", "onVideoResume", "startMediaManagerPlayback", "releaseForPageSwitch", "pauseForHostBackground", "resumeFromHostBackground", "needsFullReinitAfterHostReturn", "()Z", "forceReleaseForHostReinit", "autoStartAfterPrepared", "prepareSurfaceAndStartPlay", "getPlayerErrMsgForLog", "()Ljava/lang/String;", "", "getPlaybackPositionMs", "()J", "hold", "setUserPauseHoldAcrossHostResume", "isUserPauseHoldAcrossHostResume", "snapshotPauseCoverForSurfaceLoss", "hasPausedFrameForSurfaceLoss", "Landroid/graphics/Bitmap;", "takePausedFrameBitmap", "()Landroid/graphics/Bitmap;", "clearPausedFrameForSurfaceLoss", "Landroid/view/Surface;", "surface", "onSurfaceDestroyed", "(Landroid/view/Surface;)Z", "ensurePausedForUserHold", "startAfterPreparedFromUserResume", "isOwningSharedPlayer", "resumeAfterPlayError", "isPreparedBeforeNetworkConsent", "resumeAfterNetworkConsent", "type", "showErrorLayer", "(I)V", NotificationCompat.CATEGORY_MESSAGE, "(ILjava/lang/String;)V", "dismissNetworkErrorLayers", "isNetworkBlockRetryPending", "isNetworkBlockLayerActive", "isNetworkErrorShowing", "K", "clearForeignIntent", ExifInterface.LONGITUDE_EAST, "O", "L", "N", "(I)Z", "I", "H", "F", "b", "Z", "mTtSessionMuted", "c", "mUserPauseHoldAcrossHostResume", "d", "mSurfaceLostWhileUserPaused", "e", "Landroid/graphics/Bitmap;", "mPausedFrameForSurfaceLoss", "f", "mPlayErrorLayerPending", GslbInterceptor.HEADER_KEY_GSLB, "mNetworkBlockLayerActive", "Lkotlin/Function0;", CmcdData.STREAMING_FORMAT_HLS, "Lc74;", "getMOnNetworkBlockShown", "()Lc74;", "setMOnNetworkBlockShown", "(Lc74;)V", "mOnNetworkBlockShown", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TiktokShortVideoPlayer extends StandardGSYVideoPlayer {

    public boolean mTtSessionMuted;

    public boolean mUserPauseHoldAcrossHostResume;

    public boolean mSurfaceLostWhileUserPaused;

    public Bitmap mPausedFrameForSurfaceLoss;

    public boolean mPlayErrorLayerPending;

    public boolean mNetworkBlockLayerActive;

    public c74 mOnNetworkBlockShown;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public TiktokShortVideoPlayer(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        y45.j(context, "context");
    }

    public static final void G(TiktokShortVideoPlayer tiktokShortVideoPlayer) {
        ViewGroup viewGroup = tiktokShortVideoPlayer.mErrorContainer;
        if (viewGroup != null) {
            viewGroup.setVisibility(0);
            viewGroup.bringToFront();
        }
    }

    public static final void J(TiktokShortVideoPlayer tiktokShortVideoPlayer) {
        tiktokShortVideoPlayer.mPlayErrorLayerPending = false;
    }

    public static final void M(TiktokShortVideoPlayer tiktokShortVideoPlayer) {
        if (tiktokShortVideoPlayer.isCurrentMediaListener()) {
            tiktokShortVideoPlayer.setStartAfterPrepared(true);
            if (tiktokShortVideoPlayer.mTextureViewContainer.getChildCount() == 0) {
                tiktokShortVideoPlayer.addTextureView();
            }
            tiktokShortVideoPlayer.startPlay();
        }
    }

    public static void configureTtMutePolicyOnEnter$default(TiktokShortVideoPlayer tiktokShortVideoPlayer, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        tiktokShortVideoPlayer.configureTtMutePolicyOnEnter(z);
    }

    public static void prepareSurfaceAndStartPlay$default(TiktokShortVideoPlayer tiktokShortVideoPlayer, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        tiktokShortVideoPlayer.prepareSurfaceAndStartPlay(z);
    }

    public final void E(boolean clearForeignIntent) {
        GSYVideoManager gSYVideoManagerInstance = GSYVideoManager.instance();
        gSYVideoManagerInstance.setPauseOnAudioFocusLoss(true);
        if (clearForeignIntent) {
            gSYVideoManagerInstance.clearUserMuteIntent();
        }
        gSYVideoManagerInstance.setPageDefaultMute(this.mTtSessionMuted);
        gSYVideoManagerInstance.setNeedMute(this.mTtSessionMuted);
        gSYVideoManagerInstance.setSystemTemporarilyMuted(false);
    }

    public final void F() {
        post(new Runnable() {
            @Override
            public final void run() {
                TiktokShortVideoPlayer.G(this.b);
            }
        });
    }

    public final void H(int type) {
        if (type == 1001) {
            hideErrorLayer(1002);
        } else {
            if (type != 1002) {
                return;
            }
            hideErrorLayer(1001);
        }
    }

    public final void I(int type) {
        if (type != 1000) {
            return;
        }
        this.mPlayErrorLayerPending = true;
        post(new Runnable() {
            @Override
            public final void run() {
                TiktokShortVideoPlayer.J(this.b);
            }
        });
    }

    public final void K() {
        E(true);
    }

    public final void L() {
        try {
            getGSYVideoManager().releaseMediaPlayer();
        } catch (Throwable th) {
            Log.w("TiktokShortVideoPlayer", "restartPrepareAfterNetworkConsent release: " + th.getMessage());
        }
        post(new Runnable() {
            @Override
            public final void run() {
                TiktokShortVideoPlayer.M(this.b);
            }
        });
    }

    public final boolean N(int type) {
        ErrorRefreshLayer errorRefreshLayer;
        if (type != 1000) {
            return false;
        }
        if (this.mPlayErrorLayerPending) {
            return true;
        }
        return this.mbShowError && this.mErrorType == type && (errorRefreshLayer = this.mErrorlayersMap.get(Integer.valueOf(type))) != null && errorRefreshLayer.getVisibility() == 0;
    }

    public final void O() {
        o18.i();
        h27.c().e(AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new Object[0]);
    }

    public final void applyFullScreenScaleMode() {
        GSYVideoType.setShowType(4);
        changeTextureViewShowType();
        requestLayout();
    }

    public final void clearPausedFrameForSurfaceLoss() {
        this.mSurfaceLostWhileUserPaused = false;
        Bitmap bitmap = this.mPausedFrameForSurfaceLoss;
        if (bitmap != null) {
            bitmap.recycle();
        }
        this.mPausedFrameForSurfaceLoss = null;
    }

    public final void clearTtAudioFocusPolicyOnLeave() {
        GSYVideoManager.instance().setPauseOnAudioFocusLoss(false);
    }

    public final void configureTtMutePolicyOnEnter() {
        configureTtMutePolicyOnEnter$default(this, false, 1, null);
    }

    public final void dismissNetworkErrorLayers() {
        hideErrorLayer(1002);
        hideErrorLayer(1001);
        hideAllErrorViews();
        this.mbShowError = false;
        this.mNetworkBlockLayerActive = false;
    }

    @Override
    public void dismissProgressDialog() {
        View view = this.mProgressTimeDialog;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public final void ensurePausedForUserHold() {
        if (this.mUserPauseHoldAcrossHostResume) {
            setStartAfterPrepared(false);
            try {
                if (getCurrentState() != 2 && getCurrentState() != 3) {
                    return;
                }
                onVideoPause();
            } catch (Throwable th) {
                Log.w("TiktokShortVideoPlayer", "ensurePausedForUserHold: " + th.getMessage());
            }
        }
    }

    public final void forceReleaseForHostReinit() {
        dismissNetworkErrorLayers();
        try {
            clearTtAudioFocusPolicyOnLeave();
            getGSYVideoManager().releaseMediaPlayer();
        } catch (Throwable th) {
            Log.w("TiktokShortVideoPlayer", "forceReleaseForHostReinit releaseMediaPlayer: " + th.getMessage());
        }
        try {
            if (!isCurrentMediaListener()) {
                stopPlay();
                return;
            }
            setStateAndUi(0);
            getGSYVideoManager().setListener(null);
            getGSYVideoManager().setLastListener(null);
            ViewGroup viewGroup = this.mTextureViewContainer;
            if (viewGroup != null && viewGroup.getChildCount() > 0) {
                this.mTextureViewContainer.removeAllViews();
            }
            this.mTextureView = null;
        } catch (Throwable th2) {
            Log.w("TiktokShortVideoPlayer", "forceReleaseForHostReinit cleanup: " + th2.getMessage());
        }
    }

    @Override
    public int getLayoutId() {
        return R.layout.layout_tiktok_short_player;
    }

    public final c74 getMOnNetworkBlockShown() {
        return this.mOnNetworkBlockShown;
    }

    public final long getPlaybackPositionMs() {
        return getGSYVideoManager().getCurrentPosition();
    }

    public final String getPlayerErrMsgForLog() {
        return this.mPlayerErrMsg;
    }

    public final boolean hasPausedFrameForSurfaceLoss() {
        Bitmap bitmap = this.mPausedFrameForSurfaceLoss;
        return (bitmap == null || bitmap.isRecycled()) ? false : true;
    }

    @Override
    public void hideAllWidget() {
    }

    public final boolean getMNetworkBlockLayerActive() {
        return this.mNetworkBlockLayerActive;
    }

    public final boolean isNetworkBlockRetryPending() {
        return this.mNetworkBlockLayerActive || isNetworkErrorShowing();
    }

    public final boolean isNetworkErrorShowing() {
        ViewGroup viewGroup = this.mErrorContainer;
        if (viewGroup != null && viewGroup.getVisibility() == 0) {
            Map<Integer, ErrorRefreshLayer> map = this.mErrorlayersMap;
            y45.i(map, "mErrorlayersMap");
            for (Map.Entry<Integer, ErrorRefreshLayer> entry : map.entrySet()) {
                Integer key = entry.getKey();
                ErrorRefreshLayer value = entry.getValue();
                if ((key != null && key.intValue() == 1002) || (key != null && key.intValue() == 1001)) {
                    if (value != null && value.getVisibility() == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean isOwningSharedPlayer() {
        return isCurrentMediaListener();
    }

    public final boolean isPreparedBeforeNetworkConsent() {
        return this.mHadPrepared;
    }

    public final boolean getMUserPauseHoldAcrossHostResume() {
        return this.mUserPauseHoldAcrossHostResume;
    }

    public final boolean needsFullReinitAfterHostReturn() {
        ViewGroup viewGroup;
        if (!isCurrentMediaListener() || (viewGroup = this.mTextureViewContainer) == null || viewGroup.getChildCount() == 0) {
            return true;
        }
        int currentState = getCurrentState();
        return (currentState == 2 || currentState == 3 || currentState == 5) ? false : true;
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        y45.j(ev, "ev");
        return super.onInterceptTouchEvent(ev);
    }

    @Override
    public boolean onSurfaceDestroyed(Surface surface) {
        y45.j(surface, "surface");
        if (this.mUserPauseHoldAcrossHostResume && getCurrentState() == 5) {
            this.mSurfaceLostWhileUserPaused = true;
            Log.d("TiktokShortVideoPlayer", "onSurfaceDestroyed while userPaused, hasFrame=" + hasPausedFrameForSurfaceLoss());
        }
        return super.onSurfaceDestroyed(surface);
    }

    @Override
    public void onVideoResume(boolean seek) {
        K();
        O();
        super.onVideoResume(seek);
        K();
    }

    public final void pauseForHostBackground() {
        try {
            clearTtAudioFocusPolicyOnLeave();
            if (isCurrentMediaListener()) {
                GSYVideoManager gSYVideoManagerInstance = GSYVideoManager.instance();
                gSYVideoManagerInstance.gotoBackground();
                gSYVideoManagerInstance.onActivityStop();
            }
        } catch (Throwable th) {
            Log.w("TiktokShortVideoPlayer", "pauseForHostBackground: " + th.getMessage());
        }
    }

    public final void prepareSurfaceAndStartPlay(boolean autoStartAfterPrepared) {
        addTextureView();
        setStartAfterPrepared(autoStartAfterPrepared);
        startPlay();
    }

    public final void releaseForPageSwitch() {
        dismissNetworkErrorLayers();
        try {
            clearTtAudioFocusPolicyOnLeave();
            if (isCurrentMediaListener()) {
                if (getGSYVideoManager().isPlaying()) {
                    onVideoPause();
                }
                setStateAndUi(0);
                getGSYVideoManager().setListener(null);
                getGSYVideoManager().setLastListener(null);
            } else {
                stopPlay();
            }
            setVideoAllCallBack(null);
        } catch (Throwable th) {
            Log.w("TiktokShortVideoPlayer", "releaseForPageSwitch: " + th.getMessage());
        }
    }

    public final void resumeAfterNetworkConsent() {
        int currentState;
        this.mbShowError = false;
        dismissNetworkErrorLayers();
        setStartAfterPrepared(true);
        if (!isCurrentMediaListener() || (currentState = getCurrentState()) == 1 || currentState == 2) {
            return;
        }
        if (currentState != 3 && currentState != 5) {
            L();
        } else if (this.mHadPrepared) {
            startAfterPrepared();
        } else {
            L();
        }
    }

    public final void resumeAfterPlayError() {
        this.mPlayErrorLayerPending = false;
        this.mbShowError = false;
        hideErrorLayer(1000);
        hideAllErrorViews();
        setStartAfterPrepared(true);
        startPlay();
    }

    public final void resumeFromHostBackground() {
        if (this.mUserPauseHoldAcrossHostResume) {
            Log.d("TiktokShortVideoPlayer", "resumeFromHostBackground skip: user pause hold");
            ensurePausedForUserHold();
            return;
        }
        try {
            GSYVideoManager gSYVideoManagerInstance = GSYVideoManager.instance();
            gSYVideoManagerInstance.backToFront();
            if (isCurrentMediaListener() && !gSYVideoManagerInstance.getIsPausedByUser() && !isSwitchResolutionNeedVip()) {
                K();
                O();
                gSYVideoManagerInstance.onActivityStart(isInPlayingState());
                K();
            }
        } catch (Throwable th) {
            Log.w("TiktokShortVideoPlayer", "resumeFromHostBackground: " + th.getMessage());
        }
    }

    public final void setMOnNetworkBlockShown(c74 c74Var) {
        this.mOnNetworkBlockShown = c74Var;
    }

    @Override
    public void setStartAfterPrepared(boolean startAfterPrepared) {
        if (isStartAfterPrepared() == startAfterPrepared) {
            return;
        }
        super.setStartAfterPrepared(startAfterPrepared);
    }

    public final void setUserPauseHoldAcrossHostResume(boolean hold) {
        this.mUserPauseHoldAcrossHostResume = hold;
        if (hold) {
            return;
        }
        clearPausedFrameForSurfaceLoss();
    }

    @Override
    public void showBrightnessDialog(float percent) {
        if (this.mVolumeBrightnessConatiner == null) {
            return;
        }
        super.showBrightnessDialog(percent);
    }

    @Override
    public void showErrorLayer(int type) {
        if (type == 1001 || type == 1002) {
            this.mNetworkBlockLayerActive = true;
            c74 c74Var = this.mOnNetworkBlockShown;
            if (c74Var != null) {
                c74Var.invoke();
            }
        }
        if (N(type)) {
            return;
        }
        I(type);
        H(type);
        super.showErrorLayer(type);
        F();
    }

    @Override
    public void showProgressDialog(float deltaX, String seekTime, int seekTimePosition, String totalTime, int totalTimeDuration) {
        if (this.mProgressTimeDialog == null || this.mProgressTextView == null || this.mProgressDuration == null) {
            return;
        }
        super.showProgressDialog(deltaX, seekTime, seekTimePosition, totalTime, totalTimeDuration);
    }

    public final void snapshotPauseCoverForSurfaceLoss() {
        Bitmap bitmapInitCover;
        if (this.mUserPauseHoldAcrossHostResume && getCurrentState() == 5 && isCurrentMediaListener()) {
            Bitmap bitmap = this.mPausedFrameForSurfaceLoss;
            if (bitmap != null) {
                y45.g(bitmap);
                if (!bitmap.isRecycled()) {
                    Log.d("TiktokShortVideoPlayer", "snapshotPauseCoverForSurfaceLoss skip: already have frame");
                    return;
                }
            }
            try {
                GSYRenderProxy renderProxy = getRenderProxy();
                if (renderProxy != null && (bitmapInitCover = renderProxy.initCover()) != null) {
                    this.mPausedFrameForSurfaceLoss = bitmapInitCover;
                    Log.d("TiktokShortVideoPlayer", "snapshotPauseCoverForSurfaceLoss ok");
                }
            } catch (Throwable th) {
                Log.w("TiktokShortVideoPlayer", "snapshotPauseCoverForSurfaceLoss: " + th.getMessage());
            }
        }
    }

    @Override
    public void startAfterPrepared() {
        if (isStartAfterPrepared()) {
            this.mPauseBeforePrepared = false;
        }
        K();
        O();
        super.startAfterPrepared();
        K();
    }

    public final void startAfterPreparedFromUserResume() {
        this.mPauseBeforePrepared = false;
        setStartAfterPrepared(true);
        setUserPauseHoldAcrossHostResume(false);
        startAfterPrepared();
    }

    public final void startMediaManagerPlayback() {
        K();
        O();
        getGSYVideoManager().start();
        K();
    }

    @Override
    public void startPlay() {
        K();
        O();
        super.startPlay();
        K();
    }

    public final void syncTtSessionMute(boolean sessionMuted) {
        this.mTtSessionMuted = sessionMuted;
        GSYVideoManager gSYVideoManagerInstance = GSYVideoManager.instance();
        gSYVideoManagerInstance.setPauseOnAudioFocusLoss(true);
        gSYVideoManagerInstance.setPageDefaultMute(sessionMuted);
        gSYVideoManagerInstance.setNeedMute(sessionMuted);
    }

    public final Bitmap takePausedFrameBitmap() {
        this.mSurfaceLostWhileUserPaused = false;
        Bitmap bitmap = this.mPausedFrameForSurfaceLoss;
        this.mPausedFrameForSurfaceLoss = null;
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        return bitmap;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TiktokShortVideoPlayer(Context context, boolean z) {
        super(context, Boolean.valueOf(z));
        y45.j(context, "context");
        this.mTtSessionMuted = true;
    }

    public final void configureTtMutePolicyOnEnter(boolean sessionMuted) {
        this.mTtSessionMuted = sessionMuted;
        E(true);
    }

    public TiktokShortVideoPlayer(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TiktokShortVideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
        this.mTtSessionMuted = true;
    }

    @Override
    public void showErrorLayer(int type, String msg) {
        if (type == 1001 || type == 1002) {
            this.mNetworkBlockLayerActive = true;
            c74 c74Var = this.mOnNetworkBlockShown;
            if (c74Var != null) {
                c74Var.invoke();
            }
        }
        if (N(type)) {
            return;
        }
        I(type);
        H(type);
        super.showErrorLayer(type, msg);
        F();
    }
}
