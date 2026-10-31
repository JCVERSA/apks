package com.snaptube.premium.app;

import com.dayuwuxian.clean.ui.base.CleanBaseActivity;
import com.dywx.hybrid.handler.AdHandler;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.snaptube.ad.mediation.repository.AdRepositoryManager;
import com.snaptube.ad.preload.AdResourceService;
import com.snaptube.ads.AdVastWebView;
import com.snaptube.ads.activity.SplashAdActivity;
import com.snaptube.ads.feedback.AdFeedbackDataManager;
import com.snaptube.ads.feedback.newui.AdFeedbackFragment;
import com.snaptube.ads.mraid.MraidPresenter;
import com.snaptube.ads.mraid.MraidPresenter_MembersInjector;
import com.snaptube.ads.mraid.download.IDownloadDelegate;
import com.snaptube.ads.mraid.handler.NativeApiUrlHandler;
import com.snaptube.ads.mraid.handler.NativeApiUrlHandler_MembersInjector;
import com.snaptube.ads.nativead.AdView;
import com.snaptube.ads.selfbuild.AdNotificationManager;
import com.snaptube.ads.selfbuild.request.model.SnaptubeAdModel;
import com.snaptube.ads.view.AdBanner;
import com.snaptube.ads.view.SplashAdView;
import com.snaptube.base.BaseFragment;
import com.snaptube.base.abtest.ABTestExposureTracker;
import com.snaptube.dataadapter.IYouTubeDataAdapter;
import com.snaptube.dataadapter.plugin.login.IYTWebViewSignInPlugin;
import com.snaptube.mixed_list.fragment.AbstractMultiTabFragment;
import com.snaptube.mixed_list.fragment.MixedListFragment;
import com.snaptube.mixed_list.fragment.NetworkMixedListFragment;
import com.snaptube.mixed_list.view.card.PlayableViewHolder;
import com.snaptube.mixed_list.view.card.VideoDetailCardViewHolder;
import com.snaptube.player_guide.IPlayerGuide;
import com.snaptube.plugin.extension.nonlifecycle.ad.AdRewardLoader;
import com.snaptube.plugin.extension.nonlifecycle.ad.ChooseFormatAdRewardViewModel;
import com.snaptube.premium.activity.BaseMixedListActivity;
import com.snaptube.premium.activity.CleanActivity;
import com.snaptube.premium.activity.CleanSettingActivity;
import com.snaptube.premium.activity.ExploreActivity;
import com.snaptube.premium.activity.LandingActivity;
import com.snaptube.premium.activity.SimpleInterstitialAdActivity;
import com.snaptube.premium.activity.YtbPlaylistFragment;
import com.snaptube.premium.activity.YtbVideoDetailsFragment;
import com.snaptube.premium.activity.i;
import com.snaptube.premium.dialog.DownloadAndSharePopupFragment;
import com.snaptube.premium.fragment.HomePageFragment;
import com.snaptube.premium.fragment.VideoWebViewFragment;
import com.snaptube.premium.fragment.youtube.YouTubeLoginFragment;
import com.snaptube.premium.fragment.youtube.YtbWaterFallCommentsFragment;
import com.snaptube.premium.home.SearchHomeFragment;
import com.snaptube.premium.home.viewmodel.SearchHomeViewModel;
import com.snaptube.premium.mixed_list.view.card.YouTubeVideoCardViewHolder;
import com.snaptube.premium.mixed_list.view.card.YoutubeHistoryListVideoHeaderCardViewHolder;
import com.snaptube.premium.playback.detail.VideoPlaybackController;
import com.snaptube.premium.playback.detail.VideoPlaybackFragment;
import com.snaptube.premium.playback.detail.YoutubePlaybackTracker;
import com.snaptube.premium.playback.window.PlayerWindowController;
import com.snaptube.premium.preview.audio.AudioPreviewAdController;
import com.snaptube.premium.reyclerbin.db.AppDatabase;
import com.snaptube.premium.share.view.ShareNetworkMediaDialogLayoutImpl;
import com.snaptube.premium.shorts.ShortsPlayViewModel;
import com.snaptube.premium.sites.SpeedDialFragment;
import com.snaptube.premium.youtube.PlaylistVideoFragment;
import com.snaptube.premium.youtube.YtbVideoAboutFragment;
import com.snaptube.premium.ytb_playlist.WatchHistoryAction;
import com.snaptube.search.view.SearchResultListFragment;
import com.snaptube.search.view.YouTubeVideoListFragment;
import com.snaptube.search.viewmodel.InsSearchViewModel;
import com.snaptube.taskManager.TaskMessageCenter;
import net.pubnative.mediation.config.PubnativeConfigManager;
import net.pubnative.mediation.config.PubnativeConfigManager_MembersInjector;
import net.pubnative.mediation.dragger.PubnativeMediationDelegate;
import net.pubnative.mediation.utils.WaterfallPlugin;
import net.pubnative.mediation.utils.WaterfallPlugin_MembersInjector;
import o.a17;
import o.ac1;
import o.ad7;
import o.ag6;
import o.aj3;
import o.ak0;
import o.al8;
import o.ap8;
import o.aq;
import o.ar;
import o.b7;
import o.b85;
import o.bc1;
import o.bg5;
import o.bk0;
import o.bl8;
import o.bn0;
import o.bp8;
import o.bq;
import o.br;
import o.br6;
import o.c71;
import o.ca3;
import o.cc1;
import o.cc9;
import o.ce;
import o.cf3;
import o.cg6;
import o.cl8;
import o.cq;
import o.cr;
import o.d64;
import o.d7;
import o.da;
import o.da3;
import o.dc1;
import o.de;
import o.dl8;
import o.dq;
import o.dr;
import o.dv8;
import o.e17;
import o.e55;
import o.e61;
import o.e7;
import o.ei2;
import o.ej3;
import o.em;
import o.eq;
import o.er;
import o.f04;
import o.f61;
import o.fb;
import o.fh9;
import o.fi2;
import o.fm;
import o.fp5;
import o.fq;
import o.fr;
import o.g04;
import o.g7;
import o.ga;
import o.gb;
import o.gb3;
import o.gh2;
import o.gj7;
import o.gq;
import o.gr;
import o.h7;
import o.h9;
import o.ha;
import o.hb7;
import o.hg5;
import o.hh2;
import o.hh3;
import o.hj7;
import o.hq;
import o.i00;
import o.i11;
import o.i9;
import o.id2;
import o.ig5;
import o.ig9;
import o.iq;
import o.ix5;
import o.iy5;
import o.j11;
import o.j96;
import o.jd2;
import o.jd6;
import o.jg3;
import o.jg9;
import o.jq;
import o.jw;
import o.jw5;
import o.jx5;
import o.k17;
import o.k4;
import o.kb;
import o.ke3;
import o.kh3;
import o.kq;
import o.kw5;
import o.ky5;
import o.l17;
import o.l7;
import o.le;
import o.lg2;
import o.lk8;
import o.lq;
import o.m17;
import o.m7;
import o.md;
import o.me;
import o.mg2;
import o.mk8;
import o.mq;
import o.my2;
import o.n17;
import o.nc6;
import o.nd;
import o.nd6;
import o.ne;
import o.ne3;
import o.nk8;
import o.nq;
import o.ny2;
import o.o46;
import o.oc;
import o.oe;
import o.og9;
import o.ok8;
import o.oq;
import o.p75;
import o.pc;
import o.pe;
import o.pe9;
import o.ph9;
import o.pk8;
import o.pq;
import o.pu8;
import o.px0;
import o.qa;
import o.qb;
import o.qc3;
import o.qc6;
import o.qe;
import o.qe9;
import o.qj7;
import o.qk8;
import o.qq;
import o.qu8;
import o.qx0;
import o.r35;
import o.r75;
import o.ra;
import o.re;
import o.re9;
import o.rh3;
import o.rj5;
import o.rj7;
import o.rk8;
import o.rq;
import o.rw4;
import o.s60;
import o.s91;
import o.sc;
import o.sd;
import o.se;
import o.sg3;
import o.sj5;
import o.sk8;
import o.sm1;
import o.sn3;
import o.sq;
import o.st8;
import o.sw4;
import o.t10;
import o.t91;
import o.tb;
import o.tb9;
import o.td9;
import o.te;
import o.ti3;
import o.ti7;
import o.tk8;
import o.tq;
import o.u10;
import o.u32;
import o.u40;
import o.uc;
import o.ue;
import o.uk8;
import o.un3;
import o.up;
import o.uq;
import o.v10;
import o.v32;
import o.ve;
import o.vi7;
import o.vk8;
import o.vn7;
import o.vp;
import o.vq;
import o.vq6;
import o.vu5;
import o.w10;
import o.w25;
import o.w5;
import o.wa3;
import o.wb1;
import o.we;
import o.wf6;
import o.wk2;
import o.wk8;
import o.wp;
import o.wq;
import o.x00;
import o.x10;
import o.x25;
import o.x34;
import o.x6;
import o.xb1;
import o.xb4;
import o.xf6;
import o.xk8;
import o.xl1;
import o.xp;
import o.xq;
import o.xq1;
import o.xv0;
import o.y10;
import o.y93;
import o.yb1;
import o.yb4;
import o.yk;
import o.yk8;
import o.yo6;
import o.yp;
import o.yq;
import o.yq6;
import o.yv0;
import o.z10;
import o.z34;
import o.z60;
import o.z96;
import o.zb1;
import o.zd3;
import o.zg0;
import o.zk8;
import o.zn3;
import o.zp;
import o.zq;

public abstract class b {

    public static final class a implements com.snaptube.premium.activity.a.InterfaceC0410a {
        public final c a;
        public final h b;
        public w5 c;

