package com.transsion.videodetail.music.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetail.R$drawable;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.dialog.SubjectMusicInfoMoreDetailDialog;
import com.transsion.moviedetail.view.HeaderExtensionFragment;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.videodetail.R$string;
import com.transsion.videodetail.music.bean.LikeListActionEnum;
import com.transsion.videodetail.music.bean.MusicLikedRemoteItemBean;
import com.transsion.videodetail.music.data.MusicLikedFragmentViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedHashMap;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0017¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J!\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u001a\u0010\u0018R\u001b\u0010 \u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010)\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010#R\u0018\u0010+\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010#R\u0016\u0010-\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010#R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00103\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010#R\u001b\u00108\u001a\u0002048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010\u001d\u001a\u0004\b6\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010@\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?¨\u0006A"}, d2 = {"Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Llm/r;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "s0", "(Landroid/view/View;)V", "t0", "v0", "y0", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "z0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "Landroid/view/LayoutInflater;", "inflater", "l0", "(Landroid/view/LayoutInflater;)Llm/r;", "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "initData", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "a", "Lkotlin/Lazy;", "k0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "TAG", "c", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "ops", "e", "mSubjectId", "f", "pageName", "", "g", "I", "curSeason", "h", "moduleName", "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;", "i", "j0", "()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;", "mViewModel", "", "j", "Z", "isInterceptDetail", "Lcom/transsion/moviedetail/view/HeaderExtensionFragment;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/moviedetail/view/HeaderExtensionFragment;", "headerExtensionFragment", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectMusicHeaderFragment extends BaseFragment<lm.r> {

    private Subject mMovieDetailBean;

    private String ops;

    private String mSubjectId;

    private String moduleName;

    private boolean isInterceptDetail;

    private HeaderExtensionFragment headerExtensionFragment;

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

    private final String TAG = "SubjectMusicHeaderFragment";

    private String pageName = "stream_detail";

    private int curSeason = 1;

    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MusicLikedFragmentViewModel.class), new Function0<x0>() {
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

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f55622a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55622a = function;
        }

        @Override
        public final Function a() {
            return this.f55622a;
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
            this.f55622a.invoke(obj);
        }
    }

    private final MusicLikedFragmentViewModel j0() {
        return (MusicLikedFragmentViewModel) this.mViewModel.getValue();
    }

    private final MovieDetailViewModel k0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    public static final Unit m0(final SubjectMusicHeaderFragment subjectMusicHeaderFragment, MovieDetailViewModel movieDetailViewModel, Pair pair) {
        Subject subject = (Subject) pair.getSecond();
        if (subject != null) {
            subjectMusicHeaderFragment.mMovieDetailBean = subject;
            yv.a.f76396a.a(movieDetailViewModel.getClass().getSimpleName() + " --> initData() --> mMovieDetailBean = " + subjectMusicHeaderFragment.mMovieDetailBean);
            subjectMusicHeaderFragment.z0(subject);
            subjectMusicHeaderFragment.t0();
            subjectMusicHeaderFragment.j0().F(subjectMusicHeaderFragment.mSubjectId, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SubjectMusicHeaderFragment.n0(this.f55666a, ((Boolean) obj).booleanValue());
                }
            });
        }
        return Unit.f64096a;
    }

    public static final Unit n0(SubjectMusicHeaderFragment subjectMusicHeaderFragment, boolean z10) {
        Subject subject;
        Integer likeStatus;
        if (!z10 && (subject = subjectMusicHeaderFragment.mMovieDetailBean) != null && (likeStatus = subject.getLikeStatus()) != null && likeStatus.intValue() == 1) {
            MusicLikedFragmentViewModel musicLikedFragmentViewModelJ0 = subjectMusicHeaderFragment.j0();
            Subject subject2 = subjectMusicHeaderFragment.mMovieDetailBean;
            musicLikedFragmentViewModelJ0.G(subject2 != null ? subject2.getSubjectId() : null, LikeListActionEnum.REMOVE);
        }
        return Unit.f64096a;
    }

    public static final Unit o0(SubjectMusicHeaderFragment subjectMusicHeaderFragment, MusicLikedRemoteItemBean musicLikedRemoteItemBean) {
        Integer likeStatus;
        int i10;
        Resources resources;
        Resources resources2;
        String string = null;
        if (!TextUtils.equals(subjectMusicHeaderFragment.mSubjectId, musicLikedRemoteItemBean != null ? musicLikedRemoteItemBean.getSubjectId() : null)) {
            return Unit.f64096a;
        }
        Subject subject = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject != null) {
            if ((musicLikedRemoteItemBean != null ? musicLikedRemoteItemBean.getActionEnum() : null) == LikeListActionEnum.ADD) {
                fh.b.a aVar = fh.b.f60176a;
                Context context = subjectMusicHeaderFragment.getContext();
                if (context != null && (resources2 = context.getResources()) != null) {
                    string = resources2.getString(R$string.music_liked_success);
                }
                aVar.e(string);
                i10 = 1;
            } else {
                fh.b.a aVar2 = fh.b.f60176a;
                Context context2 = subjectMusicHeaderFragment.getContext();
                if (context2 != null && (resources = context2.getResources()) != null) {
                    string = resources.getString(R$string.music_liked_remove_success);
                }
                aVar2.e(string);
                i10 = 0;
            }
            subject.setLikeStatus(i10);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Subject subject2 = subjectMusicHeaderFragment.mMovieDetailBean;
        linkedHashMap.put("click_action", (subject2 == null || (likeStatus = subject2.getLikeStatus()) == null || likeStatus.intValue() != 0) ? "add" : "remove");
        qi.h.f69682a.o("subject_music_header_fragment", linkedHashMap);
        subjectMusicHeaderFragment.t0();
        return Unit.f64096a;
    }

    public static final void p0(final SubjectMusicHeaderFragment subjectMusicHeaderFragment, View view) {
        com.transsion.baseui.util.d.a(1000L, new Function0() {
            @Override
            public final Object invoke() {
                return SubjectMusicHeaderFragment.q0(this.f55661a);
            }
        });
    }

    public static final Unit q0(SubjectMusicHeaderFragment subjectMusicHeaderFragment) {
        Subject subject = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject != null) {
            subjectMusicHeaderFragment.j0().p(subject);
        }
        return Unit.f64096a;
    }

    public static final void r0(SubjectMusicHeaderFragment subjectMusicHeaderFragment, View view) {
        Intrinsics.e(view);
        subjectMusicHeaderFragment.s0(view);
    }

    private final void s0(View view) {
        Fragment parentFragment;
        if (this.isInterceptDetail || com.transsion.baseui.util.c.f42332a.a(view.getId(), 1000L) || (parentFragment = getParentFragment()) == null) {
            return;
        }
        SubjectMusicInfoMoreDetailDialog subjectMusicInfoMoreDetailDialog = new SubjectMusicInfoMoreDetailDialog();
        subjectMusicInfoMoreDetailDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("data_key_resource_detectors", this.mMovieDetailBean)));
        subjectMusicInfoMoreDetailDialog.n0(parentFragment, R$id.fl_bottom_dialog_container);
    }

    private final void t0() {
        final AppCompatImageView appCompatImageView;
        lm.r mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatImageView = mViewBinding.f65881c) == null) {
            return;
        }
        j0().F(this.mSubjectId, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectMusicHeaderFragment.u0(appCompatImageView, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit u0(AppCompatImageView appCompatImageView, boolean z10) {
        if (z10) {
            appCompatImageView.setImageResource(R$drawable.music_collection_1);
        } else {
            appCompatImageView.setImageResource(R$drawable.music_collection_0);
        }
        return Unit.f64096a;
    }

    private final void v0() {
        if (yg.l.f76264a.e()) {
            return;
        }
        j0().B(this.mSubjectId, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectMusicHeaderFragment.w0(this.f55663a, (MusicLikedDbBean) obj);
            }
        });
    }

    public static final Unit w0(final SubjectMusicHeaderFragment subjectMusicHeaderFragment, MusicLikedDbBean musicLikedDbBean) {
        Cover cover;
        if (musicLikedDbBean == null) {
            subjectMusicHeaderFragment.j0().v(subjectMusicHeaderFragment.mSubjectId, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SubjectMusicHeaderFragment.x0(this.f55668a, (DownloadBean) obj);
                }
            });
        } else {
            yv.a.f76396a.b(subjectMusicHeaderFragment.TAG + " --> showNoNetworkLayout() --> liked = " + musicLikedDbBean);
            Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -1, 67108863, null);
            subjectMusicHeaderFragment.mMovieDetailBean = subject;
            subject.setSubjectId(subjectMusicHeaderFragment.mSubjectId);
            Subject subject2 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject2 != null) {
                subject2.setCover(new Cover(null, null, null, null, null, null, null, null, null, 511, null));
            }
            Subject subject3 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject3 != null && (cover = subject3.getCover()) != null) {
                cover.setUrl(musicLikedDbBean.getCoverUrl());
            }
            Subject subject4 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject4 != null) {
                subject4.setSubjectType(6);
            }
            Subject subject5 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject5 != null) {
                subject5.setLikeStatus(1);
            }
            Subject subject6 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject6 != null) {
                subject6.setTitle(musicLikedDbBean.getTitle());
            }
            Subject subject7 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject7 != null) {
                subject7.setCountryName(musicLikedDbBean.getCountryName());
            }
            Subject subject8 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject8 != null) {
                subject8.setGenre(musicLikedDbBean.getGenre());
            }
            Subject subject9 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject9 != null) {
                subject9.setReleaseDate(musicLikedDbBean.getReleaseDate());
            }
            Subject subject10 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject10 != null) {
                subject10.setDurationSeconds(Integer.valueOf(musicLikedDbBean.getDurationSeconds()));
            }
            Staff staff = new Staff();
            staff.setAvatarUrl(musicLikedDbBean.getSingerAvatar());
            staff.setName(musicLikedDbBean.getSingerName());
            Subject subject11 = subjectMusicHeaderFragment.mMovieDetailBean;
            if (subject11 != null) {
                subject11.setStaffList(CollectionsKt.q(staff));
            }
        }
        subjectMusicHeaderFragment.y0();
        return Unit.f64096a;
    }

    public static final Unit x0(SubjectMusicHeaderFragment subjectMusicHeaderFragment, DownloadBean downloadBean) {
        Long duration;
        Cover cover;
        String str = null;
        Subject subject = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, str, str, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -1, 67108863, null);
        subjectMusicHeaderFragment.mMovieDetailBean = subject;
        subject.setSubjectId(subjectMusicHeaderFragment.mSubjectId);
        Subject subject2 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject2 != null) {
            subject2.setCover(new Cover(null, null, null, null, null, null, null, null, null, 511, null));
        }
        Subject subject3 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject3 != null && (cover = subject3.getCover()) != null) {
            cover.setUrl(downloadBean != null ? downloadBean.getCover() : null);
        }
        Subject subject4 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject4 != null) {
            subject4.setSubjectType(6);
        }
        Subject subject5 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject5 != null) {
            subject5.setLikeStatus(0);
        }
        Subject subject6 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject6 != null) {
            subject6.setTitle(downloadBean != null ? downloadBean.getSubjectName() : null);
        }
        Subject subject7 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject7 != null) {
            subject7.setCountryName(downloadBean != null ? downloadBean.getUploadBy() : null);
        }
        Subject subject8 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject8 != null) {
            subject8.setGenre(downloadBean != null ? downloadBean.getGenre() : null);
        }
        Subject subject9 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject9 != null) {
            subject9.setReleaseDate("");
        }
        Subject subject10 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject10 != null) {
            subject10.setDurationSeconds(Integer.valueOf((int) (((downloadBean == null || (duration = downloadBean.getDuration()) == null) ? 0L : duration.longValue()) / ((long) 1000))));
        }
        Staff staff = new Staff();
        staff.setAvatarUrl("");
        staff.setName("");
        Subject subject11 = subjectMusicHeaderFragment.mMovieDetailBean;
        if (subject11 != null) {
            subject11.setStaffList(CollectionsKt.q(staff));
        }
        subjectMusicHeaderFragment.y0();
        return Unit.f64096a;
    }

    private final void y0() {
        Subject subject = this.mMovieDetailBean;
        if (subject != null) {
            z0(subject);
            t0();
        }
    }

    private final void z0(Subject movieDetailBean) {
        FrameLayout frameLayout;
        Subject subject;
        HashMap mapG;
        HashMap mapG2;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null) {
            logViewConfig2.n(this.ops);
        }
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
            String subjectId = movieDetailBean.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            mapG2.put("subject_id", subjectId);
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
            mapG.put("has_resource", String.valueOf(movieDetailBean.getHasResource()));
        }
        lm.r mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            Subject subject2 = this.mMovieDetailBean;
            String ops = subject2 != null ? subject2.getOps() : null;
            if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
                subject.setOps(this.ops);
            }
            mViewBinding.f65883e.setText(movieDetailBean.getTitle());
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) " | ");
            if (!TextUtils.isEmpty(movieDetailBean.getCountryName())) {
                spannableStringBuilder.append((CharSequence) movieDetailBean.getCountryName());
            }
            if (!TextUtils.isEmpty(movieDetailBean.getGenre())) {
                if (spannableStringBuilder.length() > 2) {
                    spannableStringBuilder.append((CharSequence) " | ");
                }
                spannableStringBuilder.append((CharSequence) movieDetailBean.getGenre());
            }
            if (!TextUtils.isEmpty(movieDetailBean.getReleaseDate())) {
                if (spannableStringBuilder.length() > 2) {
                    spannableStringBuilder.append((CharSequence) " | ");
                }
                String releaseDate = movieDetailBean.getReleaseDate();
                spannableStringBuilder.append((CharSequence) (releaseDate != null ? StringsKt.z1(releaseDate, 4) : null));
            }
            Integer durationSeconds = movieDetailBean.getDurationSeconds();
            if ((durationSeconds != null ? durationSeconds.intValue() : 0) > 0) {
                spannableStringBuilder.append((CharSequence) " | ");
                zv.b bVar = zv.b.f76932a;
                Integer durationSeconds2 = movieDetailBean.getDurationSeconds();
                spannableStringBuilder.append((CharSequence) bVar.a(((long) (durationSeconds2 != null ? durationSeconds2.intValue() : 0)) * 1000));
            }
            mViewBinding.f65884f.setText(spannableStringBuilder);
        }
        if (this.isInterceptDetail) {
            lm.r mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (frameLayout = mViewBinding2.f65880b) == null) {
                return;
            }
            uf.c.g(frameLayout);
            return;
        }
        if (this.headerExtensionFragment == null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            HeaderExtensionFragment headerExtensionFragment = new HeaderExtensionFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            bundle.putString("module_name", this.moduleName);
            bundle.putInt("season", this.curSeason);
            bundle.putString("ops", this.ops);
            bundle.putString(WebConstants.PAGE_FROM, this.pageName);
            headerExtensionFragment.setArguments(bundle);
            wVarP.s(R$id.extension_container, headerExtensionFragment);
            this.headerExtensionFragment = headerExtensionFragment;
            wVarP.j();
        }
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        String string;
        lm.r mViewBinding;
        AppCompatTextView appCompatTextView;
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("data_key_resource_detectors") : null;
        this.mMovieDetailBean = serializable instanceof Subject ? (Subject) serializable : null;
        Bundle arguments2 = getArguments();
        this.ops = arguments2 != null ? arguments2.getString("ops") : null;
        Bundle arguments3 = getArguments();
        this.mSubjectId = arguments3 != null ? arguments3.getString("id") : null;
        Bundle arguments4 = getArguments();
        this.moduleName = arguments4 != null ? arguments4.getString("module_name") : null;
        Bundle arguments5 = getArguments();
        this.curSeason = arguments5 != null ? arguments5.getInt("season") : 1;
        Bundle arguments6 = getArguments();
        this.ops = arguments6 != null ? arguments6.getString("ops") : null;
        Bundle arguments7 = getArguments();
        if (arguments7 == null || (string = arguments7.getString(WebConstants.PAGE_FROM)) == null) {
            string = "stream_detail";
        }
        this.pageName = string;
        Bundle arguments8 = getArguments();
        this.isInterceptDetail = arguments8 != null ? arguments8.getBoolean("is_Intercept_detail") : false;
        Subject subject = this.mMovieDetailBean;
        if (subject != null) {
            Intrinsics.e(subject);
            z0(subject);
        }
        if (this.isInterceptDetail && (mViewBinding = getMViewBinding()) != null && (appCompatTextView = mViewBinding.f65883e) != null) {
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        }
        final MovieDetailViewModel movieDetailViewModelK0 = k0();
        movieDetailViewModelK0.F().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectMusicHeaderFragment.m0(this.f55653a, movieDetailViewModelK0, (Pair) obj);
            }
        }));
        j0().w().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectMusicHeaderFragment.o0(this.f55655a, (MusicLikedRemoteItemBean) obj);
            }
        }));
        v0();
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        View view2;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView;
        Intrinsics.h(view, "view");
        lm.r mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatTextView = mViewBinding.f65884f) != null) {
            Context context = getContext();
            appCompatTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(context != null ? context.getDrawable(com.transsion.baseui.R$drawable.ic_tag_music) : null, (Drawable) null, (Drawable) null, (Drawable) null);
        }
        lm.r mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f65881c) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    SubjectMusicHeaderFragment.p0(this.f55649a, view3);
                }
            });
        }
        lm.r mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (view2 = mViewBinding3.f65885g) == null) {
            return;
        }
        view2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view3) {
                SubjectMusicHeaderFragment.r0(this.f55651a, view3);
            }
        });
    }

    @Override
    public lm.r getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        lm.r rVarC = lm.r.c(inflater);
        Intrinsics.g(rVarC, "inflate(...)");
        return rVarC;
    }

    @Override
    public void lazyLoadData() {
    }
}
