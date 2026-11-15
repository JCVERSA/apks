package com.transsion.videodetail.music.ui;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.videodetail.R$drawable;
import com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity;
import com.transsion.videodetail.music.bean.MusicLikedUITypeEnum;
import com.transsion.videodetail.music.bean.MusicLoopEnum;
import com.transsion.videodetail.music.widget.MusicLikedListEmptyView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0003J\u0019\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ+\u0010\u0013\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J/\u0010\u001e\u001a\u00020\u00042\u000e\u0010\u0019\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00182\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010 \u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b \u0010\u000bJ\u000f\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b!\u0010\u0003J\u001f\u0010$\u001a\u00020\u00042\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0004H\u0002¢\u0006\u0004\b&\u0010\u0003J\u0019\u0010)\u001a\u00020\u00042\b\u0010(\u001a\u0004\u0018\u00010'H\u0002¢\u0006\u0004\b)\u0010*J\u0019\u0010+\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b+\u0010,J\u0019\u0010-\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b-\u0010,J\u0017\u0010.\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b.\u0010*J\u0019\u0010/\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b/\u0010,J\u0017\u00100\u001a\u00020\u00042\u0006\u0010(\u001a\u00020'H\u0002¢\u0006\u0004\b0\u0010*J\u001f\u00104\u001a\u00020\u00042\u0006\u00101\u001a\u00020'2\u0006\u00103\u001a\u000202H\u0002¢\u0006\u0004\b4\u00105J\u001d\u00108\u001a\b\u0012\u0004\u0012\u000207062\u0006\u00103\u001a\u000202H\u0002¢\u0006\u0004\b8\u00109J\u0017\u0010<\u001a\u00020\u00042\u0006\u0010;\u001a\u00020:H\u0002¢\u0006\u0004\b<\u0010=J\u001d\u0010>\u001a\b\u0012\u0004\u0012\u000207062\u0006\u0010;\u001a\u00020:H\u0002¢\u0006\u0004\b>\u0010?R \u0010B\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u001b\u0010H\u001a\u00020C8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010E\u001a\u0004\bF\u0010GR\u0018\u0010L\u001a\u0004\u0018\u00010I8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u001b\u0010Q\u001a\u00020M8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010E\u001a\u0004\bO\u0010P¨\u0006R"}, d2 = {"Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;", "Lcom/transsion/videodetail/music/ui/BaseMusicLikedFragment;", "<init>", "()V", "", "initViewData", "initListener", "initViewModel", "Lgn/e;", "mediaSource", "onCompletion", "(Lgn/e;)V", "", "getPageName", "()Ljava/lang/String;", "subjectId", "path", "", "fromItemClick", "G0", "(Ljava/lang/String;Ljava/lang/String;Z)V", "Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;", "x0", "()Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "F0", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V", "H0", "E0", "Lkotlin/Function0;", "exploreNowCallback", "m1", "(Lkotlin/jvm/functions/Function0;)V", "d1", "Lcom/transsion/moviedetailapi/bean/Subject;", "subject", "p1", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "i1", "(Ljava/lang/String;)V", "f1", "n1", "h1", "k1", "mMovieDetailBean", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", "l1", "(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Trailer;)V", "", "Lln/c;", "Z0", "(Lcom/transsion/moviedetailapi/bean/Trailer;)Ljava/util/List;", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "j1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "Y0", "(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/util/List;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function0;", "mExploreNowCallback", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "e", "Lkotlin/Lazy;", "X0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lkn/a;", "f", "Lkn/a;", "playerControl", "Lui/c;", "g", "W0", "()Lui/c;", "downloadDao", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MusicTabLikedFragment extends BaseMusicLikedFragment {

    private Function0 mExploreNowCallback;

    private kn.a playerControl;

    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<x0>() {
        {
            super(0);
        }

        @Override
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() {
        {
            super(0);
        }

        @Override
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private final Lazy downloadDao = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MusicTabLikedFragment.V0();
        }
    });

    public class a {

        public static final int[] f55609a;

        static {
            int[] iArr = new int[MusicLoopEnum.values().length];
            try {
                iArr[MusicLoopEnum.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MusicLoopEnum.LIST_LOOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MusicLoopEnum.SINGLE_LOOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f55609a = iArr;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f55610a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55610a = function;
        }

        @Override
        public final Function a() {
            return this.f55610a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f55610a.invoke(obj);
        }
    }

    public static final ui.c V0() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).o1();
    }

    public final ui.c W0() {
        return (ui.c) this.downloadDao.getValue();
    }

    private final MovieDetailViewModel X0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final List Y0(DownloadBean downloadBean) {
        String string;
        String string2;
        ArrayList arrayList = new ArrayList();
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String resourceId = downloadBean.getResourceId();
        String str = resourceId == null ? "" : resourceId;
        String path = downloadBean.getPath();
        String str2 = path == null ? "" : path;
        Long size = downloadBean.getSize();
        String str3 = (size == null || (string2 = size.toString()) == null) ? "" : string2;
        Long duration = downloadBean.getDuration();
        arrayList.add(new ln.c(playMimeType, str, str2, "", str3, (duration == null || (string = duration.toString()) == null) ? "" : string, "", null, 128, null));
        return arrayList;
    }

    private final List Z0(Trailer trailer) {
        Integer duration;
        String string;
        Long size;
        String string2;
        String url;
        String videoId;
        ArrayList arrayList = new ArrayList();
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        PreVideoAddress videoAddress = trailer.getVideoAddress();
        String str = (videoAddress == null || (videoId = videoAddress.getVideoId()) == null) ? "" : videoId;
        PreVideoAddress videoAddress2 = trailer.getVideoAddress();
        String str2 = (videoAddress2 == null || (url = videoAddress2.getUrl()) == null) ? "" : url;
        PreVideoAddress videoAddress3 = trailer.getVideoAddress();
        String str3 = (videoAddress3 == null || (size = videoAddress3.getSize()) == null || (string2 = size.toString()) == null) ? "" : string2;
        PreVideoAddress videoAddress4 = trailer.getVideoAddress();
        arrayList.add(new ln.c(playMimeType, str, str2, "", str3, (videoAddress4 == null || (duration = videoAddress4.getDuration()) == null || (string = duration.toString()) == null) ? "" : string, "", null, 128, null));
        return arrayList;
    }

    public static final void a1(MusicTabLikedFragment musicTabLikedFragment, View view) {
        Function0 function0 = musicTabLikedFragment.mExploreNowCallback;
        if (function0 != null) {
        }
    }

    public static final void b1(MusicTabLikedFragment musicTabLikedFragment, View view) {
        musicTabLikedFragment.d1();
    }

    public static final Unit c1(MusicTabLikedFragment musicTabLikedFragment, Pair pair) {
        yv.a.f76396a.a(musicTabLikedFragment.getClassTag() + " --> initViewModel() --> showPlayer(it.second)");
        Subject subject = (Subject) pair.getSecond();
        if (subject != null) {
            musicTabLikedFragment.p1(subject);
            musicTabLikedFragment.n1(subject);
        }
        return Unit.f64096a;
    }

    private final void d1() {
        List<Object> data;
        MusicLikedDbBean musicLikedDbBean;
        MusicLikedDbBean musicLikedDbBean2;
        com.transsion.player.orplayer.f fVarE = on.e0.f67859a.e();
        String path = null;
        if (fVarE != null && fVarE.isPlaying()) {
            yv.a.f76396a.a(getClassTag() + " --> onPlayAllClick() --> 若已在播放当前列表 --> 打开详情页");
            MusicLikedMultiItemEntity musicLikedMultiItemEntityO0 = o0();
            if (musicLikedMultiItemEntityO0 == null) {
                musicLikedMultiItemEntityO0 = r0();
            }
            String subjectId = (musicLikedMultiItemEntityO0 == null || (musicLikedDbBean2 = musicLikedMultiItemEntityO0.getMusicLikedDbBean()) == null) ? null : musicLikedDbBean2.getSubjectId();
            if (musicLikedMultiItemEntityO0 != null && (musicLikedDbBean = musicLikedMultiItemEntityO0.getMusicLikedDbBean()) != null) {
                path = musicLikedDbBean.getPath();
            }
            G0(subjectId, path, false);
            return;
        }
        final MediaItem mediaItemQ = MusicFloatManager.f42282h.b().q();
        if (mediaItemQ != null) {
            u0().E(mediaItemQ.getSubjectId(), new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return MusicTabLikedFragment.e1(this.f55640a, mediaItemQ, (String) obj);
                }
            });
            return;
        }
        com.transsion.videodetail.music.adapter.a mMusicAdapter = getMMusicAdapter();
        if (mMusicAdapter == null || (data = mMusicAdapter.getData()) == null) {
            return;
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            MusicLikedMultiItemEntity musicLikedMultiItemEntity = (MusicLikedMultiItemEntity) it.next();
            if (yg.l.f76264a.e()) {
                MusicLikedDbBean musicLikedDbBean3 = musicLikedMultiItemEntity.getMusicLikedDbBean();
                String subjectId2 = musicLikedDbBean3 != null ? musicLikedDbBean3.getSubjectId() : null;
                MusicLikedDbBean musicLikedDbBean4 = musicLikedMultiItemEntity.getMusicLikedDbBean();
                G0(subjectId2, musicLikedDbBean4 != null ? musicLikedDbBean4.getPath() : null, false);
                yv.a aVar = yv.a.f76396a;
                String classTag = getClassTag();
                MusicLikedDbBean musicLikedDbBean5 = musicLikedMultiItemEntity.getMusicLikedDbBean();
                String subjectId3 = musicLikedDbBean5 != null ? musicLikedDbBean5.getSubjectId() : null;
                MusicLikedDbBean musicLikedDbBean6 = musicLikedMultiItemEntity.getMusicLikedDbBean();
                aVar.a(classTag + " --> onPlayAllClick() --> 有网络默认播放第一个 --> subjectId = " + subjectId3 + " --> path = " + (musicLikedDbBean6 != null ? musicLikedDbBean6.getPath() : null));
                return;
            }
            if (musicLikedMultiItemEntity.isDownloaded()) {
                MusicLikedDbBean musicLikedDbBean7 = musicLikedMultiItemEntity.getMusicLikedDbBean();
                String subjectId4 = musicLikedDbBean7 != null ? musicLikedDbBean7.getSubjectId() : null;
                MusicLikedDbBean musicLikedDbBean8 = musicLikedMultiItemEntity.getMusicLikedDbBean();
                G0(subjectId4, musicLikedDbBean8 != null ? musicLikedDbBean8.getPath() : null, false);
                yv.a aVar2 = yv.a.f76396a;
                String classTag2 = getClassTag();
                MusicLikedDbBean musicLikedDbBean9 = musicLikedMultiItemEntity.getMusicLikedDbBean();
                String subjectId5 = musicLikedDbBean9 != null ? musicLikedDbBean9.getSubjectId() : null;
                MusicLikedDbBean musicLikedDbBean10 = musicLikedMultiItemEntity.getMusicLikedDbBean();
                aVar2.a(classTag2 + " --> onPlayAllClick() --> 无网络情况默认播放第一个已下载的Music --> subjectId = " + subjectId5 + " --> path = " + (musicLikedDbBean10 != null ? musicLikedDbBean10.getPath() : null));
                return;
            }
        }
    }

    public static final Unit e1(MusicTabLikedFragment musicTabLikedFragment, MediaItem mediaItem, String path) {
        Intrinsics.h(path, "path");
        yv.a.f76396a.a(musicTabLikedFragment.getClassTag() + " --> onPlayAllClick() --> 继续播放 --> subjectId = " + mediaItem.getSubjectId() + " --> path = " + path);
        musicTabLikedFragment.G0(mediaItem.getSubjectId(), path, false);
        return Unit.f64096a;
    }

    private final void f1(final String subjectId) {
        if (subjectId != null) {
            u0().E(subjectId, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return MusicTabLikedFragment.g1(this.f55643a, subjectId, (String) obj);
                }
            });
        }
    }

    public static final Unit g1(MusicTabLikedFragment musicTabLikedFragment, String str, String path) {
        Intrinsics.h(path, "path");
        if (!TextUtils.isEmpty(path)) {
            musicTabLikedFragment.h1(str);
        } else if (yg.l.f76264a.e()) {
            MovieDetailViewModel.T(musicTabLikedFragment.X0(), 0, str, null, 4, null);
            MovieDetailViewModel.E(musicTabLikedFragment.X0(), str, null, false, 6, null);
        } else {
            yv.a.f76396a.b(musicTabLikedFragment.getClassTag() + " --> playNext() --> 当前无网络、无下载 --> 失败 / 继续切换下一首");
            musicTabLikedFragment.i1(str);
        }
        return Unit.f64096a;
    }

    private final void h1(String subjectId) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MusicTabLikedFragment$playDownloadMusic$1(this, subjectId, null), 3, null);
    }

    private final void i1(String subjectId) {
        String strW0 = w0(subjectId);
        if (strW0 != null) {
            f1(strW0);
            return;
        }
        yv.a.f76396a.b(getClassTag() + " --> onCompletion() --> 内存处理 --> 列表循环 --> 加载失败");
    }

    public final void j1(DownloadBean downloadBean) {
        p1(null);
        String subjectId = downloadBean.getSubjectId();
        String str = subjectId == null ? "" : subjectId;
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String subjectName = downloadBean.getSubjectName();
        String str2 = subjectName == null ? "" : subjectName;
        String pageName = getPageName();
        List listY0 = Y0(downloadBean);
        String cover = downloadBean.getCover();
        String str3 = cover == null ? "" : cover;
        String thumbnail = downloadBean.getThumbnail();
        String str4 = thumbnail == null ? "" : thumbnail;
        ln.a aVar = new ln.a(str, playMimeType, 0L, 0, 0, str2, null, "", pageName, listY0, str3, str4, "", 0, Integer.valueOf(downloadBean.getSubjectType()), false, downloadBean.getTitleName(), downloadBean.getOps(), 32832, null);
        aVar.z(null);
        yv.a.f76396a.a(getClassTag() + " --> playOfflineMusic() --> 播放本地文件 --> addDataSource = " + aVar + "  --> playerControl = " + this.playerControl);
        kn.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.setDataSource(aVar);
        }
    }

    private final void k1(Subject subject) {
        Integer durationSeconds = subject.getDurationSeconds();
        Integer numValueOf = Integer.valueOf(durationSeconds != null ? durationSeconds.intValue() : 0);
        ResourceDetectors resourceDetector = subject.getResourceDetector();
        PreVideoAddress preVideoAddress = new PreVideoAddress(0, null, numValueOf, 0, 0, 0L, 0, resourceDetector != null ? resourceDetector.getDownloadUrl() : null, "", 0);
        Cover stills = subject.getStills();
        if (stills == null) {
            stills = subject.getCover();
        }
        Trailer trailer = new Trailer(SubjectType.MUSIC.getValue(), preVideoAddress, stills, null, null, 24, null);
        trailer.setSubjectId(subject.getSubjectId());
        trailer.setMusicName(subject.getTitle());
        l1(subject, trailer);
    }

    private final void l1(Subject mMovieDetailBean, Trailer trailer) {
        String averageHueLight;
        String thumbnail;
        String url;
        String subjectId = mMovieDetailBean.getSubjectId();
        String str = subjectId == null ? "" : subjectId;
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String title = mMovieDetailBean.getTitle();
        String str2 = title == null ? "" : title;
        String pageName = getPageName();
        List listZ0 = Z0(trailer);
        Cover cover = trailer.getCover();
        String str3 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
        Cover cover2 = trailer.getCover();
        String str4 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
        Cover cover3 = mMovieDetailBean.getCover();
        String str5 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
        Integer durationSeconds = mMovieDetailBean.getDurationSeconds();
        int iIntValue = durationSeconds != null ? durationSeconds.intValue() : 0;
        Integer subjectType = mMovieDetailBean.getSubjectType();
        ln.a aVar = new ln.a(str, playMimeType, 0L, 0, 0, str2, null, "", pageName, listZ0, str3, str4, str5, iIntValue, Integer.valueOf(subjectType != null ? subjectType.intValue() : 1), false, mMovieDetailBean.getTitle(), mMovieDetailBean.getOps(), 32832, null);
        aVar.z(mMovieDetailBean);
        yv.a.f76396a.a(getClassTag() + " --> playTrailer() --> 当前有网络，没有下载资源 --> 播放流媒体数据 --> addDataSource = " + aVar + " -->  playerControl = " + this.playerControl);
        kn.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.setDataSource(aVar);
        }
    }

    private final void n1(final Subject subject) {
        u0().E(subject.getSubjectId(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicTabLikedFragment.o1(this.f55646a, subject, (String) obj);
            }
        });
    }

    public static final Unit o1(MusicTabLikedFragment musicTabLikedFragment, Subject subject, String path) {
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            musicTabLikedFragment.k1(subject);
        } else {
            musicTabLikedFragment.h1(subject.getSubjectId());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void p1(Subject subject) {
        Context context;
        Integer subjectType;
        if (this.playerControl == null && (context = getContext()) != null) {
            LongVodPageType longVodPageType = ((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) == SubjectType.MUSIC.getValue() ? LongVodPageType.MUSIC : LongVodPageType.MUSIC;
            if (((xv.e) getMViewBinding()) != null) {
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                kn.a.C0796a.a(longVodPlayerView, getPageName(), longVodPageType, longVodPageType.name() + (subject != null ? subject.getSubjectId() : null), null, null, null, null, 96, null);
                longVodPlayerView.setFeedBackVisible(true);
                longVodPlayerView.setMusicLikedFragment(true);
                this.playerControl = longVodPlayerView;
            }
        }
    }

    @Override
    public void E0() {
    }

    @Override
    public void F0(BaseQuickAdapter adapter, View view, int position) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
    }

    @Override
    public void G0(String subjectId, String path, boolean fromItemClick) {
        K0(getPageName(), fromItemClick);
        if (TextUtils.isEmpty(subjectId)) {
            fh.b.f60176a.d(R$string.error_load_failed);
        } else if (yg.l.f76264a.e() || !TextUtils.isEmpty(path)) {
            Navigator.x(TheRouter.c("/playvideo/music_detail").K("id", subjectId).z("is_music_liked_fragment", true), getContext(), null, 2, null);
        } else {
            fh.b.f60176a.d(com.transsion.videodetail.R$string.music_no_network);
            MusicFloatManager.f42282h.b().n();
        }
    }

    @Override
    public void H0(gn.e mediaSource) {
    }

    @Override
    public String getPageName() {
        return "music_tab_liked_fragment";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initListener() {
        AppCompatTextView appCompatTextView;
        MusicLikedListEmptyView musicLikedListEmptyView;
        View exploreNowView;
        super.initListener();
        xv.e eVar = (xv.e) getMViewBinding();
        if (eVar != null && (musicLikedListEmptyView = eVar.f75883b) != null && (exploreNowView = musicLikedListEmptyView.getExploreNowView()) != null) {
            exploreNowView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MusicTabLikedFragment.a1(this.f55636a, view);
                }
            });
        }
        xv.e eVar2 = (xv.e) getMViewBinding();
        if (eVar2 == null || (appCompatTextView = eVar2.f75887f) == null) {
            return;
        }
        zv.a.f76931a.a(appCompatTextView, "  " + getResources().getString(com.transsion.videodetail.R$string.music_play_all), androidx.core.content.b.getDrawable(Utils.a(), R$drawable.music_pause));
        appCompatTextView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MusicTabLikedFragment.b1(this.f55638a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initViewData() {
        View view;
        super.initViewData();
        xv.e eVar = (xv.e) getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (eVar == null || (view = eVar.f75889h) == null) ? null : view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).height = com.blankj.utilcode.util.d.c() + com.blankj.utilcode.util.a0.a(52.0f) + com.blankj.utilcode.util.a0.a(30.0f);
    }

    @Override
    public void initViewModel() {
        super.initViewModel();
        X0().F().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicTabLikedFragment.c1(this.f55633a, (Pair) obj);
            }
        }));
    }

    public final void m1(Function0 exploreNowCallback) {
        this.mExploreNowCallback = exploreNowCallback;
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        MediaItem mediaItemH;
        MediaItem mediaItemH2;
        super.onCompletion(mediaSource);
        if (yv.b.f76397a.a()) {
            yv.a.f76396a.b(getClassTag() + " --> onCompletion() --> 详情页处理");
            return;
        }
        int i10 = a.f55609a[yv.c.f76399a.b().ordinal()];
        if (i10 == 1) {
            yv.a.f76396a.a(getClassTag() + " --> onCompletion() --> Tab 内存处理 --> MusicLoopEnum.NORMAL --> 播放结束");
            return;
        }
        String subjectId = null;
        if (i10 == 2) {
            yv.a.f76396a.a(getClassTag() + " --> onCompletion() --> Tab 内存处理 --> MusicLoopEnum.LIST_LOOP --> 列表循环");
            if (mediaSource != null && (mediaItemH = mediaSource.h()) != null) {
                subjectId = mediaItemH.getSubjectId();
            }
            i1(subjectId);
            return;
        }
        if (i10 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        yv.a.f76396a.a(getClassTag() + " --> onCompletion() --> Tab 内存处理 --> MusicLoopEnum.SINGLE_LOOP --> 单曲循环");
        if (mediaSource != null && (mediaItemH2 = mediaSource.h()) != null) {
            subjectId = mediaItemH2.getSubjectId();
        }
        f1(subjectId);
    }

    @Override
    public MusicLikedUITypeEnum x0() {
        return MusicLikedUITypeEnum.MUSIC_TAB;
    }
}
