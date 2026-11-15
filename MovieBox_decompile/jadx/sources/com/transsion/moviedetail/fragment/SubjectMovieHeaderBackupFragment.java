package com.transsion.moviedetail.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetail.activity.MoviePosterActivity;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00072\b\u0010\u000f\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J!\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J!\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u001d\u0010\u001bR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0014\u0010&\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010)\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010%R\u0018\u0010-\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010%¨\u0006."}, d2 = {"Lcom/transsion/moviedetail/fragment/SubjectMovieHeaderBackupFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Llm/t;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "", "k0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "", "seconds", "", "d0", "(I)Ljava/lang/String;", "subtitles", "i0", "(Ljava/lang/String;)V", "Landroid/view/LayoutInflater;", "inflater", "f0", "(Landroid/view/LayoutInflater;)Llm/t;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "initData", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "a", "Lkotlin/Lazy;", "e0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "TAG", "c", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "ops", "e", "mSubjectId", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectMovieHeaderBackupFragment extends BaseFragment<lm.t> {

    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
        {
            super(0);
        }

        @Override
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() {
        {
            super(0);
        }

        @Override
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private final String TAG = "SubjectMovieHeaderFragment";

    private Subject mMovieDetailBean;

    private String ops;

    private String mSubjectId;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f45376a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45376a = function;
        }

        @Override
        public final Function a() {
            return this.f45376a;
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
            this.f45376a.invoke(obj);
        }
    }

    private final String d0(int seconds) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format("%02dh%02dm", Arrays.copyOf(new Object[]{Integer.valueOf(seconds / 3600), Integer.valueOf((seconds % 3600) / 60)}, 2));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    private final MovieDetailViewModel e0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    public static final Unit g0(SubjectMovieHeaderBackupFragment subjectMovieHeaderBackupFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        Subject subject = (Subject) pair.getSecond();
        wf.a.f74274a.c(subjectMovieHeaderBackupFragment.TAG, "get movie detail data==" + pair, true);
        if (subject != null) {
            subjectMovieHeaderBackupFragment.k0(subject);
            qi.b logViewConfig = subjectMovieHeaderBackupFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            qi.b logViewConfig2 = subjectMovieHeaderBackupFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.n(subjectMovieHeaderBackupFragment.ops);
            }
            qi.b logViewConfig3 = subjectMovieHeaderBackupFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
                String subjectId = subject.getSubjectId();
                if (subjectId == null) {
                    subjectId = "";
                }
                mapG2.put("subject_id", subjectId);
            }
            qi.b logViewConfig4 = subjectMovieHeaderBackupFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
                mapG.put("has_resource", String.valueOf(subject.getHasResource()));
            }
        }
        return Unit.f64096a;
    }

    public static final void h0(SubjectMovieHeaderBackupFragment subjectMovieHeaderBackupFragment, View view) {
        jm.j jVar = new jm.j(subjectMovieHeaderBackupFragment.mMovieDetailBean);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jm.j.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, jVar, 0L);
        com.transsion.baselib.helper.a.f42121a.h("subjectdetail", "movie_poster", (60 & 4) != 0 ? "" : "", (60 & 8) != 0 ? "" : subjectMovieHeaderBackupFragment.mSubjectId, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
        subjectMovieHeaderBackupFragment.startActivity(new Intent(subjectMovieHeaderBackupFragment.requireContext(), (Class<?>) MoviePosterActivity.class));
    }

    private final void i0(String subtitles) {
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        AppCompatTextView appCompatTextView7;
        AppCompatImageView appCompatImageView2;
        CharSequence charSequenceV = e0().v(subtitles);
        if (charSequenceV == null || charSequenceV.length() == 0) {
            lm.t mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatTextView2 = mViewBinding.f65914n) != null) {
                uf.c.g(appCompatTextView2);
            }
            lm.t mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f65908h) != null) {
                uf.c.g(appCompatImageView);
            }
            lm.t mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (appCompatTextView = mViewBinding3.f65913m) == null) {
                return;
            }
            uf.c.g(appCompatTextView);
            return;
        }
        lm.t mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView2 = mViewBinding4.f65908h) != null) {
            uf.c.k(appCompatImageView2);
        }
        lm.t mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (appCompatTextView7 = mViewBinding5.f65914n) != null) {
            uf.c.k(appCompatTextView7);
        }
        lm.t mViewBinding6 = getMViewBinding();
        if (mViewBinding6 == null || (appCompatTextView3 = mViewBinding6.f65914n) == null) {
            return;
        }
        appCompatTextView3.setText(charSequenceV);
        TextPaint paint = appCompatTextView3.getPaint();
        Intrinsics.g(paint, "getPaint(...)");
        int iF = com.transsion.core.utils.e.f() - com.blankj.utilcode.util.i.e(130.0f);
        StaticLayout staticLayoutBuild = Build.VERSION.SDK_INT > 23 ? StaticLayout.Builder.obtain(charSequenceV, 0, charSequenceV.length(), paint, iF).build() : new StaticLayout(charSequenceV, paint, iF, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        Intrinsics.e(staticLayoutBuild);
        if (staticLayoutBuild.getLineCount() <= 1) {
            lm.t mViewBinding7 = getMViewBinding();
            if (mViewBinding7 == null || (appCompatTextView4 = mViewBinding7.f65913m) == null) {
                return;
            }
            uf.c.g(appCompatTextView4);
            return;
        }
        lm.t mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (appCompatTextView6 = mViewBinding8.f65913m) != null) {
            uf.c.k(appCompatTextView6);
        }
        lm.t mViewBinding9 = getMViewBinding();
        if (mViewBinding9 == null || (appCompatTextView5 = mViewBinding9.f65913m) == null) {
            return;
        }
        appCompatTextView5.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubjectMovieHeaderBackupFragment.j0(this.f45476a, view);
            }
        });
    }

    public static final void j0(SubjectMovieHeaderBackupFragment subjectMovieHeaderBackupFragment, View view) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        lm.t mViewBinding = subjectMovieHeaderBackupFragment.getMViewBinding();
        if (mViewBinding != null && (appCompatTextView2 = mViewBinding.f65913m) != null) {
            uf.c.g(appCompatTextView2);
        }
        lm.t mViewBinding2 = subjectMovieHeaderBackupFragment.getMViewBinding();
        if (mViewBinding2 == null || (appCompatTextView = mViewBinding2.f65914n) == null) {
            return;
        }
        appCompatTextView.setMaxLines(5);
    }

    private final void k0(Subject movieDetailBean) {
        Subject subject;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        ShapeableImageView shapeableImageView;
        String url;
        String thumbnail;
        AppCompatTextView appCompatTextView4;
        AppCompatTextView appCompatTextView5;
        AppCompatImageView appCompatImageView;
        AppCompatTextView appCompatTextView6;
        AppCompatImageView appCompatImageView2;
        ShapeableImageView shapeableImageView2;
        AppCompatTextView appCompatTextView7;
        AppCompatImageView appCompatImageView3;
        this.mMovieDetailBean = movieDetailBean;
        String ops = movieDetailBean != null ? movieDetailBean.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        int iA = com.transsion.moviedetailapi.h.a(movieDetailBean.getSubjectType());
        lm.t mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView3 = mViewBinding.f65904d) != null) {
            appCompatImageView3.setImageResource(iA);
        }
        lm.t mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatTextView7 = mViewBinding2.f65911k) != null) {
            appCompatTextView7.setText(movieDetailBean.getTitle());
        }
        Subject subject2 = this.mMovieDetailBean;
        i0(subject2 != null ? subject2.getSubtitles() : null);
        if (movieDetailBean.isMusicType()) {
            lm.t mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (shapeableImageView2 = mViewBinding3.f65905e) != null) {
                uf.c.g(shapeableImageView2);
            }
            lm.t mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (appCompatImageView2 = mViewBinding4.f65907g) != null) {
                uf.c.g(appCompatImageView2);
            }
            lm.t mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (appCompatTextView6 = mViewBinding5.f65912l) != null) {
                uf.c.g(appCompatTextView6);
            }
            lm.t mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (appCompatImageView = mViewBinding6.f65908h) != null) {
                uf.c.g(appCompatImageView);
            }
            lm.t mViewBinding7 = getMViewBinding();
            if (mViewBinding7 != null && (appCompatTextView5 = mViewBinding7.f65914n) != null) {
                uf.c.g(appCompatTextView5);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            if (TextUtils.isEmpty(movieDetailBean.getCountryName())) {
                spannableStringBuilder.append((CharSequence) movieDetailBean.getLanguage());
            } else {
                spannableStringBuilder.append((CharSequence) movieDetailBean.getCountryName());
            }
            if (!TextUtils.isEmpty(movieDetailBean.getGenre())) {
                if (spannableStringBuilder.length() > 2) {
                    spannableStringBuilder.append((CharSequence) " / ");
                }
                spannableStringBuilder.append((CharSequence) movieDetailBean.getGenre());
            }
            String releaseDate = movieDetailBean.getReleaseDate();
            if (releaseDate != null && releaseDate.length() > 0) {
                spannableStringBuilder.append((CharSequence) " / ");
                spannableStringBuilder.append((CharSequence) releaseDate);
            }
            String duration = movieDetailBean.getDuration();
            if (duration != null) {
                if (duration.length() > 0) {
                    if (spannableStringBuilder.length() > 0) {
                        spannableStringBuilder.append((CharSequence) " / ");
                    }
                    spannableStringBuilder.append((CharSequence) duration);
                } else {
                    Integer durationSeconds = movieDetailBean.getDurationSeconds();
                    if ((durationSeconds != null ? durationSeconds.intValue() : 0) > 0) {
                        spannableStringBuilder.append((CharSequence) " / ");
                        Integer durationSeconds2 = movieDetailBean.getDurationSeconds();
                        spannableStringBuilder.append((CharSequence) d0(durationSeconds2 != null ? durationSeconds2.intValue() : 0));
                    }
                }
            }
            lm.t mViewBinding8 = getMViewBinding();
            if (mViewBinding8 == null || (appCompatTextView4 = mViewBinding8.f65910j) == null) {
                return;
            }
            appCompatTextView4.setText(spannableStringBuilder);
            return;
        }
        lm.t mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (shapeableImageView = mViewBinding9.f65905e) != null) {
            ni.f.a aVar = ni.f.f67269a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            ni.f.b bVarM = aVar.m(contextRequireContext);
            Cover cover = movieDetailBean.getCover();
            String str = "";
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarG = bVarM.g(url);
            Cover cover2 = movieDetailBean.getCover();
            if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarG.l(str).d(shapeableImageView);
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
        String restrictLevel = movieDetailBean.getRestrictLevel();
        if (restrictLevel != null) {
            if (restrictLevel.length() > 0) {
                spannableStringBuilder2.append((CharSequence) " / ");
                spannableStringBuilder2.append((CharSequence) restrictLevel);
            }
        }
        String releaseDate2 = movieDetailBean.getReleaseDate();
        if (releaseDate2 != null) {
            if (releaseDate2.length() > 0) {
                spannableStringBuilder2.append((CharSequence) " / ");
                spannableStringBuilder2.append((CharSequence) releaseDate2);
            }
        }
        String duration2 = movieDetailBean.getDuration();
        if (duration2 != null) {
            if (duration2.length() > 0) {
                if ((spannableStringBuilder2.length() > 0 ? 1 : 0) != 0) {
                    spannableStringBuilder2.append((CharSequence) " / ");
                }
                spannableStringBuilder2.append((CharSequence) duration2);
            } else {
                Integer durationSeconds3 = movieDetailBean.getDurationSeconds();
                if ((durationSeconds3 != null ? durationSeconds3.intValue() : 0) > 0) {
                    spannableStringBuilder2.append((CharSequence) " / ");
                    Integer durationSeconds4 = movieDetailBean.getDurationSeconds();
                    spannableStringBuilder2.append((CharSequence) d0(durationSeconds4 != null ? durationSeconds4.intValue() : 0));
                }
            }
        }
        lm.t mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (appCompatTextView3 = mViewBinding10.f65915o) != null) {
            appCompatTextView3.setText(spannableStringBuilder2);
        }
        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
        if (!TextUtils.isEmpty(movieDetailBean.getCountryName())) {
            spannableStringBuilder3.append((CharSequence) movieDetailBean.getCountryName());
        }
        if (!TextUtils.isEmpty(movieDetailBean.getGenre())) {
            if (spannableStringBuilder3.length() > 2) {
                spannableStringBuilder3.append((CharSequence) " / ");
            }
            spannableStringBuilder3.append((CharSequence) movieDetailBean.getGenre());
        }
        lm.t mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (appCompatTextView2 = mViewBinding11.f65910j) != null) {
            appCompatTextView2.setText(spannableStringBuilder3);
        }
        lm.t mViewBinding12 = getMViewBinding();
        if (mViewBinding12 == null || (appCompatTextView = mViewBinding12.f65912l) == null) {
            return;
        }
        appCompatTextView.setText(movieDetailBean.getImdbRate());
    }

    @Override
    public lm.t getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        lm.t tVarC = lm.t.c(inflater);
        Intrinsics.g(tVarC, "inflate(...)");
        return tVarC;
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        Bundle arguments2 = getArguments();
        this.mSubjectId = arguments2 != null ? arguments2.getString("id") : null;
        e0().F().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectMovieHeaderBackupFragment.g0(this.f45469a, (Pair) obj);
            }
        }));
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        lm.t mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f65905e.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SubjectMovieHeaderBackupFragment.h0(this.f45472a, view2);
                }
            });
        }
    }

    @Override
    public void lazyLoadData() {
    }
}
