package com.transsion.audio.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Outline;
import android.media.audiofx.Visualizer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.Observer;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.data.TrackData;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioPlayListSheetDialogActivity;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.audio.widgets.BottomAudioBar;
import com.transsion.data.Repository;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.SearchResultAdapter;
import com.transsion.playercommon.videomodel.PlayListModel;
import com.transsion.playercommon.widgets.BaseBottomBar;
import com.transsion.playercommon.widgets.banner.AudioSlideAdapter;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.widgets.GestureUtil;
import defpackage.abb;
import defpackage.af0;
import defpackage.ao;
import defpackage.br;
import defpackage.c74;
import defpackage.ccc;
import defpackage.e74;
import defpackage.ed7;
import defpackage.fi1;
import defpackage.h27;
import defpackage.hb0;
import defpackage.iia;
import defpackage.k29;
import defpackage.ky5;
import defpackage.mc7;
import defpackage.oc2;
import defpackage.p06;
import defpackage.raa;
import defpackage.rc7;
import defpackage.ry5;
import defpackage.t74;
import defpackage.tn;
import defpackage.ux0;
import defpackage.vb;
import defpackage.vk1;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.z7c;
import defpackage.zf1;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0087\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0005*\u0001d\u0018\u0000 g2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001gB'\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\r2\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0018\u0010\u0012J\u000f\u0010\u0019\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0019\u0010\u0012J\u000f\u0010\u001a\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001a\u0010\u0012J\u0017\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001c\u0010\u000fJ\u000f\u0010\u001d\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001d\u0010\u0012J\u0019\u0010\u001e\u001a\u00020\r2\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001e\u0010\u0017J\u000f\u0010\u001f\u001a\u00020\rH\u0002¢\u0006\u0004\b\u001f\u0010\u0012J\u000f\u0010 \u001a\u00020\rH\u0002¢\u0006\u0004\b \u0010\u0012J\u0019\u0010#\u001a\u00020\r2\b\b\u0002\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\rH\u0014¢\u0006\u0004\b%\u0010\u0012J\u000f\u0010&\u001a\u00020\rH\u0014¢\u0006\u0004\b&\u0010\u0012J\r\u0010'\u001a\u00020\r¢\u0006\u0004\b'\u0010\u0012J\u000f\u0010(\u001a\u00020\rH\u0016¢\u0006\u0004\b(\u0010\u0012J\u000f\u0010)\u001a\u00020\rH\u0016¢\u0006\u0004\b)\u0010\u0012J\u000f\u0010*\u001a\u00020\rH\u0016¢\u0006\u0004\b*\u0010\u0012J\u0017\u0010,\u001a\u00020\r2\u0006\u0010+\u001a\u00020\bH\u0016¢\u0006\u0004\b,\u0010\u000fJ\u0019\u0010.\u001a\u00020\r2\b\u0010-\u001a\u0004\u0018\u00010\u0002H\u0017¢\u0006\u0004\b.\u0010/J\u0015\u00101\u001a\u00020\r2\u0006\u00100\u001a\u00020!¢\u0006\u0004\b1\u0010$J\u0017\u00103\u001a\u00020\r2\u0006\u00102\u001a\u00020!H\u0016¢\u0006\u0004\b3\u0010$J+\u00108\u001a\u00020\r2\u0006\u00104\u001a\u00020\b2\u0012\u00107\u001a\n\u0012\u0006\b\u0001\u0012\u00020605\"\u000206H\u0016¢\u0006\u0004\b8\u00109J\u001f\u0010=\u001a\u00020\r2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\bH\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\rH\u0016¢\u0006\u0004\b?\u0010\u0012J\r\u0010A\u001a\u00020@¢\u0006\u0004\bA\u0010BR\u0014\u0010D\u001a\u00020C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u001e\u0010H\u001a\n G*\u0004\u0018\u00010F0F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u0014\u0010J\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0014\u0010L\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010KR\u0014\u0010M\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010KR\u0018\u0010O\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010Q\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\"\u0010S\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010$R\u0016\u0010X\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010TR \u0010Z\u001a\b\u0012\u0004\u0012\u00020\b0Y8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]R\"\u0010^\u001a\u00020!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b^\u0010T\u001a\u0004\b_\u0010V\"\u0004\b`\u0010$R\u0014\u0010b\u001a\u00020a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010cR\u0014\u0010e\u001a\u00020d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\be\u0010f¨\u0006h"}, d2 = {"Lcom/transsion/audio/widgets/BottomAudioBar;", "Lcom/transsion/playercommon/widgets/BaseBottomBar;", "Lcom/transsion/dbdata/beans/media/AudioItem;", "Lh27$b;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "o", "Lzfb;", "setGestureUpClick", "(I)V", "setGestureHor", "startPlay", "()V", PlayAudioData.TAG_NEED_PLAY, "", "delay", "updateDisplay", "(J)V", "onStart", "hideCover", "showListDialogFragment", ICode.CALL.CALL_KEY_STATE, "updatePlayPauseButton", "setEmpty", "initBanner", "refreshCurrentVisiblePage", "updateCurrentItemInfo", "", "needRestPosition", "synCurrent", "(Z)V", "onAttachedToWindow", "onDetachedFromWindow", "updateState", "initClick", "triggerFavoriteButton", "updateFavoriteIcon", "visibility", "setVisibility", "audioItem", "loadCover", "(Lcom/transsion/dbdata/beans/media/AudioItem;)V", TtmlNode.START, "startOrStopMusicProgress", "forceUpdate", "runMusicProgressUpdate", "eventId", "", "", "args", "didReceivedNotification", "(I[Ljava/lang/Object;)V", "Lcom/transsion/dbdata/beans/media/MediaItem;", "mediaItem", "position", "updateItemInfo", "(Lcom/transsion/dbdata/beans/media/MediaItem;I)V", "changeViewpager", "Landroid/widget/ImageView;", "getCoverView", "()Landroid/widget/ImageView;", "Lcom/transsion/audio/player/MusicPlayManager;", "mPlayManager", "Lcom/transsion/audio/player/MusicPlayManager;", "Lcom/transsion/dbdata/beans/media/PlayAudioListData;", "kotlin.jvm.PlatformType", "mPlayListData", "Lcom/transsion/dbdata/beans/media/PlayAudioListData;", "mCover", "Landroid/widget/ImageView;", "mCoverBg", "mBgIv", "", "mTitle", "Ljava/lang/String;", "mPlayerState", "I", "needShow", "Z", "getNeedShow", "()Z", "setNeedShow", "mIsStart", "", "notificationList", "Ljava/util/List;", "getNotificationList", "()Ljava/util/List;", "mRestore", "getMRestore", "setMRestore", "Lcom/transsion/audio/player/MusicPlayManager$d;", "mPlayerListener", "Lcom/transsion/audio/player/MusicPlayManager$d;", "com/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1", "pageChangeCallback", "Lcom/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1;", "Companion", "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BottomAudioBar extends BaseBottomBar<AudioItem> implements h27.b {
    private static final int MAX_UPDATE_INTERVAL_MS = 500;
    private static final String TAG = "BottomAudioBar";
    private final ImageView mBgIv;
    private final ImageView mCover;
    private final ImageView mCoverBg;
    private boolean mIsStart;
    private PlayAudioListData mPlayListData;
    private final MusicPlayManager mPlayManager;
    private final MusicPlayManager.d mPlayerListener;
    private int mPlayerState;
    private volatile boolean mRestore;
    private String mTitle;
    private boolean needShow;
    private final List<Integer> notificationList;
    private final BottomAudioBar$pageChangeCallback$1 pageChangeCallback;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BottomAudioBar(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final ArrayList _init_$lambda$0() {
        return new ArrayList((List) ao.d.a().y(true).getSecond());
    }

    public static final zfb changeViewpager$lambda$44$lambda$43(BottomAudioBar bottomAudioBar, AudioItem audioItem) {
        y45.j(audioItem, "audioItem");
        bottomAudioBar.setMCurrentMediaItem(audioItem);
        ry5.g("audioplaypage");
        bottomAudioBar.play();
        return zfb.a;
    }

    public static final void didReceivedNotification$lambda$42(BottomAudioBar bottomAudioBar) {
        Log.d(TAG, "EVENT_MUSIC_NONE");
        bottomAudioBar.setEmpty();
        MusicPlayManager.S().i1(true);
    }

    private final void hideCover() {
        this.mCover.setImageBitmap(null);
        this.mBgIv.setVisibility(0);
        this.mCoverBg.setVisibility(0);
    }

    private final void initBanner(long delay) {
        if (ccc.a(this)) {
            getMEmptyContainer().setVisibility(0);
            getMViewPager().setVisibility(8);
        } else {
            getMEmptyContainer().setVisibility(8);
            getMViewPager().setVisibility(getVisibility());
            setViewPagerAdapter(delay);
        }
    }

    public static void initBanner$default(BottomAudioBar bottomAudioBar, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 100;
        }
        bottomAudioBar.initBanner(j);
    }

    public static final void initClick$lambda$10(BottomAudioBar bottomAudioBar, int i) {
        if (3 == i && bottomAudioBar.mPlayManager.a0() != null) {
            p06.a0("vd_miniplayer_slip_up", "status", "1");
            bottomAudioBar.play();
            return;
        }
        if (i == 8) {
            if (bottomAudioBar.mPlayManager.s0()) {
                bottomAudioBar.onPressAnimation(bottomAudioBar.getMPlayStatusStart(), true, 0L);
                return;
            } else {
                bottomAudioBar.onPressAnimation(bottomAudioBar.getMPlayStatusPause(), true, 0L);
                return;
            }
        }
        if (i != 9) {
            if (i == 5) {
                bottomAudioBar.getMPlayButton().callOnClick();
            }
        } else if (bottomAudioBar.mPlayManager.s0()) {
            bottomAudioBar.onPressAnimation(bottomAudioBar.getMPlayStatusStart(), false, 100L);
        } else {
            bottomAudioBar.onPressAnimation(bottomAudioBar.getMPlayStatusPause(), false, 100L);
        }
    }

    public static final void initClick$lambda$12(BottomAudioBar bottomAudioBar, int i) {
        if (bottomAudioBar.getMCurrentMediaItem() != null) {
            if (i == 3) {
                bottomAudioBar.play();
                return;
            }
            if (i == 5) {
                bottomAudioBar.getMFavoritesIv().callOnClick();
            } else if (i == 8) {
                bottomAudioBar.onPressAnimation(bottomAudioBar.getMFavoritesIv(), true, 100L);
            } else {
                if (i != 9) {
                    return;
                }
                bottomAudioBar.onPressAnimation(bottomAudioBar.getMFavoritesIv(), false, 0L);
            }
        }
    }

    public static final void initClick$lambda$14(BottomAudioBar bottomAudioBar, int i) {
        if (bottomAudioBar.getMCurrentMediaItem() != null) {
            if (i == 3) {
                bottomAudioBar.play();
                return;
            }
            if (i == 5) {
                bottomAudioBar.getMAudioPlayPreviousIv().callOnClick();
            } else if (i == 8) {
                bottomAudioBar.onPressAnimation(bottomAudioBar.getMAudioPlayPreviousIv(), true, 0L);
            } else {
                if (i != 9) {
                    return;
                }
                bottomAudioBar.onPressAnimation(bottomAudioBar.getMAudioPlayPreviousIv(), false, 100L);
            }
        }
    }

    public static final void initClick$lambda$16(BottomAudioBar bottomAudioBar, int i) {
        if (bottomAudioBar.getMCurrentMediaItem() != null) {
            if (i == 3) {
                bottomAudioBar.play();
                return;
            }
            if (i == 5) {
                bottomAudioBar.getMAudioPlayNextIv().callOnClick();
            } else if (i == 8) {
                bottomAudioBar.onPressAnimation(bottomAudioBar.getMAudioPlayNextIv(), true, 0L);
            } else {
                if (i != 9) {
                    return;
                }
                bottomAudioBar.onPressAnimation(bottomAudioBar.getMAudioPlayNextIv(), false, 100L);
            }
        }
    }

    public static final void initClick$lambda$6(BottomAudioBar bottomAudioBar, int i) {
        if (bottomAudioBar.getMCurrentMediaItem() != null) {
            bottomAudioBar.setGestureUpClick(i);
            if (ccc.a(bottomAudioBar)) {
                bottomAudioBar.setGestureHor(i);
            }
        }
    }

    public static final void initClick$lambda$8(BottomAudioBar bottomAudioBar, int i) {
        if (bottomAudioBar.getMCurrentMediaItem() != null) {
            bottomAudioBar.setGestureUpClick(i);
            bottomAudioBar.setGestureHor(i);
        }
    }

    public static final void initClick$lambda$9(BottomAudioBar bottomAudioBar, int i) {
        LogUtils.l("event = " + i);
        if (3 == i && bottomAudioBar.mPlayManager.a0() != null) {
            p06.a0("vd_miniplayer_slip_up", "status", "1");
            bottomAudioBar.play();
        } else if (i == 8) {
            bottomAudioBar.onPressAnimation(bottomAudioBar.getMPlayListButton(), true, 0L);
        } else if (i == 9) {
            bottomAudioBar.onPressAnimation(bottomAudioBar.getMPlayListButton(), false, 100L);
        } else if (i == 5) {
            bottomAudioBar.getMPlayListButton().callOnClick();
        }
    }

    public static final Bitmap loadCover$lambda$35$lambda$29(BottomAudioBar bottomAudioBar, BaseActivity baseActivity, AudioItem audioItem) {
        Bitmap bitmapI;
        y45.j(audioItem, "audioItem1");
        String customCoverPath = audioItem.getCustomCoverPath();
        if (customCoverPath != null && customCoverPath.length() != 0 && new File(customCoverPath).exists()) {
            Context context = bottomAudioBar.getContext();
            y45.i(context, "getContext(...)");
            Bitmap bitmapA = af0.a(context, customCoverPath, 60.0f, 60.0f);
            if (bitmapA != null) {
                return bitmapA;
            }
        }
        String str = audioItem.albumPath;
        if (str != null && str.length() != 0 && new File(audioItem.albumPath).exists()) {
            Context context2 = bottomAudioBar.getContext();
            y45.i(context2, "getContext(...)");
            Bitmap bitmapA2 = af0.a(context2, audioItem.albumPath, 60.0f, 60.0f);
            if (bitmapA2 != null) {
                return bitmapA2;
            }
        }
        AudioAlbum audioAlbumD = ao.d.a().D(audioItem.id);
        if (audioAlbumD == null || !new File(audioAlbumD.imgPath).exists()) {
            bitmapI = vk1.i(bottomAudioBar.getContext(), Uri.parse(audioItem.data));
        } else {
            Context context3 = bottomAudioBar.getContext();
            y45.i(context3, "getContext(...)");
            bitmapI = af0.a(context3, audioAlbumD.imgPath, 60.0f, 60.0f);
            if (bitmapI == null) {
                bitmapI = vk1.i(bottomAudioBar.getContext(), Uri.parse(audioItem.data));
            }
        }
        if (bitmapI != null) {
            return bitmapI;
        }
        int iJ = tn.j(audioItem);
        Resources resources = baseActivity.getResources();
        y45.i(resources, "getResources(...)");
        return BitmapFactory.decodeResource(resources, iJ);
    }

    public static final Bitmap loadCover$lambda$35$lambda$30(e74 e74Var, Object obj) {
        y45.j(obj, "p0");
        return (Bitmap) e74Var.invoke(obj);
    }

    public static final zfb loadCover$lambda$35$lambda$31(BottomAudioBar bottomAudioBar, int i, Bitmap bitmap) {
        AudioItem mCurrentMediaItem = bottomAudioBar.getMCurrentMediaItem();
        Integer numValueOf = (mCurrentMediaItem == null && (mCurrentMediaItem = bottomAudioBar.mPlayManager.P()) == null) ? null : Integer.valueOf(mCurrentMediaItem.id);
        if (numValueOf == null || i == numValueOf.intValue()) {
            bottomAudioBar.mBgIv.setVisibility(8);
            if (bitmap != null) {
                bottomAudioBar.mCoverBg.setVisibility(4);
                bottomAudioBar.mCover.setImageBitmap(bitmap);
            } else {
                bottomAudioBar.mCoverBg.setVisibility(bottomAudioBar.getVisibility());
            }
            return zfb.a;
        }
        Log.i(TAG, "loadCover drop stale bitmap: requested=" + i + " current=" + numValueOf);
        return zfb.a;
    }

    public static final zfb loadCover$lambda$35$lambda$33(BottomAudioBar bottomAudioBar, int i, Throwable th) {
        AudioItem mCurrentMediaItem = bottomAudioBar.getMCurrentMediaItem();
        Integer numValueOf = (mCurrentMediaItem == null && (mCurrentMediaItem = bottomAudioBar.mPlayManager.P()) == null) ? null : Integer.valueOf(mCurrentMediaItem.id);
        if (numValueOf != null && i != numValueOf.intValue()) {
            return zfb.a;
        }
        bottomAudioBar.hideCover();
        return zfb.a;
    }

    public static final void onAttachedToWindow$lambda$1(BottomAudioBar bottomAudioBar, Integer num) {
        Log.d(TAG, "EVENT_KEY_AUDIO_PLAYLIST_CHANGE");
        bottomAudioBar.setViewPagerAdapter(0L);
        bottomAudioBar.setMCurrentMediaItem(MusicPlayManager.S().P());
    }

    public static final void onAttachedToWindow$lambda$2(BottomAudioBar bottomAudioBar, Integer num) {
        Log.d(TAG, "EVENT_KEY_AUDIO_SWITCH_REPEAT_MODE");
        BaseBottomBar.setViewPagerAdapter$default(bottomAudioBar, 0L, 1, null);
        bottomAudioBar.setMCurrentMediaItem(MusicPlayManager.S().P());
    }

    public static final zfb onAttachedToWindow$lambda$4(BottomAudioBar bottomAudioBar, List list) {
        bottomAudioBar.updateFavoriteList(new c74() {
            @Override
            public final Object invoke() {
                return BottomAudioBar.onAttachedToWindow$lambda$4$lambda$3();
            }
        });
        return zfb.a;
    }

    public static final ArrayList onAttachedToWindow$lambda$4$lambda$3() {
        return new ArrayList((List) ao.d.a().y(true).getSecond());
    }

    private final void onStart() throws Throwable {
        this.mPlayManager.f1(this.mPlayerListener);
        Log.d(TAG, "[AudioMiniBar]onStart updateDisplay");
        updateDisplay$default(this, 0L, 1, null);
        runMusicProgressUpdate(true);
    }

    private final void play() {
        br.e(getMCurrentMediaItem(), new e74() {
            @Override
            public final Object invoke(Object obj) {
                return BottomAudioBar.play$lambda$20(this.b, (PlayAudioData) obj);
            }
        }, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return BottomAudioBar.play$lambda$21((PlayAudioData) obj);
            }
        });
    }

    public static final zfb play$lambda$20(BottomAudioBar bottomAudioBar, PlayAudioData playAudioData) {
        y45.j(playAudioData, "it");
        playAudioData.listFlag = bottomAudioBar.mPlayManager.T();
        playAudioData.playListId = bottomAudioBar.mPlayManager.Z();
        playAudioData.from = 3;
        return zfb.a;
    }

    public static final zfb play$lambda$21(PlayAudioData playAudioData) {
        y45.j(playAudioData, "it");
        p06.f0(null, "vd_click_to_enter_the_playback_page", 932460000085L);
        return zfb.a;
    }

    private final void refreshCurrentVisiblePage() {
        try {
            getMViewPager().refreshCurrentItem();
        } catch (Exception e) {
            Log.d(TAG, "refreshCurrentVisiblePage: " + e.getMessage());
        }
    }

    private final void setEmpty() {
        Log.d(TAG, "setEmpty");
        setEmpty(true);
    }

    private final void setGestureHor(int o) {
        if (1 == o) {
            hb0.markDirect("vd_miniplayer_slip_left");
            MusicPlayManager.S().U0();
            p06.h0("audio_play_next");
        } else if (2 == o) {
            MusicPlayManager.S().Y0();
            hb0.markDirect("vd_miniplayer_slip_right");
        }
    }

    private final void setGestureUpClick(int o) {
        if (3 == o || o == 5) {
            if (3 == o) {
                p06.a0("vd_miniplayer_slip_up", "status", "1");
            }
            play();
        }
    }

    public final void showListDialogFragment() {
        Bundle bundle = new Bundle();
        bundle.putString("name", this.mPlayManager.c0());
        bundle.putInt(hb0.KEY_NAME_NUM, this.mPlayListData.selectedPlayMediaItem().getPlayList().size());
        TrackData trackData = new TrackData();
        trackData.add("name", this.mPlayManager.c0());
        trackData.add(hb0.KEY_NAME_NUM, this.mPlayListData.selectedPlayMediaItem().getPlayList().size());
        p06.q0(trackData, bundle, "vd_audio_playlist_show", 9324L);
        Intent intent = new Intent();
        intent.setClass(getContext(), AudioPlayListSheetDialogActivity.class);
        getContext().startActivity(intent);
    }

    public final void startPlay() {
        LocalBroadcastManager.getInstance(getContext().getApplicationContext()).sendBroadcast(new Intent("com.transsion.visha.music.firstclick"));
    }

    public final synchronized void synCurrent(boolean needRestPosition) {
        if (PlayAudioListData.getInstance().getPlayList().isEmpty()) {
            setEmpty();
            Log.d(TAG, "synCurrent, playList is empty");
            setVisibility(8);
            return;
        }
        setEmpty(false);
        if (this.needShow) {
            setVisibility(0);
        }
        if (!getIsShouldUpdate() && getMViewPager().getVisibility() == 0) {
            LogUtils.P(TAG, "bottom operate bar not update");
            return;
        }
        try {
            PlayAudioListData playAudioListData = PlayAudioListData.getInstance();
            AudioItem audioItemPlayMediaItem = playAudioListData.playMediaItem();
            ArrayList<AudioItem> playList = playAudioListData.getPlayList();
            y45.g(playList);
            Iterator<AudioItem> it = playList.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else {
                    if (y45.e(it.next().data, audioItemPlayMediaItem != null ? audioItemPlayMediaItem.data : null)) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            if (i != -1) {
                if (ccc.a(this)) {
                    updateCurrentItemInfo();
                } else {
                    getMViewPager().setVisibility(0);
                    if (i != getMViewPager().getCurrentPosition() || needRestPosition) {
                        setMManualChange(true);
                        Log.d(TAG, "targetIndex: " + i + "  currentItem = " + getMViewPager().getCurrentPosition() + ", mManualChange = " + getMManualChange());
                        getMViewPager().setCurrentItem(i, false);
                    }
                }
            }
            updateFavoriteIcon();
        } catch (Exception e) {
            Log.d(TAG, e.getMessage() + "-" + e.getLocalizedMessage());
        }
    }

    public static void synCurrent$default(BottomAudioBar bottomAudioBar, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        bottomAudioBar.synCurrent(z);
    }

    public static final void triggerFavoriteButton$lambda$18(BottomAudioBar bottomAudioBar) {
        AudioItem mCurrentMediaItem = bottomAudioBar.getMCurrentMediaItem();
        if (mCurrentMediaItem != null) {
            ao.d.a().l0(bottomAudioBar.getMIsInFavorites(), mCurrentMediaItem);
        }
    }

    private final void updateCurrentItemInfo() {
        getMEmptyContainer().setVisibility(0);
        getMViewPager().setVisibility(8);
        if (PlayAudioListData.getInstance().playMediaItem() == null || PlayAudioListData.getInstance().playMediaItem().displayName == null || y45.e(PlayAudioListData.getInstance().playMediaItem().displayName, getMPlayingItemTitle().getText().toString())) {
            return;
        }
        getMPlayingItemTitle().setText(PlayAudioListData.getInstance().playMediaItem().displayName);
        getMPlayingItemArtist().setText(PlayAudioListData.getInstance().playMediaItem().artistName);
    }

    @SuppressLint({"CheckResult"})
    private final void updateDisplay(final long delay) {
        Context context = getContext();
        BaseActivity baseActivity = context instanceof BaseActivity ? (BaseActivity) context : null;
        if (baseActivity == null) {
            return;
        }
        mc7 mc7VarM = mc7.h(new ed7() {
            @Override
            public final void subscribe(rc7 rc7Var) throws Throwable {
                BottomAudioBar.updateDisplay$lambda$24(this.a, rc7Var);
            }
        }).g(baseActivity.bindToLifecycle()).d0(k29.c()).M(vb.a());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return BottomAudioBar.updateDisplay$lambda$25(this.b, delay, (AudioItem) obj);
            }
        };
        zf1 zf1Var = new zf1() {
            @Override
            public final void accept(Object obj) {
                e74Var.invoke(obj);
            }
        };
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return BottomAudioBar.updateDisplay$lambda$27((Throwable) obj);
            }
        };
        mc7VarM.a0(zf1Var, new zf1() {
            @Override
            public final void accept(Object obj) {
                e74Var2.invoke(obj);
            }
        });
    }

    public static void updateDisplay$default(BottomAudioBar bottomAudioBar, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 100;
        }
        bottomAudioBar.updateDisplay(j);
    }

    public static final void updateDisplay$lambda$24(BottomAudioBar bottomAudioBar, rc7 rc7Var) throws Throwable {
        AudioItem mCurrentMediaItem;
        y45.j(rc7Var, "emitter");
        bottomAudioBar.setMCurrentMediaItem(bottomAudioBar.mPlayManager.P());
        if (bottomAudioBar.getMCurrentMediaItem() == null) {
            bottomAudioBar.setMCurrentMediaItem(PlayAudioListData.getInstance().playMediaItem());
            if (bottomAudioBar.getMCurrentMediaItem() == null) {
                String strL = MMKV.p().l("music_playing");
                if (TextUtils.isEmpty(strL)) {
                    strL = CacheManager.getInstance().getCache("music_playing");
                }
                if (!TextUtils.isEmpty(strL)) {
                    bottomAudioBar.setMCurrentMediaItem((MediaItem) fi1.b(strL, AudioItem.class));
                    String strL2 = MMKV.p().l("v_current_playing_audio_uri");
                    if (strL2 != null && (mCurrentMediaItem = bottomAudioBar.getMCurrentMediaItem()) != null) {
                        mCurrentMediaItem.setUri(Uri.parse(strL2));
                    }
                    String strL3 = MMKV.p().l("music_playlist");
                    if (TextUtils.isEmpty(strL3)) {
                        strL3 = CacheManager.getInstance().getCache("music_playlist");
                    }
                    ArrayList arrayListG = !TextUtils.isEmpty(strL3) ? (ArrayList) fi1.c(strL3, new TypeToken<List<? extends AudioItem>>() {
                    }.getType()) : null;
                    if ((arrayListG == null || arrayListG.isEmpty()) && bottomAudioBar.getMCurrentMediaItem() != null) {
                        AudioItem mCurrentMediaItem2 = bottomAudioBar.getMCurrentMediaItem();
                        y45.g(mCurrentMediaItem2);
                        arrayListG = y71.g(mCurrentMediaItem2);
                    }
                    if (arrayListG != null && !arrayListG.isEmpty()) {
                        List listL = ao.d.a().L(arrayListG, true);
                        if (!listL.isEmpty()) {
                            List<AudioItem> list = listL;
                            LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list, 10)), 16));
                            for (AudioItem audioItem : list) {
                                Pair pairA = abb.a(Integer.valueOf(audioItem.id), audioItem.uri);
                                linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
                            }
                            Iterator it = arrayListG.iterator();
                            y45.i(it, "iterator(...)");
                            while (it.hasNext()) {
                                Object next = it.next();
                                y45.i(next, "next(...)");
                                AudioItem audioItem2 = (AudioItem) next;
                                Uri uri = (Uri) linkedHashMap.get(Integer.valueOf(audioItem2.id));
                                if (uri != null) {
                                    audioItem2.setUri(uri);
                                }
                            }
                        }
                        PlayAudioListData.getInstance().setPlayMediaItem(bottomAudioBar.getMCurrentMediaItem()).selectedPlayMediaItem();
                        PlayAudioListData.getInstance().setPlayList(arrayListG, null);
                        h27.c().e(1069, new Object[0]);
                    }
                    bottomAudioBar.mRestore = true;
                }
            }
        }
        AudioItem mCurrentMediaItem3 = bottomAudioBar.getMCurrentMediaItem();
        y45.g(mCurrentMediaItem3);
        rc7Var.onNext(mCurrentMediaItem3);
        rc7Var.onComplete();
    }

    public static final zfb updateDisplay$lambda$25(BottomAudioBar bottomAudioBar, long j, AudioItem audioItem) {
        if (bottomAudioBar.getMCurrentMediaItem() == null) {
            Log.d(TAG, "updateDisplay,mediaItem null");
            bottomAudioBar.setEmpty();
            return zfb.a;
        }
        bottomAudioBar.setPlayListImage();
        bottomAudioBar.setEmpty(false);
        AudioItem mCurrentMediaItem = bottomAudioBar.getMCurrentMediaItem();
        String str = mCurrentMediaItem != null ? mCurrentMediaItem.displayName : null;
        bottomAudioBar.mTitle = str;
        Log.d(TAG, "updateDisplay,title: " + str);
        if (bottomAudioBar.mTitle != null) {
            bottomAudioBar.initBanner(j);
        } else {
            bottomAudioBar.getMEmptyContainer().setVisibility(ccc.a(bottomAudioBar) ? 0 : 8);
            bottomAudioBar.getMViewPager().setVisibility(ccc.a(bottomAudioBar) ? 8 : 0);
        }
        bottomAudioBar.loadPlayBackground(bottomAudioBar.getMCurrentMediaItem());
        int iB0 = bottomAudioBar.mPlayManager.b0();
        bottomAudioBar.mPlayerState = iB0;
        bottomAudioBar.updatePlayPauseButton(iB0);
        bottomAudioBar.mPlayListData = bottomAudioBar.mPlayManager.Y();
        bottomAudioBar.updateFavoriteIcon();
        return zfb.a;
    }

    public static final zfb updateDisplay$lambda$27(Throwable th) {
        return zfb.a;
    }

    public final void updatePlayPauseButton(int state) {
        boolean z = state == 3;
        Log.d(TAG, "updatePlayPauseButton, state: " + state + " isPlaying: " + z);
        setVisibilityIfNeeded(getMPlayStatusStart(), z ? 0 : 8);
        setVisibilityIfNeeded(getMPlayStatusPause(), z ? 8 : 0);
    }

    @Override
    public void changeViewpager() {
        if (getMBottomViewAdapter() == null) {
            Log.d(TAG, "mBottomViewAdapter = null , setup AudioSlideAdapter ");
            AudioSlideAdapter audioSlideAdapter = new AudioSlideAdapter();
            audioSlideAdapter.y(super.getIsForceLight());
            audioSlideAdapter.D(new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return BottomAudioBar.changeViewpager$lambda$44$lambda$43(this.b, (AudioItem) obj);
                }
            });
            setMBottomViewAdapter(audioSlideAdapter);
            getMViewPager().registerOnPageChangeCallback(this.pageChangeCallback);
            getMViewPager().m124setAdapter(getMBottomViewAdapter());
            getMViewPager().create(PlayAudioListData.getInstance().getPlayList());
            getMViewPager().setVisibility(0);
            synCurrent$default(this, false, 1, null);
            return;
        }
        List<AudioItem> data = getMViewPager().getData();
        ArrayList<AudioItem> playList = PlayAudioListData.getInstance().getPlayList();
        y45.i(playList, "getPlayList(...)");
        if (br.d(data, playList)) {
            synCurrent$default(this, false, 1, null);
            refreshCurrentVisiblePage();
            return;
        }
        Log.d(TAG, "playList changed, new size : " + PlayAudioListData.getInstance().getPlayList().size());
        getMViewPager().refreshData(PlayAudioListData.getInstance().getPlayList(), new Runnable() {
            @Override
            public final void run() {
                this.b.synCurrent(true);
            }
        });
    }

    @Override
    public void didReceivedNotification(int eventId, Object... args) {
        y45.j(args, "args");
        if (eventId != 1057) {
            if (eventId == 1083) {
                Log.d(TAG, "didReceivedNotification: EVENT_AUDIO_NEW_START");
                initBanner$default(this, 0L, 1, null);
                return;
            } else if (eventId != 1089) {
                if (eventId == 1069) {
                    MusicPlayManager.S().u1(PlayAudioListData.getInstance().playMediaItem());
                    PlayAudioListData.getInstance().selectedPlayMediaItem();
                    return;
                } else {
                    if (eventId != 1070) {
                        return;
                    }
                    post(new Runnable() {
                        @Override
                        public final void run() {
                            BottomAudioBar.didReceivedNotification$lambda$42(this.b);
                        }
                    });
                    return;
                }
            }
        }
        Log.d(TAG, "didReceivedNotification updateDisplay event: " + eventId);
        updateDisplay$default(this, 0L, 1, null);
    }

    public final ImageView getMCover() {
        return this.mCover;
    }

    public final boolean getMRestore() {
        return this.mRestore;
    }

    public final boolean getNeedShow() {
        return this.needShow;
    }

    @Override
    public List<Integer> getNotificationList() {
        return this.notificationList;
    }

    @Override
    public void initClick() {
        Context context;
        int i;
        FrameLayout mFlPlay = getMFlPlay();
        if (this.mPlayerState != 3) {
            context = getContext();
            i = R.string.talkback_pause;
        } else {
            context = getContext();
            i = R.string.talkback_play;
        }
        mFlPlay.setContentDescription(context.getString(i));
        getMFlPlay().setOnClickListener(new ux0() {
            @Override
            public void onClick(View v) {
                y45.j(v, "v");
                super.onClick(v);
                if (raa.i(BottomAudioBar.this.getContext())) {
                    if (BottomAudioBar.this.getMCurrentMediaItem() == null || PlayAudioListData.getInstance().getPlayList().size() == 0) {
                        BottomAudioBar.this.startPlay();
                        BottomAudioBar.this.setMCurrentMediaItem(MusicPlayManager.S().a0());
                    } else {
                        if (BottomAudioBar.this.getMRestore()) {
                            BottomAudioBar.this.mPlayManager.P0(PlayAudioListData.getInstance().playMediaItem(), false);
                            MusicPlayManager.S().u1(PlayAudioListData.getInstance().playMediaItem());
                            BottomAudioBar.this.setMRestore(false);
                        }
                        BottomAudioBar.this.mPlayManager.A1(true, BottomAudioBar.this.mPlayerState != 3);
                        p06.f0(null, "vd_play_pause", 932460000086L);
                        p06.d0(BottomAudioBar.this.mPlayerState != 3 ? "vd_audio_miniplayer_pause_cl" : "vd_audio_miniplayer_play_cl");
                    }
                    BottomAudioBar.this.getMFlPlay().setContentDescription(BottomAudioBar.this.getContext().getString(BottomAudioBar.this.mPlayerState == 3 ? R.string.talkback_pause : R.string.talkback_play));
                }
            }

            @Override
            public void onNoDoubleClick(View v) {
                y45.j(v, "v");
            }
        });
        GestureUtil.scrollGestureExactly(this, new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i2) {
                BottomAudioBar.initClick$lambda$6(this.a, i2);
            }
        });
        GestureUtil.scrollGestureExactly(getMEmptyContainer(), new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i2) {
                BottomAudioBar.initClick$lambda$8(this.a, i2);
            }
        });
        GestureUtil.scrollGestureExactly(getMPlayListButton(), new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i2) {
                BottomAudioBar.initClick$lambda$9(this.a, i2);
            }
        });
        getMPlayListButton().setOnClickListener(new ux0() {
            @Override
            public void onNoDoubleClick(View v) {
                if (PlayAudioListData.getInstance().getPlayList().size() == 0) {
                    return;
                }
                BottomAudioBar.this.showListDialogFragment();
                p06.f0(null, "vd_playlist", 932460000087L);
            }
        });
        GestureUtil.scrollGestureExactly(getMPlayButton(), new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i2) {
                BottomAudioBar.initClick$lambda$10(this.a, i2);
            }
        });
        getMPlayButton().setOnClickListener(new ux0() {
            @Override
            public void onNoDoubleClick(View v) {
                Log.d(BottomAudioBar.TAG, "***listFlag=" + Repository.INSTANCE.getListFlag() + StringUtils.COMMA + BottomAudioBar.this.mPlayManager.r0());
                if (BottomAudioBar.this.getMCurrentMediaItem() == null || PlayAudioListData.getInstance().getPlayList().isEmpty()) {
                    BottomAudioBar.this.startPlay();
                    BottomAudioBar.this.setMCurrentMediaItem(MusicPlayManager.S().a0());
                    return;
                }
                if (BottomAudioBar.this.getMRestore() || !BottomAudioBar.this.mPlayManager.r0()) {
                    BottomAudioBar.this.mPlayManager.P0(PlayAudioListData.getInstance().playMediaItem(), false);
                    MusicPlayManager.S().u1(PlayAudioListData.getInstance().playMediaItem());
                    BottomAudioBar.this.setMRestore(false);
                }
                ry5.g("minibar");
                BottomAudioBar.this.mPlayManager.A1(true, BottomAudioBar.this.mPlayerState != 3);
                p06.f0(null, "vd_play_pause", 932460000086L);
                p06.d0(BottomAudioBar.this.mPlayerState != 3 ? "vd_audio_miniplayer_pause_cl" : "vd_audio_miniplayer_play_cl");
            }
        });
        GestureUtil.scrollGestureExactly(getMFavoritesIv(), new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i2) {
                BottomAudioBar.initClick$lambda$12(this.a, i2);
            }
        });
        getMFavoritesIv().setOnClickListener(new ux0() {
            @Override
            public void onNoDoubleClick(View v) {
                if (BottomAudioBar.this.getMCurrentMediaItem() != null) {
                    BottomAudioBar.this.triggerFavoriteButton();
                }
            }
        });
        GestureUtil.scrollGestureExactly(getMAudioPlayPreviousIv(), new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i2) {
                BottomAudioBar.initClick$lambda$14(this.a, i2);
            }
        });
        getMAudioPlayPreviousIv().setOnClickListener(new ux0() {
            {
                super(0);
            }

            @Override
            public void onNoDoubleClick(View v) {
                if (BottomAudioBar.this.getMCurrentMediaItem() != null) {
                    MusicPlayManager.S().Y0();
                    p06.h0("audio_play_previous");
                }
            }
        });
        GestureUtil.scrollGestureExactly(getMAudioPlayNextIv(), new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i2) {
                BottomAudioBar.initClick$lambda$16(this.a, i2);
            }
        });
        getMAudioPlayNextIv().setOnClickListener(new ux0() {
            {
                super(0);
            }

            @Override
            public void onNoDoubleClick(View v) {
                if (BottomAudioBar.this.getMCurrentMediaItem() != null) {
                    MusicPlayManager.S().U0();
                    p06.h0("audio_play_next");
                }
            }
        });
    }

    @Override
    public void onAttachedToWindow() throws Throwable {
        PlayListModel playListModel;
        LiveData liveDataL;
        super.onAttachedToWindow();
        onStart();
        LiveEventBus.MyMutableLiveData myMutableLiveDataD = LiveEventBus.b().d("audio_play_list_change");
        Object context = getContext();
        y45.h(context, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
        myMutableLiveDataD.observe((LifecycleOwner) context, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                BottomAudioBar.onAttachedToWindow$lambda$1(this.a, (Integer) obj);
            }
        });
        LiveEventBus.MyMutableLiveData myMutableLiveDataD2 = LiveEventBus.b().d("audio_switch_repeat_mode");
        Object context2 = getContext();
        y45.h(context2, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
        myMutableLiveDataD2.observe((LifecycleOwner) context2, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                BottomAudioBar.onAttachedToWindow$lambda$2(this.a, (Integer) obj);
            }
        });
        Context context3 = getContext();
        BaseActivity baseActivity = context3 instanceof BaseActivity ? (BaseActivity) context3 : null;
        if (baseActivity == null || (playListModel = (PlayListModel) baseActivity.getViewModel(PlayListModel.class)) == null || (liveDataL = playListModel.l()) == null) {
            return;
        }
        Object context4 = getContext();
        y45.h(context4, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
        liveDataL.observe((LifecycleOwner) context4, new BottomAudioBar$sam$androidx_lifecycle_Observer$0(new e74() {
            @Override
            public final Object invoke(Object obj) {
                return BottomAudioBar.onAttachedToWindow$lambda$4(this.b, (List) obj);
            }
        }));
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mPlayManager.F1(this.mPlayerListener);
        LiveEventBus.b().d("audio_play_list_change").c();
        LiveEventBus.b().d("audio_switch_repeat_mode").c();
    }

    @Override
    public void runMusicProgressUpdate(boolean forceUpdate) throws Throwable {
        long jR;
        if (forceUpdate || this.mPlayManager.s0()) {
            try {
                jR = this.mPlayManager.R();
                try {
                    long jQ = this.mPlayManager.Q();
                    if (forceUpdate && ccc.a(this)) {
                        updateCurrentItemInfo();
                    }
                    Handler handlerO = ThreadUtils.o();
                    final c74 mProgressUpdateRunnable = getMProgressUpdateRunnable();
                    handlerO.removeCallbacks(new Runnable() {
                        @Override
                        public final void run() {
                            mProgressUpdateRunnable.invoke();
                        }
                    });
                    final c74 mProgressUpdateRunnable2 = getMProgressUpdateRunnable();
                    handlerO.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            mProgressUpdateRunnable2.invoke();
                        }
                    }, 500L);
                    if (jR > 0) {
                        if (MusicPlayManager.S().s0() && !ccc.a(this) && getMViewPager().getVisibility() != 0) {
                            getMEmptyContainer().setVisibility(8);
                            initBanner$default(this, 0L, 1, null);
                        }
                        getMSeekbar().setProgress(Math.round((jQ * ((long) 100)) / jR), true);
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (forceUpdate && ccc.a(this)) {
                        updateCurrentItemInfo();
                    }
                    Handler handlerO2 = ThreadUtils.o();
                    final c74 mProgressUpdateRunnable3 = getMProgressUpdateRunnable();
                    handlerO2.removeCallbacks(new Runnable() {
                        @Override
                        public final void run() {
                            mProgressUpdateRunnable3.invoke();
                        }
                    });
                    final c74 mProgressUpdateRunnable4 = getMProgressUpdateRunnable();
                    handlerO2.postDelayed(new Runnable() {
                        @Override
                        public final void run() {
                            mProgressUpdateRunnable4.invoke();
                        }
                    }, 500L);
                    if (jR > 0) {
                        if (MusicPlayManager.S().s0() && !ccc.a(this) && getMViewPager().getVisibility() != 0) {
                            getMEmptyContainer().setVisibility(8);
                            initBanner$default(this, 0L, 1, null);
                        }
                        getMSeekbar().setProgress(Math.round(0 / jR), true);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                jR = 0;
            }
            getMSeekbar().setProgress(0, true);
        }
    }

    public final void setMRestore(boolean z) {
        this.mRestore = z;
    }

    public final void setNeedShow(boolean z) {
        this.needShow = z;
    }

    @Override
    public void setVisibility(int visibility) {
        if (getIsEmpty()) {
            super.setVisibility(8);
        } else {
            super.setVisibility(visibility);
        }
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
                mProgressUpdateRunnable.invoke();
            }
        });
    }

    @Override
    public void triggerFavoriteButton() {
        super.triggerFavoriteButton();
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putInt("audio_favorite", getMIsInFavorites() ? 1 : 0);
        trackData.add("audio_favorite", getMIsInFavorites() ? 1 : 0);
        p06.q0(trackData, bundle, "vd_audio_play", 9324L);
        if (getMCurrentMediaItem() == null) {
            return;
        }
        iia.a(new Runnable() {
            @Override
            public final void run() {
                BottomAudioBar.triggerFavoriteButton$lambda$18(this.b);
            }
        });
    }

    @Override
    public void updateFavoriteIcon() {
        super.updateFavoriteIcon();
        getMFavoritesIv().setImageResource(getMIsInFavorites() ? R.drawable.ic_farvorited_on_audio : R.drawable.ic_farvorite_gray);
        boolean z = PlayAudioListData.getInstance().getPlayList() == null || PlayAudioListData.getInstance().getPlayList().size() == 0;
        getMFavoritesIv().setEnabled(!z);
        if (z) {
            getMFavoritesIv().setImageResource(R.drawable.ic_farvorite_gray_disable);
        }
    }

    @Override
    public void updateItemInfo(MediaItem mediaItem, int position) {
        y45.j(mediaItem, "mediaItem");
        MusicPlayManager.S().P0((AudioItem) mediaItem, false);
    }

    public final void updateState() {
        if (getMCurrentMediaItem() == null) {
            Log.d(TAG, "updateState mCurrentMediaItem is null");
            setEmpty();
            return;
        }
        AudioItem mCurrentMediaItem = getMCurrentMediaItem();
        this.mTitle = mCurrentMediaItem != null ? mCurrentMediaItem.displayName : null;
        AudioItem mCurrentMediaItem2 = getMCurrentMediaItem();
        SearchResultAdapter.t = mCurrentMediaItem2 != null ? mCurrentMediaItem2.data : null;
        BaseBottomBar.setViewPagerAdapter$default(this, 0L, 1, null);
        loadPlayBackground(getMCurrentMediaItem());
        updateFavoriteIcon();
        setEmpty(false);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BottomAudioBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    @Override
    @SuppressLint({"CheckResult"})
    public void loadCover(AudioItem audioItem) {
        if (audioItem == null) {
            return;
        }
        final int i = audioItem.id;
        AudioItem mCurrentMediaItem = getMCurrentMediaItem();
        Integer numValueOf = (mCurrentMediaItem == null && (mCurrentMediaItem = this.mPlayManager.P()) == null) ? null : Integer.valueOf(mCurrentMediaItem.id);
        if (numValueOf != null && i != numValueOf.intValue()) {
            Log.i(TAG, "loadCover skip mismatched item: requested=" + i + " current=" + numValueOf);
            return;
        }
        Log.i(TAG, "loadCover: " + audioItem);
        if (audioItem.isMusicVideo) {
            z7c.c(getContext(), MediaExtKt.toLocalMediaLoadInfo(audioItem), ResourcesCompat.getDrawable(getContext().getResources(), R.drawable.main_fragment_placeholder, getContext().getTheme()), this.mCover);
            return;
        }
        synchronized (this) {
            Context context = getContext();
            final BaseActivity baseActivity = context instanceof BaseActivity ? (BaseActivity) context : null;
            if (baseActivity == null) {
                return;
            }
            mc7 mc7VarG = mc7.K(audioItem).g(baseActivity.bindToLifecycle());
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return BottomAudioBar.loadCover$lambda$35$lambda$29(this.b, baseActivity, (AudioItem) obj);
                }
            };
            mc7 mc7VarM = mc7VarG.L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return BottomAudioBar.loadCover$lambda$35$lambda$30(e74Var, obj);
                }
            }).d0(k29.c()).M(vb.a());
            final e74 e74Var2 = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return BottomAudioBar.loadCover$lambda$35$lambda$31(this.b, i, (Bitmap) obj);
                }
            };
            zf1 zf1Var = new zf1() {
                @Override
                public final void accept(Object obj) {
                    e74Var2.invoke(obj);
                }
            };
            final e74 e74Var3 = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return BottomAudioBar.loadCover$lambda$35$lambda$33(this.b, i, (Throwable) obj);
                }
            };
            mc7VarM.a0(zf1Var, new zf1() {
                @Override
                public final void accept(Object obj) {
                    e74Var3.invoke(obj);
                }
            });
        }
    }

    public BottomAudioBar(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomAudioBar(final Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        MusicPlayManager musicPlayManagerS = MusicPlayManager.S();
        y45.i(musicPlayManagerS, "getInstance(...)");
        this.mPlayManager = musicPlayManagerS;
        this.mPlayListData = PlayAudioListData.getInstance();
        this.notificationList = y71.q(1069, 1070, 1083, 1057, 1089);
        getMSquareCover().setVisibility(8);
        this.mCover = (ImageView) getContainer().findViewById(R.id.iv_cover);
        ImageView imageView = (ImageView) getContainer().findViewById(R.id.iv_cover_bg);
        this.mCoverBg = imageView;
        imageView.setBackgroundResource(R.drawable.icon_default_audio_background_bottom);
        this.mBgIv = (ImageView) getContainer().findViewById(R.id.iv_cover_spot);
        updatePlayPauseButton(this.mPlayerState);
        setOutlineProvider(new ViewOutlineProvider() {
            @Override
            public void getOutline(View view, Outline outline) {
                y45.j(view, "view");
                y45.j(outline, "outline");
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), oc2.a(context, 8.0f));
            }
        });
        updateFavoriteList(new c74() {
            @Override
            public final Object invoke() {
                return BottomAudioBar._init_$lambda$0();
            }
        });
        this.mPlayerListener = new MusicPlayManager.d() {
            @Override
            public void hideBottomOperateBar() {
            }

            @Override
            public void onFftDataCapture(Visualizer visualizer, byte[] bArr, int i2) {
                super.onFftDataCapture(visualizer, bArr, i2);
            }

            @Override
            public boolean onInfo(int i2, int i3) {
                return super.onInfo(i2, i3);
            }

            @Override
            public void onPlayItemChanged(AudioItem mediaItem) {
                if (mediaItem != null) {
                    this.this$0.setMCurrentMediaItem(mediaItem);
                    this.this$0.updateState();
                }
            }

            @Override
            public void onPlayListLoadFinished(ArrayList<AudioItem> arrayList) {
                if (arrayList == null || arrayList.size() <= 0) {
                    return;
                }
                Log.d("BottomAudioBar", "onPlayListLoadFinished");
                BottomAudioBar.initBanner$default(this.this$0, 0L, 1, null);
            }

            @Override
            public void onPlayerStateUpdate(int state) throws Throwable {
                if (this.this$0.mPlayerState != state) {
                    this.this$0.mPlayerState = state;
                    if (state == 3 && this.this$0.mIsStart) {
                        this.this$0.runMusicProgressUpdate(true);
                    }
                }
                this.this$0.mPlayerState = state;
                this.this$0.updatePlayPauseButton(state);
                h27.c().e(AnalyticsListener.EVENT_DRM_KEYS_REMOVED, Boolean.valueOf(MusicPlayManager.S().s0()));
            }

            @Override
            public void onShowError(int i2, int i3) {
                super.onShowError(i2, i3);
            }

            @Override
            public void onTimerShow(long j) {
                super.onTimerShow(j);
            }

            @Override
            public void onUpdateAll(MusicPlayManager musicPlayManager) {
                super.onUpdateAll(musicPlayManager);
            }

            @Override
            public void onVideoSizeChanged(int i2, int i3) {
                super.onVideoSizeChanged(i2, i3);
            }

            @Override
            public void seekTo(int i2) {
                super.seekTo(i2);
            }
        };
        this.pageChangeCallback = new BottomAudioBar$pageChangeCallback$1(this);
    }
}