        public a(c cVar, h hVar) {
            this.a = cVar;
            this.b = hVar;
        }

        public a(c cVar, h hVar, wb1 wb1Var) {
            this(cVar, hVar);
        }

        @Override
        public com.snaptube.premium.activity.a.InterfaceC0410a a(w5 w5Var) {
            return b(w5Var);
        }

        public a b(w5 w5Var) {
            this.c = (w5) o46.b(w5Var);
            return this;
        }

        @Override
        public com.snaptube.premium.activity.a build() {
            o46.a(this.c, w5.class);
            return new C0413b(this.a, this.b, this.c, null);
        }
    }

    public static final class C0413b implements com.snaptube.premium.activity.a {
        public final w5 a;
        public final c b;
        public final h c;
        public final C0413b d;

        public C0413b(c cVar, h hVar, w5 w5Var) {
            this.d = this;
            this.b = cVar;
            this.c = hVar;
            this.a = w5Var;
        }

        public C0413b(c cVar, h hVar, w5 w5Var, xb1 xb1Var) {
            this(cVar, hVar, w5Var);
        }

        @Override
        public void A(YouTubeVideoListFragment youTubeVideoListFragment) {
            p0(youTubeVideoListFragment);
        }

        @Override
        public void B(SearchHomeFragment searchHomeFragment) {
            f0(searchHomeFragment);
        }

        @Override
        public void C(p75 p75Var) {
            a0(p75Var);
        }

        @Override
        public void D(sc scVar) {
            N(scVar);
        }

        @Override
        public void E(BaseMixedListActivity baseMixedListActivity) {
            O(baseMixedListActivity);
        }

        @Override
        public void F(WatchHistoryAction watchHistoryAction) {
            m0(watchHistoryAction);
        }

        @Override
        public void G(VideoDetailCardViewHolder videoDetailCardViewHolder) {
            j0(videoDetailCardViewHolder);
        }

        @Override
        public void H(SpeedDialFragment speedDialFragment) {
            i0(speedDialFragment);
        }

        @Override
        public void I(LandingActivity landingActivity) {
            V(landingActivity);
        }

        @Override
        public void J(YtbWaterFallCommentsFragment ytbWaterFallCommentsFragment) {
            u0(ytbWaterFallCommentsFragment);
        }

        @Override
        public void K(wf6 wf6Var) {
            d0(wf6Var);
        }

        public final AbstractMultiTabFragment L(AbstractMultiTabFragment abstractMultiTabFragment) {
            u40.a(abstractMultiTabFragment, (r35) c.b1(this.b).get());
            com.snaptube.mixed_list.fragment.a.c(abstractMultiTabFragment, (yo6) h.B(this.c).get());
            com.snaptube.mixed_list.fragment.a.b(abstractMultiTabFragment, xq1.a(h.E(this.c)));
            com.snaptube.mixed_list.fragment.a.d(abstractMultiTabFragment, (x34) h.C(this.c).get());
            com.snaptube.mixed_list.fragment.a.e(abstractMultiTabFragment, (kh3) c.h1(this.b).get());
            com.snaptube.mixed_list.fragment.a.a(abstractMultiTabFragment, (wa3) c.W0(this.b).get());
            return abstractMultiTabFragment;
        }

        public final l7 M(l7 l7Var) {
            sw4.c(l7Var, (bg5) h.F(this.c).get());
            sw4.e(l7Var, (kh3) c.h1(this.b).get());
            sw4.a(l7Var, (cf3) c.d1(this.b).get());
            sw4.d(l7Var, (ix5) c.e1(this.b).get());
            sw4.b(l7Var, (wk2) h.z(this.c).get());
            m7.a(l7Var, (ne3) c.a1(this.b).get());
            return l7Var;
        }

        public final sc N(sc scVar) {
            sw4.c(scVar, (bg5) h.F(this.c).get());
            sw4.e(scVar, (kh3) c.h1(this.b).get());
            sw4.a(scVar, (cf3) c.d1(this.b).get());
            sw4.d(scVar, (ix5) c.e1(this.b).get());
            sw4.b(scVar, (wk2) h.z(this.c).get());
            uc.a(scVar, (ti3) c.i1(this.b).get());
            return scVar;
        }

        public final BaseMixedListActivity O(BaseMixedListActivity baseMixedListActivity) {
            com.snaptube.premium.activity.c.a(baseMixedListActivity, (ke3) h.v(this.c).get());
            return baseMixedListActivity;
        }

        public final ak0 P(ak0 ak0Var) {
            sw4.c(ak0Var, (bg5) h.F(this.c).get());
            sw4.e(ak0Var, (kh3) c.h1(this.b).get());
            sw4.a(ak0Var, (cf3) c.d1(this.b).get());
            sw4.d(ak0Var, (ix5) c.e1(this.b).get());
            sw4.b(ak0Var, (wk2) h.z(this.c).get());
            bk0.a(ak0Var, (ti3) c.i1(this.b).get());
            return ak0Var;
        }

        public final xv0 Q(xv0 xv0Var) {
            yv0.a(xv0Var, (ti3) c.i1(this.b).get());
            yv0.b(xv0Var, (IYouTubeDataAdapter) h.J(this.c).get());
            return xv0Var;
        }

        public final px0 R(px0 px0Var) {
            qx0.a(px0Var, (ke3) h.v(this.c).get());
            return px0Var;
        }

        public final u32 S(u32 u32Var) {
            sw4.c(u32Var, (bg5) h.F(this.c).get());
            sw4.e(u32Var, (kh3) c.h1(this.b).get());
            sw4.a(u32Var, (cf3) c.d1(this.b).get());
            sw4.d(u32Var, (ix5) c.e1(this.b).get());
            sw4.b(u32Var, (wk2) h.z(this.c).get());
            v32.a(u32Var, (ti3) c.i1(this.b).get());
            return u32Var;
        }

        public final ExploreActivity T(ExploreActivity exploreActivity) {
            com.snaptube.premium.activity.f.a(exploreActivity, xq1.a(c.U0(this.b)));
            com.snaptube.premium.activity.f.e(exploreActivity, xq1.a(c.i1(this.b)));
            com.snaptube.premium.activity.f.c(exploreActivity, (ke3) h.v(this.c).get());
            com.snaptube.premium.activity.f.d(exploreActivity, (hh3) c.g1(this.b).get());
            com.snaptube.premium.activity.f.b(exploreActivity, xq1.a(c.k1(this.b)));
            return exploreActivity;
        }

        public final HomePageFragment U(HomePageFragment homePageFragment) {
            u40.a(homePageFragment, (r35) c.b1(this.b).get());
            return homePageFragment;
        }

        public final LandingActivity V(LandingActivity landingActivity) {
            com.snaptube.premium.activity.g.a(landingActivity, (ke3) h.v(this.c).get());
            return landingActivity;
        }

        public final f04 W(f04 f04Var) {
            sw4.c(f04Var, (bg5) h.F(this.c).get());
            sw4.e(f04Var, (kh3) c.h1(this.b).get());
            sw4.a(f04Var, (cf3) c.d1(this.b).get());
            sw4.d(f04Var, (ix5) c.e1(this.b).get());
            sw4.b(f04Var, (wk2) h.z(this.c).get());
            g04.a(f04Var, (ti3) c.i1(this.b).get());
            return f04Var;
        }

        public final xb4 X(xb4 xb4Var) {
            sw4.c(xb4Var, (bg5) h.F(this.c).get());
            sw4.e(xb4Var, (kh3) c.h1(this.b).get());
            sw4.a(xb4Var, (cf3) c.d1(this.b).get());
            sw4.d(xb4Var, (ix5) c.e1(this.b).get());
            sw4.b(xb4Var, (wk2) h.z(this.c).get());
            yb4.a(xb4Var, (ti3) c.i1(this.b).get());
            return xb4Var;
        }

        public final MixedListFragment Y(MixedListFragment mixedListFragment) {
            u40.a(mixedListFragment, (r35) c.b1(this.b).get());
            com.snaptube.mixed_list.fragment.b.b(mixedListFragment, (wk2) h.z(this.c).get());
            com.snaptube.mixed_list.fragment.b.a(mixedListFragment, (c71) c.X0(this.b).get());
            return mixedListFragment;
        }

        public final NetworkMixedListFragment Z(NetworkMixedListFragment networkMixedListFragment) {
            u40.a(networkMixedListFragment, (r35) c.b1(this.b).get());
            com.snaptube.mixed_list.fragment.b.b(networkMixedListFragment, (wk2) h.z(this.c).get());
            com.snaptube.mixed_list.fragment.b.a(networkMixedListFragment, (c71) c.X0(this.b).get());
            com.snaptube.mixed_list.fragment.c.a(networkMixedListFragment, (z34) h.E(this.c).get());
            com.snaptube.mixed_list.fragment.c.b(networkMixedListFragment, (ke3) h.v(this.c).get());
            com.snaptube.mixed_list.fragment.c.c(networkMixedListFragment, (e55) c.c1(this.b).get());
            com.snaptube.mixed_list.fragment.c.e(networkMixedListFragment, (kh3) c.h1(this.b).get());
            com.snaptube.mixed_list.fragment.c.d(networkMixedListFragment, (hh3) c.g1(this.b).get());
            return networkMixedListFragment;
        }

        @Override
        public ej3 a() {
            return (ej3) c.k1(this.b).get();
        }

        public final p75 a0(p75 p75Var) {
            r75.a(p75Var, (wk2) h.z(this.c).get());
            r75.b(p75Var, (bg5) h.F(this.c).get());
            return p75Var;
        }

        @Override
        public void b(MixedListFragment mixedListFragment) {
            Y(mixedListFragment);
        }

