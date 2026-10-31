package com.snaptube.premium.search;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.snaptube.base.BaseFragment;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.ktx.fragment.FragmentKt;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.app.d;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.fragment.VideoWebViewFragment;
import com.snaptube.premium.manager.SearchHistoryManager;
import com.snaptube.search.MixedSearchFragment;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.em.common.protomodel.Card;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import o.bh5;
import o.bl;
import o.di3;
import o.fc1;
import o.gh5;
import o.je3;
import o.ke3;
import o.mt2;
import o.on3;
import o.or3;
import o.ow4;
import o.pg1;
import o.ph3;
import o.pw4;
import o.qw4;
import o.r6;
import o.sr7;
import o.sz6;
import o.t17;
import o.w29;
import o.xi7;
import o.xv7;
import o.yv7;

@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u008f\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0002\u0090\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\bJ\u000f\u0010\u0013\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0015\u0010\bJ\u000f\u0010\u0016\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0016\u0010\u0014J\u0019\u0010\u0019\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ1\u0010#\u001a\u00020\u000b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u001bH\u0002¢\u0006\u0004\b#\u0010$JG\u0010'\u001a\u00020\u000b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010 \u001a\u0004\u0018\u00010\u001b2\u0006\u0010!\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u001b2\b\u0010%\u001a\u0004\u0018\u00010\u001b2\b\u0010&\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b'\u0010(J\u001b\u0010)\u001a\u0004\u0018\u00010\u001b2\b\u0010 \u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b)\u0010*J\u001b\u0010,\u001a\u0004\u0018\u00010\u001b2\b\u0010+\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b,\u0010*J\u000f\u0010-\u001a\u00020\u000bH\u0002¢\u0006\u0004\b-\u0010\bJ\u000f\u0010.\u001a\u00020\u000bH\u0002¢\u0006\u0004\b.\u0010\bJ\u000f\u0010/\u001a\u00020\u000bH\u0002¢\u0006\u0004\b/\u0010\bJ\u0019\u00100\u001a\u00020\u000b2\b\u0010 \u001a\u0004\u0018\u00010\u001bH\u0003¢\u0006\u0004\b0\u00101J3\u00104\u001a\u00020\u000b2\b\u00102\u001a\u0004\u0018\u00010\u001b2\u0006\u00103\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001b2\b\u0010&\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b4\u00105J;\u00108\u001a\u00020\u000b2\u0006\u00107\u001a\u0002062\b\u00102\u001a\u0004\u0018\u00010\u001b2\u0006\u00103\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001b2\b\u0010&\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b8\u00109J\u000f\u0010:\u001a\u00020\u000bH\u0016¢\u0006\u0004\b:\u0010\bJ\u000f\u0010;\u001a\u00020\u000bH\u0016¢\u0006\u0004\b;\u0010\bJ\u0019\u0010>\u001a\u00020\u000b2\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\b>\u0010?J\u0017\u0010B\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020@H\u0016¢\u0006\u0004\bB\u0010CJ\u0017\u0010F\u001a\u00020\u000b2\u0006\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bF\u0010GJ-\u0010L\u001a\u0004\u0018\u00010\u000e2\u0006\u0010I\u001a\u00020H2\b\u0010K\u001a\u0004\u0018\u00010J2\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020\u000bH\u0016¢\u0006\u0004\bN\u0010\bJ\u000f\u0010O\u001a\u00020\u000bH\u0016¢\u0006\u0004\bO\u0010\bJ\u000f\u0010P\u001a\u00020\u000bH\u0016¢\u0006\u0004\bP\u0010\bJ\u000f\u0010Q\u001a\u00020\u000bH\u0016¢\u0006\u0004\bQ\u0010\bJ\u0019\u0010T\u001a\u00020\u000b2\b\u0010S\u001a\u0004\u0018\u00010RH\u0016¢\u0006\u0004\bT\u0010UJ\u0017\u0010W\u001a\u00020\u000b2\u0006\u0010V\u001a\u00020\tH\u0016¢\u0006\u0004\bW\u0010\rJ\u0011\u0010X\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\bX\u0010YJ\u0017\u0010\\\u001a\u00020\t2\u0006\u0010[\u001a\u00020ZH\u0016¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020\tH\u0016¢\u0006\u0004\b^\u0010\u0014J)\u0010a\u001a\u00020\t2\u0006\u0010E\u001a\u00020D2\b\u0010`\u001a\u0004\u0018\u00010_2\u0006\u0010A\u001a\u00020@H\u0016¢\u0006\u0004\ba\u0010bR\u0018\u0010e\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010g\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010dR\u0016\u0010k\u001a\u00020h8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bi\u0010jR\u0018\u0010o\u001a\u0004\u0018\u00010l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010r\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR\u0018\u0010u\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0018\u0010 \u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010tR\u0018\u0010x\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010tR\u0018\u0010|\u001a\u0004\u0018\u00010y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010{R\u0018\u0010\u007f\u001a\u0004\u0018\u00010R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010~R\u001c\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u0019\u0010\u0086\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0019\u0010\u0088\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0085\u0001R\u0019\u0010\u008a\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u0085\u0001R\u001c\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001¨\u0006\u0091\u0001"}, d2 = {"Lcom/snaptube/premium/search/MixedSearchResultFragment;", "Lcom/snaptube/base/BaseFragment;", "Lo/je3;", "Lo/gh5;", "Lo/bh5;", "Lcom/snaptube/premium/fragment/VideoWebViewFragment$v;", "Lo/ph3;", "<init>", "()V", "", "isFullscreen", "Lo/mg8;", "g3", "(Z)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "c3", "(Landroid/view/View;)V", "f3", "e3", "()Z", "a3", "d3", "", "title", "k3", "(Ljava/lang/CharSequence;)V", "", "X2", "()Ljava/lang/String;", "Landroid/net/Uri;", "uri", "query", "guessUrl", "youtubeSearchType", "h3", "(Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;)V", "jumpType", "contentUrl", "i3", "(Landroid/net/Uri;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "W2", "(Ljava/lang/String;)Ljava/lang/String;", "searchType", "Y2", "S2", "R2", "b3", "j3", "(Ljava/lang/String;)V", "url", "queryStr", "l3", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Lcom/snaptube/search/MixedSearchFragment;", "fragment", "m3", "(Lcom/snaptube/search/MixedSearchFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "c0", "n0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onStop", "onDestroyView", "b1", "e1", "Landroid/view/MenuItem$OnMenuItemClickListener;", "clickListener", "l1", "(Landroid/view/MenuItem$OnMenuItemClickListener;)V", "isHighlight", "F1", "getAnchorView", "()Landroid/view/View;", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "onBackPressed", "Lcom/wandoujia/em/common/protomodel/Card;", "card", "l0", "(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z", "g", "Landroid/view/View;", "rootView", "h", "statusBarView", "Lcom/snaptube/premium/search/ActionBarSearchNewView;", "i", "Lcom/snaptube/premium/search/ActionBarSearchNewView;", "searchView", "Lo/ke3;", "j", "Lo/ke3;", "mixedListDelegate", CampaignEx.JSON_KEY_AD_K, "Lcom/snaptube/search/MixedSearchFragment;", "mixedSearchFragment", "l", "Ljava/lang/String;", "from", "m", "n", "queryFrom", "Lcom/snaptube/premium/search/SearchQuery$FileType;", "o", "Lcom/snaptube/premium/search/SearchQuery$FileType;", "fileType", TtmlNode.TAG_P, "Landroid/view/MenuItem$OnMenuItemClickListener;", "filterClickListener", "Lcom/snaptube/premium/search/FullscreenStubController;", CampaignEx.JSON_KEY_AD_Q, "Lcom/snaptube/premium/search/FullscreenStubController;", "fullscreenStubController", CampaignEx.JSON_KEY_AD_R, "Z", "isFromHotQueries", "s", "canShowSuggestion", "t", "isMenuCreated", "Lo/di3;", "u", "Lo/di3;", "suggestionRepo", "v", "a", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMixedSearchResultFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MixedSearchResultFragment.kt\ncom/snaptube/premium/search/MixedSearchResultFragment\n+ 2 Utils.kt\ncom/snaptube/ktx/UtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,453:1\n25#2,4:454\n1#3:458\n*S KotlinDebug\n*F\n+ 1 MixedSearchResultFragment.kt\ncom/snaptube/premium/search/MixedSearchResultFragment\n*L\n297#1:454,4\n*E\n"})
public final class MixedSearchResultFragment extends BaseFragment implements je3, gh5, bh5, VideoWebViewFragment.v, ph3 {

