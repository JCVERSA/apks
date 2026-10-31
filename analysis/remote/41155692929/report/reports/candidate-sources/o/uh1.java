package o;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.phoenix.extensions.PagerSlidingTabStrip;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.dataadapter.plugin.utils.YouTubeApiUtils;
import com.snaptube.exoplayer.impl.VideoDetailInfo;
import com.snaptube.mixed_list.fragment.AlbumsFragment;
import com.snaptube.mixed_list.fragment.ChannelsFragment;
import com.snaptube.mixed_list.util.IntentDecoder;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.activity.CommonMixedListActivity;
import com.snaptube.premium.activity.CommonMultiTabActivity;
import com.snaptube.premium.activity.ExploreActivity;
import com.snaptube.premium.activity.MultiSelectActivity;
import com.snaptube.premium.activity.YoutubeVideoWebViewActivity;
import com.snaptube.premium.activity.YtbPlaylistFragment;
import com.snaptube.premium.activity.YtbVideoDetailsFragment;
import com.snaptube.premium.activity.ZendeskPushActivity;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.fragment.GCSWebViewWrapperFragment;
import com.snaptube.premium.fragment.PlayableListFragment;
import com.snaptube.premium.fragment.StaggeredDiscoveryFragment;
import com.snaptube.premium.fragment.YouTubeSearchFragment;
import com.snaptube.premium.fragment.moweb.DefaultWebFragment;
import com.snaptube.premium.fragment.moweb.SearchVideoWebFragment;
import com.snaptube.premium.fragment.moweb.YouTubeHomeWebFragment;
import com.snaptube.premium.fragment.youtube.AdCardInjectFragment;
import com.snaptube.premium.fragment.youtube.YouTubeHomeFragment;
import com.snaptube.premium.fragment.youtube.YtbChannelFeaturedFragment;
import com.snaptube.premium.fragment.youtube.YtbChannelVideosFragment;
import com.snaptube.premium.fragment.youtube.YtbListExpandFragment;
import com.snaptube.premium.home.SearchHomeFragment;
import com.snaptube.premium.hybrid.HybridWebViewActivity;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.mixed_list.view.card.YoutubeHistoryListVideoHeaderCardViewHolder;
import com.snaptube.premium.mixed_list.view.card.YoutubeShortsContentViewHolder;
import com.snaptube.premium.mixed_list.view.card.YtbVideoAnimViewHolder;
import com.snaptube.premium.navigator.LaunchFlag;
import com.snaptube.premium.navigator.STNavigator;
import com.snaptube.premium.onlineaudio.OnlineAudioUtils;
import com.snaptube.premium.push_lib.protocol.PushEntityV1;
import com.snaptube.premium.search.MixedSearchResultFragment;
import com.snaptube.premium.search.SearchConst$SearchType;
import com.snaptube.premium.search.SearchConst$YoutubeContentType;
import com.snaptube.premium.share.SharePopupFragment;
import com.snaptube.premium.subscription.SubscriptionFragment;
import com.snaptube.premium.viewholder.CollectionAdsVideoContainerViewHolder;
import com.snaptube.premium.webview.common.CommonWebActivity;
import com.snaptube.premium.youtube.PlaylistVideoFragment;
import com.snaptube.search.view.SearchChannelFragment;
import com.snaptube.search.view.SearchPlaylistFragment;
import com.snaptube.search.view.SearchSiteFragment;
import com.snaptube.search.view.SearchVideoFragment;
import com.snaptube.search.view.SearchYoutubeAllFragment;
import com.snaptube.search.view.viewholder.SearchPlayListHeroViewHolder;
import com.snaptube.util.ProductionEnv;
import com.vungle.ads.internal.protos.Sdk;
import com.wandoujia.base.config.GlobalConfig;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.em.common.protomodel.Card;
import com.wandoujia.em.common.protomodel.CardAnnotation;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

public class uh1 extends z80 {
    public static final Pattern c = Pattern.compile("/list/creator/[^/]+/snaplists");
    public static final Pattern d = Pattern.compile("/list/creator/[^/]+/videos");
    public final bg5 b;