        public final PlayableViewHolder b0(PlayableViewHolder playableViewHolder) {
            sw4.c(playableViewHolder, (bg5) h.F(this.c).get());
            sw4.e(playableViewHolder, (kh3) c.h1(this.b).get());
            sw4.a(playableViewHolder, (cf3) c.d1(this.b).get());
            sw4.d(playableViewHolder, (ix5) c.e1(this.b).get());
            sw4.b(playableViewHolder, (wk2) h.z(this.c).get());
            g04.a(playableViewHolder, (ti3) c.i1(this.b).get());
            vu5.a(playableViewHolder, (j96) h.G(this.c).get());
            return playableViewHolder;
        }

        @Override
        public void c(YtbVideoDetailsFragment ytbVideoDetailsFragment) {
            t0(ytbVideoDetailsFragment);
        }

        public final PlaylistVideoFragment c0(PlaylistVideoFragment playlistVideoFragment) {
            u40.a(playlistVideoFragment, (r35) c.b1(this.b).get());
            com.snaptube.mixed_list.fragment.b.b(playlistVideoFragment, (wk2) h.z(this.c).get());
            com.snaptube.mixed_list.fragment.b.a(playlistVideoFragment, (c71) c.X0(this.b).get());
            com.snaptube.mixed_list.fragment.c.a(playlistVideoFragment, (z34) h.E(this.c).get());
            com.snaptube.mixed_list.fragment.c.b(playlistVideoFragment, (ke3) h.v(this.c).get());
            com.snaptube.mixed_list.fragment.c.c(playlistVideoFragment, (e55) c.c1(this.b).get());
            com.snaptube.mixed_list.fragment.c.e(playlistVideoFragment, (kh3) c.h1(this.b).get());
            com.snaptube.mixed_list.fragment.c.d(playlistVideoFragment, (hh3) c.g1(this.b).get());
            com.snaptube.premium.youtube.a.b(playlistVideoFragment, (kh3) c.h1(this.b).get());
            com.snaptube.premium.youtube.a.a(playlistVideoFragment, (ke3) h.v(this.c).get());
            return playlistVideoFragment;
        }

        @Override
        public void d(f04 f04Var) {
            W(f04Var);
        }

        public final wf6 d0(wf6 wf6Var) {
            xf6.a(wf6Var, (z34) h.E(this.c).get());
            return wf6Var;
        }

        @Override
        public void e(l7 l7Var) {
            M(l7Var);
        }

        public final ag6 e0(ag6 ag6Var) {
            sw4.c(ag6Var, (bg5) h.F(this.c).get());
            sw4.e(ag6Var, (kh3) c.h1(this.b).get());
            sw4.a(ag6Var, (cf3) c.d1(this.b).get());
            sw4.d(ag6Var, (ix5) c.e1(this.b).get());
            sw4.b(ag6Var, (wk2) h.z(this.c).get());
            cg6.a(ag6Var, (wk2) h.z(this.c).get());
            return ag6Var;
        }

        @Override
        public void f(ShareNetworkMediaDialogLayoutImpl shareNetworkMediaDialogLayoutImpl) {
            h0(shareNetworkMediaDialogLayoutImpl);
        }

        public final SearchHomeFragment f0(SearchHomeFragment searchHomeFragment) {
            u40.a(searchHomeFragment, (r35) c.b1(this.b).get());
            a17.a(searchHomeFragment, (ke3) h.v(this.c).get());
            return searchHomeFragment;
        }

        @Override
        public void g(HomePageFragment homePageFragment) {
            U(homePageFragment);
        }

        public final SearchResultListFragment g0(SearchResultListFragment searchResultListFragment) {
            u40.a(searchResultListFragment, (r35) c.b1(this.b).get());
            com.snaptube.mixed_list.fragment.b.b(searchResultListFragment, (wk2) h.z(this.c).get());
            com.snaptube.mixed_list.fragment.b.a(searchResultListFragment, (c71) c.X0(this.b).get());
            com.snaptube.search.view.b.a(searchResultListFragment, (ej3) c.k1(this.b).get());
            return searchResultListFragment;
        }

        @Override
        public void h(YouTubeVideoCardViewHolder youTubeVideoCardViewHolder) {
            o0(youTubeVideoCardViewHolder);
        }

        public final ShareNetworkMediaDialogLayoutImpl h0(ShareNetworkMediaDialogLayoutImpl shareNetworkMediaDialogLayoutImpl) {
            com.snaptube.premium.share.view.a.a(shareNetworkMediaDialogLayoutImpl, (ti3) c.i1(this.b).get());
            com.snaptube.premium.share.view.a.b(shareNetworkMediaDialogLayoutImpl, (IYouTubeDataAdapter) h.J(this.c).get());
            return shareNetworkMediaDialogLayoutImpl;
        }

        @Override
        public void i(YtbPlaylistFragment ytbPlaylistFragment) {
            r0(ytbPlaylistFragment);
        }

        public final SpeedDialFragment i0(SpeedDialFragment speedDialFragment) {
            u40.a(speedDialFragment, (r35) c.b1(this.b).get());
            return speedDialFragment;
        }

        @Override
        public void j(xb4 xb4Var) {
            X(xb4Var);
        }

        public final VideoDetailCardViewHolder j0(VideoDetailCardViewHolder videoDetailCardViewHolder) {
            sw4.c(videoDetailCardViewHolder, (bg5) h.F(this.c).get());
            sw4.e(videoDetailCardViewHolder, (kh3) c.h1(this.b).get());
            sw4.a(videoDetailCardViewHolder, (cf3) c.d1(this.b).get());
            sw4.d(videoDetailCardViewHolder, (ix5) c.e1(this.b).get());
            sw4.b(videoDetailCardViewHolder, (wk2) h.z(this.c).get());
            com.snaptube.mixed_list.view.card.b.a(videoDetailCardViewHolder, (VideoDetailCardViewHolder.j) c.l1(this.b).get());
            return videoDetailCardViewHolder;
        }

        @Override
        public void k(ag6 ag6Var) {
            e0(ag6Var);
        }

        public final VideoPlaybackController k0(VideoPlaybackController videoPlaybackController) {
            com.snaptube.premium.playback.detail.d.b(videoPlaybackController, (ke3) h.v(this.c).get());
            com.snaptube.premium.playback.detail.d.a(videoPlaybackController, (sm1) h.y(this.c).get());
            com.snaptube.premium.playback.detail.d.c(videoPlaybackController, (kh3) c.h1(this.b).get());
            return videoPlaybackController;
        }

        @Override
        public void l(u32 u32Var) {
            S(u32Var);
        }

        public final VideoPlaybackFragment l0(VideoPlaybackFragment videoPlaybackFragment) {
            u40.a(videoPlaybackFragment, (r35) c.b1(this.b).get());
            st8.a(videoPlaybackFragment, (gb) c.U0(this.b).get());
            st8.d(videoPlaybackFragment, (ke3) h.v(this.c).get());
            st8.b(videoPlaybackFragment, (sm1) h.y(this.c).get());
            st8.c(videoPlaybackFragment, (ti3) c.i1(this.b).get());
            st8.e(videoPlaybackFragment, (IYouTubeDataAdapter) h.J(this.c).get());
            return videoPlaybackFragment;
        }

        @Override
        public void m(PlaylistVideoFragment playlistVideoFragment) {
            c0(playlistVideoFragment);
        }

        public final WatchHistoryAction m0(WatchHistoryAction watchHistoryAction) {
            com.snaptube.premium.ytb_playlist.a.a(watchHistoryAction, (IYouTubeDataAdapter) h.J(this.c).get());
            return watchHistoryAction;
        }

        @Override
        public void n(YouTubeLoginFragment youTubeLoginFragment) {
            n0(youTubeLoginFragment);
        }

        public final YouTubeLoginFragment n0(YouTubeLoginFragment youTubeLoginFragment) {
            u40.a(youTubeLoginFragment, (r35) c.b1(this.b).get());
            com.snaptube.premium.fragment.youtube.a.b(youTubeLoginFragment, (ti3) c.i1(this.b).get());
            com.snaptube.premium.fragment.youtube.a.c(youTubeLoginFragment, (IYTWebViewSignInPlugin) h.K(this.c).get());
            com.snaptube.premium.fragment.youtube.a.a(youTubeLoginFragment, (kh3) c.h1(this.b).get());
            return youTubeLoginFragment;
        }

        @Override
        public void o(VideoPlaybackController videoPlaybackController) {
            k0(videoPlaybackController);
        }

        public final YouTubeVideoCardViewHolder o0(YouTubeVideoCardViewHolder youTubeVideoCardViewHolder) {
            sw4.c(youTubeVideoCardViewHolder, (bg5) h.F(this.c).get());
            sw4.e(youTubeVideoCardViewHolder, (kh3) c.h1(this.b).get());
            sw4.a(youTubeVideoCardViewHolder, (cf3) c.d1(this.b).get());
            sw4.d(youTubeVideoCardViewHolder, (ix5) c.e1(this.b).get());
            sw4.b(youTubeVideoCardViewHolder, (wk2) h.z(this.c).get());
            com.snaptube.premium.mixed_list.view.card.a.a(youTubeVideoCardViewHolder, (ti3) c.i1(this.b).get());
            return youTubeVideoCardViewHolder;
        }

        @Override
        public void p(AbstractMultiTabFragment abstractMultiTabFragment) {
            L(abstractMultiTabFragment);
        }