    public static final Companion INSTANCE = new Companion(null);

    public View rootView;

    public View statusBarView;

    public ActionBarSearchNewView searchView;

    public ke3 mixedListDelegate;

    public MixedSearchFragment mixedSearchFragment;

    public String from;

    public String query;

    public String queryFrom;

    public SearchQuery$FileType fileType;

    public MenuItem.OnMenuItemClickListener filterClickListener;

    public FullscreenStubController fullscreenStubController;

    public boolean isFromHotQueries;

    public boolean canShowSuggestion;

    public boolean isMenuCreated;

    public di3 suggestionRepo;

    public static final class Companion {
        public Companion() {
        }

        public Companion(pg1 pg1Var) {
            this();
        }

        public final String a(String str) {
            SearchConst$SearchFrom searchConst$SearchFrom = SearchConst$SearchFrom.MANUAL;
            if (or3.a(str, searchConst$SearchFrom.getFromKey()) ? true : or3.a(str, SearchConst$SearchFrom.YOUTUBE_MANUAL.getFromKey())) {
                String fromKey = searchConst$SearchFrom.getFromKey();
                or3.e(fromKey, "getFromKey(...)");
                return fromKey;
            }
            if (or3.a(str, SearchConst$SearchFrom.YOUTUBE_HISTORY.getFromKey()) ? true : or3.a(str, SearchConst$SearchFrom.HISTORY.getFromKey())) {
                String fromKey2 = SearchConst$SearchFrom.HISTORY.getFromKey();
                or3.e(fromKey2, "getFromKey(...)");
                return fromKey2;
            }
            if (or3.a(str, SearchConst$SearchFrom.SUGGESTION.getFromKey()) ? true : or3.a(str, SearchConst$SearchFrom.HISTORY_SUGGESTION.getFromKey()) ? true : or3.a(str, SearchConst$SearchFrom.TRASH.getFromKey()) ? true : or3.a(str, SearchConst$SearchFrom.VAULT_TRASH.getFromKey())) {
                if (str != null) {
                    return str;
                }
            } else {
                if (or3.a(str, SearchConst$SearchFrom.YOUTUBE_HOT.getFromKey())) {
                    return "reco_SEARCH_HOT";
                }
                if (or3.a(str, SearchConst$SearchFrom.VIDEO_DETAIL.getFromKey())) {
                    return "video_detail";
                }
                if (or3.a(str, SearchConst$SearchFrom.BGM_DETAIL_PAGE.getFromKey())) {
                    return "video_detail_bgm_title";
                }
                if (str != null) {
                    return str;
                }
            }
            return "";
        }
    }

