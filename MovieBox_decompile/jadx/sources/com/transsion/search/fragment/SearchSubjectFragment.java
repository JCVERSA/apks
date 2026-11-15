package com.transsion.search.fragment;

import android.content.Context;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.activity.u;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.blankj.utilcode.util.KeyboardUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.toast.core.h;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.search.R$id;
import com.transsion.search.SearchManager;
import com.transsion.search.activity.SearchManagerActivity;
import com.transsion.search.bean.SuggestEntity;
import com.transsion.search.bean.VerticalRank;
import com.transsion.search.fragment.SearchSubjectFragment;
import com.transsion.search.fragment.hot.SearchHotFragment;
import com.transsion.search.fragment.result.SearchResultFragment;
import com.transsion.search.fragment.suggest.SearchSuggestFragment;
import com.transsion.search_pugc.speech.SpeechRecognizerView;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ij.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import vp.i;
import yg.l;
import yg.m;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 X2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00018B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001e\u0010\u0004J\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001aH\u0002¢\u0006\u0004\b \u0010\u001dJ\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u0017\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J!\u0010*\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&2\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0005¢\u0006\u0004\b,\u0010\u0004J3\u00100\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010-\u001a\u0004\u0018\u00010\u001a2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00050.¢\u0006\u0004\b0\u00101J!\u00102\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&2\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b2\u0010+J\u0017\u00103\u001a\u00020\u00052\b\u0010-\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b3\u0010\u001dJ\u000f\u00104\u001a\u00020\u0005H\u0016¢\u0006\u0004\b4\u0010\u0004J\u000f\u00105\u001a\u00020\u0005H\u0016¢\u0006\u0004\b5\u0010\u0004J\u000f\u00106\u001a\u00020\u0005H\u0016¢\u0006\u0004\b6\u0010\u0004R\u0016\u0010:\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010=\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0018\u0010?\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010<R\u0016\u0010A\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u00109R\u0016\u0010D\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u0018\u0010G\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010CR\u0016\u0010W\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010C¨\u0006Y"}, d2 = {"Lcom/transsion/search/fragment/SearchSubjectFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lvp/i;", "<init>", "()V", "", "x0", "q0", "", "withoutKeyboard", "D0", "(Z)V", "w0", "Landroidx/fragment/app/Fragment;", "fragment", "C0", "(Landroidx/fragment/app/Fragment;)V", "Landroidx/lifecycle/u;", "owner", "Lkotlin/Function0;", "onBackPressed", "Landroidx/activity/u;", "r0", "(Landroidx/lifecycle/u;Lkotlin/jvm/functions/Function0;)Landroidx/activity/u;", "A0", "()Z", "", "keyWord", "L0", "(Ljava/lang/String;)V", "s0", "keyword", "M0", "t0", "Landroid/view/LayoutInflater;", "inflater", "v0", "(Landroid/view/LayoutInflater;)Lvp/i;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "K0", "searchFrom", "Lkotlin/Function1;", "callback", "u0", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "initData", "B0", "lazyLoadData", "onDestroyView", "onDestroy", "", "a", "I", "page", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "mKeyword", "c", "hintSearchWord", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "hintSearchIndex", "e", "Z", "backExitSearch", "f", "Landroidx/fragment/app/Fragment;", "currentPage", "Lcom/transsion/search/fragment/hot/SearchHotFragment;", "g", "Lcom/transsion/search/fragment/hot/SearchHotFragment;", "hotFragment", "Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;", "h", "Lcom/transsion/search/fragment/suggest/SearchSuggestFragment;", "suggestFragment", "Lcom/transsion/search/fragment/result/SearchResultFragment;", "i", "Lcom/transsion/search/fragment/result/SearchResultFragment;", "searchResultFragment", "j", "ignoreEditChanged", CampaignEx.JSON_KEY_AD_K, "isSuggestClick", "l", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchSubjectFragment extends BaseFragment<i> {

    public static final Companion INSTANCE = new Companion(null);

    private int page = 1;

    private String mKeyword = "";

    private String hintSearchWord;

    private int hintSearchIndex;

    private boolean backExitSearch;

    private Fragment currentPage;

    private SearchHotFragment hotFragment;

    private SearchSuggestFragment suggestFragment;

    private SearchResultFragment searchResultFragment;

    private boolean ignoreEditChanged;

    private boolean isSuggestClick;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchSubjectFragment a(String str, String str2, boolean z10) {
            SearchSubjectFragment searchSubjectFragment = new SearchSubjectFragment();
            Bundle bundle = new Bundle();
            bundle.putString("hot_search_word", str);
            bundle.putString("keyword", str2);
            bundle.putBoolean("back_exit", z10);
            searchSubjectFragment.setArguments(bundle);
            return searchSubjectFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends u {

        final Function0 f49988a;

        final SearchSubjectFragment f49989b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Function0 function0, SearchSubjectFragment searchSubjectFragment) {
            super(true);
            this.f49988a = function0;
            this.f49989b = searchSubjectFragment;
        }

        @Override
        public void handleOnBackPressed() {
            if (((Boolean) this.f49988a.invoke()).booleanValue()) {
                return;
            }
            setEnabled(false);
            this.f49989b.requireActivity().getOnBackPressedDispatcher().l();
            setEnabled(true);
        }
    }

    public static final class c implements SearchSuggestFragment.b {
        c() {
        }

        @Override
        public void a(SuggestEntity suggestEntity, int i10, String keyWord, String mOps) {
            Staff staff;
            String subjectId;
            Integer subjectType;
            String deeplink;
            EditText editText;
            Intrinsics.h(keyWord, "keyWord");
            Intrinsics.h(mOps, "mOps");
            i mViewBinding = SearchSubjectFragment.this.getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f73744b) != null) {
                KeyboardUtils.e(editText);
            }
            Integer type = suggestEntity != null ? suggestEntity.getType() : null;
            if (type != null && type.intValue() == 2) {
                VerticalRank verticalRank = suggestEntity.getVerticalRank();
                if (verticalRank == null || (deeplink = verticalRank.getDeeplink()) == null) {
                    return;
                }
                Uri uriG = com.transsion.baselib.helper.b.f42123a.g(Uri.parse(deeplink + "&ops=" + mOps));
                if (uriG != null) {
                    k.o(uriG);
                    return;
                }
                return;
            }
            String str = "";
            if (type == null || type.intValue() != 1) {
                if (type == null || type.intValue() != 0) {
                    if (type == null || type.intValue() != 3 || (staff = suggestEntity.getStaff()) == null) {
                        return;
                    }
                    Navigator.x(TheRouter.c("/movie/staff").J("staff", staff), SearchSubjectFragment.this.requireContext(), null, 2, null);
                    return;
                }
                SearchSubjectFragment.this.mKeyword = keyWord;
                SearchSubjectFragment.this.isSuggestClick = true;
                SearchSubjectFragment searchSubjectFragment = SearchSubjectFragment.this;
                String word = suggestEntity.getWord();
                searchSubjectFragment.L0(word != null ? word : "");
                SearchSubjectFragment.this.B0("suggest");
                return;
            }
            try {
                Subject subject = suggestEntity.getSubject();
                if (subject != null) {
                    Integer subjectType2 = subject.getSubjectType();
                    int value = SubjectType.SHORT_TV.getValue();
                    if (subjectType2 != null && subjectType2.intValue() == value) {
                        DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                        Context context = SearchSubjectFragment.this.getContext();
                        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                        FragmentActivity fragmentActivity = (FragmentActivity) context;
                        Subject subject2 = suggestEntity.getSubject();
                        downloadManagerApiA.d0(fragmentActivity, "searchpage", (384 & 4) != 0 ? "" : "", subject2 != null ? subject2.getOps() : null, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : suggestEntity.getSubject(), (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                        return;
                    }
                }
                Navigator navigatorC = TheRouter.c("/movie/detail");
                Subject subject3 = suggestEntity.getSubject();
                Navigator navigatorF = navigatorC.F("subject_type", (subject3 == null || (subjectType = subject3.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue());
                Subject subject4 = suggestEntity.getSubject();
                if (subject4 != null && (subjectId = subject4.getSubjectId()) != null) {
                    str = subjectId;
                }
                Navigator.x(navigatorF.K("id", str).K("ops", mOps), SearchSubjectFragment.this.requireContext(), null, 2, null);
            } catch (Exception unused) {
            }
        }
    }

    public static final class d implements m {
        d() {
        }

        @Override
        public void onConnected() {
            m.a.a(this);
        }

        @Override
        public void onDisconnected() {
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            if (SearchSubjectFragment.this.currentPage instanceof SearchHotFragment) {
                Fragment fragment = SearchSubjectFragment.this.currentPage;
                Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.search.fragment.hot.SearchHotFragment");
                ((SearchHotFragment) fragment).onConnected();
            }
        }
    }

    public static final class e implements TextWatcher {
        e() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (SearchSubjectFragment.this.ignoreEditChanged) {
                SearchSubjectFragment.this.ignoreEditChanged = false;
                return;
            }
            SearchSubjectFragment.this.mKeyword = String.valueOf(editable);
            SearchSubjectFragment searchSubjectFragment = SearchSubjectFragment.this;
            searchSubjectFragment.M0(searchSubjectFragment.mKeyword);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            TextView textView;
            i mViewBinding = SearchSubjectFragment.this.getMViewBinding();
            if (mViewBinding == null || (textView = mViewBinding.f73752j) == null) {
                return;
            }
            uf.c.k(textView);
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class f implements TextView.OnEditorActionListener {
        f() {
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 0 && i10 != 3) {
                return false;
            }
            SearchSubjectFragment.this.mKeyword = String.valueOf(textView != null ? textView.getText() : null);
            SearchSubjectFragment.this.B0("input");
            return true;
        }
    }

    private final boolean A0() {
        w0();
        return true;
    }

    private final void C0(Fragment fragment) {
        EditText editText;
        EditText editText2;
        if (fragment == null || Intrinsics.c(this.currentPage, fragment) || !isAdded() || isDetached() || isRemoving()) {
            return;
        }
        this.currentPage = fragment;
        w wVarP = getChildFragmentManager().p();
        SearchHotFragment searchHotFragment = this.hotFragment;
        if (searchHotFragment != null && !Intrinsics.c(this.currentPage, searchHotFragment)) {
            wVarP.p(searchHotFragment);
        }
        SearchSuggestFragment searchSuggestFragment = this.suggestFragment;
        if (searchSuggestFragment != null && !Intrinsics.c(this.currentPage, searchSuggestFragment)) {
            wVarP.p(searchSuggestFragment);
        }
        SearchResultFragment searchResultFragment = this.searchResultFragment;
        if (searchResultFragment != null && !Intrinsics.c(this.currentPage, searchResultFragment)) {
            wVarP.p(searchResultFragment);
        }
        wVarP.y(fragment);
        wVarP.j();
        if (Intrinsics.c(fragment, this.searchResultFragment)) {
            i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (editText2 = mViewBinding.f73744b) == null) {
                return;
            }
            editText2.clearFocus();
            KeyboardUtils.e(editText2);
            return;
        }
        i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (editText = mViewBinding2.f73744b) == null) {
            return;
        }
        editText.requestFocus();
        KeyboardUtils.i(editText);
    }

    private final void D0(boolean withoutKeyboard) {
        i mViewBinding;
        EditText editText;
        AppCompatImageView appCompatImageView;
        ImageView imageView;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        TextView textView;
        EditText editText5;
        i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (editText5 = mViewBinding2.f73744b) != null) {
            editText5.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchSubjectFragment.E0(this.f75370a, view);
                }
            });
        }
        i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (textView = mViewBinding3.f73752j) != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchSubjectFragment.F0(this.f75371a, view);
                }
            });
        }
        i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (editText4 = mViewBinding4.f73744b) != null) {
            editText4.addTextChangedListener(new e());
        }
        i mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (editText3 = mViewBinding5.f73744b) != null) {
            editText3.setOnEditorActionListener(new f());
        }
        i mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (editText2 = mViewBinding6.f73744b) != null) {
            editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public final void onFocusChange(View view, boolean z10) {
                    SearchSubjectFragment.G0(this.f75372a, view, z10);
                }
            });
        }
        i mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (imageView = mViewBinding7.f73749g) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchSubjectFragment.H0(this.f75373a, view);
                }
            });
        }
        i mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (appCompatImageView = mViewBinding8.f73746d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchSubjectFragment.I0(this.f75374a, view);
                }
            });
        }
        if (!withoutKeyboard && (mViewBinding = getMViewBinding()) != null && (editText = mViewBinding.f73744b) != null) {
            editText.requestFocus();
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        r0(this, new Function0() {
            @Override
            public final Object invoke() {
                return Boolean.valueOf(SearchSubjectFragment.J0(this.f75375a));
            }
        });
    }

    public static final void E0(SearchSubjectFragment searchSubjectFragment, View view) {
        TextView textView;
        i mViewBinding = searchSubjectFragment.getMViewBinding();
        if (mViewBinding == null || (textView = mViewBinding.f73752j) == null) {
            return;
        }
        uf.c.k(textView);
    }

    public static final void F0(SearchSubjectFragment searchSubjectFragment, View view) {
        searchSubjectFragment.B0("input");
    }

    public static final void G0(SearchSubjectFragment searchSubjectFragment, View view, boolean z10) {
        EditText editText;
        ViewGroup.LayoutParams layoutParams;
        ImageView imageView;
        TextView textView;
        String string;
        EditText editText2;
        EditText editText3;
        ViewGroup.LayoutParams layoutParams2;
        ImageView imageView2;
        TextView textView2;
        if (!z10) {
            i mViewBinding = searchSubjectFragment.getMViewBinding();
            if (mViewBinding != null && (textView = mViewBinding.f73752j) != null) {
                uf.c.g(textView);
            }
            i mViewBinding2 = searchSubjectFragment.getMViewBinding();
            if (mViewBinding2 != null && (imageView = mViewBinding2.f73749g) != null) {
                uf.c.k(imageView);
            }
            i mViewBinding3 = searchSubjectFragment.getMViewBinding();
            if (mViewBinding3 == null || (editText = mViewBinding3.f73744b) == null || (layoutParams = editText.getLayoutParams()) == null || !(layoutParams instanceof RelativeLayout.LayoutParams)) {
                return;
            }
            ((RelativeLayout.LayoutParams) layoutParams).addRule(16, R$id.search_edit_clear);
            return;
        }
        i mViewBinding4 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding4 != null && (textView2 = mViewBinding4.f73752j) != null) {
            uf.c.k(textView2);
        }
        i mViewBinding5 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding5 != null && (imageView2 = mViewBinding5.f73749g) != null) {
            uf.c.g(imageView2);
        }
        i mViewBinding6 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding6 != null && (editText3 = mViewBinding6.f73744b) != null && (layoutParams2 = editText3.getLayoutParams()) != null && (layoutParams2 instanceof RelativeLayout.LayoutParams)) {
            ((RelativeLayout.LayoutParams) layoutParams2).addRule(16, R$id.tv_search);
        }
        if (searchSubjectFragment.currentPage instanceof SearchResultFragment) {
            i mViewBinding7 = searchSubjectFragment.getMViewBinding();
            Editable text = (mViewBinding7 == null || (editText2 = mViewBinding7.f73744b) == null) ? null : editText2.getText();
            if ((text != null ? text.length() : 0) <= 0) {
                searchSubjectFragment.C0(searchSubjectFragment.hotFragment);
                return;
            }
            if (text == null || (string = text.toString()) == null) {
                string = "";
            }
            searchSubjectFragment.M0(string);
        }
    }

    public static final void H0(SearchSubjectFragment searchSubjectFragment, View view) {
        EditText editText;
        i mViewBinding = searchSubjectFragment.getMViewBinding();
        if (mViewBinding == null || (editText = mViewBinding.f73744b) == null) {
            return;
        }
        editText.setText("");
    }

    public static final void I0(SearchSubjectFragment searchSubjectFragment, View view) {
        searchSubjectFragment.w0();
    }

    public static final boolean J0(SearchSubjectFragment searchSubjectFragment) {
        return searchSubjectFragment.A0();
    }

    public final void L0(String keyWord) {
        Unit unit;
        EditText editText;
        EditText editText2;
        i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (editText2 = mViewBinding.f73744b) != null) {
            editText2.setText(keyWord);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (editText = mViewBinding2.f73744b) == null) {
                unit = null;
            } else {
                editText.setSelection(keyWord.length());
                unit = Unit.f64096a;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final void M0(String keyword) {
        SearchSuggestFragment searchSuggestFragment;
        if (keyword.length() == 0) {
            C0(this.hotFragment);
            return;
        }
        if (!l.f76264a.e()) {
            SearchManagerActivity.INSTANCE.a("showLinkageSearchFragment --> currently no network does not use linkage");
            return;
        }
        if (!TextUtils.isEmpty(keyword) && (searchSuggestFragment = this.suggestFragment) != null) {
            searchSuggestFragment.n0(keyword);
        }
        C0(this.suggestFragment);
    }

    private final void q0() {
        if (this.hotFragment == null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            SearchHotFragment searchHotFragmentA = SearchHotFragment.INSTANCE.a(this.hintSearchWord);
            wVarP.b(R$id.search_fragment_container, searchHotFragmentA);
            this.hotFragment = searchHotFragmentA;
            wVarP.j();
        }
    }

    private final u r0(androidx.p009lifecycle.u owner, Function0 onBackPressed) {
        b bVar = new b(onBackPressed, this);
        requireActivity().getOnBackPressedDispatcher().i(owner, bVar);
        return bVar;
    }

    private final void s0() {
        if (this.suggestFragment == null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            SearchSuggestFragment searchSuggestFragmentA = SearchSuggestFragment.INSTANCE.a();
            wVarP.b(R$id.search_fragment_container, searchSuggestFragmentA);
            this.suggestFragment = searchSuggestFragmentA;
            wVarP.j();
            SearchSuggestFragment searchSuggestFragment = this.suggestFragment;
            if (searchSuggestFragment != null) {
                searchSuggestFragment.o0(new c());
            }
        }
    }

    private final void t0() {
        if (this.searchResultFragment == null) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            SearchResultFragment searchResultFragment = new SearchResultFragment();
            wVarP.b(R$id.search_fragment_container, searchResultFragment);
            this.searchResultFragment = searchResultFragment;
            wVarP.l();
        }
    }

    private final void w0() {
        EditText editText;
        Fragment fragment = this.currentPage;
        if (fragment instanceof SearchHotFragment) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (this.isSuggestClick && !(fragment instanceof SearchSuggestFragment)) {
            if (fragment instanceof SearchResultFragment) {
                C0(this.suggestFragment);
            }
        } else {
            this.isSuggestClick = false;
            i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (editText = mViewBinding.f73744b) == null) {
                return;
            }
            editText.setText("");
        }
    }

    private final void x0() {
        i mViewBinding;
        EditText editText;
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("hot_search_word") : null;
        this.hintSearchWord = string;
        if (string == null || string.length() <= 0 || (mViewBinding = getMViewBinding()) == null || (editText = mViewBinding.f73744b) == null) {
            return;
        }
        editText.setHint(this.hintSearchWord);
    }

    public static final Unit y0(final SearchSubjectFragment searchSubjectFragment, String str) {
        EditText editText;
        if (TextUtils.isEmpty(str)) {
            i mViewBinding = searchSubjectFragment.getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f73744b) != null) {
                editText.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        SearchSubjectFragment.z0(this.f75376a);
                    }
                }, 500L);
            }
            com.transsion.search.speech.f.f50207a.b(SearchSubjectFragment.class.getSimpleName() + " --> mViewBinding?.sRView?.setCallback{} --> onResult = " + str + " --> 拉起键盘");
        } else {
            searchSubjectFragment.L0(str == null ? "" : str);
            searchSubjectFragment.B0("voice");
            com.transsion.search.speech.f.f50207a.b(SearchSubjectFragment.class.getSimpleName() + " --> mViewBinding?.sRView?.setCallback{} --> onResult = " + str + " --> 隐藏键盘");
        }
        return Unit.f64096a;
    }

    public static final void z0(SearchSubjectFragment searchSubjectFragment) {
        EditText editText;
        EditText editText2;
        i mViewBinding = searchSubjectFragment.getMViewBinding();
        if (mViewBinding != null && (editText2 = mViewBinding.f73744b) != null) {
            editText2.requestFocus();
        }
        i mViewBinding2 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding2 == null || (editText = mViewBinding2.f73744b) == null) {
            return;
        }
        KeyboardUtils.i(editText);
    }

    public final void B0(String searchFrom) {
        i mViewBinding;
        EditText editText;
        if (!l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
        }
        if (this.mKeyword.length() == 0 && (mViewBinding = getMViewBinding()) != null && (editText = mViewBinding.f73744b) != null && Intrinsics.c(editText.getHint(), this.hintSearchWord)) {
            this.mKeyword = String.valueOf(this.hintSearchWord);
            this.ignoreEditChanged = true;
            editText.setText(String.valueOf(this.hintSearchWord));
            editText.setSelection(editText.getText().length());
            searchFrom = "hint";
        }
        if (this.mKeyword.length() == 0) {
            h hVar = h.f40484a;
            hVar.e(16);
            hVar.l(getString(com.transsion.search.R$string.tips_movie));
            return;
        }
        SearchHotFragment searchHotFragment = this.hotFragment;
        if (searchHotFragment != null) {
            searchHotFragment.addHistoryWord(this.mKeyword);
        }
        SearchResultFragment searchResultFragment = this.searchResultFragment;
        if (searchResultFragment != null) {
            searchResultFragment.v0(this.mKeyword, searchFrom);
        }
        C0(this.searchResultFragment);
    }

    public final void K0() {
        String str;
        EditText editText;
        up.c.a aVar = up.c.f73222a;
        List listA = aVar.a();
        if (listA == null || listA.isEmpty()) {
            return;
        }
        List listA2 = aVar.a();
        int size = listA2 != null ? listA2.size() : 0;
        List listA3 = aVar.a();
        if (listA3 != null) {
            int i10 = this.hintSearchIndex;
            this.hintSearchIndex = i10 + 1;
            str = (String) CollectionsKt.l0(listA3, i10 % size);
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            this.hintSearchWord = str;
        }
        i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (editText = mViewBinding.f73744b) == null) {
            return;
        }
        editText.setHint(this.hintSearchWord);
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        String string;
        ImageView imageView;
        EditText editText;
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("keyword")) == null) {
            string = "";
        }
        Bundle arguments2 = getArguments();
        this.backExitSearch = arguments2 != null ? arguments2.getBoolean("back_exit") : false;
        D0(string.length() > 0);
        if (string.length() > 0) {
            this.mKeyword = string;
            i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f73744b) != null) {
                editText.setText(this.mKeyword);
            }
            i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (imageView = mViewBinding2.f73749g) != null) {
                uf.c.k(imageView);
            }
            B0("deeplink");
        }
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        SpeechRecognizerView speechRecognizerView;
        Intrinsics.h(view, "view");
        BaseSearchMainFragment.INSTANCE.b();
        x0();
        setNetListener(new d());
        i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (speechRecognizerView = mViewBinding.f73748f) != null) {
            speechRecognizerView.setCallback(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SearchSubjectFragment.y0(this.f75369a, (String) obj);
                }
            });
        }
        q0();
        s0();
        t0();
        C0(this.hotFragment);
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        this.currentPage = null;
        this.hotFragment = null;
        this.suggestFragment = null;
        this.searchResultFragment = null;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.currentPage = null;
        this.hotFragment = null;
        this.suggestFragment = null;
        this.searchResultFragment = null;
        setNetListener(null);
        setMViewBinding(null);
    }

    public final void u0(String keyWord, String searchFrom, Function1 callback) {
        EditText editText;
        Intrinsics.h(keyWord, "keyWord");
        Intrinsics.h(callback, "callback");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            KeyboardUtils.d(activity);
        }
        this.mKeyword = keyWord;
        this.ignoreEditChanged = true;
        i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (editText = mViewBinding.f73744b) != null) {
            editText.setText(this.mKeyword);
            try {
                Result.Companion companion = Result.INSTANCE;
                Editable text = editText.getText();
                editText.setSelection(text != null ? RangesKt.h(text.length(), this.mKeyword.length()) : 0);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        this.page = 1;
        B0(searchFrom);
        SearchManager.f49934f.a().g(this.mKeyword);
        callback.invoke(keyWord);
    }

    @Override
    public i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        i iVarC = i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }
}