        public final YouTubeVideoListFragment p0(YouTubeVideoListFragment youTubeVideoListFragment) {
            u40.a(youTubeVideoListFragment, (r35) c.b1(this.b).get());
            com.snaptube.mixed_list.fragment.b.b(youTubeVideoListFragment, (wk2) h.z(this.c).get());
            com.snaptube.mixed_list.fragment.b.a(youTubeVideoListFragment, (c71) c.X0(this.b).get());
            com.snaptube.mixed_list.fragment.c.a(youTubeVideoListFragment, (z34) h.E(this.c).get());
            com.snaptube.mixed_list.fragment.c.b(youTubeVideoListFragment, (ke3) h.v(this.c).get());
            com.snaptube.mixed_list.fragment.c.c(youTubeVideoListFragment, (e55) c.c1(this.b).get());
            com.snaptube.mixed_list.fragment.c.e(youTubeVideoListFragment, (kh3) c.h1(this.b).get());
            com.snaptube.mixed_list.fragment.c.d(youTubeVideoListFragment, (hh3) c.g1(this.b).get());
            com.snaptube.search.view.c.a(youTubeVideoListFragment, (ej3) c.k1(this.b).get());
            com.snaptube.search.view.c.c(youTubeVideoListFragment, (kh3) c.h1(this.b).get());
            com.snaptube.search.view.c.b(youTubeVideoListFragment, (ke3) h.v(this.c).get());
            return youTubeVideoListFragment;
        }

        @Override
        public void q(YoutubeHistoryListVideoHeaderCardViewHolder youtubeHistoryListVideoHeaderCardViewHolder) {
            q0(youtubeHistoryListVideoHeaderCardViewHolder);
        }

        public final YoutubeHistoryListVideoHeaderCardViewHolder q0(YoutubeHistoryListVideoHeaderCardViewHolder youtubeHistoryListVideoHeaderCardViewHolder) {
            sw4.c(youtubeHistoryListVideoHeaderCardViewHolder, (bg5) h.F(this.c).get());
            sw4.e(youtubeHistoryListVideoHeaderCardViewHolder, (kh3) c.h1(this.b).get());
            sw4.a(youtubeHistoryListVideoHeaderCardViewHolder, (cf3) c.d1(this.b).get());
            sw4.d(youtubeHistoryListVideoHeaderCardViewHolder, (ix5) c.e1(this.b).get());
            sw4.b(youtubeHistoryListVideoHeaderCardViewHolder, (wk2) h.z(this.c).get());
            com.snaptube.premium.mixed_list.view.card.b.a(youtubeHistoryListVideoHeaderCardViewHolder, (IYouTubeDataAdapter) h.J(this.c).get());
            return youtubeHistoryListVideoHeaderCardViewHolder;
        }

        @Override
        public void r(SearchResultListFragment searchResultListFragment) {
            g0(searchResultListFragment);
        }

        public final YtbPlaylistFragment r0(YtbPlaylistFragment ytbPlaylistFragment) {
            u40.a(ytbPlaylistFragment, (r35) c.b1(this.b).get());
            com.snaptube.mixed_list.fragment.b.b(ytbPlaylistFragment, (wk2) h.z(this.c).get());
            com.snaptube.mixed_list.fragment.b.a(ytbPlaylistFragment, (c71) c.X0(this.b).get());
            com.snaptube.mixed_list.fragment.c.a(ytbPlaylistFragment, (z34) h.E(this.c).get());
            com.snaptube.mixed_list.fragment.c.b(ytbPlaylistFragment, (ke3) h.v(this.c).get());
            com.snaptube.mixed_list.fragment.c.c(ytbPlaylistFragment, (e55) c.c1(this.b).get());
            com.snaptube.mixed_list.fragment.c.e(ytbPlaylistFragment, (kh3) c.h1(this.b).get());
            com.snaptube.mixed_list.fragment.c.d(ytbPlaylistFragment, (hh3) c.g1(this.b).get());
            og9.a(ytbPlaylistFragment, (sm1) h.y(this.c).get());
            og9.b(ytbPlaylistFragment, (ti3) c.i1(this.b).get());
            return ytbPlaylistFragment;
        }

        @Override
        public void s(ak0 ak0Var) {
            P(ak0Var);
        }

        public final YtbVideoAboutFragment s0(YtbVideoAboutFragment ytbVideoAboutFragment) {
            fh9.a(ytbVideoAboutFragment, (z34) h.E(this.c).get());
            return ytbVideoAboutFragment;
        }

        @Override
        public void t(PlayableViewHolder playableViewHolder) {
            b0(playableViewHolder);
        }

        public final YtbVideoDetailsFragment t0(YtbVideoDetailsFragment ytbVideoDetailsFragment) {
            u40.a(ytbVideoDetailsFragment, (r35) c.b1(this.b).get());
            com.snaptube.mixed_list.fragment.b.b(ytbVideoDetailsFragment, (wk2) h.z(this.c).get());
            com.snaptube.mixed_list.fragment.b.a(ytbVideoDetailsFragment, (c71) c.X0(this.b).get());
            com.snaptube.mixed_list.fragment.c.a(ytbVideoDetailsFragment, (z34) h.E(this.c).get());
            com.snaptube.mixed_list.fragment.c.b(ytbVideoDetailsFragment, (ke3) h.v(this.c).get());
            com.snaptube.mixed_list.fragment.c.c(ytbVideoDetailsFragment, (e55) c.c1(this.b).get());
            com.snaptube.mixed_list.fragment.c.e(ytbVideoDetailsFragment, (kh3) c.h1(this.b).get());
            com.snaptube.mixed_list.fragment.c.d(ytbVideoDetailsFragment, (hh3) c.g1(this.b).get());
            i.a(ytbVideoDetailsFragment, (ne3) c.a1(this.b).get());
            i.b(ytbVideoDetailsFragment, (sm1) h.y(this.c).get());
            i.c(ytbVideoDetailsFragment, (ti3) c.i1(this.b).get());
            return ytbVideoDetailsFragment;
        }

        @Override
        public void u(YtbVideoAboutFragment ytbVideoAboutFragment) {
            s0(ytbVideoAboutFragment);
        }

        public final YtbWaterFallCommentsFragment u0(YtbWaterFallCommentsFragment ytbWaterFallCommentsFragment) {
            ph9.b(ytbWaterFallCommentsFragment, (ti3) c.i1(this.b).get());
            ph9.a(ytbWaterFallCommentsFragment, (z34) h.E(this.c).get());
            return ytbWaterFallCommentsFragment;
        }

        @Override
        public void v(NetworkMixedListFragment networkMixedListFragment) {
            Z(networkMixedListFragment);
        }

        @Override
        public void w(px0 px0Var) {
            R(px0Var);
        }

        @Override
        public void x(xv0 xv0Var) {
            Q(xv0Var);
        }

        @Override
        public void y(ExploreActivity exploreActivity) {
            T(exploreActivity);
        }

        @Override
        public void z(VideoPlaybackFragment videoPlaybackFragment) {
            l0(videoPlaybackFragment);
        }
    }

    public static final class c implements com.snaptube.premium.app.a {
        public z96 A;
        public z96 B;
        public z96 C;
        public z96 D;
        public z96 E;
        public z96 F;
        public z96 G;
        public z96 H;
        public z96 I;
        public z96 J;
        public z96 K;
        public z96 L;
        public z96 M;
        public z96 N;
        public z96 O;
        public z96 P;
        public z96 Q;
        public z96 R;
        public z96 S;
        public z96 T;
        public z96 U;
        public z96 V;
        public z96 W;
        public z96 X;
        public z96 Y;
        public z96 Z;
        public final k17 a;
        public z96 a0;
        public final c b;
        public z96 b0;
        public z96 c;
        public z96 c0;
        public z96 d;
        public z96 d0;
        public z96 e;
        public z96 e0;
        public z96 f;
        public z96 f0;
        public z96 g;
        public z96 g0;
        public z96 h;
        public z96 h0;
        public z96 i;
        public z96 j;
        public z96 k;
        public z96 l;
        public z96 m;
        public z96 n;

        public z96 f411o;
        public z96 p;
        public z96 q;
        public z96 r;
        public z96 s;
        public z96 t;
        public z96 u;
        public z96 v;
        public z96 w;
        public z96 x;
        public z96 y;
        public z96 z;

        public c(t10 t10Var, up upVar, em emVar, le leVar, k17 k17Var) {
            this.b = this;
            this.a = k17Var;
            m1(t10Var, upVar, emVar, leVar, k17Var);
        }

        public c(t10 t10Var, up upVar, em emVar, le leVar, k17 k17Var, yb1 yb1Var) {
            this(t10Var, upVar, emVar, leVar, k17Var);
        }

        public static z96 U0(c cVar) {
            return cVar.y;
        }

        public static z96 V0(c cVar) {
            return cVar.n;
        }

        public static z96 W0(c cVar) {
            return cVar.P;
        }

        public static z96 X0(c cVar) {
            return cVar.d;
        }

        public static z96 Y0(c cVar) {
            return cVar.I;
        }

        public static z96 Z0(c cVar) {
            return cVar.c0;
        }

        public static z96 a1(c cVar) {
            return cVar.l;
        }

        public static z96 b1(c cVar) {
            return cVar.R;
        }

        public static z96 c1(c cVar) {
            return cVar.c;
        }

        public static z96 d1(c cVar) {
            return cVar.g0;
        }

        public static z96 e1(c cVar) {
            return cVar.m;
        }

        public static z96 f1(c cVar) {
            return cVar.h0;
        }

        public static z96 g1(c cVar) {
            return cVar.Q;
        }

        public static z96 h1(c cVar) {
            return cVar.e;
        }

        public static z96 i1(c cVar) {
            return cVar.j;
        }

        public static z96 j1(c cVar) {
            return cVar.G;
        }

        public static z96 k1(c cVar) {
            return cVar.f0;
        }

        public static z96 l1(c cVar) {
            return cVar.f411o;
        }

        @Override
        public fp5 A() {
            return (fp5) this.p.get();
        }

        @Override
        public void A0(AdNotificationManager adNotificationManager) {
            u1(adNotificationManager);
        }

