package com.transsion.playercommon.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Outline;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleEventObserver;
import androidx.p004lifecycle.LifecycleOwner;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.widgets.BaseBottomBar;
import com.transsion.playercommon.widgets.banner.BannerViewPagerSelf;
import com.transsion.playercommon.widgets.banner.BaseBannerAdapter;
import com.transsion.utils.BaseConstant;
import defpackage.a39;
import defpackage.b39;
import defpackage.c74;
import defpackage.cd;
import defpackage.e74;
import defpackage.h27;
import defpackage.j27;
import defpackage.k29;
import defpackage.mc7;
import defpackage.oc2;
import defpackage.pp3;
import defpackage.t74;
import defpackage.vb;
import defpackage.vha;
import defpackage.y45;
import defpackage.zf1;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 µ\u0001*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0002¶\u0001B'\b\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0004¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0013\u0010\u0010J\u001f\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001a\u0010\u0010J\u000f\u0010\u001b\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001b\u0010\u0010J\u0017\u0010\u001e\u001a\u00020\u000e2\b\b\u0002\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010!\u001a\u00020\u000e2\b\u0010 \u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0004\b!\u0010\"J'\u0010%\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b%\u0010&J\r\u0010'\u001a\u00020\u000e¢\u0006\u0004\b'\u0010\u0010J\u000f\u0010(\u001a\u00020\u000eH\u0016¢\u0006\u0004\b(\u0010\u0010J1\u0010-\u001a\u00020\u000e2 \u0010,\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0006\u0012\u0004\u0018\u00018\u00000*j\n\u0012\u0006\u0012\u0004\u0018\u00018\u0000`+0)H\u0007¢\u0006\u0004\b-\u0010.J\u0017\u00101\u001a\u00020\u000e2\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\u000e2\u0006\u00104\u001a\u000203H\u0014¢\u0006\u0004\b5\u00106J\u0017\u00109\u001a\u00020\u000e2\u0006\u00108\u001a\u000207H&¢\u0006\u0004\b9\u0010:J\u0019\u0010;\u001a\u00020\u000e2\b\u0010 \u001a\u0004\u0018\u00018\u0000H&¢\u0006\u0004\b;\u0010\"J\u000f\u0010<\u001a\u00020\u000eH&¢\u0006\u0004\b<\u0010\u0010J\u001f\u0010=\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\nH&¢\u0006\u0004\b=\u0010>J%\u0010C\u001a\u00020\u000e2\u0006\u0010@\u001a\u00020?2\u0006\u0010A\u001a\u0002072\u0006\u0010B\u001a\u00020\u001c¢\u0006\u0004\bC\u0010DJ\u001f\u0010F\u001a\u00020\u000e2\b\u0010@\u001a\u0004\u0018\u00010?2\u0006\u0010E\u001a\u00020\n¢\u0006\u0004\bF\u0010GR$\u0010H\u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010\"R\u0017\u0010M\u001a\u00020?8\u0006¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bO\u0010PR\"\u0010Q\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bQ\u0010S\"\u0004\bT\u0010:R\u0017\u0010V\u001a\u00020U8\u0006¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010YR\u0017\u0010Z\u001a\u00020U8\u0006¢\u0006\f\n\u0004\bZ\u0010W\u001a\u0004\b[\u0010YR\u0017\u0010\\\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_R\u0017\u0010`\u001a\u00020?8\u0006¢\u0006\f\n\u0004\b`\u0010N\u001a\u0004\ba\u0010PR\u0017\u0010c\u001a\u00020b8\u0006¢\u0006\f\n\u0004\bc\u0010d\u001a\u0004\be\u0010fR\u0017\u0010g\u001a\u00020?8\u0006¢\u0006\f\n\u0004\bg\u0010N\u001a\u0004\bh\u0010PR\u0017\u0010i\u001a\u00020?8\u0006¢\u0006\f\n\u0004\bi\u0010N\u001a\u0004\bj\u0010PR\u0017\u0010l\u001a\u00020k8\u0006¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bn\u0010oR\u0017\u0010p\u001a\u00020k8\u0006¢\u0006\f\n\u0004\bp\u0010m\u001a\u0004\bq\u0010oR\u0017\u0010r\u001a\u00020U8\u0006¢\u0006\f\n\u0004\br\u0010W\u001a\u0004\bs\u0010YR\u0017\u0010t\u001a\u00020U8\u0006¢\u0006\f\n\u0004\bt\u0010W\u001a\u0004\bu\u0010YR\"\u0010v\u001a\u00020U8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bv\u0010W\u001a\u0004\bw\u0010Y\"\u0004\bx\u0010yR\u0017\u0010z\u001a\u00020U8\u0006¢\u0006\f\n\u0004\bz\u0010W\u001a\u0004\b{\u0010YR\u0017\u0010|\u001a\u00020U8\u0006¢\u0006\f\n\u0004\b|\u0010W\u001a\u0004\b}\u0010YR\u001a\u0010\u007f\u001a\u00020~8\u0006¢\u0006\u000f\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001a\u0010\u0083\u0001\u001a\u00020\u00038\u0006¢\u0006\u000e\n\u0005\b\u0083\u0001\u0010]\u001a\u0005\b\u0084\u0001\u0010_R\u001a\u0010\u0085\u0001\u001a\u00020U8\u0006¢\u0006\u000e\n\u0005\b\u0085\u0001\u0010W\u001a\u0005\b\u0086\u0001\u0010YR\u001a\u0010\u0087\u0001\u001a\u00020U8\u0006¢\u0006\u000e\n\u0005\b\u0087\u0001\u0010W\u001a\u0005\b\u0088\u0001\u0010YR#\u0010\u008a\u0001\u001a\t\u0012\u0004\u0012\u00028\u00000\u0089\u00018\u0006¢\u0006\u0010\n\u0006\b\u008a\u0001\u0010\u008b\u0001\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001R2\u0010\u008f\u0001\u001a\u000b\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u008e\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008f\u0001\u0010\u0090\u0001\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001\"\u0006\b\u0093\u0001\u0010\u0094\u0001R%\u0010\u0096\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0095\u00018\u0006¢\u0006\u0010\n\u0006\b\u0096\u0001\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R&\u0010\u009a\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u009a\u0001\u0010R\u001a\u0005\b\u009b\u0001\u0010S\"\u0005\b\u009c\u0001\u0010:R\"\u0010\u009d\u0001\u001a\b\u0012\u0004\u0012\u00020\u000e0)8\u0006¢\u0006\u0010\n\u0006\b\u009d\u0001\u0010\u009e\u0001\u001a\u0006\b\u009f\u0001\u0010 \u0001R&\u0010¡\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¡\u0001\u0010R\u001a\u0005\b¢\u0001\u0010S\"\u0005\b£\u0001\u0010:R&\u0010¤\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¤\u0001\u0010R\u001a\u0005\b¥\u0001\u0010S\"\u0005\b¦\u0001\u0010:R&\u0010§\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b§\u0001\u0010R\u001a\u0005\b§\u0001\u0010S\"\u0005\b¨\u0001\u0010:R&\u0010©\u0001\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b©\u0001\u0010R\u001a\u0005\b©\u0001\u0010S\"\u0005\bª\u0001\u0010:R\u0019\u0010«\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u0016\u0010\u00ad\u0001\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u00ad\u0001\u0010RR\u001d\u0010¯\u0001\u001a\u00030®\u00018\u0006¢\u0006\u0010\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001R\u001e\u0010´\u0001\u001a\t\u0012\u0004\u0012\u00020\n0\u0095\u00018&X¦\u0004¢\u0006\b\u001a\u0006\b³\u0001\u0010\u0099\u0001¨\u0006·\u0001"}, d2 = {"Lcom/transsion/playercommon/widgets/BaseBottomBar;", "Lcom/transsion/dbdata/beans/media/MediaItem;", "T", "Landroid/widget/FrameLayout;", "Landroidx/lifecycle/LifecycleEventObserver;", "Lh27$b;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lzfb;", "k", "()V", "setPlayListImage", "onAttachedToWindow", "onDetachedFromWindow", "Landroidx/lifecycle/LifecycleOwner;", "source", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "onStateChanged", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V", "initClick", "updateFavoriteIcon", "", "delay", "setViewPagerAdapter", "(J)V", "item", "loadPlayBackground", "(Lcom/transsion/dbdata/beans/media/MediaItem;)V", "mediaItem", "position", "playItem", "(Lcom/transsion/dbdata/beans/media/MediaItem;IJ)V", "cancelPendingPlayItem", "triggerFavoriteButton", "Lkotlin/Function0;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "runnable", "updateFavoriteList", "(Lc74;)V", "Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;", "screenType", "setPlayControlContainerState", "(Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "", "forceUpdate", "runMusicProgressUpdate", "(Z)V", "loadCover", "changeViewpager", "updateItemInfo", "(Lcom/transsion/dbdata/beans/media/MediaItem;I)V", "Landroid/view/View;", "view", "isDown", "animationTime", "onPressAnimation", "(Landroid/view/View;ZJ)V", "visibility", "setVisibilityIfNeeded", "(Landroid/view/View;I)V", "mCurrentMediaItem", "Lcom/transsion/dbdata/beans/media/MediaItem;", "getMCurrentMediaItem", "()Lcom/transsion/dbdata/beans/media/MediaItem;", "setMCurrentMediaItem", TtmlNode.RUBY_CONTAINER, "Landroid/view/View;", "getContainer", "()Landroid/view/View;", "isForceLight", "Z", "()Z", "setForceLight", "Landroid/widget/ImageView;", "mPlayListButton", "Landroid/widget/ImageView;", "getMPlayListButton", "()Landroid/widget/ImageView;", "mPlayClose", "getMPlayClose", "mFlPlay", "Landroid/widget/FrameLayout;", "getMFlPlay", "()Landroid/widget/FrameLayout;", "mPlayButton", "getMPlayButton", "Landroid/widget/SeekBar;", "mSeekbar", "Landroid/widget/SeekBar;", "getMSeekbar", "()Landroid/widget/SeekBar;", "mEmptyContainer", "getMEmptyContainer", "mVpContainer", "getMVpContainer", "Landroid/widget/TextView;", "mPlayingItemTitle", "Landroid/widget/TextView;", "getMPlayingItemTitle", "()Landroid/widget/TextView;", "mPlayingItemArtist", "getMPlayingItemArtist", "mPlayStatusPause", "getMPlayStatusPause", "mPlayStatusStart", "getMPlayStatusStart", "mFavoritesIv", "getMFavoritesIv", "setMFavoritesIv", "(Landroid/widget/ImageView;)V", "mAudioPlayPreviousIv", "getMAudioPlayPreviousIv", "mAudioPlayNextIv", "getMAudioPlayNextIv", "Landroid/widget/LinearLayout;", "mPlayControlContainer", "Landroid/widget/LinearLayout;", "getMPlayControlContainer", "()Landroid/widget/LinearLayout;", "mCircleGroup", "getMCircleGroup", "mSquareCover", "getMSquareCover", "mMusicCircleImageView", "getMMusicCircleImageView", "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "mViewPager", "Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "getMViewPager", "()Lcom/transsion/playercommon/widgets/banner/BannerViewPagerSelf;", "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;", "mBottomViewAdapter", "Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;", "getMBottomViewAdapter", "()Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;", "setMBottomViewAdapter", "(Lcom/transsion/playercommon/widgets/banner/BaseBannerAdapter;)V", "", "mFavoriteList", "Ljava/util/List;", "getMFavoriteList", "()Ljava/util/List;", "mIsInFavorites", "getMIsInFavorites", "setMIsInFavorites", "mProgressUpdateRunnable", "Lc74;", "getMProgressUpdateRunnable", "()Lc74;", "mManualChange", "getMManualChange", "setMManualChange", "mUserGestureScroll", "getMUserGestureScroll", "setMUserGestureScroll", "isShouldUpdate", "setShouldUpdate", "isEmpty", "setEmpty", "mLastOrientation", "I", "mIsTabletDevice", "Landroid/os/Handler;", "mHandler", "Landroid/os/Handler;", "getMHandler", "()Landroid/os/Handler;", "getNotificationList", "notificationList", "Companion", "b", "playercommon_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseBottomBar<T extends MediaItem> extends FrameLayout implements LifecycleEventObserver, h27.b {
    private static final int MSG_UPDATE_BANNER = 1;
    private static final int MSG_UPDATE_COVER = 2;
    private static final int MSG_UPDATE_ITEM = 3;
    private static final String TAG = "BaseBottomBar";
    private final View container;
    private boolean isEmpty;
    private boolean isForceLight;
    private boolean isShouldUpdate;
    private final ImageView mAudioPlayNextIv;
    private final ImageView mAudioPlayPreviousIv;
    private BaseBannerAdapter<T> mBottomViewAdapter;
    private final FrameLayout mCircleGroup;
    private T mCurrentMediaItem;
    private final View mEmptyContainer;
    private final List<T> mFavoriteList;
    private ImageView mFavoritesIv;
    private final FrameLayout mFlPlay;
    private final Handler mHandler;
    private boolean mIsInFavorites;
    private final boolean mIsTabletDevice;
    private int mLastOrientation;
    private volatile boolean mManualChange;
    private final ImageView mMusicCircleImageView;
    private final View mPlayButton;
    private final ImageView mPlayClose;
    private final LinearLayout mPlayControlContainer;
    private final ImageView mPlayListButton;
    private final ImageView mPlayStatusPause;
    private final ImageView mPlayStatusStart;
    private final TextView mPlayingItemArtist;
    private final TextView mPlayingItemTitle;
    private final c74 mProgressUpdateRunnable;
    private final SeekBar mSeekbar;
    private final ImageView mSquareCover;
    private volatile boolean mUserGestureScroll;
    private final BannerViewPagerSelf<T> mViewPager;
    private final View mVpContainer;

    public static final class a extends ViewOutlineProvider {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override
        public void getOutline(View view, Outline outline) {
            y45.j(view, "view");
            y45.j(outline, "outline");
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), oc2.a(this.a, 8.0f));
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseBottomBar(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void j(BaseBottomBar baseBottomBar, BaseConstant.SCREEN_TYPE screen_type) {
        y45.g(screen_type);
        baseBottomBar.setPlayControlContainerState(screen_type);
        if (pp3.m()) {
            baseBottomBar.mManualChange = true;
            baseBottomBar.mUserGestureScroll = false;
            baseBottomBar.cancelPendingPlayItem();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean l(BaseBottomBar baseBottomBar, Message message) {
        y45.j(message, NotificationCompat.CATEGORY_MESSAGE);
        int i = message.what;
        if (i == 1) {
            baseBottomBar.changeViewpager();
        } else if (i == 2) {
            baseBottomBar.loadCover((MediaItem) message.obj);
        } else if (i == 3) {
            Object obj = message.obj;
            y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
            baseBottomBar.updateItemInfo((MediaItem) obj, message.arg1);
        }
        return true;
    }

    public static final zfb m(BaseBottomBar baseBottomBar) {
        baseBottomBar.runMusicProgressUpdate(false);
        return zfb.a;
    }

    public static final void n(c74 c74Var) {
        c74Var.invoke();
    }

    public static final ArrayList o(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (ArrayList) e74Var.invoke(obj);
    }

    public static final zfb p(BaseBottomBar baseBottomBar, ArrayList arrayList) {
        baseBottomBar.mFavoriteList.clear();
        List<T> list = baseBottomBar.mFavoriteList;
        y45.g(arrayList);
        list.addAll(arrayList);
        baseBottomBar.updateFavoriteIcon();
        return zfb.a;
    }

    public static final void q(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final ArrayList r(c74 c74Var, BaseBottomBar baseBottomBar) {
        y45.j(baseBottomBar, "it");
        return (ArrayList) c74Var.invoke();
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0083  */
    /* JADX WARN: Code duplicated, block: B:13:0x008a  */
    public static final void setPlayControlContainerState$lambda$13(BaseBottomBar baseBottomBar) {
        int iA;
        ViewGroup.LayoutParams layoutParams = baseBottomBar.getLayoutParams();
        y45.h(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int i = 0;
        if (!baseBottomBar.mIsTabletDevice) {
            if (b39.b(baseBottomBar.getContext())) {
                Log.i(TAG, "setPlayControlContainerState is fold ");
                baseBottomBar.mFavoritesIv.setVisibility(8);
                baseBottomBar.mAudioPlayPreviousIv.setVisibility(8);
                baseBottomBar.mAudioPlayNextIv.setVisibility(8);
            } else {
                int iA2 = oc2.a(baseBottomBar.getContext(), 10.0f);
                iA = oc2.a(baseBottomBar.getContext(), 10.0f);
                Log.i(TAG, "setPlayControlContainerState is flat ");
                baseBottomBar.mFavoritesIv.setVisibility(0);
                baseBottomBar.mAudioPlayPreviousIv.setVisibility(0);
                baseBottomBar.mAudioPlayNextIv.setVisibility(0);
                i = iA2;
            }
            marginLayoutParams.setMarginStart(i);
            marginLayoutParams.setMarginEnd(iA);
            baseBottomBar.setLayoutParams(marginLayoutParams);
            if (b39.b(baseBottomBar.getContext())) {
                baseBottomBar.mPlayControlContainer.setDividerDrawable(null);
            } else {
                baseBottomBar.mPlayControlContainer.setDividerDrawable(ContextCompat.getDrawable(baseBottomBar.getContext(), R.drawable.divider_w_space_28));
            }
        }
        Log.i(TAG, "setPlayControlContainerState is tablet ");
        baseBottomBar.mFavoritesIv.setVisibility(0);
        baseBottomBar.mAudioPlayPreviousIv.setVisibility(0);
        baseBottomBar.mAudioPlayNextIv.setVisibility(0);
        iA = 0;
        marginLayoutParams.setMarginStart(i);
        marginLayoutParams.setMarginEnd(iA);
        baseBottomBar.setLayoutParams(marginLayoutParams);
        if (b39.b(baseBottomBar.getContext())) {
            baseBottomBar.mPlayControlContainer.setDividerDrawable(null);
        } else {
            baseBottomBar.mPlayControlContainer.setDividerDrawable(ContextCompat.getDrawable(baseBottomBar.getContext(), R.drawable.divider_w_space_28));
        }
    }

    public static void setViewPagerAdapter$default(BaseBottomBar baseBottomBar, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setViewPagerAdapter");
        }
        if ((i & 1) != 0) {
            j = 0;
        }
        baseBottomBar.setViewPagerAdapter(j);
    }

    public final void cancelPendingPlayItem() {
        this.mHandler.removeMessages(3);
    }

    public abstract void changeViewpager();

    public abstract void didReceivedNotification(int i, Object... objArr);

    public final View getContainer() {
        return this.container;
    }

    public final ImageView getMAudioPlayNextIv() {
        return this.mAudioPlayNextIv;
    }

    public final ImageView getMAudioPlayPreviousIv() {
        return this.mAudioPlayPreviousIv;
    }

    public final BaseBannerAdapter<T> getMBottomViewAdapter() {
        return this.mBottomViewAdapter;
    }

    public final FrameLayout getMCircleGroup() {
        return this.mCircleGroup;
    }

    public final T getMCurrentMediaItem() {
        return this.mCurrentMediaItem;
    }

    public final View getMEmptyContainer() {
        return this.mEmptyContainer;
    }

    public final List<T> getMFavoriteList() {
        return this.mFavoriteList;
    }

    public final ImageView getMFavoritesIv() {
        return this.mFavoritesIv;
    }

    public final FrameLayout getMFlPlay() {
        return this.mFlPlay;
    }

    public final Handler getMHandler() {
        return this.mHandler;
    }

    public final boolean getMIsInFavorites() {
        return this.mIsInFavorites;
    }

    public final boolean getMManualChange() {
        return this.mManualChange;
    }

    public final ImageView getMMusicCircleImageView() {
        return this.mMusicCircleImageView;
    }

    public final View getMPlayButton() {
        return this.mPlayButton;
    }

    public final ImageView getMPlayClose() {
        return this.mPlayClose;
    }

    public final LinearLayout getMPlayControlContainer() {
        return this.mPlayControlContainer;
    }

    public final ImageView getMPlayListButton() {
        return this.mPlayListButton;
    }

    public final ImageView getMPlayStatusPause() {
        return this.mPlayStatusPause;
    }

    public final ImageView getMPlayStatusStart() {
        return this.mPlayStatusStart;
    }

    public final TextView getMPlayingItemArtist() {
        return this.mPlayingItemArtist;
    }

    public final TextView getMPlayingItemTitle() {
        return this.mPlayingItemTitle;
    }

    public final c74 getMProgressUpdateRunnable() {
        return this.mProgressUpdateRunnable;
    }

    public final SeekBar getMSeekbar() {
        return this.mSeekbar;
    }

    public final ImageView getMSquareCover() {
        return this.mSquareCover;
    }

    public final boolean getMUserGestureScroll() {
        return this.mUserGestureScroll;
    }

    public final BannerViewPagerSelf<T> getMViewPager() {
        return this.mViewPager;
    }

    public final View getMVpContainer() {
        return this.mVpContainer;
    }

    public abstract List<Integer> getNotificationList();

    public void initClick() {
    }

    public final boolean getIsEmpty() {
        return this.isEmpty;
    }

    public final boolean getIsForceLight() {
        return this.isForceLight;
    }

    public final boolean getIsShouldUpdate() {
        return this.isShouldUpdate;
    }

    public final void k() {
        ThemeData themeDataC = vha.c(getContext());
        if (themeDataC != null) {
            ((FrameLayout) this.container.findViewById(R.id.audio_blur_view)).setBackgroundResource(R.drawable.bg_music_mini_shade);
            if (vha.t(themeDataC)) {
                this.isForceLight = true;
                this.container.findViewById(R.id.v_top_line).setBackgroundResource(R.drawable.bottom_bar_top_line_light);
                this.mPlayClose.setImageResource(R.drawable.ic_min_bar_close_light);
                SeekBar seekBar = this.mSeekbar;
                seekBar.setProgressDrawable(ContextCompat.getDrawable(seekBar.getContext(), R.drawable.minibar_seekbar_progress_drawable_light));
                Log.i(TAG, "initBarColor: force light");
                this.mPlayStatusStart.setImageResource(R.drawable.ic_public_pause_light);
                this.mPlayStatusPause.setImageResource(R.drawable.ic_public_play_light);
                setPlayListImage();
            }
        }
    }

    public abstract void loadCover(T item);

    public synchronized void loadPlayBackground(T item) {
        Log.d(TAG, "loadPlayBackground");
        Message messageObtain = Message.obtain();
        messageObtain.what = 2;
        messageObtain.obj = item;
        this.mHandler.removeMessages(2);
        this.mHandler.sendMessageDelayed(messageObtain, 100L);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d(TAG, "onAttachedToWindow");
        j27.a(getNotificationList(), this);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        y45.j(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        int i = newConfig.orientation;
        if (i == this.mLastOrientation) {
            return;
        }
        this.mLastOrientation = i;
        if (this.mIsTabletDevice) {
            BaseConstant.SCREEN_TYPE screen_typeA = b39.a(getContext());
            y45.i(screen_typeA, "getScreeType(...)");
            setPlayControlContainerState(screen_typeA);
        }
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.d(TAG, "onDetachedFromWindow");
        j27.b(getNotificationList(), this);
        Handler handlerO = ThreadUtils.o();
        final c74 c74Var = this.mProgressUpdateRunnable;
        handlerO.removeCallbacks(new Runnable() {
            @Override
            public final void run() {
                BaseBottomBar.n(c74Var);
            }
        });
        ThreadUtils.o().removeCallbacksAndMessages(null);
        this.mHandler.removeCallbacksAndMessages(null);
        Context context = getContext();
        y45.h(context, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity");
        ((BaseActivity) context).removeScreenTypeListener(TAG);
    }

    public final void onPressAnimation(View view, boolean isDown, long animationTime) {
        y45.j(view, "view");
        view.animate().cancel();
        if (isDown) {
            view.animate().alpha(0.2f).setDuration(animationTime).start();
        } else {
            view.animate().alpha(1.0f).setDuration(animationTime).start();
        }
    }

    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        y45.j(source, "source");
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        Log.d(TAG, "onStateChanged event = " + event);
    }

    public void playItem(MediaItem mediaItem, int position, long delay) {
        y45.j(mediaItem, "mediaItem");
        Message messageObtain = Message.obtain();
        messageObtain.what = 3;
        messageObtain.obj = mediaItem;
        messageObtain.arg1 = position;
        this.mHandler.removeMessages(3);
        this.mHandler.sendMessageDelayed(messageObtain, delay);
    }

    public abstract void runMusicProgressUpdate(boolean forceUpdate);

    public final void setEmpty(boolean z) {
        this.isEmpty = z;
    }

    public final void setForceLight(boolean z) {
        this.isForceLight = z;
    }

    public final void setMBottomViewAdapter(BaseBannerAdapter<T> baseBannerAdapter) {
        this.mBottomViewAdapter = baseBannerAdapter;
    }

    public final void setMCurrentMediaItem(T t) {
        this.mCurrentMediaItem = t;
    }

    public final void setMFavoritesIv(ImageView imageView) {
        y45.j(imageView, "<set-?>");
        this.mFavoritesIv = imageView;
    }

    public final void setMIsInFavorites(boolean z) {
        this.mIsInFavorites = z;
    }

    public final void setMManualChange(boolean z) {
        this.mManualChange = z;
    }

    public final void setMUserGestureScroll(boolean z) {
        this.mUserGestureScroll = z;
    }

    public void setPlayControlContainerState(BaseConstant.SCREEN_TYPE screenType) {
        y45.j(screenType, "screenType");
        this.mPlayControlContainer.post(new Runnable() {
            @Override
            public final void run() {
                BaseBottomBar.setPlayControlContainerState$lambda$13(this.b);
            }
        });
    }

    public final void setPlayListImage() {
        this.mPlayListButton.setImageResource(this.isForceLight ? R.drawable.play_list_operate_bar_light : R.drawable.play_list_operate_bar);
    }

    public final void setShouldUpdate(boolean z) {
        this.isShouldUpdate = z;
    }

    public final synchronized void setViewPagerAdapter(long delay) {
        Log.d(TAG, "setViewPagerAdapter delay = " + delay);
        this.mHandler.removeMessages(1);
        this.mHandler.sendEmptyMessageDelayed(1, delay);
    }

    public final void setVisibilityIfNeeded(View view, int visibility) {
        if (view == null || view.getVisibility() == visibility) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        if (viewPropertyAnimatorAnimate != null) {
            viewPropertyAnimatorAnimate.cancel();
        }
        view.setAlpha(1.0f);
        view.setVisibility(visibility);
    }

    public void triggerFavoriteButton() {
        T t = this.mCurrentMediaItem;
        if (t == null) {
            return;
        }
        if (this.mIsInFavorites) {
            this.mFavoriteList.remove(t);
        } else {
            this.mFavoriteList.add(t);
        }
        updateFavoriteIcon();
        if (this.mIsInFavorites) {
            cd.g(getContext(), this.mFavoritesIv);
        } else {
            cd.i(this.mFavoritesIv);
        }
    }

    public void updateFavoriteIcon() {
        T t = this.mCurrentMediaItem;
        boolean z = false;
        if (t != null) {
            List<T> list = this.mFavoriteList;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (T t2 : list) {
                    if (y45.e(t2 != null ? t2.data : null, t.data)) {
                        z = true;
                        break;
                    }
                }
            }
        }
        this.mIsInFavorites = z;
    }

    @SuppressLint({"CheckResult"})
    public final void updateFavoriteList(final c74 runnable) {
        y45.j(runnable, "runnable");
        mc7 mc7VarK = mc7.K(this);
        Context context = getContext();
        y45.h(context, "null cannot be cast to non-null type com.transsion.playercommon.activities.BaseActivity");
        mc7 mc7VarG = mc7VarK.g(((BaseActivity) context).bindToLifecycle());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return BaseBottomBar.r(runnable, (BaseBottomBar) obj);
            }
        };
        mc7 mc7VarM = mc7VarG.L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return BaseBottomBar.o(e74Var, obj);
            }
        }).d0(k29.c()).M(vb.a());
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return BaseBottomBar.p(this.b, (ArrayList) obj);
            }
        };
        mc7VarM.Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BaseBottomBar.q(e74Var2, obj);
            }
        });
    }

    public abstract void updateItemInfo(MediaItem mediaItem, int position);

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BaseBottomBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public BaseBottomBar(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseBottomBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.mFavoriteList = new ArrayList();
        this.mProgressUpdateRunnable = new c74() {
            @Override
            public final Object invoke() {
                return BaseBottomBar.m(this.b);
            }
        };
        this.isShouldUpdate = true;
        this.mLastOrientation = -1;
        this.mIsTabletDevice = com.transsion.utils.a.A();
        this.mHandler = new Handler(Looper.getMainLooper(), new Handler.Callback() {
            @Override
            public final boolean handleMessage(Message message) {
                return BaseBottomBar.l(this.b, message);
            }
        });
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.bottom_operate_bar, (ViewGroup) this, true);
        this.container = viewInflate;
        this.mViewPager = (BannerViewPagerSelf) viewInflate.findViewById(R.id.viewPager);
        this.mEmptyContainer = viewInflate.findViewById(R.id.tv_item_info);
        this.mVpContainer = viewInflate.findViewById(R.id.ll_player);
        this.mCircleGroup = (FrameLayout) viewInflate.findViewById(R.id.fl_cover);
        this.mMusicCircleImageView = (ImageView) viewInflate.findViewById(R.id.iv_cover);
        this.mSquareCover = (ImageView) viewInflate.findViewById(R.id.video_cover);
        this.mPlayingItemTitle = (TextView) viewInflate.findViewById(R.id.playing_music_title);
        this.mPlayingItemArtist = (TextView) viewInflate.findViewById(R.id.playing_music_artist);
        this.mFlPlay = (FrameLayout) findViewById(R.id.fl_play);
        this.mPlayButton = viewInflate.findViewById(R.id.play_button);
        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.seekbar_play);
        this.mSeekbar = seekBar;
        seekBar.setEnabled(false);
        this.mPlayStatusStart = (ImageView) viewInflate.findViewById(R.id.play_status_playing);
        this.mPlayStatusPause = (ImageView) viewInflate.findViewById(R.id.play_status_pause);
        this.mPlayListButton = (ImageView) viewInflate.findViewById(R.id.play_list);
        this.mPlayClose = (ImageView) viewInflate.findViewById(R.id.play_close);
        this.mFavoritesIv = (ImageView) findViewById(R.id.iv_favorites);
        this.mPlayControlContainer = (LinearLayout) findViewById(R.id.ll_play_control);
        this.mAudioPlayPreviousIv = (ImageView) findViewById(R.id.iv_audio_play_previous);
        this.mAudioPlayNextIv = (ImageView) findViewById(R.id.iv_audio_play_next);
        BaseConstant.SCREEN_TYPE screen_typeA = b39.a(context);
        y45.i(screen_typeA, "getScreeType(...)");
        setPlayControlContainerState(screen_typeA);
        ((BaseActivity) context).addOnScreenTypeListener(TAG, new a39() {
            @Override
            public final void a(BaseConstant.SCREEN_TYPE screen_type) {
                BaseBottomBar.j(this.a, screen_type);
            }
        });
        initClick();
        setOutlineProvider(new a(context));
        setClickable(true);
        setFocusable(true);
        setImportantForAccessibility(1);
        k();
    }
}