    public static final class b implements SearchSuggestionTextView.d {
        public b() {
        }

        @Override
        public List a(String str) {
            List listA;
            or3.f(str, "query");
            if (TextUtils.isEmpty(str)) {
                List listEmptyList = Collections.emptyList();
                or3.e(listEmptyList, "emptyList(...)");
                return listEmptyList;
            }
            if (!MixedSearchResultFragment.O2(MixedSearchResultFragment.this)) {
                MixedSearchResultFragment.Q2(MixedSearchResultFragment.this, true);
                List listEmptyList2 = Collections.emptyList();
                or3.e(listEmptyList2, "emptyList(...)");
                return listEmptyList2;
            }
            di3 di3VarP2 = MixedSearchResultFragment.P2(MixedSearchResultFragment.this);
            if (di3VarP2 != null && (listA = di3VarP2.a(str, true)) != null) {
                return listA;
            }
            List listEmptyList3 = Collections.emptyList();
            or3.e(listEmptyList3, "emptyList(...)");
            return listEmptyList3;
        }
    }

    public static void L2(MixedSearchResultFragment mixedSearchResultFragment, String str, SearchConst$SearchFrom searchConst$SearchFrom) {
        V2(mixedSearchResultFragment, str, searchConst$SearchFrom);
    }

    public static void M2(MixedSearchResultFragment mixedSearchResultFragment, View view, boolean z) {
        U2(mixedSearchResultFragment, view, z);
    }