        public final AdVastWebView A1(AdVastWebView adVastWebView) {
            com.snaptube.ads.a.a(adVastWebView, (b7) this.O.get());
            return adVastWebView;
        }

        @Override
        public void B(AdRewardLoader adRewardLoader) {
            z1(adRewardLoader);
        }

        @Override
        public ABTestExposureTracker B0() {
            return (ABTestExposureTracker) this.i.get();
        }

        public final AdView B1(AdView adView) {
            com.snaptube.ads.nativead.a.a(adView, (ne3) this.l.get());
            com.snaptube.ads.nativead.a.c(adView, (b7) this.O.get());
            com.snaptube.ads.nativead.a.b(adView, (gb) this.y.get());
            return adView;
        }

        @Override
        public void C(id2 id2Var) {
            R1(id2Var);
        }

        @Override
        public void C0(jw5 jw5Var) {
            c2(jw5Var);
        }

        public final oc C1(oc ocVar) {
            pc.a(ocVar, (rh3) this.f.get());
            return ocVar;
        }

        @Override
        public void D0(com.snaptube.videoPlayer.preload.a aVar) {
            Q1(aVar);
        }

        public final md D1(md mdVar) {
            nd.a(mdVar, (da3) this.E.get());
            return mdVar;
        }

        @Override
        public dv8 E() {
            return (dv8) this.J.get();
        }

        public final com.snaptube.premium.ads.a E1(com.snaptube.premium.ads.a aVar) {
            com.snaptube.premium.ads.b.a(aVar, xq1.a(this.n));
            return aVar;
        }

        @Override
        public void F(SplashAdActivity splashAdActivity) {
            m2(splashAdActivity);
        }

        @Override
        public sd F0() {
            return (sd) this.A.get();
        }

        public final ce F1(ce ceVar) {
            de.a(ceVar, (ca3) this.D.get());
            return ceVar;
        }

        @Override
        public void G(i11 i11Var) {
            M1(i11Var);
        }

        @Override
        public void G0(PhoenixApplication phoenixApplication) {
            b2(phoenixApplication);
        }

        public final AudioPreviewAdController G1(AudioPreviewAdController audioPreviewAdController) {
            jw.b(audioPreviewAdController, (gb) this.y.get());
            jw.a(audioPreviewAdController, (b7) this.O.get());
            return audioPreviewAdController;
        }

        @Override
        public qc3 H() {
            return (qc3) this.x.get();
        }

        @Override
        public gb H0() {
            return (gb) this.y.get();
        }

        public final BaseFragment H1(BaseFragment baseFragment) {
            u40.a(baseFragment, (r35) this.R.get());
            return baseFragment;
        }

        @Override
        public void I(s91 s91Var) {
            O1(s91Var);
        }

        @Override
        public rh3 I0() {
            return (rh3) this.f.get();
        }

        public final s60 I1(s60 s60Var) {
            z60.b(s60Var, (aj3) this.G.get());
            z60.a(s60Var, (bg5) this.n.get());
            return s60Var;
        }

        @Override
        public void J(s60 s60Var) {
            I1(s60Var);
        }

        @Override
        public void J0(g7 g7Var) {
            p1(g7Var);
        }

        public final ChooseFormatAdRewardViewModel J1(ChooseFormatAdRewardViewModel chooseFormatAdRewardViewModel) {
            bn0.a(chooseFormatAdRewardViewModel, (b7) this.O.get());
            return chooseFormatAdRewardViewModel;
        }

        @Override
        public void K(AdBanner adBanner) {
            n1(adBanner);
        }

        @Override
        public void K0(AdHandler adHandler) {
            s1(adHandler);
        }

        public final CleanActivity K1(CleanActivity cleanActivity) {
            com.snaptube.premium.activity.d.c(cleanActivity, (zd3) this.T.get());
            com.snaptube.premium.activity.d.d(cleanActivity, (IPlayerGuide) this.g.get());
            com.snaptube.premium.activity.d.b(cleanActivity, (gb) this.y.get());
            com.snaptube.premium.activity.d.a(cleanActivity, (b7) this.O.get());
            return cleanActivity;
        }

        @Override
        public ne3 L() {
            return (ne3) this.l.get();
        }

        @Override
        public void L0(ti7 ti7Var) {
            i2(ti7Var);
        }

        public final CleanSettingActivity L1(CleanSettingActivity cleanSettingActivity) {
            com.snaptube.premium.activity.e.a(cleanSettingActivity, (zd3) this.T.get());
            return cleanSettingActivity;
        }

        @Override
        public kh3 M0() {
            return (kh3) this.e.get();
        }

        public final i11 M1(i11 i11Var) {
            j11.a(i11Var, (bg5) this.n.get());
            return i11Var;
        }

        @Override
        public void N(SnaptubeAdModel snaptubeAdModel) {
            j2(snaptubeAdModel);
        }

        @Override
        public void N0(vq6 vq6Var) {
            g2(vq6Var);
        }

        public final e61 N1(e61 e61Var) {
            f61.a(e61Var, (wa3) this.P.get());
            f61.b(e61Var, (kh3) this.e.get());
            return e61Var;
        }

        @Override
        public void O(h9 h9Var) {
            t1(h9Var);
        }

        @Override
        public IPlayerGuide O0() {
            return (IPlayerGuide) this.g.get();
        }

        public final s91 O1(s91 s91Var) {
            t91.a(s91Var, (bg5) this.n.get());
            return s91Var;
        }

        @Override
        public void P(e61 e61Var) {
            N1(e61Var);
        }

        @Override
        public void P0(DownloadAndSharePopupFragment downloadAndSharePopupFragment) {
            P1(downloadAndSharePopupFragment);
        }

        public final DownloadAndSharePopupFragment P1(DownloadAndSharePopupFragment downloadAndSharePopupFragment) {
            com.snaptube.premium.dialog.a.a(downloadAndSharePopupFragment, (i00) this.w.get());
            com.snaptube.premium.dialog.a.b(downloadAndSharePopupFragment, (qc3) this.x.get());
            return downloadAndSharePopupFragment;
        }

        @Override
        public xl1 Q() {
            return (xl1) this.a0.get();
        }

        @Override
        public b85 Q0() {
            return (b85) this.u.get();
        }

        public final com.snaptube.videoPlayer.preload.a Q1(com.snaptube.videoPlayer.preload.a aVar) {
            com.snaptube.videoPlayer.preload.b.c(aVar, (com.google.android.exoplayer2.upstream.cache.a) this.L.get());
            com.snaptube.videoPlayer.preload.b.d(aVar, (Cache) this.I.get());
            com.snaptube.videoPlayer.preload.b.b(aVar, (i00) this.w.get());
            com.snaptube.videoPlayer.preload.b.f(aVar, (kh3) this.e.get());
            com.snaptube.videoPlayer.preload.b.e(aVar, (dv8) this.J.get());
            com.snaptube.videoPlayer.preload.b.a(aVar, (qc3) this.x.get());
            return aVar;
        }

        @Override
        public void R(hg5 hg5Var) {
            Z1(hg5Var);
        }

        @Override
        public void R0(ga gaVar) {
            v1(gaVar);
        }

        public final id2 R1(id2 id2Var) {
            jd2.a(id2Var, (kh3) this.e.get());
            jd2.b(id2Var, (rh3) this.f.get());
            return id2Var;
        }

        @Override
        public hh3 S() {
            return (hh3) this.Q.get();
        }

        @Override
        public k4 S0() {
            return (k4) this.s.get();
        }

        public final lg2 S1(lg2 lg2Var) {
            mg2.a(lg2Var, (bg5) this.n.get());
            return lg2Var;
        }

        @Override
        public void T(AudioPreviewAdController audioPreviewAdController) {
            G1(audioPreviewAdController);
        }

        @Override
        public void T0(com.snaptube.premium.selfupgrade.incremental_upgrade.b bVar) {
        }

        public final ei2 T1(ei2 ei2Var) {
            fi2.a(ei2Var, (kh3) this.e.get());
            return ei2Var;
        }

        @Override
        public br6 U() {
            return (br6) this.q.get();
        }

        public final my2 U1(my2 my2Var) {
            ny2.a(my2Var, (sd) this.A.get());
            return my2Var;
        }

        @Override
        public VideoDetailCardViewHolder.j V() {
            return (VideoDetailCardViewHolder.j) this.f411o.get();
        }

        public final InsSearchViewModel V1(InsSearchViewModel insSearchViewModel) {
            zn3.a(insSearchViewModel, r2());
            return insSearchViewModel;
        }

        @Override
        public TaskMessageCenter W() {
            return (TaskMessageCenter) this.k.get();
        }

        public final MraidPresenter W1(MraidPresenter mraidPresenter) {
            MraidPresenter_MembersInjector.injectNativeAdManager(mraidPresenter, (ne3) this.l.get());
            MraidPresenter_MembersInjector.injectAdCache(mraidPresenter, (b7) this.O.get());
            MraidPresenter_MembersInjector.injectAdResourceService(mraidPresenter, (y93) this.U.get());
            MraidPresenter_MembersInjector.injectDownloadDelegate(mraidPresenter, (IDownloadDelegate) this.V.get());
            return mraidPresenter;
        }

        @Override
        public void X(SimpleInterstitialAdActivity simpleInterstitialAdActivity) {
            h2(simpleInterstitialAdActivity);
        }

        public final w25 X1(w25 w25Var) {
            x25.a(w25Var, xq1.a(this.S));
            return w25Var;
        }

        @Override
        public bg5 Y() {
            return (bg5) this.n.get();
        }

