package com.transsion.search_pugc.fragment;

import android.net.Network;
import android.net.NetworkCapabilities;
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
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import com.blankj.utilcode.util.KeyboardUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.search.R$id;
import com.transsion.search.SearchManager;
import com.transsion.search_pugc.bean.SearchSuggestItem;
import com.transsion.search_pugc.fragment.hot.SearchHotFragment;
import com.transsion.search_pugc.fragment.result.SearchResultFragment;
import com.transsion.search_pugc.fragment.result.SearchResultViewModel;
import com.transsion.search_pugc.fragment.suggest.SearchSuggestFragment;
import com.transsion.search_pugc.speech.SpeechRecognizerView;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.flow.w0;
import kotlinx.coroutines.n0;
import yg.l;
import yg.m;

@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 c2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00016B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u0019\u0010\u000f\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001e\u0010\u0004J\u0017\u0010 \u001a\u00020\u00052\u0006\u0010\u001f\u001a\u00020\u001aH\u0002¢\u0006\u0004\b \u0010\u001dJ\u000f\u0010!\u001a\u00020\u0005H\u0002¢\u0006\u0004\b!\u0010\u0004J\u0017\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J!\u0010*\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&2\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b*\u0010+J\r\u0010,\u001a\u00020\u0005¢\u0006\u0004\b,\u0010\u0004J3\u00100\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010-\u001a\u0004\u0018\u00010\u001a2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00050.¢\u0006\u0004\b0\u00101J!\u00102\u001a\u00020\u00052\u0006\u0010'\u001a\u00020&2\b\u0010)\u001a\u0004\u0018\u00010(H\u0016¢\u0006\u0004\b2\u0010+J\u0017\u00103\u001a\u00020\u00052\b\u0010-\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b3\u0010\u001dJ\u000f\u00104\u001a\u00020\u0005H\u0016¢\u0006\u0004\b4\u0010\u0004R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010=\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:R\u0016\u0010?\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u00107R\u0016\u0010B\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0018\u0010D\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010:R\u0018\u0010G\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010U\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010AR\u0016\u0010W\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010AR\u001b\u0010]\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R\u001b\u0010b\u001a\u00020^8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010Z\u001a\u0004\b`\u0010a¨\u0006d"}, d2 = {"Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lvp/i;", "<init>", "()V", "", "E0", "v0", "", "withoutKeyboard", "L0", "(Z)V", "C0", "Landroidx/fragment/app/Fragment;", "fragment", "K0", "(Landroidx/fragment/app/Fragment;)V", "Landroidx/lifecycle/u;", "owner", "Lkotlin/Function0;", "onBackPressed", "Landroidx/activity/u;", "w0", "(Landroidx/lifecycle/u;Lkotlin/jvm/functions/Function0;)Landroidx/activity/u;", "H0", "()Z", "", "keyWord", "T0", "(Ljava/lang/String;)V", "x0", "keyword", "U0", "y0", "Landroid/view/LayoutInflater;", "inflater", "A0", "(Landroid/view/LayoutInflater;)Lvp/i;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "S0", "searchFrom", "Lkotlin/Function1;", "callback", "z0", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "initData", "I0", "lazyLoadData", "", "a", "I", "page", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "mKeyword", "c", "hintSearchWord", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "hintSearchIndex", "e", "Z", "backExitSearch", "f", "fromUGCVideoId", "g", "Landroidx/fragment/app/Fragment;", "currentPage", "Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;", "h", "Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;", "hotFragment", "Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;", "i", "Lcom/transsion/search_pugc/fragment/suggest/SearchSuggestFragment;", "suggestFragment", "Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;", "j", "Lcom/transsion/search_pugc/fragment/result/SearchResultFragment;", "searchResultFragment", CampaignEx.JSON_KEY_AD_K, "ignoreEditChanged", "l", "isSuggestClick", "Lcom/transsion/search_pugc/g;", "m", "Lkotlin/Lazy;", "getSearchReporter", "()Lcom/transsion/search_pugc/g;", "searchReporter", "Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;", "n", "B0", "()Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;", "viewModel", "o", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchSubjectFragment extends BaseFragment<vp.i> {

    public static final Companion INSTANCE = new Companion(null);

    private String hintSearchWord;

    private int hintSearchIndex;

    private boolean backExitSearch;

    private String fromUGCVideoId;

    private Fragment currentPage;

    private SearchHotFragment hotFragment;

    private SearchSuggestFragment suggestFragment;

    private SearchResultFragment searchResultFragment;

    private boolean ignoreEditChanged;

    private boolean isSuggestClick;

    private int page = 1;

    private String mKeyword = "";

    private final Lazy searchReporter = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SearchSubjectFragment.J0(this.f50333a);
        }
    });

    private final Lazy viewModel = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SearchSubjectFragment.V0(this.f50334a);
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchSubjectFragment a(String str, String str2, boolean z10, String str3) {
            SearchSubjectFragment searchSubjectFragment = new SearchSubjectFragment();
            Bundle bundle = new Bundle();
            bundle.putString("hot_search_word", str);
            bundle.putString("keyword", str2);
            bundle.putString("form_ugc_video_id", str3);
            bundle.putBoolean("back_exit", z10);
            searchSubjectFragment.setArguments(bundle);
            return searchSubjectFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends u {

        final Function0 f50322a;

        final SearchSubjectFragment f50323b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Function0 function0, SearchSubjectFragment searchSubjectFragment) {
            super(true);
            this.f50322a = function0;
            this.f50323b = searchSubjectFragment;
        }

        @Override
        public void handleOnBackPressed() {
            if (((Boolean) this.f50322a.invoke()).booleanValue()) {
                return;
            }
            setEnabled(false);
            this.f50323b.requireActivity().getOnBackPressedDispatcher().l();
            setEnabled(true);
        }
    }

    public static final class c implements SearchSuggestFragment.b {
        c() {
        }

        @Override
        public void a(SearchSuggestItem searchSuggestItem, int i10, String keyWord, String mOps) {
            String word;
            EditText editText;
            Intrinsics.h(keyWord, "keyWord");
            Intrinsics.h(mOps, "mOps");
            vp.i mViewBinding = SearchSubjectFragment.this.getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f73744b) != null) {
                KeyboardUtils.e(editText);
            }
            SearchSubjectFragment.this.mKeyword = keyWord;
            SearchSubjectFragment.this.isSuggestClick = true;
            SearchSubjectFragment searchSubjectFragment = SearchSubjectFragment.this;
            if (searchSuggestItem == null || (word = searchSuggestItem.getWord()) == null) {
                word = "";
            }
            searchSubjectFragment.T0(word);
            SearchSubjectFragment.this.I0("suggest");
            SearchSubjectFragment.this.getSearchReporter().E("suggest", SearchSubjectFragment.this.mKeyword);
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
                Intrinsics.f(fragment, "null cannot be cast to non-null type com.transsion.search_pugc.fragment.hot.SearchHotFragment");
                ((SearchHotFragment) fragment).onConnected();
            }
        }
    }

    static final class e implements c0, FunctionAdapter {

        private final Function1 f50326a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f50326a = function;
        }

        @Override
        public final Function a() {
            return this.f50326a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f50326a.invoke(obj);
        }
    }

    public static final class f implements TextWatcher {
        f() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            SearchSubjectFragment.this.B0().i().n(Boolean.FALSE);
            if (SearchSubjectFragment.this.ignoreEditChanged) {
                SearchSubjectFragment.this.ignoreEditChanged = false;
                return;
            }
            SearchSubjectFragment.this.mKeyword = String.valueOf(editable);
            SearchSubjectFragment searchSubjectFragment = SearchSubjectFragment.this;
            searchSubjectFragment.U0(searchSubjectFragment.mKeyword);
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            TextView textView;
            vp.i mViewBinding = SearchSubjectFragment.this.getMViewBinding();
            if (mViewBinding == null || (textView = mViewBinding.f73752j) == null) {
                return;
            }
            uf.c.k(textView);
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class g implements TextView.OnEditorActionListener {
        g() {
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 0 && i10 != 3) {
                return false;
            }
            SearchSubjectFragment.this.mKeyword = String.valueOf(textView != null ? textView.getText() : null);
            SearchSubjectFragment.this.I0("input");
            SearchSubjectFragment.this.getSearchReporter().E("input", SearchSubjectFragment.this.mKeyword);
            return true;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.search_pugc.fragment.SearchSubjectFragment$initView$3", f = "SearchSubjectFragment.kt", l = {Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        static final class a implements kotlinx.coroutines.flow.b {

            public static final a f50329a = new a();

            a() {
            }

            public final Object a(com.transsion.search_pugc.k.a aVar, Continuation continuation) {
                throw new NoWhenBranchMatchedException();
            }

            @Override
            public Object emit(Object obj, Continuation continuation) {
                android.support.v4.media.session.c.a(obj);
                return a(null, continuation);
            }
        }

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                w0 w0VarA = com.transsion.search_pugc.k.f50484a.a();
                a aVar = a.f50329a;
                this.label = 1;
                if (w0VarA.a(aVar, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            throw new KotlinNothingValueException();
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public final SearchResultViewModel B0() {
        return (SearchResultViewModel) this.viewModel.getValue();
    }

    private final void C0() {
        EditText editText;
        if (this.backExitSearch) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        Fragment fragment = this.currentPage;
        if (fragment instanceof SearchHotFragment) {
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                activity2.finish();
                return;
            }
            return;
        }
        if (this.isSuggestClick && !(fragment instanceof SearchSuggestFragment)) {
            if (fragment instanceof SearchResultFragment) {
                K0(this.suggestFragment);
            }
        } else {
            this.isSuggestClick = false;
            vp.i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (editText = mViewBinding.f73744b) == null) {
                return;
            }
            editText.setText("");
        }
    }

    public static final Unit D0(SearchSubjectFragment searchSubjectFragment, Boolean bool) {
        if (bool.booleanValue()) {
            searchSubjectFragment.K0(searchSubjectFragment.hotFragment);
        }
        return Unit.f64096a;
    }

    private final void E0() {
        vp.i mViewBinding;
        EditText editText;
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("hot_search_word") : null;
        this.hintSearchWord = string;
        if (string == null || string.length() <= 0 || (mViewBinding = getMViewBinding()) == null || (editText = mViewBinding.f73744b) == null) {
            return;
        }
        editText.setHint(this.hintSearchWord);
    }

    public static final Unit F0(final SearchSubjectFragment searchSubjectFragment, String str) {
        EditText editText;
        if (TextUtils.isEmpty(str)) {
            vp.i mViewBinding = searchSubjectFragment.getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f73744b) != null) {
                editText.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        SearchSubjectFragment.G0(this.f50335a);
                    }
                }, 500L);
            }
            com.transsion.search_pugc.speech.f.f50516a.b(SearchSubjectFragment.class.getSimpleName() + " --> mViewBinding?.sRView?.setCallback{} --> onResult = " + str + " --> 拉起键盘");
        } else {
            searchSubjectFragment.T0(str == null ? "" : str);
            searchSubjectFragment.I0("voice");
            searchSubjectFragment.getSearchReporter().E("voice", searchSubjectFragment.mKeyword);
            com.transsion.search_pugc.speech.f.f50516a.b(SearchSubjectFragment.class.getSimpleName() + " --> mViewBinding?.sRView?.setCallback{} --> onResult = " + str + " --> 隐藏键盘");
        }
        return Unit.f64096a;
    }

    public static final void G0(SearchSubjectFragment searchSubjectFragment) {
        EditText editText;
        EditText editText2;
        vp.i mViewBinding = searchSubjectFragment.getMViewBinding();
        if (mViewBinding != null && (editText2 = mViewBinding.f73744b) != null) {
            editText2.requestFocus();
        }
        vp.i mViewBinding2 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding2 == null || (editText = mViewBinding2.f73744b) == null) {
            return;
        }
        KeyboardUtils.i(editText);
    }

    private final boolean H0() {
        C0();
        return true;
    }

    public static final com.transsion.search_pugc.g J0(SearchSubjectFragment searchSubjectFragment) {
        return com.transsion.search_pugc.g.f50469h.a(searchSubjectFragment.getContext());
    }

    private final void K0(Fragment fragment) {
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
            vp.i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (editText2 = mViewBinding.f73744b) == null) {
                return;
            }
            editText2.clearFocus();
            KeyboardUtils.e(editText2);
            return;
        }
        vp.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (editText = mViewBinding2.f73744b) == null) {
            return;
        }
        Boolean bool = (Boolean) B0().i().f();
        if (bool == null || !bool.booleanValue()) {
            editText.requestFocus();
            KeyboardUtils.i(editText);
        }
    }

    private final void L0(boolean withoutKeyboard) {
        vp.i mViewBinding;
        EditText editText;
        AppCompatImageView appCompatImageView;
        ImageView imageView;
        EditText editText2;
        EditText editText3;
        EditText editText4;
        TextView textView;
        EditText editText5;
        vp.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (editText5 = mViewBinding2.f73744b) != null) {
            editText5.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchSubjectFragment.M0(this.f50336a, view);
                }
            });
        }
        vp.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (textView = mViewBinding3.f73752j) != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchSubjectFragment.N0(this.f50337a, view);
                }
            });
        }
        vp.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (editText4 = mViewBinding4.f73744b) != null) {
            editText4.addTextChangedListener(new f());
        }
        vp.i mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (editText3 = mViewBinding5.f73744b) != null) {
            editText3.setOnEditorActionListener(new g());
        }
        vp.i mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (editText2 = mViewBinding6.f73744b) != null) {
            editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public final void onFocusChange(View view, boolean z10) {
                    SearchSubjectFragment.O0(this.f50358a, view, z10);
                }
            });
        }
        vp.i mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (imageView = mViewBinding7.f73749g) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchSubjectFragment.P0(this.f50359a, view);
                }
            });
        }
        vp.i mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (appCompatImageView = mViewBinding8.f73746d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchSubjectFragment.Q0(this.f50360a, view);
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
        w0(this, new Function0() {
            @Override
            public final Object invoke() {
                return Boolean.valueOf(SearchSubjectFragment.R0(this.f50331a));
            }
        });
    }

    public static final void M0(SearchSubjectFragment searchSubjectFragment, View view) {
        TextView textView;
        vp.i mViewBinding = searchSubjectFragment.getMViewBinding();
        if (mViewBinding == null || (textView = mViewBinding.f73752j) == null) {
            return;
        }
        uf.c.k(textView);
    }

    public static final void N0(SearchSubjectFragment searchSubjectFragment, View view) {
        searchSubjectFragment.I0("input");
        searchSubjectFragment.getSearchReporter().E("input", searchSubjectFragment.mKeyword);
    }

    public static final void O0(SearchSubjectFragment searchSubjectFragment, View view, boolean z10) {
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
            vp.i mViewBinding = searchSubjectFragment.getMViewBinding();
            if (mViewBinding != null && (textView = mViewBinding.f73752j) != null) {
                uf.c.g(textView);
            }
            vp.i mViewBinding2 = searchSubjectFragment.getMViewBinding();
            if (mViewBinding2 != null && (imageView = mViewBinding2.f73749g) != null) {
                uf.c.k(imageView);
            }
            vp.i mViewBinding3 = searchSubjectFragment.getMViewBinding();
            if (mViewBinding3 == null || (editText = mViewBinding3.f73744b) == null || (layoutParams = editText.getLayoutParams()) == null || !(layoutParams instanceof RelativeLayout.LayoutParams)) {
                return;
            }
            ((RelativeLayout.LayoutParams) layoutParams).addRule(16, R$id.search_edit_clear);
            return;
        }
        vp.i mViewBinding4 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding4 != null && (textView2 = mViewBinding4.f73752j) != null) {
            uf.c.k(textView2);
        }
        vp.i mViewBinding5 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding5 != null && (imageView2 = mViewBinding5.f73749g) != null) {
            uf.c.g(imageView2);
        }
        vp.i mViewBinding6 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding6 != null && (editText3 = mViewBinding6.f73744b) != null && (layoutParams2 = editText3.getLayoutParams()) != null && (layoutParams2 instanceof RelativeLayout.LayoutParams)) {
            ((RelativeLayout.LayoutParams) layoutParams2).addRule(16, R$id.tv_search);
        }
        if (searchSubjectFragment.currentPage instanceof SearchResultFragment) {
            vp.i mViewBinding7 = searchSubjectFragment.getMViewBinding();
            Editable text = (mViewBinding7 == null || (editText2 = mViewBinding7.f73744b) == null) ? null : editText2.getText();
            if ((text != null ? text.length() : 0) <= 0) {
                searchSubjectFragment.K0(searchSubjectFragment.hotFragment);
                return;
            }
            if (text == null || (string = text.toString()) == null) {
                string = "";
            }
            searchSubjectFragment.U0(string);
        }
    }

    public static final void P0(SearchSubjectFragment searchSubjectFragment, View view) {
        ImageView imageView;
        EditText editText;
        vp.i mViewBinding = searchSubjectFragment.getMViewBinding();
        if (mViewBinding != null && (editText = mViewBinding.f73744b) != null) {
            editText.setText("");
        }
        vp.i mViewBinding2 = searchSubjectFragment.getMViewBinding();
        if (mViewBinding2 == null || (imageView = mViewBinding2.f73749g) == null) {
            return;
        }
        uf.c.g(imageView);
    }

    public static final void Q0(SearchSubjectFragment searchSubjectFragment, View view) {
        searchSubjectFragment.C0();
    }

    public static final boolean R0(SearchSubjectFragment searchSubjectFragment) {
        return searchSubjectFragment.H0();
    }

    public final void T0(String keyWord) {
        Unit unit;
        EditText editText;
        EditText editText2;
        vp.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (editText2 = mViewBinding.f73744b) != null) {
            editText2.setText(keyWord);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            vp.i mViewBinding2 = getMViewBinding();
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

    public final void U0(String keyword) {
        SearchSuggestFragment searchSuggestFragment;
        if (keyword.length() == 0) {
            K0(this.hotFragment);
        } else if (l.f76264a.e()) {
            if (!TextUtils.isEmpty(keyword) && (searchSuggestFragment = this.suggestFragment) != null) {
                searchSuggestFragment.o0(keyword);
            }
            K0(this.suggestFragment);
        }
    }

    public static final SearchResultViewModel V0(SearchSubjectFragment searchSubjectFragment) {
        FragmentActivity fragmentActivityRequireActivity = searchSubjectFragment.requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        return (SearchResultViewModel) new v0(fragmentActivityRequireActivity).a(SearchResultViewModel.class);
    }

    public final com.transsion.search_pugc.g getSearchReporter() {
        return (com.transsion.search_pugc.g) this.searchReporter.getValue();
    }

    private final void v0() {
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

    private final u w0(androidx.p009lifecycle.u owner, Function0 onBackPressed) {
        b bVar = new b(onBackPressed, this);
        requireActivity().getOnBackPressedDispatcher().i(owner, bVar);
        return bVar;
    }

    private final void x0() {
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
                searchSuggestFragment.q0(new c());
            }
        }
    }

    private final void y0() {
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

    @Override
    public vp.i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        vp.i iVarC = vp.i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    public final void I0(String searchFrom) {
        vp.i mViewBinding;
        EditText editText;
        if (!l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
        }
        if (this.mKeyword.length() == 0 && (mViewBinding = getMViewBinding()) != null && (editText = mViewBinding.f73744b) != null && Intrinsics.c(editText.getHint(), this.hintSearchWord)) {
            this.mKeyword = String.valueOf(this.hintSearchWord);
            this.ignoreEditChanged = true;
            editText.setText(String.valueOf(this.hintSearchWord));
            editText.setSelection(editText.getText().length());
            getSearchReporter().E("hint", this.mKeyword);
            searchFrom = "hint";
        }
        if (this.mKeyword.length() == 0) {
            com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f40484a;
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
            searchResultFragment.u0(this.mKeyword, searchFrom, this.fromUGCVideoId);
        }
        K0(this.searchResultFragment);
    }

    public final void S0() {
        String str;
        EditText editText;
        fq.b.a aVar = fq.b.f60489a;
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
        vp.i mViewBinding = getMViewBinding();
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
        this.fromUGCVideoId = arguments2 != null ? arguments2.getString("form_ugc_video_id") : null;
        Bundle arguments3 = getArguments();
        this.backExitSearch = arguments3 != null ? arguments3.getBoolean("back_exit") : false;
        L0(string.length() > 0);
        if (string.length() > 0) {
            this.mKeyword = string;
            vp.i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f73744b) != null) {
                editText.setText(this.mKeyword);
            }
            vp.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (imageView = mViewBinding2.f73749g) != null) {
                uf.c.k(imageView);
            }
            I0("deeplink");
            getSearchReporter().E("deeplink", this.mKeyword);
        }
        B0().i().j(getViewLifecycleOwner(), new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SearchSubjectFragment.D0(this.f50330a, (Boolean) obj);
            }
        }));
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        SpeechRecognizerView speechRecognizerView;
        Intrinsics.h(view, "view");
        E0();
        setNetListener(new d());
        vp.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (speechRecognizerView = mViewBinding.f73748f) != null) {
            speechRecognizerView.setCallback(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return SearchSubjectFragment.F0(this.f50332a, (String) obj);
                }
            });
        }
        kotlinx.coroutines.k.d(v.a(this), null, null, new AnonymousClass3(null), 3, null);
        v0();
        x0();
        y0();
        K0(this.hotFragment);
    }

    @Override
    public void lazyLoadData() {
    }

    public final void z0(String keyWord, String searchFrom, Function1 callback) {
        EditText editText;
        Intrinsics.h(keyWord, "keyWord");
        Intrinsics.h(callback, "callback");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            KeyboardUtils.d(activity);
        }
        this.mKeyword = keyWord;
        this.ignoreEditChanged = true;
        vp.i mViewBinding = getMViewBinding();
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
        I0(searchFrom);
        SearchManager.f49934f.a().g(this.mKeyword);
        callback.invoke(keyWord);
    }
}