    public static void N2(MixedSearchResultFragment mixedSearchResultFragment, View view) {
        T2(mixedSearchResultFragment, view);
    }

    public static final boolean O2(MixedSearchResultFragment mixedSearchResultFragment) {
        return mixedSearchResultFragment.canShowSuggestion;
    }

    public static final di3 P2(MixedSearchResultFragment mixedSearchResultFragment) {
        return mixedSearchResultFragment.suggestionRepo;
    }

    public static final void Q2(MixedSearchResultFragment mixedSearchResultFragment, boolean z) {
        mixedSearchResultFragment.canShowSuggestion = z;
    }

    private final void S2() {
        r6.k(this);
        ActionBarSearchNewView actionBarSearchNewView = this.searchView;
        ActionBarSearchNewView actionBarSearchNewView2 = null;
        if (actionBarSearchNewView == null) {
            or3.w("searchView");
            actionBarSearchNewView = null;
        }
        actionBarSearchNewView.setupLeftButton(R.drawable.ic_left, new ow4(this), R.color.content_main);
        ActionBarSearchNewView actionBarSearchNewView3 = this.searchView;
        if (actionBarSearchNewView3 == null) {
            or3.w("searchView");
            actionBarSearchNewView3 = null;
        }
        SearchSuggestionTextView searchTextView = actionBarSearchNewView3.getSearchTextView();
        searchTextView.setHint(getString(R.string.search_to_download));
        if (!TextUtils.isEmpty(this.query)) {
            searchTextView.setText(this.query);
        }
        searchTextView.setOnFocusChangeListener(new pw4(this));
        ActionBarSearchNewView actionBarSearchNewView4 = this.searchView;
        if (actionBarSearchNewView4 == null) {
            or3.w("searchView");
            actionBarSearchNewView4 = null;
        }
        actionBarSearchNewView4.setOnSearchListener(new qw4(this));
        ActionBarSearchNewView actionBarSearchNewView5 = this.searchView;
        if (actionBarSearchNewView5 == null) {
            or3.w("searchView");
        } else {
            actionBarSearchNewView2 = actionBarSearchNewView5;
        }
        actionBarSearchNewView2.setRequestSuggestionListener(new b());
    }

    public static final void T2(MixedSearchResultFragment mixedSearchResultFragment, View view) {
        or3.f(mixedSearchResultFragment, "this$0");
        mixedSearchResultFragment.onBackPressed();
    }

    public static final void U2(MixedSearchResultFragment mixedSearchResultFragment, View view, boolean z) {
        or3.f(mixedSearchResultFragment, "this$0");
        if (z) {
            return;
        }
        mixedSearchResultFragment.b3();
    }

    public static final void V2(MixedSearchResultFragment mixedSearchResultFragment, String str, SearchConst$SearchFrom searchConst$SearchFrom) {
        or3.f(mixedSearchResultFragment, "this$0");
        or3.f(str, "key");
        or3.f(searchConst$SearchFrom, "from");
        mixedSearchResultFragment.b3();
        mixedSearchResultFragment.queryFrom = INSTANCE.a(searchConst$SearchFrom.getFromKey());
        boolean zD3 = mixedSearchResultFragment.d3();
        String fromKey = searchConst$SearchFrom.getFromKey();
        or3.e(fromKey, "getFromKey(...)");
        mixedSearchResultFragment.h3(null, str, zD3, fromKey);
        mixedSearchResultFragment.R2();
    }

