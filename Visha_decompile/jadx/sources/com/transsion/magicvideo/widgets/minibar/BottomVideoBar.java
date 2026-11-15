package com.transsion.magicvideo.widgets.minibar;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.MutableLiveData;
import androidx.p004lifecycle.Observer;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.transsion.WindowInfoViewModel;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivityInner;
import com.transsion.magicvideo.model.PlayListDataNew;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.services.VideosService;
import com.transsion.magicvideo.widgets.minibar.BottomVideoBar;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.SearchResultAdapter;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.transsion.playercommon.widgets.BaseBottomBar;
import com.transsion.playercommon.widgets.banner.VideoSlideAdapter;
import com.transsion.utils.BaseConstant;
import com.transsion.utils.a;
import com.transsion.widgets.GestureUtil;
import defpackage.af9;
import defpackage.c74;
import defpackage.ccc;
import defpackage.e74;
import defpackage.h27;
import defpackage.hb0;
import defpackage.hi;
import defpackage.i81;
import defpackage.j1a;
import defpackage.j27;
import defpackage.k38;
import defpackage.o18;
import defpackage.oc2;
import defpackage.os8;
import defpackage.p06;
import defpackage.ry5;
import defpackage.ux0;
import defpackage.w6c;
import defpackage.woc;
import defpackage.y45;
import defpackage.y71;
import defpackage.z7c;
import defpackage.zfb;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000§\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007*\u0001y\b\u0016\u0018\u0000 }2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001~B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0015\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0016\u0010\u0011J\u000f\u0010\u0017\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0017\u0010\u0011J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001b\u0010\u0011J\u0019\u0010\u001d\u001a\u00020\r2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0019\u0010 \u001a\u00020\r2\b\b\u0002\u0010\u001f\u001a\u00020\u0018H\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\rH\u0002¢\u0006\u0004\b\"\u0010\u0011J\u0017\u0010$\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u0002H\u0002¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0018H\u0002¢\u0006\u0004\b&\u0010\u001aJ\u000f\u0010'\u001a\u00020\rH\u0002¢\u0006\u0004\b'\u0010\u0011J\u000f\u0010(\u001a\u00020\rH\u0002¢\u0006\u0004\b(\u0010\u0011J\u0017\u0010+\u001a\u00020\r2\u0006\u0010*\u001a\u00020)H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010.\u001a\u00020\r2\u0006\u0010-\u001a\u00020\u0018H\u0002¢\u0006\u0004\b.\u0010!J\u000f\u0010/\u001a\u00020\rH\u0014¢\u0006\u0004\b/\u0010\u0011J\u000f\u00100\u001a\u00020\rH\u0014¢\u0006\u0004\b0\u0010\u0011J\u000f\u00101\u001a\u00020\rH\u0016¢\u0006\u0004\b1\u0010\u0011J\u0017\u00103\u001a\u00020\r2\u0006\u00102\u001a\u00020\u0007H\u0016¢\u0006\u0004\b3\u0010\u0014J\u000f\u00104\u001a\u00020\rH\u0004¢\u0006\u0004\b4\u0010\u0011J\u0015\u00106\u001a\u00020\r2\u0006\u00105\u001a\u00020\u0018¢\u0006\u0004\b6\u0010!J\u0017\u00108\u001a\u00020\r2\u0006\u00107\u001a\u00020\u0018H\u0016¢\u0006\u0004\b8\u0010!J\u000f\u00109\u001a\u00020\rH\u0016¢\u0006\u0004\b9\u0010\u0011J\u001f\u0010;\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u0007H\u0016¢\u0006\u0004\b;\u0010<J\u0019\u0010>\u001a\u00020\r2\b\u0010=\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b>\u0010\u001eJ\u001f\u0010C\u001a\u00020\r2\u0006\u0010@\u001a\u00020?2\u0006\u0010B\u001a\u00020AH\u0016¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020\u0018H\u0016¢\u0006\u0004\bE\u0010\u001aJ+\u0010J\u001a\u00020\r2\u0006\u0010F\u001a\u00020\u00072\u0012\u0010I\u001a\n\u0012\u0006\b\u0001\u0012\u00020H0G\"\u00020HH\u0016¢\u0006\u0004\bJ\u0010KJ\u0017\u0010N\u001a\u00020\r2\u0006\u0010M\u001a\u00020LH\u0016¢\u0006\u0004\bN\u0010OR\u0014\u0010S\u001a\u00020P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010V\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010Z\u001a\u0004\u0018\u00010W8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0016\u0010]\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R \u0010c\u001a\b\u0012\u0004\u0012\u00020\u00070^8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b_\u0010`\u001a\u0004\ba\u0010bR\u0016\u0010e\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010\\R\u0018\u0010i\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010hR\u0016\u0010l\u001a\u00020j8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010(R\u001c\u0010p\u001a\b\u0012\u0004\u0012\u00020)0m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0016\u0010t\u001a\u00020q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0014\u0010x\u001a\u00020u8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010wR\u0014\u0010|\u001a\u00020y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bz\u0010{¨\u0006\u007f"}, d2 = {"Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;", "Lcom/transsion/playercommon/widgets/BaseBottomBar;", "Lcom/transsion/dbdata/beans/media/MediaItem;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "newPlayList", "Lzfb;", "d0", "(Ljava/util/List;)V", "R", "()V", "o", "setGestureHor", "(I)V", "X", "T", "K", "", "O", "()Z", "a0", "mediaItem", "c0", "(Lcom/transsion/dbdata/beans/media/MediaItem;)V", "needRestPosition", "synCurrent", "(Z)V", "updateCurrentItemInfo", TypedValues.AttributesType.S_TARGET, "P", "(Lcom/transsion/dbdata/beans/media/MediaItem;)Z", "U", "startPlay", "J", "Lwoc;", "windowOptions", ExifInterface.LATITUDE_SOUTH, "(Lwoc;)V", "isVisible", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "onAttachedToWindow", "onDetachedFromWindow", "initClick", "visibility", "setVisibility", "b0", TtmlNode.START, "startOrStopMusicProgress", "forceUpdate", "runMusicProgressUpdate", "changeViewpager", "position", "updateItemInfo", "(Lcom/transsion/dbdata/beans/media/MediaItem;I)V", "item", "loadCover", "Landroidx/lifecycle/LifecycleOwner;", "source", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "onStateChanged", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V", "isPipExist", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;", "screenType", "setPlayControlContainerState", "(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V", "Lcom/transsion/magicvideo/player/VideoPlayManager;", "b", "Lcom/transsion/magicvideo/player/VideoPlayManager;", "mPlayManager", "c", "I", "mPlayerState", "", "d", "Ljava/lang/String;", "mTitle", "e", "Z", "mIsStart", "", "f", "Ljava/util/List;", "getNotificationList", "()Ljava/util/List;", "notificationList", GslbInterceptor.HEADER_KEY_GSLB, "isDestroy", "Lcom/transsion/WindowInfoViewModel;", CmcdData.STREAMING_FORMAT_HLS, "Lcom/transsion/WindowInfoViewModel;", "windowInfoViewModel", "", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "remainingTime", "Landroidx/lifecycle/Observer;", "j", "Landroidx/lifecycle/Observer;", "windowOptionsObserver", "Landroid/os/Handler;", "k", "Landroid/os/Handler;", "timerHandler", "Lcom/transsion/magicvideo/player/VideoPlayManager$d;", CmcdData.STREAM_TYPE_LIVE, "Lcom/transsion/magicvideo/player/VideoPlayManager$d;", "mPlayerListener", "com/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$pageChangeCallback$1;", "pageChangeCallback", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class BottomVideoBar extends BaseBottomBar<MediaItem> {

    public final VideoPlayManager mPlayManager;

    public int mPlayerState;

    public String mTitle;

    public boolean mIsStart;

    public final List notificationList;

    public boolean isDestroy;

    public WindowInfoViewModel windowInfoViewModel;

    public long remainingTime;

    public Observer windowOptionsObserver;

    public Handler timerHandler;

    public final VideoPlayManager.d mPlayerListener;

    public final BottomVideoBar$pageChangeCallback$1 pageChangeCallback;

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final class c extends ux0 {
        public c() {
        }

        @Override
        public void onNoDoubleClick(View view) {
            y45.j(view, "v");
            BottomVideoBar.this.startPlay();
        }
    }

    public static final class d extends ux0 {
        public d() {
        }

        @Override
        public void onNoDoubleClick(View view) {
            y45.j(view, "v");
            if (BottomVideoBar.this.getMCurrentMediaItem() == null) {
                return;
            }
            h27.c().e(AnalyticsListener.EVENT_PLAYER_RELEASED, new Object[0]);
            p06.d0("vd_page_miniplayer_close");
            VideoPlayManager.X().G1();
        }
    }

    public static final class e extends ux0 {
        public e() {
        }

        @Override
        public void onNoDoubleClick(View view) {
            y45.j(view, "v");
            BottomVideoBar.this.K();
        }
    }

    public static final class f extends os8 {
        public f() {
        }

        @Override
        public void onClick() {
            BottomVideoBar.this.mPlayManager.r1();
        }
    }

    public static final class g extends os8 {
        public g() {
        }

        @Override
        public void onClick() {
            BottomVideoBar.this.mPlayManager.o1();
        }
    }

    public static final class h extends ux0 {
        public h() {
        }

        @Override
        public void onNoDoubleClick(View view) {
            y45.j(view, "v");
            BottomVideoBar.this.R();
        }
    }

    public static final class i implements VideoPlayManager.d {
        public i() {
        }

        @Override
        public void onPlayItemChanged(MediaItem mediaItem) {
            super.onPlayItemChanged(mediaItem);
            BottomVideoBar.this.b0();
            if (mediaItem != null) {
                BottomVideoBar.this.setMCurrentMediaItem(mediaItem);
                BottomVideoBar.this.c0(mediaItem);
                if (VideoPlayManager.X().G) {
                    SearchResultAdapter.u = mediaItem;
                } else {
                    SearchResultAdapter.u = null;
                }
                BottomVideoBar.this.loadPlayBackground(mediaItem);
            }
            BaseBottomBar.setViewPagerAdapter$default(BottomVideoBar.this, 0L, 1, null);
        }

        @Override
        public void onPlayListLoadFinished(ArrayList arrayList) {
            y45.j(arrayList, "arrayList");
        }

        @Override
        public void onPlayerStateUpdate(int i) throws Throwable {
            BottomVideoBar.this.mPlayerState = i;
            BottomVideoBar.this.b0();
            if (VideoPlayManager.X().G) {
                if (i == 3) {
                    if (BottomVideoBar.this.mIsStart) {
                        BottomVideoBar.this.runMusicProgressUpdate(true);
                    }
                    h27.c().e(AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, 1);
                } else {
                    af9.a = 0;
                    h27.c().e(AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, 0);
                    if (i == 4) {
                        BottomVideoBar.this.runMusicProgressUpdate(true);
                    }
                }
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BottomVideoBar(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void F(BottomVideoBar bottomVideoBar, List list) {
        y45.g(list);
        bottomVideoBar.d0(list);
    }

    public static final zfb H(BottomVideoBar bottomVideoBar, MediaItem mediaItem) {
        y45.j(mediaItem, "media");
        bottomVideoBar.K();
        return zfb.a;
    }

    public static final void I(BottomVideoBar bottomVideoBar) {
        bottomVideoBar.synCurrent(true);
    }

    private final void J() {
        if (getVisibility() != 0) {
            return;
        }
        setVisibility(8);
        af9.a = 0;
        this.mPlayManager.W1(false);
        h27.c().e(AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, -1);
        this.mPlayManager.i1(true);
        VideoPlayManager.X().y1();
    }

    public static final boolean L(BottomVideoBar bottomVideoBar, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                if (bottomVideoBar.mPlayManager.A0()) {
                    bottomVideoBar.onPressAnimation(bottomVideoBar.getMPlayStatusStart(), false, 100L);
                } else {
                    bottomVideoBar.onPressAnimation(bottomVideoBar.getMPlayStatusPause(), false, 100L);
                }
            }
        } else if (bottomVideoBar.mPlayManager.A0()) {
            bottomVideoBar.onPressAnimation(bottomVideoBar.getMPlayStatusStart(), true, 0L);
        } else {
            bottomVideoBar.onPressAnimation(bottomVideoBar.getMPlayStatusPause(), true, 0L);
        }
        return false;
    }

    public static final void M(BottomVideoBar bottomVideoBar, int i2) {
        if (i2 == 3 || i2 == 5) {
            bottomVideoBar.K();
        }
        if (i2 == 1 || i2 == 2) {
            bottomVideoBar.setGestureHor(i2);
        }
    }

    public static final boolean N(BottomVideoBar bottomVideoBar, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            bottomVideoBar.onPressAnimation(bottomVideoBar.getMPlayListButton(), true, 0L);
        } else if (action == 1) {
            bottomVideoBar.onPressAnimation(bottomVideoBar.getMPlayListButton(), false, 100L);
        }
        return false;
    }

    public static final void Q(BottomVideoBar bottomVideoBar, Integer num) {
        Log.d("BottomVideoBar", "video play list changed ,so update ui");
        bottomVideoBar.setViewPagerAdapter(0L);
        bottomVideoBar.setMCurrentMediaItem(PlayListData.getInstance().playMediaItem());
    }

    private final void S(woc windowOptions) {
        int i2 = windowOptions.a;
        boolean z = windowOptions.f;
        boolean z2 = windowOptions.c;
        boolean z3 = false;
        if (i2 == 0 || i2 == 1) {
            G(false);
            return;
        }
        if (i2 == 2 || i2 == 3) {
            if (!z && !z2) {
                z3 = true;
            }
            G(z3);
        }
    }

    public static final void V(c74 c74Var) {
        c74Var.invoke();
    }

    public static final void W(c74 c74Var) {
        c74Var.invoke();
    }

    public static final void Y(c74 c74Var) {
        c74Var.invoke();
    }

    public static void Z(BottomVideoBar bottomVideoBar, boolean z, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: synCurrent");
        }
        if ((i2 & 1) != 0) {
            z = false;
        }
        bottomVideoBar.synCurrent(z);
    }

    public static final void e0(BottomVideoBar bottomVideoBar) {
        bottomVideoBar.synCurrent(true);
    }

    public static final void f0(BottomVideoBar bottomVideoBar, woc wocVar) {
        y45.j(wocVar, "windowOptions");
        bottomVideoBar.S(wocVar);
    }

    private final void setGestureHor(int o) {
        if (1 == o) {
            VideoPlayManager.X().o1();
        } else if (2 == o) {
            VideoPlayManager.X().r1();
        }
    }

    public final void startPlay() {
        boolean zA0 = this.mPlayManager.A0();
        boolean z = !zA0;
        getMPlayButton().setContentDescription(getContext().getString(!zA0 ? R.string.talkback_play : R.string.talkback_pause));
        if (!zA0) {
            this.mPlayManager.Z1(false);
        }
        if (PlayListData.getInstance().playMediaItem() != null) {
            PlayListData.getInstance().playMediaItem().playPosition = this.mPlayManager.S();
        }
        if (this.mPlayManager.A0()) {
            this.mPlayManager.p2(true, z);
        } else if (!U()) {
            k38.m(getContext(), PlayListData.getInstance().playMediaItem());
        }
        ry5.g("minibar");
        p06.d0(zA0 ? "vd_page_miniplayer_pause" : "vd_page_miniplayer_play");
    }

    public final void G(boolean isVisible) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int iA = (!isVisible || a.A()) ? 0 : oc2.a(getContext(), 10.0f);
        if (isVisible) {
            getMPlayControlContainer().setDividerDrawable(ContextCompat.getDrawable(getContext(), R.drawable.divider_w_space_28));
        } else {
            getMPlayControlContainer().setDividerDrawable(null);
        }
        marginLayoutParams.setMarginStart(iA);
        marginLayoutParams.setMarginEnd(iA);
        setLayoutParams(marginLayoutParams);
    }

    public final void K() {
        boolean zY0 = this.mPlayManager.y0();
        if (!zY0) {
            VideoPlayManager.X().W1(false);
        }
        if (VideoPlayManager.X().x0()) {
            PlayVideoData playVideoDataT = this.mPlayManager.T();
            playVideoDataT.fromBackgroundPlay = true;
            if (VideoPlayManager.X().O) {
                playVideoDataT.isPipMute = true;
            }
            VideoPlayerActivityInner.G2(playVideoDataT);
            VideoPlayManager.X().G1();
            h27.c().e(1145, new Object[0]);
        } else {
            LiveEventBus.b().c("launch_intent_video_player_activity", this.mPlayManager.m0(getContext(), !zY0, false, true));
        }
        p06.d0("vd_page_miniplayer_cl");
    }

    public final boolean O() {
        setEmpty(PlayListData.getInstance().getPlayList().isEmpty());
        return getIsEmpty();
    }

    public final boolean P(MediaItem target) {
        MediaItem mCurrentMediaItem = getMCurrentMediaItem();
        return y45.e(mCurrentMediaItem != null ? mCurrentMediaItem.data : null, target.data);
    }

    public final void R() {
        k38.o(getContext(), false, "minibar");
    }

    public final void T() {
        LogUtils.j("BottomVideoBar", "pauseByTimer");
        this.timerHandler.removeCallbacksAndMessages(null);
        w6c.G(getContext(), 0);
        w6c.F(getContext(), 0L);
        VideoPlayManager.X().i1(true);
    }

    public final boolean U() {
        MediaItem mediaItemPlayMediaItem = PlayListData.getInstance().playMediaItem();
        if (mediaItemPlayMediaItem == null || this.mPlayManager.e0() == null) {
            return false;
        }
        MediaItem mediaItemR = this.mPlayManager.R();
        if (mediaItemR == null) {
            mediaItemR = this.mPlayManager.c0();
        }
        if (mediaItemR == null || !y45.e(mediaItemPlayMediaItem.data, mediaItemR.data)) {
            return false;
        }
        int iG0 = this.mPlayManager.g0();
        if (iG0 != 4 && iG0 != 2 && iG0 != 6) {
            return false;
        }
        this.mPlayManager.p2(true, true);
        return true;
    }

    public final void X() {
        long jL = w6c.l(getContext()) - System.currentTimeMillis();
        this.remainingTime = jL;
        LogUtils.j("BottomVideoBar", "setupTimer: remainingTime = " + jL);
        if (this.remainingTime > 0) {
            this.timerHandler.removeCallbacksAndMessages(null);
            this.timerHandler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    this.b.T();
                }
            }, this.remainingTime);
        }
    }

    public final void a0() {
        setMCurrentMediaItem(PlayListData.getInstance().playMediaItem());
        if (getMCurrentMediaItem() == null) {
            setVisibility(8);
            return;
        }
        loadPlayBackground(getMCurrentMediaItem());
        this.mPlayerState = this.mPlayManager.g0();
        b0();
    }

    public final void b0() {
        boolean zA0 = this.mPlayManager.A0();
        Log.d("BottomVideoBar", "updatePlayPauseButton isPlaying: " + zA0);
        setVisibilityIfNeeded(getMPlayStatusStart(), zA0 ? 0 : 8);
        setVisibilityIfNeeded(getMPlayStatusPause(), zA0 ? 8 : 0);
    }

    public final void c0(MediaItem mediaItem) {
        if (mediaItem == null) {
            return;
        }
        String str = mediaItem.displayName;
        if (str != null && str.length() != 0) {
            this.mTitle = str;
            getMPlayingItemTitle().setText(str);
        }
        getMPlayingItemArtist().setText("");
        getMPlayingItemArtist().setVisibility(8);
    }

    @Override
    public void changeViewpager() {
        if (getMBottomViewAdapter() == null) {
            ArrayList<MediaItem> playList = PlayListData.getInstance().getPlayList();
            y45.i(playList, "getPlayList(...)");
            if (!playList.isEmpty()) {
                Log.d("BottomVideoBar", "mBottomViewAdapter = null , setup AudioSlideAdapter ");
                VideoSlideAdapter videoSlideAdapter = new VideoSlideAdapter();
                videoSlideAdapter.y(super.getIsForceLight());
                videoSlideAdapter.D(new e74() {
                    @Override
                    public final Object invoke(Object obj) {
                        return BottomVideoBar.H(this.b, (MediaItem) obj);
                    }
                });
                setMBottomViewAdapter(videoSlideAdapter);
                getMViewPager().registerOnPageChangeCallback(this.pageChangeCallback);
                getMViewPager().m124setAdapter(getMBottomViewAdapter());
                getMViewPager().create(PlayListData.getInstance().getPlayList());
                getMViewPager().setVisibility(0);
                Z(this, false, 1, null);
                return;
            }
        }
        Log.d("BottomVideoBar", "mBottomViewAdapter != null , update AudioSlideAdapter ");
        getMViewPager().refreshData(PlayListData.getInstance().getPlayList(), new Runnable() {
            @Override
            public final void run() {
                BottomVideoBar.I(this.b);
            }
        });
    }

    public final void d0(List newPlayList) {
        if (newPlayList.isEmpty()) {
            Log.d("BottomVideoBar", "PlayList is empty or null");
        } else {
            getMViewPager().refreshData(i81.e1(newPlayList), new Runnable() {
                @Override
                public final void run() {
                    BottomVideoBar.e0(this.b);
                }
            });
        }
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) throws Throwable {
        String str;
        y45.j(args, "args");
        if (eventId == 1028) {
            J();
            return;
        }
        if (eventId == 1147) {
            X();
            return;
        }
        if (eventId == 1178) {
            runMusicProgressUpdate(true);
            return;
        }
        Object obj = null;
        if (eventId == 1109) {
            VideoPlayManager videoPlayManagerX = VideoPlayManager.X();
            if (videoPlayManagerX.y0()) {
                PlayVideoData playVideoDataE0 = videoPlayManagerX.e0();
                if (playVideoDataE0 == null || !playVideoDataE0.isFromNet) {
                    MediaItem mediaItemR = videoPlayManagerX.R();
                    String str2 = mediaItemR != null ? mediaItemR.data : null;
                    if (str2 == null || j1a.o0(str2) || new File(str2).exists()) {
                        return;
                    }
                    if (videoPlayManagerX.b0().getPlayList().size() == 1) {
                        J();
                    } else {
                        this.mPlayManager.o1();
                    }
                    videoPlayManagerX.b0().getPlayList().remove(videoPlayManagerX.b0().playIndex());
                    return;
                }
                return;
            }
            return;
        }
        if (eventId != 1110) {
            return;
        }
        Object objF0 = hi.f0(args, 0);
        String str3 = objF0 instanceof String ? (String) objF0 : null;
        if (str3 == null) {
            return;
        }
        Object objF1 = hi.f0(args, 1);
        String name = objF1 instanceof String ? (String) objF1 : null;
        if (name == null) {
            return;
        }
        MediaItem mediaItemC0 = VideoPlayManager.X().c0();
        MediaItem mediaItemR2 = VideoPlayManager.X().R();
        MediaItem mCurrentMediaItem = getMCurrentMediaItem();
        if (mCurrentMediaItem == null || (str = mCurrentMediaItem.data) == null) {
            str = mediaItemC0 != null ? mediaItemC0.data : null;
            if (str == null) {
                str = mediaItemR2 != null ? mediaItemR2.data : null;
            }
        }
        if (y45.e(str, str3)) {
            String str4 = File.separator;
            y45.i(str4, "separator");
            boolean zX = j1a.X(name, str4, false, 2, null);
            String str5 = zX ? name : str3;
            if (zX) {
                name = new File(str5).getName();
            }
            ArrayList<MediaItem> playList = PlayListData.getInstance().getPlayList();
            y45.i(playList, "getPlayList(...)");
            for (Object obj2 : playList) {
                if (y45.e(((MediaItem) obj2).data, str3)) {
                    obj = obj2;
                    break;
                }
            }
            MediaItem mediaItem = (MediaItem) obj;
            if (mediaItem != null) {
                if (zX) {
                    mediaItem.data = str5;
                }
                mediaItem.title = name;
                mediaItem.displayName = name;
            }
            if (zX) {
                MediaItem mCurrentMediaItem2 = getMCurrentMediaItem();
                if (mCurrentMediaItem2 != null) {
                    mCurrentMediaItem2.data = str5;
                }
                if (mediaItemC0 != null) {
                    mediaItemC0.data = str5;
                }
            }
            MediaItem mCurrentMediaItem3 = getMCurrentMediaItem();
            if (mCurrentMediaItem3 != null) {
                mCurrentMediaItem3.title = name;
            }
            MediaItem mCurrentMediaItem4 = getMCurrentMediaItem();
            if (mCurrentMediaItem4 != null) {
                mCurrentMediaItem4.displayName = name;
            }
            if (mediaItemC0 != null) {
                mediaItemC0.title = name;
            }
            if (mediaItemC0 != null) {
                mediaItemC0.displayName = name;
            }
            if (mediaItemC0 == null) {
                mediaItemC0 = getMCurrentMediaItem();
            }
            setMCurrentMediaItem(mediaItemC0);
            c0(getMCurrentMediaItem());
        }
    }

    @Override
    public List<Integer> getNotificationList() {
        return this.notificationList;
    }

    @Override
    public void initClick() {
        getMPlayButton().setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return BottomVideoBar.L(this.b, view, motionEvent);
            }
        });
        getMPlayButton().setOnClickListener(new c());
        getMPlayClose().setOnClickListener(new d());
        setOnClickListener(new e());
        getMAudioPlayPreviousIv().setOnClickListener(new f());
        getMAudioPlayNextIv().setOnClickListener(new g());
        GestureUtil.scrollGestureExactly(this, new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i2) {
                BottomVideoBar.M(this.a, i2);
            }
        });
        getMPlayListButton().setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return BottomVideoBar.N(this.b, view, motionEvent);
            }
        });
        getMPlayListButton().setOnClickListener(new h());
    }

    public boolean isPipExist() {
        WeakReference weakReference = o18.g;
        if (weakReference != null && (weakReference.get() instanceof VideosService)) {
            return true;
        }
        WeakReference weakReference2 = o18.f;
        return (weakReference2 == null || ((Activity) weakReference2.get()) == null) ? false : true;
    }

    @Override
    public void loadCover(MediaItem item) {
        if (item == null || this.isDestroy) {
            return;
        }
        Drawable drawable = ResourcesCompat.getDrawable(getContext().getResources(), R.drawable.main_fragment_placeholder, getContext().getTheme());
        if (item.getMiMediaInfo() == null || TextUtils.isEmpty(item.getMiMediaInfo().getCoverUri())) {
            z7c.c(getContext(), MediaExtKt.toLocalMediaLoadInfo(item), drawable, getMSquareCover());
            return;
        }
        Context context = getContext();
        String coverUri = item.getMiMediaInfo().getCoverUri();
        z7c.a(context, coverUri != null ? Uri.parse(coverUri) : null, 0L, drawable, getMSquareCover());
    }

    @Override
    public void onAttachedToWindow() {
        MutableLiveData mutableLiveData;
        super.onAttachedToWindow();
        this.mPlayManager.D1(this.mPlayerListener);
        if (getContext() instanceof BaseActivity) {
            Context context = getContext();
            y45.h(context, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity");
            WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) ((BaseActivity) context).getViewModel(WindowInfoViewModel.class);
            this.windowInfoViewModel = windowInfoViewModel;
            if (windowInfoViewModel != null && (mutableLiveData = windowInfoViewModel.a) != null) {
                Context context2 = getContext();
                y45.h(context2, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity");
                mutableLiveData.observe((BaseActivity) context2, this.windowOptionsObserver);
            }
        }
        LiveEventBus.MyMutableLiveData myMutableLiveDataD = LiveEventBus.b().d("video_play_list_change");
        Object context3 = getContext();
        y45.h(context3, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
        myMutableLiveDataD.observe((LifecycleOwner) context3, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                BottomVideoBar.Q(this.a, (Integer) obj);
            }
        });
        a0();
        changeViewpager();
    }

    @Override
    public void onDetachedFromWindow() {
        MutableLiveData mutableLiveData;
        super.onDetachedFromWindow();
        this.mPlayManager.v2(this.mPlayerListener);
        WindowInfoViewModel windowInfoViewModel = this.windowInfoViewModel;
        if (windowInfoViewModel != null && windowInfoViewModel != null && (mutableLiveData = windowInfoViewModel.a) != null) {
            mutableLiveData.removeObserver(this.windowOptionsObserver);
        }
        this.timerHandler.removeCallbacksAndMessages(null);
        LiveEventBus.b().d("video_play_list_change").c();
    }

    @Override
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        y45.j(source, "source");
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        int i2 = b.a[event.ordinal()];
        if (i2 == 1) {
            a0();
            return;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            this.isDestroy = true;
            j27.b(getNotificationList(), this);
            return;
        }
        if (this.mPlayManager.y0() && !k38.a && this.mPlayManager.A0()) {
            LogUtils.j("BottomVideoBar", "onStateChanged");
            this.mPlayManager.l2();
        }
    }

    @Override
    public void runMusicProgressUpdate(boolean forceUpdate) throws Throwable {
        long jV;
        long jS;
        long j;
        if (forceUpdate || this.mPlayManager.A0()) {
            try {
                jV = this.mPlayManager.V();
                try {
                    jS = this.mPlayManager.S();
                    if (jV <= 0) {
                        try {
                            MediaItem mCurrentMediaItem = getMCurrentMediaItem();
                            if (mCurrentMediaItem != null) {
                                j = mCurrentMediaItem.duration;
                            } else {
                                MediaItem mediaItemPlayMediaItem = PlayListData.getInstance().playMediaItem();
                                j = mediaItemPlayMediaItem != null ? mediaItemPlayMediaItem.duration : 0L;
                            }
                            if (j > 0) {
                                jV = j;
                            }
                        } catch (Throwable th) {
                            th = th;
                            Handler handlerO = ThreadUtils.o();
                            final c74 mProgressUpdateRunnable = getMProgressUpdateRunnable();
                            handlerO.removeCallbacks(new Runnable() {
                                @Override
                                public final void run() {
                                    BottomVideoBar.W(mProgressUpdateRunnable);
                                }
                            });
                            final c74 mProgressUpdateRunnable2 = getMProgressUpdateRunnable();
                            handlerO.postDelayed(new Runnable() {
                                @Override
                                public final void run() {
                                    BottomVideoBar.V(mProgressUpdateRunnable2);
                                }
                            }, 500L);
                            this.mPlayManager.A0();
                            if (jV > 0) {
                                getMSeekbar().setProgress(Math.round((jS * ((long) 100)) / jV), true);
                                throw th;
                            }
                        }
                    }
                    Handler handlerO2 = ThreadUtils.o();
                    final c74 mProgressUpdateRunnable3 = getMProgressUpdateRunnable();
                    handlerO2.removeCallbacks(new Runnable() {
                        @Override
                        public final void run() {
                            BottomVideoBar.W(mProgressUpdateRunnable3);
                        }
                    });
                    final c74 mProgressUpdateRunnable4 = getMProgressUpdateRunnable();
                    handlerO2.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            BottomVideoBar.V(mProgressUpdateRunnable4);
                        }
                    }, 500L);
                    this.mPlayManager.A0();
                    if (jV > 0) {
                        getMSeekbar().setProgress(Math.round((jS * ((long) 100)) / jV), true);
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    jS = 0;
                }
            } catch (Throwable th3) {
                th = th3;
                jV = 0;
                jS = 0;
            }
            getMSeekbar().setProgress(0, true);
        }
    }

    @Override
    public void setPlayControlContainerState(BaseConstant.SCREEN_TYPE screenType) {
        y45.j(screenType, "screenType");
    }

    @Override
    public void setVisibility(int visibility) {
        if (visibility != 0 || O()) {
            super.setVisibility(8);
            return;
        }
        super.setVisibility(0);
        p06.d0("vd_page_miniplayer_show");
        b0();
    }

    public final void startOrStopMusicProgress(boolean start) throws Throwable {
        this.mIsStart = start;
        if (start) {
            runMusicProgressUpdate(true);
            return;
        }
        Handler handlerO = ThreadUtils.o();
        final c74 mProgressUpdateRunnable = getMProgressUpdateRunnable();
        handlerO.removeCallbacks(new Runnable() {
            @Override
            public final void run() {
                BottomVideoBar.Y(mProgressUpdateRunnable);
            }
        });
    }

    public final synchronized void synCurrent(boolean needRestPosition) {
        if (PlayListData.getInstance().getPlayList().isEmpty()) {
            Log.d("BottomVideoBar", "synCurrent, playList is empty");
            setEmpty(true);
            setVisibility(8);
            return;
        }
        setEmpty(false);
        if (!getIsShouldUpdate() && getMViewPager().getVisibility() == 0) {
            LogUtils.P("BottomVideoBar", "bottom operate bar not update");
            return;
        }
        try {
            PlayListData playListData = PlayListData.getInstance();
            MediaItem mediaItemPlayMediaItem = playListData.playMediaItem();
            ArrayList<MediaItem> playList = playListData.getPlayList();
            y45.g(playList);
            Iterator<MediaItem> it = playList.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i2 = -1;
                    break;
                } else {
                    if (y45.e(it.next().data, mediaItemPlayMediaItem != null ? mediaItemPlayMediaItem.data : null)) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            if (i2 != -1) {
                if (ccc.a(this)) {
                    updateCurrentItemInfo();
                } else {
                    getMViewPager().setVisibility(0);
                    if (i2 != getMViewPager().getCurrentPosition() || needRestPosition) {
                        setMManualChange(true);
                        Log.d("BottomVideoBar", "targetIndex: " + i2 + "  currentItem = " + getMViewPager().getCurrentPosition() + ", mManualChange = " + getMManualChange());
                        getMViewPager().setCurrentItem(i2, false);
                    }
                }
            }
            updateFavoriteIcon();
            loadPlayBackground(mediaItemPlayMediaItem);
        } catch (Exception e2) {
            Log.d("BottomVideoBar", e2.getMessage() + "-" + e2.getLocalizedMessage());
        }
    }

    public final void updateCurrentItemInfo() {
        getMEmptyContainer().setVisibility(0);
        getMViewPager().setVisibility(8);
        if (PlayListData.getInstance().playMediaItem() == null || PlayListData.getInstance().playMediaItem().displayName == null || y45.e(PlayListData.getInstance().playMediaItem().displayName, getMPlayingItemTitle().getText().toString())) {
            return;
        }
        MediaItem mediaItemC0 = VideoPlayManager.X().c0();
        if (mediaItemC0 != null) {
            getMPlayingItemTitle().setText(mediaItemC0.displayName);
            getMPlayingItemArtist().setText("");
        }
        getMPlayingItemArtist().setVisibility(8);
    }

    @Override
    public void updateItemInfo(MediaItem mediaItem, int position) {
        y45.j(mediaItem, "mediaItem");
        this.mPlayManager.v1(position, true, true);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BottomVideoBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public BottomVideoBar(Context context, AttributeSet attributeSet, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v4, types: [com.transsion.magicvideo.widgets.minibar.BottomVideoBar$pageChangeCallback$1] */
    public BottomVideoBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        y45.j(context, "context");
        VideoPlayManager videoPlayManagerX = VideoPlayManager.X();
        y45.i(videoPlayManagerX, "getInstance(...)");
        this.mPlayManager = videoPlayManagerX;
        this.notificationList = y71.q(Integer.valueOf(AnalyticsListener.EVENT_DRM_KEYS_REMOVED), Integer.valueOf(AnalyticsListener.EVENT_PLAYER_RELEASED), 1109, 1110, 1147, 1178);
        this.windowOptionsObserver = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                BottomVideoBar.f0(this.a, (woc) obj);
            }
        };
        getMPlayButton().setContentDescription(context.getString(videoPlayManagerX.A0() ? R.string.talkback_play : R.string.talkback_pause));
        getMPlayListButton().setVisibility(0);
        getMFavoritesIv().setVisibility(8);
        getMMusicCircleImageView().setVisibility(8);
        getMPlayClose().setVisibility(8);
        a0();
        PlayListDataNew.getInstance().getPlayList().observe((LifecycleOwner) context, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                BottomVideoBar.F(this.a, (List) obj);
            }
        });
        this.timerHandler = new Handler(Looper.getMainLooper());
        this.mPlayerListener = new i();
        this.pageChangeCallback = new ViewPager2.OnPageChangeCallback() {
            @Override
            public void onPageScrollStateChanged(int state) {
                if (state == 1 || state == 2) {
                    this.d.setMManualChange(false);
                }
            }

            @Override
            public void onPageSelected(int position) {
                if (this.d.getMViewPager().getData().size() <= position) {
                    return;
                }
                Log.d("BottomVideoBar", "onPageSelected: position: " + position + " currentIndex = " + this.d.getMViewPager().getCurrentPosition() + " mManualChange =" + this.d.getMManualChange());
                if (this.d.getMManualChange()) {
                    this.d.setMManualChange(false);
                    return;
                }
                int iQueryIndex = PlayListData.getInstance().queryIndex(this.d.getMCurrentMediaItem());
                MediaItem mediaItem = this.d.getMViewPager().getData().get(position);
                if (this.d.P(mediaItem)) {
                    Log.d("BottomVideoBar", "same item, return");
                    return;
                }
                this.d.setMCurrentMediaItem(mediaItem);
                this.d.playItem(mediaItem, position, 350L);
                int i3 = position - iQueryIndex;
                int i4 = iQueryIndex - position;
                if (i3 != 0) {
                    hb0.markDirect((i3 == 1 || i4 == PlayListData.getInstance().getPlayList().size() - 1) ? "vd_miniplayer_slip_right" : "vd_miniplayer_slip_left");
                }
            }
        };
    }
}