        public final NativeApiUrlHandler Y1(NativeApiUrlHandler nativeApiUrlHandler) {
            NativeApiUrlHandler_MembersInjector.injectNetworkProvider(nativeApiUrlHandler, (da) this.B.get());
            NativeApiUrlHandler_MembersInjector.injectAdPreloadSource(nativeApiUrlHandler, (y93) this.U.get());
            return nativeApiUrlHandler;
        }

        public final hg5 Z1(hg5 hg5Var) {
            ig5.a(hg5Var, (bg5) this.n.get());
            return hg5Var;
        }

        @Override
        public ej3 a() {
            return (ej3) this.f0.get();
        }

        @Override
        public void a0(CleanActivity cleanActivity) {
            K1(cleanActivity);
        }

        public final rj5 a2(rj5 rj5Var) {
            sj5.a(rj5Var, xq1.a(this.n));
            return rj5Var;
        }

        @Override
        public void b(com.snaptube.taskManager.task.video.g gVar) {
            o2(gVar);
        }

        @Override
        public AppDatabase b0() {
            return (AppDatabase) this.Z.get();
        }

        public final PhoenixApplication b2(PhoenixApplication phoenixApplication) {
            com.snaptube.premium.app.c.c(phoenixApplication, xq1.a(this.j));
            com.snaptube.premium.app.c.b(phoenixApplication, xq1.a(this.n));
            com.snaptube.premium.app.c.a(phoenixApplication, xq1.a(this.T));
            com.snaptube.premium.app.c.d(phoenixApplication, xq1.a(this.H));
            return phoenixApplication;
        }

        @Override
        public com.snaptube.premium.app.d.a c0() {
            return new g(this.b, null);
        }

        public final jw5 c2(jw5 jw5Var) {
            kw5.b(jw5Var, (kh3) this.e.get());
            kw5.a(jw5Var, (sg3) this.N.get());
            return jw5Var;
        }

        @Override
        public Cache d() {
            return (Cache) this.I.get();
        }

        @Override
        public void d0(CleanSettingActivity cleanSettingActivity) {
            L1(cleanSettingActivity);
        }

        public final ix5 d2(ix5 ix5Var) {
            jx5.f(ix5Var, xq1.a(this.H));
            jx5.a(ix5Var, xq1.a(this.w));
            jx5.b(ix5Var, xq1.a(this.I));
            jx5.e(ix5Var, xq1.a(this.J));
            jx5.d(ix5Var, xq1.a(this.x));
            jx5.c(ix5Var, xq1.a(this.M));
            return ix5Var;
        }

        @Override
        public hb7 e() {
            return (hb7) this.r.get();
        }

        public final nc6 e2(nc6 nc6Var) {
            qc6.b(nc6Var, (b7) this.O.get());
            qc6.e(nc6Var, (sd) this.A.get());
            qc6.d(nc6Var, (y93) this.U.get());
            qc6.c(nc6Var, (gb) this.y.get());
            qc6.a(nc6Var, (rh3) this.f.get());
            return nc6Var;
        }

        @Override
        public void f(md mdVar) {
            D1(mdVar);
        }

        @Override
        public void f0(pu8 pu8Var) {
            p2(pu8Var);
        }

        public final PubnativeConfigManager f2(PubnativeConfigManager pubnativeConfigManager) {
            PubnativeConfigManager_MembersInjector.injectPubnativeMediationDelegate(pubnativeConfigManager, (PubnativeMediationDelegate) this.C.get());
            return pubnativeConfigManager;
        }

        @Override
        public void g(my2 my2Var) {
            U1(my2Var);
        }

        @Override
        public void g0(InsSearchViewModel insSearchViewModel) {
            V1(insSearchViewModel);
        }

        public final vq6 g2(vq6 vq6Var) {
            yq6.a(vq6Var, xq1.a(this.j));
            return vq6Var;
        }

        @Override
        public void h(qa qaVar) {
            w1(qaVar);
        }

        @Override
        public void h0(w25 w25Var) {
            X1(w25Var);
        }

        public final SimpleInterstitialAdActivity h2(SimpleInterstitialAdActivity simpleInterstitialAdActivity) {
            com.snaptube.premium.activity.h.a(simpleInterstitialAdActivity, (hh3) this.Q.get());
            return simpleInterstitialAdActivity;
        }

        @Override
        public yk i() {
            return (yk) this.t.get();
        }

        @Override
        public void i0(com.snaptube.premium.ads.a aVar) {
            E1(aVar);
        }

        public final ti7 i2(ti7 ti7Var) {
            vi7.b(ti7Var, (ix5) this.m.get());
            vi7.a(ti7Var, (i00) this.w.get());
            return ti7Var;
        }

        @Override
        public void inject(MraidPresenter mraidPresenter) {
            W1(mraidPresenter);
        }

        @Override
        public void inject(NativeApiUrlHandler nativeApiUrlHandler) {
            Y1(nativeApiUrlHandler);
        }

        @Override
        public void inject(WaterfallPlugin waterfallPlugin) {
            q2(waterfallPlugin);
        }

        @Override
        public void injector(PubnativeConfigManager pubnativeConfigManager) {
            f2(pubnativeConfigManager);
        }

        @Override
        public zd3 j() {
            return (zd3) this.T.get();
        }

        @Override
        public d64 j0() {
            return (d64) this.c0.get();
        }

        public final SnaptubeAdModel j2(SnaptubeAdModel snaptubeAdModel) {
            com.snaptube.ads.selfbuild.request.model.a.a(snaptubeAdModel, (sd) this.A.get());
            return snaptubeAdModel;
        }

        @Override
        public void k(nc6 nc6Var) {
            e2(nc6Var);
        }

        public final gj7 k2(gj7 gj7Var) {
            hj7.b(gj7Var, (rh3) this.f.get());
            hj7.a(gj7Var, (sd) this.A.get());
            hj7.c(gj7Var, (da) this.B.get());
            return gj7Var;
        }

        @Override
        public void l0(ix5 ix5Var) {
            d2(ix5Var);
        }

        public final qj7 l2(qj7 qj7Var) {
            rj7.a(qj7Var, (gb3) this.h.get());
            return qj7Var;
        }

        @Override
        public void m(ce ceVar) {
            F1(ceVar);
        }

        @Override
        public void m0(rj5 rj5Var) {
            a2(rj5Var);
        }

        public final void m1(t10 t10Var, up upVar, em emVar, le leVar, k17 k17Var) {
            this.c = xq1.b(y10.a(t10Var));
            this.d = xq1.b(x10.b(t10Var));
            this.e = xq1.b(ar.a(upVar));
            this.f = xq1.b(cr.a(upVar));
            this.g = xq1.b(tq.a(upVar));
            this.h = xq1.b(w10.b(t10Var));
            this.i = xq1.b(vp.b(upVar));
            this.j = xq1.b(fm.a(emVar));
            this.k = xq1.b(dr.a(upVar));
            this.l = xq1.b(ue.a(leVar));
            this.m = xq1.b(uq.a(upVar));
            z96 z96VarB = xq1.b(u10.b(t10Var, this.c));
            this.n = z96VarB;
            this.f411o = xq1.b(gr.a(upVar, z96VarB));
            this.p = xq1.b(qq.a(upVar, this.n, this.c));
            this.q = xq1.b(yq.a(upVar, this.n));
            this.r = xq1.b(br.a(upVar, this.n));
            this.s = xq1.b(wp.b(upVar, this.n));
            this.t = xq1.b(zp.b(upVar, this.n));
            this.u = xq1.b(oq.a(upVar));
            this.v = xq1.b(gq.b(upVar, this.n));
            this.w = xq1.b(cq.b(upVar));
            this.x = xq1.b(jq.a(upVar));
            this.y = xq1.b(pe.b(leVar));
            this.z = xq1.b(qe.b(leVar));
            this.A = xq1.b(re.b(leVar));
            this.B = xq1.b(oe.b(leVar));
            this.C = xq1.b(we.a(leVar));
            this.D = xq1.b(yp.b(upVar));
            this.E = xq1.b(xp.b(upVar));
            this.F = xq1.b(ne.b(leVar, this.l));
            this.G = xq1.b(er.a(upVar));
            this.H = xq1.b(vq.a(upVar));
            this.I = xq1.b(iq.a(upVar));
            this.J = xq1.b(fr.a(upVar));
            z96 z96VarB2 = xq1.b(z10.a(t10Var, this.c));
            this.K = z96VarB2;
            z96 z96VarB3 = xq1.b(fq.b(upVar, z96VarB2, this.I, this.w));
            this.L = z96VarB3;
            this.M = sq.a(upVar, z96VarB3, this.w);
            this.N = xq1.b(xq.a(upVar));
            this.O = xq1.b(me.b(leVar));
            this.P = xq1.b(eq.b(upVar));
            this.Q = xq1.b(zq.a(upVar));
            this.R = xq1.b(mq.a(upVar));
            this.S = xq1.b(ve.a(leVar, this.n));
            this.T = xq1.b(lq.a(upVar));
            this.U = xq1.b(se.a(leVar));
            this.V = xq1.b(te.a(leVar));
            this.W = xq1.b(rq.a(upVar));
            this.X = xq1.b(nq.a(upVar));
            this.Y = xq1.b(l17.a(k17Var, this.n));
            z96 z96VarB4 = xq1.b(aq.b(upVar));
            this.Z = z96VarB4;
            this.a0 = xq1.b(hq.a(upVar, z96VarB4));
            this.b0 = xq1.b(v10.b(t10Var, this.c));
            this.c0 = xq1.b(kq.a(upVar));
            z96 z96VarB5 = xq1.b(bq.b(upVar));
            this.d0 = z96VarB5;
            this.e0 = xq1.b(dq.b(upVar, z96VarB5));
            this.f0 = xq1.b(n17.a(k17Var, this.n));
            this.g0 = xq1.b(pq.a(upVar));
            this.h0 = xq1.b(wq.a(upVar));
        }

