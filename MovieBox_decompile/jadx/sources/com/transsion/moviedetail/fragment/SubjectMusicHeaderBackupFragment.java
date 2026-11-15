package com.transsion.moviedetail.fragment;

import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.Subject;
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

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0017¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J!\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u001a\u0010\u0018R\u001b\u0010 \u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010#\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\"R\u0018\u0010*\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010\"¨\u0006+"}, d2 = {"Lcom/transsion/moviedetail/fragment/SubjectMusicHeaderBackupFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Llm/q;", "<init>", "()V", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "", "f0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "", "seconds", "", "b0", "(I)Ljava/lang/String;", "Landroid/view/LayoutInflater;", "inflater", "d0", "(Landroid/view/LayoutInflater;)Llm/q;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "initData", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "a", "Lkotlin/Lazy;", "c0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "TAG", "c", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "ops", "e", "mSubjectId", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectMusicHeaderBackupFragment extends BaseFragment<lm.q> {

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

    private final String TAG = "SubjectMusicHeaderFragment";

    private Subject mMovieDetailBean;

    private String ops;

    private String mSubjectId;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f45391a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45391a = function;
        }

        @Override
        public final Function a() {
            return this.f45391a;
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
            this.f45391a.invoke(obj);
        }
    }

    private final String b0(int seconds) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format("%02dh%02dm", Arrays.copyOf(new Object[]{Integer.valueOf(seconds / 3600), Integer.valueOf((seconds % 3600) / 60)}, 2));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    private final MovieDetailViewModel c0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    public static final Unit e0(SubjectMusicHeaderBackupFragment subjectMusicHeaderBackupFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        Subject subject = (Subject) pair.getSecond();
        wf.a.f74274a.c(subjectMusicHeaderBackupFragment.TAG, "get movie detail data==" + pair, true);
        if (subject != null) {
            subjectMusicHeaderBackupFragment.f0(subject);
            qi.b logViewConfig = subjectMusicHeaderBackupFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            qi.b logViewConfig2 = subjectMusicHeaderBackupFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.n(subjectMusicHeaderBackupFragment.ops);
            }
            qi.b logViewConfig3 = subjectMusicHeaderBackupFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
                String subjectId = subject.getSubjectId();
                if (subjectId == null) {
                    subjectId = "";
                }
                mapG2.put("subject_id", subjectId);
            }
            qi.b logViewConfig4 = subjectMusicHeaderBackupFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
                mapG.put("has_resource", String.valueOf(subject.getHasResource()));
            }
        }
        return Unit.f64096a;
    }

    private final void f0(Subject movieDetailBean) {
        Subject subject;
        AppCompatTextView appCompatTextView;
        this.mMovieDetailBean = movieDetailBean;
        String ops = movieDetailBean != null ? movieDetailBean.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        lm.q mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatTextView = mViewBinding.f65876j) != null) {
            appCompatTextView.setText(movieDetailBean.getTitle());
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (!TextUtils.isEmpty(movieDetailBean.getCountryName())) {
            spannableStringBuilder.append((CharSequence) movieDetailBean.getCountryName());
        }
        if (!TextUtils.isEmpty(movieDetailBean.getGenre())) {
            if (spannableStringBuilder.length() > 2) {
                spannableStringBuilder.append((CharSequence) " / ");
            }
            spannableStringBuilder.append((CharSequence) movieDetailBean.getGenre());
        }
        if (!TextUtils.isEmpty(movieDetailBean.getReleaseDate())) {
            if (spannableStringBuilder.length() > 2) {
                spannableStringBuilder.append((CharSequence) " / ");
            }
            spannableStringBuilder.append((CharSequence) movieDetailBean.getReleaseDate());
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
                    spannableStringBuilder.append((CharSequence) b0(durationSeconds2 != null ? durationSeconds2.intValue() : 0));
                }
            }
        }
    }

    @Override
    public lm.q getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        lm.q qVarC = lm.q.c(inflater);
        Intrinsics.g(qVarC, "inflate(...)");
        return qVarC;
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        Bundle arguments2 = getArguments();
        this.mSubjectId = arguments2 != null ? arguments2.getString("id") : null;
        c0().F().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectMusicHeaderBackupFragment.e0(this.f45510a, (Pair) obj);
            }
        }));
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        AppCompatTextView appCompatTextView;
        Intrinsics.h(view, "view");
        lm.q mViewBinding = getMViewBinding();
        if (mViewBinding == null || (appCompatTextView = mViewBinding.f65872f) == null) {
            return;
        }
        appCompatTextView.setVisibility(8);
    }

    @Override
    public void lazyLoadData() {
    }
}