    public static final String Z2(String str) {
        return INSTANCE.a(str);
    }

    private final void a3() {
        Bundle arguments = getArguments();
        if (arguments == null) {
            arguments = new Bundle();
        }
        this.canShowSuggestion = false;
        this.isFromHotQueries = arguments.getBoolean("key_intent_from_hot_queries", false);
        this.fileType = (SearchQuery$FileType) arguments.getSerializable("phoenix.intent.extra.FILE_TYPE");
        String string = arguments.getString("action");
        String string2 = arguments.getString("phoenix.intent.extra.JUMP_TYPE");
        String string3 = arguments.getString("phoenix.intent.extra.CONTENT_URL");
        if (or3.a("android.intent.action.VIEW", string)) {
            this.from = arguments.getString(IntentUtil.POS);
            String string4 = arguments.getString("phoenix.intent.extra.SEARCH_TYPE");
            String str = string4 == null ? "" : string4;
            this.queryFrom = INSTANCE.a(this.from);
            i3(Uri.parse(arguments.getString("url")), null, d3(), str, string2, string3);
        } else if (or3.a("android.intent.action.SEARCH", string)) {
            this.from = arguments.getString("phoenix.intent.extra.SEARCH_FROM");
            this.query = arguments.getString("phoenix.intent.extra.SEARCH_QUERY");
            String string5 = arguments.getString("search_type");
            String str2 = string5 == null ? "" : string5;
            this.queryFrom = INSTANCE.a(this.from);
            i3(null, this.query, d3(), str2, string2, string3);
        }
        if (TextUtils.isEmpty(this.queryFrom)) {
            return;
        }
        arguments.putString("query_from", this.queryFrom);
    }

    private final void c3(View view) {
        Window window;
        FragmentActivity activity = getActivity();
        if (activity != null && (window = activity.getWindow()) != null) {
            window.setSoftInputMode(3);
        }
        View viewFindViewById = view.findViewById(R.id.search_view);
        or3.e(viewFindViewById, "findViewById(...)");
        this.searchView = (ActionBarSearchNewView) viewFindViewById;
        this.statusBarView = view.findViewById(R.id.status_bar_view);
        Context contextRequireContext = requireContext();
        or3.e(contextRequireContext, "requireContext(...)");
        this.suggestionRepo = new xv7(contextRequireContext);
        S2();
        R2();
        b3();
        f3();
        a3();
        if (e3()) {
            View view2 = this.statusBarView;
            if (view2 == null) {
                return;
            }
            view2.setVisibility(8);
            return;
        }
        View view3 = this.statusBarView;
        if (view3 != null) {
            sr7.p(view3, 0, 1, null);
        }
    }

    private final void g3(boolean isFullscreen) {
        if (this.fullscreenStubController == null) {
            this.fullscreenStubController = new FullscreenStubController((AppCompatActivity) getActivity());
        }
        FullscreenStubController fullscreenStubController = this.fullscreenStubController;
        if (fullscreenStubController != null) {
            fullscreenStubController.a(isFullscreen);
        }
    }

    private final void k3(CharSequence title) {
        this.query = String.valueOf(title);
        FragmentActivity activity = getActivity();
        if (activity == null) {
            return;
        }
        activity.setTitle(title);
    }

    @Override
    public void F1(boolean isHighlight) {
    }

    public final void R2() {
        ActionBarSearchNewView actionBarSearchNewView = this.searchView;
        if (actionBarSearchNewView == null) {
            or3.w("searchView");
            actionBarSearchNewView = null;
        }
        actionBarSearchNewView.s();
    }

    public final String W2(String query) {
        return Uri.parse("tab/search").buildUpon().appendQueryParameter(CampaignEx.JSON_KEY_AD_Q, query).appendQueryParameter(IntentUtil.POS, this.from).build().toString();
    }

