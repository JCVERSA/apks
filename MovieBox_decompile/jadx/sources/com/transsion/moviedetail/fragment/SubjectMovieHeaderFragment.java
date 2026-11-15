package com.transsion.moviedetail.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.dialog.SubjectInfoMoreDetailDialog;
import com.transsion.moviedetail.view.CustomTextViewGroup;
import com.transsion.moviedetail.view.HeaderExtensionFragment;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Deprecated
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0017\u001a\u00020\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0017\u0010\u0015J\u0017\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u00072\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010 \u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\"\u0010\u0004J!\u0010#\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b#\u0010!R\u001b\u0010)\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00101\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010.R\u0016\u00103\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010.R\u0016\u00106\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u00108\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010.R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;¨\u0006="}, d2 = {"Lcom/transsion/moviedetail/fragment/SubjectMovieHeaderFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Llm/s;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "n0", "(Landroid/view/View;)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "q0", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "", "releaseDate", "f0", "(Ljava/lang/String;)Ljava/lang/String;", "", "addStatus", "o0", "(Ljava/lang/Integer;)V", "seeStatus", "p0", "Landroid/view/LayoutInflater;", "inflater", "h0", "(Landroid/view/LayoutInflater;)Llm/s;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "initData", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "a", "Lkotlin/Lazy;", "g0", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "c", "Ljava/lang/String;", "ops", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mSubjectId", "e", "pageName", "f", "I", "curSeason", "g", "moduleName", "Lcom/transsion/moviedetail/view/HeaderExtensionFragment;", "h", "Lcom/transsion/moviedetail/view/HeaderExtensionFragment;", "headerExtensionFragment", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SubjectMovieHeaderFragment extends BaseFragment<lm.s> {

    private Subject mMovieDetailBean;

    private String ops;

    private String mSubjectId;

    private String moduleName;

    private HeaderExtensionFragment headerExtensionFragment;

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

    private String pageName = "subjectdetail";

    private int curSeason = 1;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f45385a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f45385a = function;
        }

        @Override
        public final Function a() {
            return this.f45385a;
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
            this.f45385a.invoke(obj);
        }
    }

    private final String f0(String releaseDate) {
        if (releaseDate.length() < 4) {
            return releaseDate;
        }
        String strSubstring = releaseDate.substring(0, 4);
        Intrinsics.g(strSubstring, "substring(...)");
        return strSubstring;
    }

    private final MovieDetailViewModel g0() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    public static final Unit i0(SubjectMovieHeaderFragment subjectMovieHeaderFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        Subject subject = (Subject) pair.getSecond();
        wf.a.f74274a.c("movie_detail", "get movie detail data==" + pair, true);
        if (subject != null) {
            subjectMovieHeaderFragment.q0(subject);
            qi.b logViewConfig = subjectMovieHeaderFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            qi.b logViewConfig2 = subjectMovieHeaderFragment.getLogViewConfig();
            if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
                String subjectId = subject.getSubjectId();
                if (subjectId == null) {
                    subjectId = "";
                }
                mapG2.put("subject_id", subjectId);
            }
            qi.b logViewConfig3 = subjectMovieHeaderFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG = logViewConfig3.g()) != null) {
                mapG.put("has_resource", String.valueOf(subject.getHasResource()));
            }
        }
        return Unit.f64096a;
    }

    public static final Unit j0(SubjectMovieHeaderFragment subjectMovieHeaderFragment, Integer num) {
        Intrinsics.e(num);
        subjectMovieHeaderFragment.curSeason = num.intValue();
        return Unit.f64096a;
    }

    public static final Unit k0(SubjectMovieHeaderFragment subjectMovieHeaderFragment, Integer num) {
        Intrinsics.e(num);
        subjectMovieHeaderFragment.curSeason = num.intValue();
        subjectMovieHeaderFragment.hideLoading();
        return Unit.f64096a;
    }

    public static final void l0(SubjectMovieHeaderFragment subjectMovieHeaderFragment, View view) {
        Intrinsics.e(view);
        subjectMovieHeaderFragment.n0(view);
    }

    public static final void m0(SubjectMovieHeaderFragment subjectMovieHeaderFragment, View view) {
        Intrinsics.e(view);
        subjectMovieHeaderFragment.n0(view);
    }

    private final void n0(View view) {
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 1000L)) {
            return;
        }
        wf.a.C0922a.g(wf.a.f74274a, "Open the right to view more detail", false, 2, null);
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            SubjectInfoMoreDetailDialog subjectInfoMoreDetailDialog = new SubjectInfoMoreDetailDialog();
            subjectInfoMoreDetailDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("data_key_resource_detectors", this.mMovieDetailBean), TuplesKt.a("page_name", this.pageName)));
            subjectInfoMoreDetailDialog.n0(parentFragment, R$id.fl_bottom_dialog_container);
        }
    }

    private final void o0(Integer addStatus) {
    }

    private final void p0(Integer seeStatus) {
    }

    private final void q0(Subject movieDetailBean) {
        Subject subject;
        CustomTextViewGroup customTextViewGroup;
        AppCompatTextView appCompatTextView;
        CustomTextViewGroup customTextViewGroup2;
        lm.s mViewBinding;
        CustomTextViewGroup customTextViewGroup3;
        lm.s mViewBinding2;
        CustomTextViewGroup customTextViewGroup4;
        lm.s mViewBinding3;
        CustomTextViewGroup customTextViewGroup5;
        lm.s mViewBinding4;
        CustomTextViewGroup customTextViewGroup6;
        CustomTextViewGroup customTextViewGroup7;
        lm.s mViewBinding5;
        CustomTextViewGroup customTextViewGroup8;
        AppCompatTextView appCompatTextView2;
        AppCompatImageView appCompatImageView;
        CustomTextViewGroup customTextViewGroup9;
        CustomTextViewGroup customTextViewGroup10;
        AppCompatTextView appCompatTextView3;
        AppCompatImageView appCompatImageView2;
        this.mMovieDetailBean = movieDetailBean;
        String ops = movieDetailBean != null ? movieDetailBean.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        int iA = com.transsion.moviedetailapi.h.a(movieDetailBean.getSubjectType());
        lm.s mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (appCompatImageView2 = mViewBinding6.f65889c) != null) {
            appCompatImageView2.setImageResource(iA);
        }
        lm.s mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (appCompatTextView3 = mViewBinding7.f65893g) != null) {
            appCompatTextView3.setText(movieDetailBean.getTitle());
        }
        if (movieDetailBean.isTvType()) {
            lm.s mViewBinding8 = getMViewBinding();
            if (mViewBinding8 != null && (customTextViewGroup10 = mViewBinding8.f65898l) != null) {
                uf.c.k(customTextViewGroup10);
            }
            Integer seNum = movieDetailBean.getSeNum();
            if (seNum != null) {
                int iIntValue = seNum.intValue();
                Context context = getContext();
                String string = context != null ? context.getString(R$string.movie_detail_seasons, Integer.valueOf(iIntValue)) : null;
                lm.s mViewBinding9 = getMViewBinding();
                if (mViewBinding9 != null && (customTextViewGroup9 = mViewBinding9.f65898l) != null) {
                    if (string == null) {
                        string = "";
                    }
                    customTextViewGroup9.setText(string);
                }
            }
        } else {
            lm.s mViewBinding10 = getMViewBinding();
            if (mViewBinding10 != null && (customTextViewGroup = mViewBinding10.f65898l) != null) {
                uf.c.g(customTextViewGroup);
            }
        }
        if (movieDetailBean.isMusicType()) {
            lm.s mViewBinding11 = getMViewBinding();
            if (mViewBinding11 != null && (appCompatImageView = mViewBinding11.f65890d) != null) {
                uf.c.g(appCompatImageView);
            }
            lm.s mViewBinding12 = getMViewBinding();
            if (mViewBinding12 != null && (appCompatTextView2 = mViewBinding12.f65897k) != null) {
                uf.c.g(appCompatTextView2);
            }
            String countryName = movieDetailBean.getCountryName();
            if (countryName != null && (mViewBinding5 = getMViewBinding()) != null && (customTextViewGroup8 = mViewBinding5.f65892f) != null) {
                customTextViewGroup8.setText(countryName);
            }
            String genre = movieDetailBean.getGenre();
            if (genre != null) {
                String string2 = StringsKt.n1((String) StringsKt.S0(genre, new String[]{","}, false, 0, 6, null).get(0)).toString();
                lm.s mViewBinding13 = getMViewBinding();
                if (mViewBinding13 != null && (customTextViewGroup7 = mViewBinding13.f65900n) != null) {
                    customTextViewGroup7.setText(string2);
                }
            }
            String releaseDate = movieDetailBean.getReleaseDate();
            if (releaseDate != null && (mViewBinding4 = getMViewBinding()) != null && (customTextViewGroup6 = mViewBinding4.f65899m) != null) {
                customTextViewGroup6.setText(f0(releaseDate));
            }
        } else {
            String restrictLevel = movieDetailBean.getRestrictLevel();
            if (restrictLevel != null && (mViewBinding3 = getMViewBinding()) != null && (customTextViewGroup5 = mViewBinding3.f65895i) != null) {
                customTextViewGroup5.setText(restrictLevel);
            }
            String releaseDate2 = movieDetailBean.getReleaseDate();
            if (releaseDate2 != null && (mViewBinding2 = getMViewBinding()) != null && (customTextViewGroup4 = mViewBinding2.f65899m) != null) {
                customTextViewGroup4.setText(f0(releaseDate2));
            }
            String countryName2 = movieDetailBean.getCountryName();
            if (countryName2 != null && (mViewBinding = getMViewBinding()) != null && (customTextViewGroup3 = mViewBinding.f65892f) != null) {
                customTextViewGroup3.setText(countryName2);
            }
            String genre2 = movieDetailBean.getGenre();
            if (genre2 != null) {
                String string3 = StringsKt.n1((String) StringsKt.S0(genre2, new String[]{","}, false, 0, 6, null).get(0)).toString();
                lm.s mViewBinding14 = getMViewBinding();
                if (mViewBinding14 != null && (customTextViewGroup2 = mViewBinding14.f65900n) != null) {
                    customTextViewGroup2.setText(string3);
                }
            }
            lm.s mViewBinding15 = getMViewBinding();
            if (mViewBinding15 != null && (appCompatTextView = mViewBinding15.f65897k) != null) {
                appCompatTextView.setText(movieDetailBean.getImdbRate());
            }
        }
        Subject subject2 = this.mMovieDetailBean;
        p0(subject2 != null ? subject2.getSeenStatus() : null);
        Subject subject3 = this.mMovieDetailBean;
        o0(subject3 != null ? subject3.getSeenStatus() : null);
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
    public lm.s getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        lm.s sVarC = lm.s.c(inflater);
        Intrinsics.g(sVarC, "inflate(...)");
        return sVarC;
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        Bundle arguments2 = getArguments();
        this.mSubjectId = arguments2 != null ? arguments2.getString("id") : null;
        MovieDetailViewModel movieDetailViewModelG0 = g0();
        movieDetailViewModelG0.F().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectMovieHeaderFragment.i0(this.f45483a, (Pair) obj);
            }
        }));
        movieDetailViewModelG0.K().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectMovieHeaderFragment.j0(this.f45487a, (Integer) obj);
            }
        }));
        g0().K().j(this, new a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubjectMovieHeaderFragment.k0(this.f45493a, (Integer) obj);
            }
        }));
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        lm.s mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f65893g.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SubjectMovieHeaderFragment.l0(this.f45498a, view2);
                }
            });
            mViewBinding.f65896j.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SubjectMovieHeaderFragment.m0(this.f45505a, view2);
                }
            });
        }
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable("data_key_resource_detectors") : null;
        this.mMovieDetailBean = serializable instanceof Subject ? (Subject) serializable : null;
        Bundle arguments2 = getArguments();
        this.moduleName = arguments2 != null ? arguments2.getString("module_name") : null;
        Bundle arguments3 = getArguments();
        this.curSeason = arguments3 != null ? arguments3.getInt("season") : 1;
        Bundle arguments4 = getArguments();
        this.ops = arguments4 != null ? arguments4.getString("ops") : null;
        Bundle arguments5 = getArguments();
        if (arguments5 == null || (string = arguments5.getString(WebConstants.PAGE_FROM)) == null) {
            string = "subjectdetail";
        }
        this.pageName = string;
    }
}