        public final SplashAdActivity m2(SplashAdActivity splashAdActivity) {
            com.snaptube.ads.activity.a.c(splashAdActivity, (hh3) this.Q.get());
            com.snaptube.ads.activity.a.a(splashAdActivity, (b7) this.O.get());
            com.snaptube.ads.activity.a.b(splashAdActivity, (gb) this.y.get());
            return splashAdActivity;
        }

        @Override
        public void n(CleanBaseActivity cleanBaseActivity) {
        }

        @Override
        public void n0(gj7 gj7Var) {
            k2(gj7Var);
        }

        public final AdBanner n1(AdBanner adBanner) {
            x6.a(adBanner, (y93) this.U.get());
            return adBanner;
        }

        public final SplashAdView n2(SplashAdView splashAdView) {
            vn7.d(splashAdView, (ne3) this.l.get());
            vn7.a(splashAdView, (b7) this.O.get());
            vn7.b(splashAdView, (gb) this.y.get());
            vn7.c(splashAdView, (sd) this.A.get());
            return splashAdView;
        }

        @Override
        public void o(ei2 ei2Var) {
            T1(ei2Var);
        }

        @Override
        public void o0(AdFeedbackFragment adFeedbackFragment) {
            r1(adFeedbackFragment);
        }

        public final d7 o1(d7 d7Var) {
            e7.b(d7Var, (Cache) this.I.get());
            e7.a(d7Var, (com.google.android.exoplayer2.upstream.cache.a) this.L.get());
            return d7Var;
        }

        public final com.snaptube.taskManager.task.video.g o2(com.snaptube.taskManager.task.video.g gVar) {
            com.snaptube.taskManager.task.video.h.a(gVar, (dv8) this.J.get());
            return gVar;
        }

        @Override
        public void p(qj7 qj7Var) {
            l2(qj7Var);
        }

        @Override
        public x00 p0() {
            return (x00) this.e0.get();
        }

        public final g7 p1(g7 g7Var) {
            h7.a(g7Var, (gb) this.y.get());
            return g7Var;
        }

        public final pu8 p2(pu8 pu8Var) {
            qu8.a(pu8Var, (rh3) this.f.get());
            return pu8Var;
        }

        @Override
        public ti3 q() {
            return (ti3) this.j.get();
        }

        @Override
        public zg0 q0() {
            return (zg0) this.v.get();
        }

        public final AdFeedbackDataManager q1(AdFeedbackDataManager adFeedbackDataManager) {
            com.snaptube.ads.feedback.a.b(adFeedbackDataManager, (sd) this.A.get());
            com.snaptube.ads.feedback.a.a(adFeedbackDataManager, (da) this.B.get());
            return adFeedbackDataManager;
        }

        public final WaterfallPlugin q2(WaterfallPlugin waterfallPlugin) {
            WaterfallPlugin_MembersInjector.injectPlacementHandler(waterfallPlugin, (WaterfallPlugin.PlacementHandler) this.W.get());
            WaterfallPlugin_MembersInjector.injectNetworkHandler(waterfallPlugin, (WaterfallPlugin.NetworkHandler) this.X.get());
            return waterfallPlugin;
        }

        @Override
        public void r(AdRepositoryManager adRepositoryManager) {
            x1(adRepositoryManager);
        }

        @Override
        public void r0(oc ocVar) {
            C1(ocVar);
        }

        public final AdFeedbackFragment r1(AdFeedbackFragment adFeedbackFragment) {
            u40.a(adFeedbackFragment, (r35) this.R.get());
            return adFeedbackFragment;
        }

        public final un3 r2() {
            return m17.a(this.a, (sn3) this.Y.get());
        }

        @Override
        public i00 s() {
            return (i00) this.w.get();
        }

        @Override
        public void s0(BaseFragment baseFragment) {
            H1(baseFragment);
        }

        public final AdHandler s1(AdHandler adHandler) {
            com.dywx.hybrid.handler.a.b(adHandler, (gb) this.y.get());
            com.dywx.hybrid.handler.a.c(adHandler, (ne3) this.l.get());
            com.dywx.hybrid.handler.a.a(adHandler, (b7) this.O.get());
            return adHandler;
        }

        @Override
        public void t(AdResourceService adResourceService) {
            y1(adResourceService);
        }

        @Override
        public void t0(AdFeedbackDataManager adFeedbackDataManager) {
            q1(adFeedbackDataManager);
        }

        public final h9 t1(h9 h9Var) {
            i9.a(h9Var, (ca3) this.D.get());
            return h9Var;
        }

        @Override
        public void u(d7 d7Var) {
            o1(d7Var);
        }

        @Override
        public void u0(lg2 lg2Var) {
            S1(lg2Var);
        }

        public final AdNotificationManager u1(AdNotificationManager adNotificationManager) {
            com.snaptube.ads.selfbuild.a.a(adNotificationManager, (kh3) this.e.get());
            return adNotificationManager;
        }

        @Override
        public void v(ChooseFormatAdRewardViewModel chooseFormatAdRewardViewModel) {
            J1(chooseFormatAdRewardViewModel);
        }

        @Override
        public void v0(AdVastWebView adVastWebView) {
            A1(adVastWebView);
        }

        public final ga v1(ga gaVar) {
            ha.a(gaVar, (b7) this.O.get());
            return gaVar;
        }

        @Override
        public void w0(SplashAdView splashAdView) {
            n2(splashAdView);
        }

        public final qa w1(qa qaVar) {
            ra.b(qaVar, (com.google.android.exoplayer2.upstream.cache.a) this.L.get());
            ra.a(qaVar, (b7) this.O.get());
            return qaVar;
        }

        public final AdRepositoryManager x1(AdRepositoryManager adRepositoryManager) {
            fb.a(adRepositoryManager, (kb) this.z.get());
            return adRepositoryManager;
        }

        @Override
        public void y(AdView adView) {
            B1(adView);
        }

        @Override
        public com.google.android.exoplayer2.upstream.cache.a y0() {
            return (com.google.android.exoplayer2.upstream.cache.a) this.L.get();
        }

        public final AdResourceService y1(AdResourceService adResourceService) {
            qb.a(adResourceService, (da) this.B.get());
            return adResourceService;
        }

        @Override
        public gb3 z() {
            return (gb3) this.h.get();
        }

        public final AdRewardLoader z1(AdRewardLoader adRewardLoader) {
            tb.b(adRewardLoader, (ne3) this.l.get());
            tb.a(adRewardLoader, (b7) this.O.get());
            tb.c(adRewardLoader, (gb) this.y.get());
            return adRewardLoader;
        }
    }

    public static final class d {
        public t10 a;
        public up b;
        public em c;
        public le d;
        public k17 e;

        public d() {
        }

        public d(zb1 zb1Var) {
            this();
        }

        public d a(le leVar) {
            this.d = (le) o46.b(leVar);
            return this;
        }

        public d b(em emVar) {
            this.c = (em) o46.b(emVar);
            return this;
        }

        public d c(up upVar) {
            this.b = (up) o46.b(upVar);
            return this;
        }

        public d d(t10 t10Var) {
            this.a = (t10) o46.b(t10Var);
            return this;
        }

        public com.snaptube.premium.app.a e() {
            o46.a(this.a, t10.class);
            o46.a(this.b, up.class);
            o46.a(this.c, em.class);
            o46.a(this.d, le.class);
            o46.a(this.e, k17.class);
            return new c(this.a, this.b, this.c, this.d, this.e, null);
        }

        public d f(k17 k17Var) {
            this.e = (k17) o46.b(k17Var);
            return this;
        }
    }

    public static final class e implements gh2.a {
        public final c a;
        public final h b;

        public e(c cVar, h hVar) {
            this.a = cVar;
            this.b = hVar;
        }

        public e(c cVar, h hVar, ac1 ac1Var) {
            this(cVar, hVar);
        }

        @Override
        public gh2.a a(hh2 hh2Var) {
            return b(hh2Var);
        }

        public e b(hh2 hh2Var) {
            o46.b(hh2Var);
            return this;
        }

        @Override
        public gh2 build() {
            return new f(this.a, this.b, null);
        }
    }

    public static final class f implements gh2 {
        public final c a;
        public final h b;
        public final f c;

        public f(c cVar, h hVar) {
            this.c = this;
            this.a = cVar;
            this.b = hVar;
        }

        public f(c cVar, h hVar, bc1 bc1Var) {
            this(cVar, hVar);
        }

        private px0 d(px0 px0Var) {
            qx0.a(px0Var, (ke3) h.v(this.b).get());
            return px0Var;
        }

        private MixedListFragment e(MixedListFragment mixedListFragment) {
            u40.a(mixedListFragment, (r35) c.b1(this.a).get());
            com.snaptube.mixed_list.fragment.b.b(mixedListFragment, (wk2) h.z(this.b).get());
            com.snaptube.mixed_list.fragment.b.a(mixedListFragment, (c71) c.X0(this.a).get());
            return mixedListFragment;
        }

        private NetworkMixedListFragment f(NetworkMixedListFragment networkMixedListFragment) {
            u40.a(networkMixedListFragment, (r35) c.b1(this.a).get());
            com.snaptube.mixed_list.fragment.b.b(networkMixedListFragment, (wk2) h.z(this.b).get());
            com.snaptube.mixed_list.fragment.b.a(networkMixedListFragment, (c71) c.X0(this.a).get());
            com.snaptube.mixed_list.fragment.c.a(networkMixedListFragment, (z34) h.E(this.b).get());
            com.snaptube.mixed_list.fragment.c.b(networkMixedListFragment, (ke3) h.v(this.b).get());
            com.snaptube.mixed_list.fragment.c.c(networkMixedListFragment, (e55) c.c1(this.a).get());
            com.snaptube.mixed_list.fragment.c.e(networkMixedListFragment, (kh3) c.h1(this.a).get());
            com.snaptube.mixed_list.fragment.c.d(networkMixedListFragment, (hh3) c.g1(this.a).get());
            return networkMixedListFragment;
        }