    public final String X2() {
        return xi7.d(R.string.p4_search_default_title, getContext());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String Y2(String searchType) {
        if (TextUtils.isEmpty(searchType)) {
            return null;
        }
        if (searchType != null) {
            switch (searchType.hashCode()) {
                case -710149494:
                    if (searchType.equals("search_all")) {
                        return "/search/youtube";
                    }
                    break;
                case 464812209:
                    if (searchType.equals("search_users")) {
                        return "/search/client_channel";
                    }
                    break;
                case 1109403402:
                    if (searchType.equals("search_playlists")) {
                        return "/search/client_playlist";
                    }
                    break;
                case 1292046778:
                    if (searchType.equals("search_movies")) {
                        return "/search/movie";
                    }
                    break;
            }
        }
        return "";
    }

    @Override
    public void b1() {
    }

    public final void b3() {
        ActionBarSearchNewView actionBarSearchNewView = this.searchView;
        if (actionBarSearchNewView == null) {
            or3.w("searchView");
            actionBarSearchNewView = null;
        }
        on3.c(actionBarSearchNewView.getSearchTextView());
    }

    @Override
    public void c0() {
        g3(true);
    }

    public final boolean d3() {
        return Config.X3();
    }

    @Override
    public void e1() {
        ActionBarSearchNewView actionBarSearchNewView = this.searchView;
        if (actionBarSearchNewView == null) {
            or3.w("searchView");
            actionBarSearchNewView = null;
        }
        actionBarSearchNewView.w();
    }

    public final boolean e3() {
        return getActivity() instanceof MixedSearchActivity;
    }

    public final void f3() {
        ProductionEnv.d("MixedSearchResultFragment", "onCreateOptionsMenu");
        this.isMenuCreated = true;
    }

    @Override
    public View getAnchorView() {
        return null;
    }

    public final void h3(Uri uri, String query, boolean guessUrl, String youtubeSearchType) {
        if (sz6.d(getContext(), query)) {
            return;
        }
        i3(uri, query, guessUrl, youtubeSearchType, null, null);
    }

    public final void i3(Uri uri, String query, boolean guessUrl, String youtubeSearchType, String jumpType, String contentUrl) {
        String queryParameter;
        t17.a.g();
        if (uri != null && (queryParameter = uri.getQueryParameter(CampaignEx.JSON_KEY_AD_Q)) != null) {
            query = queryParameter;
        } else if (query == null) {
            query = "";
        }
        if (TextUtils.isEmpty(query)) {
            return;
        }
        if (guessUrl) {
            yv7.a aVar = yv7.a;
            String strE = aVar.e(query);
            if (!TextUtils.isEmpty(strE) && !or3.a(SearchConst$SearchFrom.SUGGESTION.getFromKey(), youtubeSearchType)) {
                if (aVar.b(youtubeSearchType)) {
                    c.a.h(query, youtubeSearchType, jumpType, contentUrl, this.fileType);
                } else {
                    SearchHistoryManager.d().a(strE);
                }
                try {
                    mt2.a(this).R();
                } catch (Throwable unused) {
                }
                Context context = getContext();
                if (or3.a(context != null ? Boolean.valueOf(w29.a.b(context, strE, this.from)) : null, Boolean.TRUE)) {
                    return;
                }
                NavigationManager.P0(getContext(), strE, query, false, this.from);
                return;
            }
        }
        SearchHistoryManager.d().a(query);
        k3(query);
        j3(query);
        or3.e(getChildFragmentManager(), "getChildFragmentManager(...)");
        l3(uri != null ? bl.a(uri) : W2(query), query, youtubeSearchType, contentUrl);
        c.a aVar2 = c.a;
        String str = this.from;
        aVar2.h(query, str == null ? "" : str, jumpType, contentUrl, this.fileType);
    }

    public final void j3(String query) {
        ActionBarSearchNewView actionBarSearchNewView = this.searchView;
        if (actionBarSearchNewView == null) {
            or3.w("searchView");
            actionBarSearchNewView = null;
        }
        actionBarSearchNewView.getSearchTextView().setText((CharSequence) query, false);
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        Uri data;
        or3.f(context, "context");
        or3.f(intent, "intent");
        String action = intent.getAction();
        intent.putExtra("query", this.query);
        intent.putExtra("query_from", this.queryFrom);
        if (or3.a("snaptube.intent.action.DOWNLOAD", action) && (data = intent.getData()) != null) {
            intent.setData(data.buildUpon().appendQueryParameter("query_from", this.queryFrom).build());
        }
        ke3 ke3Var = this.mixedListDelegate;
        if (ke3Var != null) {
            return ke3Var.l0(context, card, intent);
        }
        return false;
    }

    @Override
    public void l1(MenuItem.OnMenuItemClickListener clickListener) {
        this.filterClickListener = clickListener;
    }

    public final void l3(String url, String queryStr, String youtubeSearchType, String contentUrl) {
        FragmentManager childFragmentManager = getChildFragmentManager();
        or3.e(childFragmentManager, "getChildFragmentManager(...)");
        Fragment fragmentFindFragmentByTag = childFragmentManager.findFragmentByTag("search_result_fragment");
        if (fragmentFindFragmentByTag != null && (fragmentFindFragmentByTag instanceof MixedSearchFragment)) {
            m3((MixedSearchFragment) fragmentFindFragmentByTag, url, queryStr, youtubeSearchType, contentUrl);
            childFragmentManager.beginTransaction().show(fragmentFindFragmentByTag).commitAllowingStateLoss();
        } else {
            MixedSearchFragment mixedSearchFragment = new MixedSearchFragment();
            mixedSearchFragment.setArguments(getArguments());
            m3(mixedSearchFragment, url, queryStr, youtubeSearchType, contentUrl);
            childFragmentManager.beginTransaction().replace(R.id.content_frame, mixedSearchFragment, "search_result_fragment").commitAllowingStateLoss();
        }
    }

    public final void m3(MixedSearchFragment fragment, String url, String queryStr, String youtubeSearchType, String contentUrl) {
        fragment.N3(url);
        fragment.g4(queryStr);
        fragment.h4(youtubeSearchType);
        fragment.J3(Y2(youtubeSearchType));
        fragment.f4(contentUrl);
        this.mixedSearchFragment = fragment;
    }

    @Override
    public void n0() {
        g3(false);
    }

    @Override
    public void onAttach(Context context) {
        or3.f(context, "context");
        super.onAttach(context);
        this.mixedListDelegate = ((d) fc1.c(context)).c();
    }

    @Override
    public boolean onBackPressed() {
        if (this.isFromHotQueries) {
            RxBus.d().g(1080, this.query);
        }
        if (e3()) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
            return true;
        }
        if (!FragmentKt.d(this) || getFragmentManager() == null) {
            return true;
        }
        return mt2.a(this).P();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        k3(X2());
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        View view = this.rootView;
        if (view != null) {
            ViewParent parent = view != null ? view.getParent() : null;
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(this.rootView);
            }
        } else {
            View viewInflate = inflater.inflate(R.layout.fragment_mixed_search_result, container, false);
            this.rootView = viewInflate;
            if (viewInflate != null) {
                c3(viewInflate);
            }
        }
        return this.rootView;
    }

    @Override
    public void onDestroyView() {
        R2();
        requireView().clearFocus();
        super.onDestroyView();
    }

    @Override
    public void onNewIntent(Intent intent) {
        or3.f(intent, "intent");
        setArguments(intent.getExtras());
        a3();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener;
        or3.f(item, "item");
        int itemId = item.getItemId();
        if (itemId == 16908332) {
            onBackPressed();
            return true;
        }
        if (itemId == R.id.menu_filter && (onMenuItemClickListener = this.filterClickListener) != null) {
            onMenuItemClickListener.onMenuItemClick(item);
        }
        return super.onOptionsItemSelected(item);
    }

    @Override
    public void onStop() {
        b3();
        super.onStop();
    }
}