    public uh1(bg5 bg5Var) {
        this.b = bg5Var;
        try {
            b(Sdk.SDKMetric.SDKMetricType.AD_WILL_CLOSE_VALUE, R.layout.card_speed_dials, um7.class);
            b(2006, R.layout.card_history_searches, r07.class);
            b(2007, R.layout.card_hot_searches, r73.class);
            b(AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS, R.layout.card_alert, pf.class);
            b(6, R.layout.card_ad_unit, k7.class);
            b(24, R.layout.card_ad_unit, k7.class);
            b(12, R.layout.card_ad_unit, k7.class);
            b(28, R.layout.card_ad_unit, k7.class);
            b(30, R.layout.card_empty, pw0.class);
            b(29, R.layout.card_ad_carousel_container, l7.class);
            b(9, R.layout.card_search_video, f37.class);
            b(10, R.layout.card_search_playlist_new, p17.class);
            b(11, R.layout.card_search_channel, fz6.class);
            b(1001, R.layout.card_big_cover_video, sp8.class);
            b(2020, R.layout.card_collection, da2.class);
            b(2022, R.layout.card_collection_linear, ea2.class);
            b(2021, R.layout.card_unlimited_gird_collection, x13.class);
            b(1174, R.layout.card_grid_small_video, kc9.class);
            b(1204, R.layout.card_video_middle, kc9.class);
            b(1178, R.layout.youtube_card_big_cover_video, kc9.class);
            b(1184, R.layout.card_youtube_channels_empty, u32.class);
            b(1185, R.layout.card_youtube_history_list_header, YoutubeHistoryListVideoHeaderCardViewHolder.class);
            b(1186, R.layout.card_youtube_history_list_empty, h42.class);
            b(1187, R.layout.card_subscription_list_author_item, zu7.class);
            b(1188, R.layout.card_subscription_top_author_item, av7.class);
            b(1189, R.layout.card_subscription_author_item, yu7.class);
            b(1190, R.layout.card_subscription_empty_item, g42.class);
            b(1194, R.layout.ytb_card_comment_item, ue9.class);
            b(1196, R.layout.ytb_card_comment_item, ue9.class);
            b(2024, R.layout.card_play_list_header, pw0.class);
            b(2025, R.layout.card_play_list_expand, ka9.class);
            b(2026, R.layout.card_play_list_divider, h42.class);
            b(1199, R.layout.card_subscription_empty_item, xb4.class);
            b(1201, R.layout.card_whatsapp_small_item, k49.class);
            b(1200, R.layout.card_whatsapp_small_item, k49.class);
            b(1230, R.layout.card_whats_app_view_status_item, z59.class);
            b(1514, R.layout.card_horizontal_sliding_collection_ads_video, CollectionAdsVideoContainerViewHolder.class);
            b(1527, R.layout.card_horizontal_sliding_collection_ads_video, CollectionAdsVideoContainerViewHolder.class);
            b(33, R.layout.card_ad_unit, k7.class);
            b(1209, R.layout.card_search_shorts_item, YoutubeShortsContentViewHolder.class);
            b(1208, R.layout.card_shorts_item, YoutubeShortsContentViewHolder.class);
            b(2044, R.layout.card_shorts_horizontal_list, af9.class);
            b(2039, R.layout.card_search_playlist_hero, SearchPlayListHeroViewHolder.class);
            b(2035, R.layout.card_search_playlist_new, p17.class);
            b(1547, R.layout.card_music_mix_item, gg9.class);
            b(1545, R.layout.card_music_single_item, YtbVideoAnimViewHolder.class);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void A(Context context, Intent intent) {
        if (intent == null || intent.getData() == null || intent.getData().getPath() == null) {
            return;
        }
        intent.setClass(context, NavigationManager.z());
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005e  */
    public static void B(Intent intent, Card card) {
        String strH;
        String strQ = ri0.q(card);
        if (!TextUtils.isEmpty(strQ)) {
            intent.putExtra(IntentUtil.DURATION, strQ);
        }
        if (card == null) {
            strH = null;
        } else {
            int iIntValue = card.cardId.intValue();
            if (iIntValue == 1000) {
                intent.putExtra(IntentUtil.COVER_URL, ri0.h(card, 20002));
            } else if (iIntValue == 1003) {
                strH = ri0.h(card, 20024);
            } else if (iIntValue == 1005) {
                strH = ri0.h(card, 20008);
            } else if (iIntValue == 1101) {
                if (TextUtils.isEmpty(intent.getStringExtra(IntentUtil.VIDEO_TITLE))) {
                    intent.putExtra(IntentUtil.VIDEO_TITLE, ri0.h(card, Sdk.SDKError.Reason.AD_SERVER_ERROR_VALUE));
                }
                if (TextUtils.isEmpty(intent.getStringExtra(IntentUtil.COVER_URL))) {
                    intent.putExtra(IntentUtil.COVER_URL, ri0.h(card, 20002));
                }
            } else if (iIntValue == 1159) {
                strH = ri0.h(card, 20024);
            }
            strH = null;
        }
        if (TextUtils.isEmpty(strH)) {
            return;
        }
        intent.putExtra("author", strH);
    }

    public static Intent c(Context context, Intent intent, Card card) {
        Uri data = intent.getData();
        String queryParameter = data.getQueryParameter("url");
        if (!TextUtils.isEmpty(queryParameter)) {
            B(intent, card);
            A(context, intent);
            intent.putExtra("isPlaylist", if9.s(queryParameter));
            return intent;
        }
        ProductionEnv.throwExceptForDebugging(new RuntimeException("invalid argument: " + data));
        return null;
    }

    public static boolean t(String str) {
        Set<String> snaptubeAppNativePathSet = GlobalConfig.getSnaptubeAppNativePathSet();
        if (snaptubeAppNativePathSet == null) {
            return false;
        }
        Iterator<String> it2 = snaptubeAppNativePathSet.iterator();
        while (it2.hasNext()) {
            if (str.startsWith(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public static void y(Uri uri, Bundle bundle) {
        if (uri == null) {
            return;
        }
        try {
            if (bundle.containsKey("from")) {
                return;
            }
            bundle.putString("from", uri.getQueryParameter("from"));
        } catch (Exception unused) {
        }
    }

    public static void z(Intent intent) {
        if (intent == null) {
            return;
        }
        if (intent.getAction() == null) {
            intent.setAction("android.intent.action.VIEW");
        }
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        String host = data.getHost();
        if (TextUtils.isEmpty(host) || !host.endsWith(IntentUtil.INTERNAL_URL_HOST)) {
            return;
        }
        String queryParameter = data.getQueryParameter(IntentUtil.POS);
        String stringExtra = intent.getStringExtra(IntentUtil.POS);
        if (TextUtils.isEmpty(stringExtra) || TextUtils.equals(stringExtra, queryParameter)) {
            return;
        }
        intent.setDataAndType(yj8.n(data, IntentUtil.POS).buildUpon().appendQueryParameter(IntentUtil.POS, stringExtra).build(), intent.getType());
    }

    @Override
    public void C(List list, boolean z, String str) {
        OnlineAudioUtils.b(list, z, str);
    }

    @Override
    public void G0(Activity activity) {
        com.snaptube.premium.minibar.c.a.y(activity, 0.0f, false);
    }

    @Override
    public void Z(Fragment fragment, List list, String str, String str2, String str3, String str4, String str5) {
        String str6;
        ah3 property = new ReportPropertyBuilder().setEventName("Click").setAction("fab_batch_download_btn").setProperty("position_source", str);
        if (list != null) {
            property.setProperty("batch_download_count", Integer.valueOf(list.size()));
        }
        property.reportEvent();
        if (list == null || list.isEmpty()) {
            return;
        }
        String string = null;
        FragmentActivity activity = fragment == null ? null : fragment.getActivity();
        if (az7.U(activity)) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList.add(ri0.G((Card) it2.next()));
            }
            if (fragment == null || fragment.getArguments() == null) {
                str6 = null;
            } else {
                String string2 = fragment.getArguments().getString("from");
                string = fragment.getArguments().getString("jump_type");
                str6 = string2;
            }
            new pn0.a().c(new pn0.c().m(str).h(true).i(string).n(str4).o(str5)).b(new pn0.b().e(str6).b(list, arrayList.size()).a()).f(arrayList, true, activity);
        }
    }

    @Override
    public wz7 a(String str, Intent intent) {
        if (intent == null) {
            return null;
        }
        z(intent);
        Uri data = intent.getData();
        if (data == null) {
            return null;
        }
        if (TextUtils.equals(intent.getAction(), "snaptube.intent.action.OPEN_WEBVIEW")) {
            return x(str, intent, data);
        }
        List<String> pathSegments = data.getPathSegments();
        if (pathSegments != null && pathSegments.size() >= 1) {
            String str2 = pathSegments.get(0);
            if (TextUtils.equals(YouTubeApiUtils.LIST, str2)) {
                return v(str, intent, data, pathSegments);
            }
            if (TextUtils.equals("search", str2)) {
                return w(str, data, pathSegments);
            }
        }
        return null;
    }

    public final String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return Intent.parseUri(str, 1).getStringExtra("playlistTitle");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public final boolean e(Context context, Card card, Uri uri, String str, Intent intent) {
        int intExtra;
        if (uri == null) {
            return false;
        }
        if (!q55.B(GlobalConfig.getAppContext())) {
            b88.l(GlobalConfig.getAppContext(), R.string.no_network_tips2);
            return false;
        }
        String queryParameter = uri.getQueryParameter("url");
        u08.b(str, yj8.j(queryParameter), false);
        if (TextUtils.isEmpty(queryParameter)) {
            ProductionEnv.errorLog("mixed_list", "invalid argument: " + uri);
            return false;
        }
        AppCompatActivity appCompatActivityV = az7.v(context);
        if (appCompatActivityV == null || appCompatActivityV.isFinishing()) {
            NavigationManager.P0(context, queryParameter, null, true, str);
            return false;
        }
        appCompatActivityV.getSupportFragmentManager();
        VideoDetailInfo videoDetailInfoB = card != null ? IntentDecoder.b(card) : null;
        if (!TextUtils.isEmpty(str) && videoDetailInfoB != null) {
            videoDetailInfoB.g = str;
        }
        if (videoDetailInfoB == null) {
            new pn0.a().b(new pn0.b().f(videoDetailInfoB.y).a()).c(new pn0.c().e(queryParameter).m(str)).f(Collections.singletonList(queryParameter), true, appCompatActivityV);
            return true;
        }
        if (intent != null && (intExtra = intent.getIntExtra("card_pos", -1)) != -1) {
            try {
                JSONObject jSONObject = videoDetailInfoB.r == null ? new JSONObject() : new JSONObject(videoDetailInfoB.r);
                jSONObject.put("card_pos", intExtra);
                videoDetailInfoB.r = jSONObject.toString();
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        new pn0.a().b(new pn0.b().e(intent == null ? "" : intent.getStringExtra("from")).f(videoDetailInfoB.y).a()).c(new pn0.c().e(videoDetailInfoB.n).t(videoDetailInfoB.i).k(d(uri.toString())).l(uri.toString()).g(uri.toString()).q("normal").p(videoDetailInfoB.b()).m(str)).d(videoDetailInfoB.r).f(Collections.singletonList(videoDetailInfoB.n), true, appCompatActivityV);
        return true;
    }

    public final boolean f(Context context, Intent intent, Uri uri, String str, String str2) {
        if (!q55.B(GlobalConfig.getAppContext())) {
            b88.l(GlobalConfig.getAppContext(), R.string.no_network_tips2);
            return false;
        }
        u08.b(str2, str, true);
        if (str == null) {
            ProductionEnv.errorLog("mixed_list", "invalid intent: " + intent);
            return false;
        }
        if (!str.endsWith(IntentUtil.INTERNAL_URL_HOST)) {
            return NavigationManager.l1(context, intent);
        }
        if (intent.getPackage() == null || TextUtils.equals(intent.getPackage(), "_package.local")) {
            intent.setPackage(context.getPackageName());
        }
        String path = uri.getPath();
        if (path == null) {
            ProductionEnv.errorLog("mixed_list", "invalid intent: " + intent);
            return false;
        }
        if (path.startsWith("/list/")) {
            intent.setClass(context, MultiSelectActivity.class);
            intent.setFlags(67108864);
            NavigationManager.l1(context, intent);
            return true;
        }
        ProductionEnv.errorLog("mixed_list", "unknown path: " + path);
        return false;
    }

    public final boolean g(Context context, Card card, Uri uri, String str, Intent intent) {
        return e(context, card, uri, str, intent);
    }

    public final boolean h(Context context, Card card, Uri uri, Intent intent) {
        if (!TextUtils.isEmpty(intent.getStringExtra(IntentUtil.POS))) {
            return true;
        }
        String strW = ri0.w(card);
        if (TextUtils.isEmpty(strW)) {
            strW = ri0.A(card);
        }
        intent.putExtra(IntentUtil.POS, strW);
        return true;
    }

    public final boolean i(Context context, Intent intent) {
        if (!q55.B(GlobalConfig.getAppContext())) {
            b88.l(GlobalConfig.getAppContext(), R.string.no_network_tips2);
            return false;
        }
        Uri data = intent.getData();
        if (data != null && data.getPath() != null) {
            intent.putExtra("title", context.getResources().getString(R.string.playlist_detail));
            if (data.getPath().startsWith("/list/")) {
                intent.setClass(context, MultiSelectActivity.class);
                intent.setFlags(67108864);
                NavigationManager.l1(context, intent);
                return true;
            }
        }
        return false;
    }

    public final boolean j(Context context, Intent intent, String str) {
        Uri data;
        if (str == null || (data = intent.getData()) == null) {
            return false;
        }
        if (intent.getPackage() == null || TextUtils.equals(intent.getPackage(), "_package.local")) {
            intent.setPackage(context.getPackageName());
        }
        if (!data.getPath().startsWith("/list/youtube")) {
            return false;
        }
        String queryParameter = data.getQueryParameter("url");
        if (TextUtils.isEmpty(queryParameter)) {
            return false;
        }
        Intent intentR = NavigationManager.r(context, queryParameter, intent.getStringExtra(IntentUtil.POS));
        intentR.putExtras(intent.getExtras());
        Bundle bundle = new Bundle();
        bundle.putParcelable("intent", intentR);
        STNavigator.a.a(context, "/search_video_play", bundle, LaunchFlag.SINGLE_TOP);
        return true;
    }

    public final boolean k(Context context, Card card, Uri uri, Intent intent) {
        Intent uri2;
        String stringExtra;
        String stringExtra2;
        String str;
        boolean z;
        String str2;
        String str3;
        String queryParameter = uri.getQueryParameter("url");
        if (TextUtils.isEmpty(queryParameter)) {
            return false;
        }
        String strD = ri0.D(card);
        String strO = ri0.o(card);
        if (TextUtils.isEmpty(strO)) {
            strO = ri0.z(card);
        }
        String str4 = strO;
        String strQ = ri0.q(card);
        String queryParameter2 = uri.getQueryParameter(IntentUtil.KEY_SNAPTUBE_VIDEO_ID);
        String queryParameter3 = uri.getQueryParameter("feedSourceId");
        String queryParameter4 = uri.getQueryParameter("specialId");
        String queryParameter5 = uri.getQueryParameter("snaplistId");
        try {
            String str5 = card.action;
            uri2 = str5 != null ? Intent.parseUri(str5, 1) : null;
        } catch (URISyntaxException e) {
            ProductionEnv.throwExceptForDebugging(e);
        }
        if (uri2 != null) {
            stringExtra2 = uri2.getStringExtra("creatorId");
            stringExtra = uri2.getStringExtra("report_meta");
        } else {
            stringExtra = null;
            stringExtra2 = null;
        }
        String queryParameter6 = TextUtils.isEmpty(stringExtra2) ? uri.getQueryParameter("creatorId") : stringExtra2;
        String stringExtra3 = intent.getStringExtra(IntentUtil.POS);
        if (TextUtils.isEmpty(stringExtra3)) {
            stringExtra3 = ri0.w(card);
        }
        if (TextUtils.isEmpty(stringExtra3)) {
            stringExtra3 = ri0.A(card);
        }
        String str6 = stringExtra3;
        String stringExtra4 = intent.getStringExtra("dialog_style");
        if (TextUtils.isEmpty(stringExtra4)) {
            stringExtra4 = "menu";
        }
        String str7 = stringExtra4;
        CardAnnotation cardAnnotationC = ri0.c(card, 20044);
        if ((cardAnnotationC == null || cardAnnotationC.intValue.intValue() == 0) ? false : true) {
            CardAnnotation cardAnnotationC2 = ri0.c(card, 20045);
            z = (cardAnnotationC2 == null || cardAnnotationC2.intValue.intValue() == 0) ? false : true;
            CardAnnotation cardAnnotationC3 = ri0.c(card, 20046);
            str = cardAnnotationC3 != null ? cardAnnotationC3.stringValue : null;
        } else {
            str = null;
            z = false;
        }
        la7 la7Var = new la7();
        la7Var.i(str6);
        la7Var.g(queryParameter);
        la7Var.l(strD);
        la7Var.a(str4);
        la7Var.c(strQ);
        la7Var.m(queryParameter2);
        la7Var.d(queryParameter3);
        la7Var.k(queryParameter4);
        la7Var.b(queryParameter6);
        la7Var.h(stringExtra);
        la7Var.j(str7);
        la7Var.e(intent.getStringExtra("query"));
        la7Var.f(intent.getStringExtra("query_from"));
        if (stringExtra != null) {
            str3 = str7;
            if (intent.hasExtra("card_pos") || intent.hasExtra("trigger_pos")) {
                try {
                    JSONObject jSONObject = new JSONObject(stringExtra);
                    str2 = stringExtra;
                    try {
                        jSONObject.putOpt("card_pos", intent.getStringExtra("card_pos"));
                        jSONObject.putOpt("trigger_pos", intent.getStringExtra("trigger_pos"));
                        la7Var.h(jSONObject.toString());
                    } catch (JSONException e2) {
                        e = e2;
                        ProductionEnv.throwExceptForDebugging(e);
                    }
                } catch (JSONException e3) {
                    e = e3;
                    str2 = stringExtra;
                }
            } else {
                str2 = stringExtra;
            }
        } else {
            str2 = stringExtra;
            str3 = str7;
        }
        SharePopupFragment.s3(context, str6, queryParameter, strD, str4, strQ, queryParameter2, queryParameter3, queryParameter4, queryParameter6, queryParameter5, str2, str3, z, str, intent.getIntExtra("adapter_position", -1), intent.getStringExtra("playlist_video_count"), intent.getStringExtra("share_channel"), null);
        return true;
    }

    public final boolean l(Context context, Intent intent, Card card, String str, String str2) {
        if (str == null) {
            ProductionEnv.errorLog("mixed_list", "invalid intent: " + intent);
            return false;
        }
        Uri data = intent.getData();
        if (TextUtils.equals(intent.getPackage(), "_package.local")) {
            intent.setPackage(context.getPackageName());
        }
        if (!str.endsWith(IntentUtil.INTERNAL_URL_HOST)) {
            return o(context, intent, data, str);
        }
        if (intent.getPackage() == null) {
            intent.setPackage(context.getPackageName());
        }
        String path = data.getPath();
        if (TextUtils.isEmpty(path) || path.equals("/")) {
            return NavigationManager.S0(context, intent);
        }
        if (path.equals("/detail") || path.equals("/list/video/sync") || path.equals("/detail/rcmd") || path.equals("/detail/sync_list/one_way")) {
            return n(context, intent, card, str2);
        }
        if (path.equals("/shorts")) {
            return p(context, intent);
        }
        if (path.startsWith("/list/youtube/channel/videos")) {
            u(context, intent);
            return true;
        }
        if (path.startsWith("/watch")) {
            return q(context, intent, card);
        }
        if (path.equals("/play_home") || path.equals("/setting_home") || path.equals("/search_hot_query")) {
            STNavigator.a.a(context, path, intent.getExtras(), LaunchFlag.SINGLE_TASK);
            return true;
        }
        if (path.startsWith("/list/youtube/playlist")) {
            Intent intentR = NavigationManager.r(context, data.getQueryParameter("url"), str2);
            if (r(intent)) {
                return NavigationManager.l1(context, intentR);
            }
            intentR.putExtras(intent.getExtras());
            Bundle bundle = new Bundle();
            bundle.putParcelable("intent", intentR);
            STNavigator.a.a(context, "/search_video_play", bundle, LaunchFlag.SINGLE_TOP);
            return true;
        }
        if (path.startsWith("/list/youtube/history") || path.startsWith("/list/youtube/watchlater") || path.startsWith("/list/youtube/me/playlist")) {
            u(context, intent);
            return true;
        }
        if (path.startsWith("/list/")) {
            intent.setClass(context, CommonMixedListActivity.class);
        } else {
            if (path.startsWith("/tab/search")) {
                STNavigator.a.a(context, "/search_mixed_result", intent.getExtras(), LaunchFlag.SINGLE_TOP);
                return true;
            }
            if (path.startsWith("/tab/creators")) {
                intent.putExtra("title", context.getString(R.string.creators_to_follow));
                if (!r(intent)) {
                    intent.putExtra("data", intent.getData().toString());
                    STNavigator.a.a(context, "/search_ytb_user", intent.getExtras(), LaunchFlag.SINGLE_TOP);
                    return true;
                }
                intent.setClass(context, CommonMultiTabActivity.class);
                intent.setFlags(67108864);
                intent.putExtra("title", context.getString(R.string.creators_to_follow));
            } else if (path.startsWith("/tab/")) {
                if (!r(intent)) {
                    intent.putExtra("data", intent.getData().toString());
                    STNavigator.a.a(context, "/search_ytb_user", intent.getExtras(), LaunchFlag.STANDARD);
                    return true;
                }
                intent.setClass(context, CommonMultiTabActivity.class);
                intent.setFlags(67108864);
            } else if (path.startsWith("/explore/")) {
                intent.setClass(context, ExploreActivity.class);
                intent.setFlags(67108864);
            } else {
                if (!path.startsWith("/web")) {
                    if (!path.equalsIgnoreCase("/zendesk/feedback")) {
                        if (!t(path)) {
                            return NavigationManager.S0(context, intent);
                        }
                        ProductionEnv.errorLog("mixed_list", "unknown path: " + path);
                        return false;
                    }
                    Uri data2 = intent.getData();
                    if (data2 != null && "feedback_push_local".equals(data2.getQueryParameter(IntentUtil.POS))) {
                        vh9.a.d(data2);
                    }
                    intent.setClass(context, ZendeskPushActivity.class);
                    if (!th9.g()) {
                        th9.f(PhoenixApplication.C().F(), PhoenixApplication.C().b().x0(), new kh2(PhoenixApplication.z()));
                    }
                    NavigationManager.l1(context, intent);
                    return true;
                }
                intent.setClass(context, CommonWebActivity.class);
            }
        }
        return NavigationManager.l1(context, intent);
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        if (!m(context, intent, card)) {
            return false;
        }
        lg5.b(this.b, intent.getStringExtra("click_log"));
        return true;
    }

    public final boolean m(Context context, Intent intent, Card card) {
        if (intent == null) {
            return false;
        }
        intent.setExtrasClassLoader(getClass().getClassLoader());
        z(intent);
        b13.a(context, intent);
        ProductionEnv.d("mixed_list", "handleIntentImpl: intent= " + yq3.a(intent));
        String action = intent.getAction();
        if (vy2.p(intent)) {
            vy2.k().r();
            return true;
        }
        if ("snaptube.intent.action.SHOW_UPGRADE_DIALOG".equals(action)) {
            intent.setPackage(context.getPackageName());
            intent.setClass(context, ExploreActivity.class);
            intent.setFlags(335544320);
            NavigationManager.l1(context, intent);
            return true;
        }
        if ("phoenix.intent.action.SUBSCRIBE".equals(action)) {
            ru7.d(context, intent, card);
            return true;
        }
        Uri data = intent.getData();
        if (data == null) {
            ProductionEnv.errorLog("mixed_list", "invalid intent: " + intent);
            return false;
        }
        String host = data.getHost();
        String stringExtra = intent.getStringExtra(IntentUtil.POS);
        if ("android.intent.action.VIEW".equals(action)) {
            return l(context, intent, card, host, stringExtra);
        }
        if ("snaptube.intent.action.SEARCH".equals(action)) {
            return j(context, intent, host);
        }
        if ("snaptube.intent.action.OPEN_WEBVIEW".equals(action)) {
            return NavigationManager.S0(context, intent);
        }
        if ("snaptube.intent.action.DOWNLOAD".equals(action)) {
            return g(context, card, data, stringExtra, intent);
        }
        if ("snaptube.intent.action.SHARE".equals(action)) {
            return k(context, card, data, intent);
        }
        if ("snaptube.intent.action.GET_SHARE_POS".equals(action)) {
            return h(context, card, data, intent);
        }
        if ("snaptube.intent.action.DOWNLOAD_ALL".equals(action)) {
            return f(context, intent, data, host, stringExtra);
        }
        if ("snaptube.intent.action.SEND_RXBUS_EVENT".equals(action)) {
            RxBus.d().g(intent.getIntExtra("rxbus_event", -1), intent);
            return true;
        }
        if ("phoenix.intent.action.EXPLORE_NAVIGATE".equals(action)) {
            NavigationManager.l1(context, intent);
            return true;
        }
        if ("snaptube.intent.action.LISTEN_ALL".equals(action)) {
            return i(context, intent);
        }
        ProductionEnv.d("mixed_list", "handleIntentImpl: unknown intent: " + intent);
        return false;
    }

    public final boolean n(Context context, Intent intent, Card card, String str) {
        Uri data = intent.getData();
        String queryParameter = data.getQueryParameter("url");
        if (TextUtils.isEmpty(queryParameter)) {
            ProductionEnv.throwExceptForDebugging(new RuntimeException("invalid argument: " + data));
            return false;
        }
        if (g86.f() || !s(intent)) {
            B(intent, card);
            intent.setData(Uri.parse(queryParameter));
            return NavigationManager.S0(context, intent);
        }
        intent.setClass(context, ExploreActivity.class);
        intent.setFlags(335544320);
        return NavigationManager.l1(context, intent);
    }

    public final boolean o(Context context, Intent intent, Uri uri, String str) {
        String scheme = uri.getScheme();
        if (TextUtils.equals(scheme, "market") && TextUtils.equals(str, "details")) {
            return NavigationManager.U(context, intent);
        }
        if (TextUtils.equals(scheme, "http") || TextUtils.equals(scheme, "https")) {
            String queryParameter = uri.getQueryParameter("web_type");
            if ("common".equals(queryParameter)) {
                intent.setClass(context, CommonWebActivity.class);
                intent.putExtra("url", intent.getDataString());
            } else {
                if (!"hybrid".equals(queryParameter)) {
                    intent.setClass(context, YoutubeVideoWebViewActivity.class);
                    if (TextUtils.equals("dy5eez9gc3kot.cloudfront.net", str)) {
                        return true;
                    }
                    return NavigationManager.S0(context, intent);
                }
                intent.setClass(context, HybridWebViewActivity.class);
                intent.putExtra("arg_key_should_hide_toolbar", uri.getBooleanQueryParameter("hide_toolbar", false));
                intent.putExtra("arg_key_title", uri.getQueryParameter("title"));
            }
        }
        if (TextUtils.equals("dy5eez9gc3kot.cloudfront.net", str)) {
            return true;
        }
        return NavigationManager.l1(context, intent);
    }

    public final boolean p(Context context, Intent intent) {
        STNavigator.a.a(context, "/shorts_play", intent.getExtras(), LaunchFlag.SINGLE_TOP);
        return true;
    }

    public final boolean q(Context context, Intent intent, Card card) {
        Intent intentC = c(context, intent, card);
        if (intentC == null) {
            return false;
        }
        if (r(intent)) {
            return NavigationManager.l1(context, intentC);
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("intent", intentC);
        STNavigator.a.a(context, "/search_video_play", bundle, LaunchFlag.SINGLE_TOP);
        return true;
    }

    public final boolean r(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.getBooleanExtra("phoenix.intent.extra.IS_ACTIVITY_INTENT", false);
    }

    public final boolean s(Intent intent) {
        return (intent == null || intent.getData() == null || intent.getData().getPath() == null || !"video".equals(intent.getStringExtra(PushEntityV1.Intent.Extra.KEY_PUSH_TYPE)) || !intent.getData().getPath().equals("/detail")) ? false : true;
    }

    public final void u(Context context, Intent intent) {
        STNavigator.a.a(context, "/videos", PlaylistVideoFragment.p6(intent), LaunchFlag.STANDARD);
    }

    public final wz7 v(String str, Intent intent, Uri uri, List list) {
        String strA = bl.a(uri);
        Bundle extras = intent.getExtras() != null ? intent.getExtras() : new Bundle();
        String path = uri != null ? uri.getPath() : "";
        String str2 = path != null ? path : "";
        extras.putString("url", strA);
        y(uri, extras);
        if (list.size() == 2 && "channels".equals(list.get(1))) {
            return new wz7(str, new PagerSlidingTabStrip.g(str), ChannelsFragment.class, extras);
        }
        if (TextUtils.equals("/list/music/artist/albums", str2)) {
            return new wz7(str, new PagerSlidingTabStrip.g(str), AlbumsFragment.class, extras);
        }
        if (TextUtils.equals("/list/richFeedStream", str2)) {
            if (TextUtils.isEmpty(com.snaptube.premium.ads.a.a0())) {
                RxBus.d().i(new RxBus.d(1026));
                com.snaptube.premium.ads.a.p0(strA);
            }
            return new wz7(str, new PagerSlidingTabStrip.g(str), StaggeredDiscoveryFragment.class, extras);
        }
        if (!TextUtils.isEmpty(str2) && c.matcher(str2).find()) {
            return new wz7(str, new PagerSlidingTabStrip.g(str), ChannelsFragment.class, extras);
        }
        if (TextUtils.equals("/list/youtube/home", str2)) {
            RxBus.d().i(new RxBus.d(1062));
            return new wz7(str, new PagerSlidingTabStrip.g(str), Config.J4() ? YouTubeHomeWebFragment.class : YouTubeHomeFragment.class, extras);
        }
        if (TextUtils.equals("/list/youtube/channels", str2)) {
            return new wz7(str, new PagerSlidingTabStrip.g(str), YtbListExpandFragment.class, extras);
        }
        if (TextUtils.equals("/list/youtube/subscription", str2)) {
            return new wz7(str, new PagerSlidingTabStrip.g(str), SubscriptionFragment.class, SubscriptionFragment.F5());
        }
        if (TextUtils.equals("/list/youtube/channel/channels", str2)) {
            return new wz7(str, new PagerSlidingTabStrip.g(str), YtbListExpandFragment.class, extras);
        }
        if (!TextUtils.equals("/list/youtube/channel/videos", str2) && !TextUtils.equals("/list/youtube/channel/playlists", str2)) {
            if (TextUtils.equals("/list/youtube/channel/featured", str2)) {
                return new wz7(str, new PagerSlidingTabStrip.g(str), YtbChannelFeaturedFragment.class, extras);
            }
            if (!TextUtils.equals("/list/youtube/watch/tab_recommend", str2) && !TextUtils.equals("/list/youtube/watch/tab_mix", str2)) {
                if (TextUtils.equals("/list/youtube/playlist", str2) || TextUtils.equals("/list/youtube/mix", str2)) {
                    return new wz7(str, new PagerSlidingTabStrip.g(str), YtbPlaylistFragment.class, extras);
                }
                if (!TextUtils.equals("/list/search", str2) && !str2.startsWith("/list/playable")) {
                    return str2.startsWith("/list/search/home") ? new wz7(str, new PagerSlidingTabStrip.g(str), SearchHomeFragment.class, extras) : new wz7(str, new PagerSlidingTabStrip.g(str), AdCardInjectFragment.class, extras);
                }
                return new wz7(str, new PagerSlidingTabStrip.g(str), PlayableListFragment.class, extras);
            }
            return new wz7(str, new PagerSlidingTabStrip.g(str), YtbVideoDetailsFragment.class, extras);
        }
        return new wz7(str, new PagerSlidingTabStrip.g(str), YtbChannelVideosFragment.class, extras);
    }

    public final wz7 w(String str, Uri uri, List list) {
        if (list.size() < 2) {
            return null;
        }
        String str2 = (String) list.get(1);
        String queryParameter = uri.getQueryParameter(CampaignEx.JSON_KEY_AD_Q);
        String queryParameter2 = uri.getQueryParameter(IntentUtil.POS);
        String strZ2 = MixedSearchResultFragment.Z2(queryParameter2);
        Bundle bundle = new Bundle();
        bundle.putString("phoenix.intent.extra.SEARCH_QUERY", queryParameter);
        bundle.putString("phoenix.intent.extra.SEARCH_FROM", queryParameter2);
        bundle.putString("query_from", strZ2);
        bundle.putString("phoenix.intent.extra.SEARCH_TYPE", SearchConst$SearchType.VIDEO.getTypeKey());
        bundle.putString("phoenix.intent.extra.SEARCH_TAB_NAME", str);
        bundle.putString("url", bl.a(uri));
        bundle.putString("search_site", str2);
        if ("web".equals(str2)) {
            return new wz7(str.toLowerCase(), new PagerSlidingTabStrip.g(str), GCSWebViewWrapperFragment.class, GCSWebViewWrapperFragment.L2(queryParameter));
        }
        if ("youtube".equals(str2)) {
            if (!Config.E4()) {
                bundle.putString("phoenix.intent.extra.CONTENT_TYPE", SearchConst$YoutubeContentType.YOUTUBE.getTypeName());
                return new wz7(str.toLowerCase(), new PagerSlidingTabStrip.g(str), Config.g4() ? SearchVideoWebFragment.class : SearchVideoFragment.class, bundle);
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString(IntentUtil.POS, "ytb_webview_search");
            bundle2.putBoolean("show_toolbar", true);
            bundle2.putString("url", Config.v2() + queryParameter);
            return new wz7(str.toLowerCase(), new PagerSlidingTabStrip.g(str), YouTubeSearchFragment.class, bundle2);
        }
        if ("all".equals(str2)) {
            bundle.putString("phoenix.intent.extra.CONTENT_TYPE", SearchConst$YoutubeContentType.YOUTUBE.getTypeName());
            return new wz7(str.toLowerCase(), new PagerSlidingTabStrip.g(str), SearchYoutubeAllFragment.class, bundle);
        }
        if ("client_playlist".equals(str2)) {
            bundle.putString("phoenix.intent.extra.CONTENT_TYPE", SearchConst$YoutubeContentType.PLAYLIST.getTypeName());
            return new wz7(str.toLowerCase(), new PagerSlidingTabStrip.g(str), SearchPlaylistFragment.class, bundle);
        }
        if ("client_channel".equals(str2)) {
            bundle.putString("phoenix.intent.extra.CONTENT_TYPE", SearchConst$YoutubeContentType.CHANNEL.getTypeName());
            return new wz7(str.toLowerCase(), new PagerSlidingTabStrip.g(str), SearchChannelFragment.class, bundle);
        }
        if (rk7.c.h.b().equals(str2) || rk7.d.h.b().equals(str2) || rk7.b.h.b().equals(str2)) {
            return new wz7(str.toLowerCase(), new PagerSlidingTabStrip.g(str), SearchSiteFragment.class, bundle);
        }
        return null;
    }

    public final wz7 x(String str, Intent intent, Uri uri) {
        Bundle bundle = new Bundle();
        bundle.putString(IntentUtil.POS, intent.getStringExtra(IntentUtil.POS));
        bundle.putBoolean("show_toolbar", intent.getBooleanExtra("show_toolbar", false));
        bundle.putString("url", uri.toString());
        return new wz7(str.toLowerCase(), new PagerSlidingTabStrip.g(str), DefaultWebFragment.class, bundle);
    }
}