        @Override
        public void b(MixedListFragment mixedListFragment) {
            e(mixedListFragment);
        }

        @Override
        public void v(NetworkMixedListFragment networkMixedListFragment) {
            f(networkMixedListFragment);
        }

        @Override
        public void w(px0 px0Var) {
            d(px0Var);
        }
    }

    public static final class g implements com.snaptube.premium.app.d.a {
        public final c a;
        public lk8 b;
        public bl8 c;

        public g(c cVar) {
            this.a = cVar;
        }

        public g(c cVar, cc1 cc1Var) {
            this(cVar);
        }

        @Override
        public com.snaptube.premium.app.d.a a(bl8 bl8Var) {
            return d(bl8Var);
        }

        @Override
        public com.snaptube.premium.app.d.a b(lk8 lk8Var) {
            return c(lk8Var);
        }

        @Override
        public com.snaptube.premium.app.d build() {
            o46.a(this.b, lk8.class);
            o46.a(this.c, bl8.class);
            return new h(this.a, this.b, this.c, null);
        }

        public g c(lk8 lk8Var) {
            this.b = (lk8) o46.b(lk8Var);
            return this;
        }

        public g d(bl8 bl8Var) {
            this.c = (bl8) o46.b(bl8Var);
            return this;
        }
    }

    public static final class h implements com.snaptube.premium.app.d {
        public final c a;
        public final h b;
        public z96 c;
        public z96 d;
        public z96 e;
        public z96 f;
        public z96 g;
        public z96 h;
        public z96 i;
        public z96 j;
        public z96 k;
        public z96 l;
        public z96 m;
        public z96 n;

        public z96 f412o;
        public z96 p;
        public z96 q;
        public z96 r;
        public z96 s;

        public h(c cVar, lk8 lk8Var, bl8 bl8Var) {
            this.b = this;
            this.a = cVar;
            N(lk8Var, bl8Var);
        }

        public h(c cVar, lk8 lk8Var, bl8 bl8Var, dc1 dc1Var) {
            this(cVar, lk8Var, bl8Var);
        }

        public static z96 B(h hVar) {
            return hVar.s;
        }

        public static z96 C(h hVar) {
            return hVar.i;
        }

        public static z96 E(h hVar) {
            return hVar.l;
        }

        public static z96 F(h hVar) {
            return hVar.d;
        }

        public static z96 G(h hVar) {
            return hVar.g;
        }

        public static z96 J(h hVar) {
            return hVar.k;
        }

        public static z96 K(h hVar) {
            return hVar.n;
        }

        public static z96 v(h hVar) {
            return hVar.p;
        }

        public static z96 y(h hVar) {
            return hVar.r;
        }

        public static z96 z(h hVar) {
            return hVar.q;
        }

        @Override
        public sm1 D() {
            return (sm1) this.r.get();
        }

        @Override
        public void E0(com.snaptube.premium.playback.window.c cVar) {
        }

        @Override
        public void M(YoutubePlaybackTracker youtubePlaybackTracker) {
            n0(youtubePlaybackTracker);
        }

        public final void N(lk8 lk8Var, bl8 bl8Var) {
            this.c = xq1.b(nk8.b(lk8Var));
            z96 z96VarB = xq1.b(tk8.a(lk8Var, c.i1(this.a), c.c1(this.a), this.c));
            this.d = z96VarB;
            this.e = xq1.b(vk8.a(lk8Var, z96VarB));
            z96 z96VarB2 = xq1.b(uk8.a(lk8Var, this.d));
            this.f = z96VarB2;
            this.g = xq1.b(dl8.a(bl8Var, this.e, z96VarB2));
            this.h = xq1.b(mk8.b(lk8Var, this.d));
            this.i = xq1.b(rk8.a(lk8Var));
            z96 z96VarB3 = xq1.b(yk8.a(lk8Var, this.d, c.i1(this.a)));
            this.j = z96VarB3;
            this.k = xq1.b(xk8.a(lk8Var, z96VarB3));
            this.l = xq1.b(sk8.a(lk8Var, this.d, this.h, this.i, c.i1(this.a), this.k, this.g));
            z96 z96VarB4 = xq1.b(zk8.a(lk8Var));
            this.m = z96VarB4;
            this.n = xq1.b(al8.a(lk8Var, z96VarB4));
            this.f412o = xq1.b(wk8.a(lk8Var, this.k));
            this.p = xq1.b(ok8.a(lk8Var, this.d));
            this.q = xq1.b(pk8.a(lk8Var));
            this.r = xq1.b(cl8.a(bl8Var, this.l));
            this.s = xq1.b(qk8.a(lk8Var, this.p));
        }

        public final rw4 O(rw4 rw4Var) {
            sw4.c(rw4Var, (bg5) this.d.get());
            sw4.e(rw4Var, (kh3) c.h1(this.a).get());
            sw4.a(rw4Var, (cf3) c.d1(this.a).get());
            sw4.d(rw4Var, (ix5) c.e1(this.a).get());
            sw4.b(rw4Var, (wk2) this.q.get());
            return rw4Var;
        }

        public final iy5 P(iy5 iy5Var) {
            z60.b(iy5Var, (aj3) c.j1(this.a).get());
            z60.a(iy5Var, (bg5) c.V0(this.a).get());
            ky5.c(iy5Var, (jg3) c.f1(this.a).get());
            ky5.b(iy5Var, (Cache) c.Y0(this.a).get());
            ky5.a(iy5Var, (d64) c.Z0(this.a).get());
            ky5.d(iy5Var, (IYouTubeDataAdapter) this.k.get());
            return iy5Var;
        }

        public final jd6 R(jd6 jd6Var) {
            nd6.a(jd6Var, (z34) this.l.get());
            return jd6Var;
        }

        public final SearchHomeViewModel T(SearchHomeViewModel searchHomeViewModel) {
            e17.a(searchHomeViewModel, xq1.a(this.l));
            return searchHomeViewModel;
        }

        public final ShortsPlayViewModel X(ShortsPlayViewModel shortsPlayViewModel) {
            ad7.a(shortsPlayViewModel, (IYouTubeDataAdapter) this.k.get());
            return shortsPlayViewModel;
        }

        @Override
        public void Z(ShortsPlayViewModel shortsPlayViewModel) {
            X(shortsPlayViewModel);
        }

        @Override
        public void b(rw4 rw4Var) {
            O(rw4Var);
        }

        @Override
        public ke3 c() {
            return (ke3) this.p.get();
        }

        @Override
        public void e0(VideoWebViewFragment videoWebViewFragment) {
            l0(videoWebViewFragment);
        }

        @Override
        public void f(jd6 jd6Var) {
            R(jd6Var);
        }

        public final ap8 f0(ap8 ap8Var) {
            bp8.a(ap8Var, (ke3) this.p.get());
            return ap8Var;
        }

        @Override
        public void g(qe9 qe9Var) {
            o0(qe9Var);
        }

        @Override
        public td9 h() {
            return (td9) this.j.get();
        }

        @Override
        public tb9 k() {
            return (tb9) this.m.get();
        }

        @Override
        public com.snaptube.premium.activity.a.InterfaceC0410a k0() {
            return new a(this.a, this.b, null);
        }

        @Override
        public j96 l() {
            return (j96) this.g.get();
        }

        public final VideoWebViewFragment l0(VideoWebViewFragment videoWebViewFragment) {
            u40.a(videoWebViewFragment, (r35) c.b1(this.a).get());
            com.snaptube.premium.fragment.c.a(videoWebViewFragment, (ke3) this.p.get());
            com.snaptube.premium.fragment.c.b(videoWebViewFragment, (IYouTubeDataAdapter) this.k.get());
            return videoWebViewFragment;
        }

        @Override
        public void m(ap8 ap8Var) {
            f0(ap8Var);
        }

        @Override
        public void n(iy5 iy5Var) {
            P(iy5Var);
        }

        public final YoutubePlaybackTracker n0(YoutubePlaybackTracker youtubePlaybackTracker) {
            pe9.a(youtubePlaybackTracker, (IYouTubeDataAdapter) this.k.get());
            return youtubePlaybackTracker;
        }

        @Override
        public z34 o() {
            return (z34) this.l.get();
        }

        public final qe9 o0(qe9 qe9Var) {
            re9.a(qe9Var, (z34) this.l.get());
            return qe9Var;
        }

        @Override
        public IYTWebViewSignInPlugin p() {
            return (IYTWebViewSignInPlugin) this.n.get();
        }

        @Override
        public ti3 q() {
            return (ti3) c.i1(this.a).get();
        }

        @Override
        public cc9 r() {
            return (cc9) this.f412o.get();
        }

        public final ig9 r0(ig9 ig9Var) {
            jg9.a(ig9Var, (IYouTubeDataAdapter) this.k.get());
            return ig9Var;
        }

        @Override
        public IYouTubeDataAdapter t() {
            return (IYouTubeDataAdapter) this.k.get();
        }

        @Override
        public j96 u() {
            return (j96) this.g.get();
        }

        @Override
        public void w(PlayerWindowController playerWindowController) {
        }

        @Override
        public void x(SearchHomeViewModel searchHomeViewModel) {
            T(searchHomeViewModel);
        }

        @Override
        public gh2.a x0() {
            return new e(this.a, this.b, null);
        }

        @Override
        public void z0(ig9 ig9Var) {
            r0(ig9Var);
        }
    }

    public static d a() {
        return new d(null);
    }
}
