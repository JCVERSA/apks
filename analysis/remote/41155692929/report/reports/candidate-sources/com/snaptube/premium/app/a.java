package com.snaptube.premium.app;

import com.dayuwuxian.clean.ui.base.CleanBaseActivity;
import com.dywx.hybrid.handler.AdHandler;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.snaptube.ad.mediation.repository.AdRepositoryManager;
import com.snaptube.ad.preload.AdResourceService;
import com.snaptube.ads.AdVastWebView;
import com.snaptube.ads.activity.SplashAdActivity;
import com.snaptube.ads.feedback.newui.AdFeedbackFragment;
import com.snaptube.ads.mraid.MraidPresenter;
import com.snaptube.ads.mraid.handler.NativeApiUrlHandler;
import com.snaptube.ads.nativead.AdView;
import com.snaptube.ads.selfbuild.AdNotificationManager;
import com.snaptube.ads.selfbuild.request.model.SnaptubeAdModel;
import com.snaptube.ads.view.AdBanner;
import com.snaptube.ads.view.SplashAdView;
import com.snaptube.base.BaseFragment;
import com.snaptube.plugin.extension.nonlifecycle.ad.AdRewardLoader;
import com.snaptube.plugin.extension.nonlifecycle.ad.ChooseFormatAdRewardViewModel;
import com.snaptube.premium.activity.CleanActivity;
import com.snaptube.premium.activity.CleanSettingActivity;
import com.snaptube.premium.activity.SimpleInterstitialAdActivity;
import com.snaptube.premium.dialog.DownloadAndSharePopupFragment;
import com.snaptube.premium.preview.audio.AudioPreviewAdController;
import com.snaptube.premium.reyclerbin.db.AppDatabase;
import com.snaptube.search.viewmodel.InsSearchViewModel;
import com.snaptube.taskManager.task.video.g;
import net.pubnative.mediation.dragger.PubnativeMediationDependecies;
import net.pubnative.mediation.utils.WaterfallPlugin;
import o.b85;
import o.bg5;
import o.ce;
import o.d64;
import o.d7;
import o.dm;
import o.e61;
import o.ei2;
import o.ej3;
import o.g7;
import o.ga;
import o.h9;
import o.hg5;
import o.hh3;
import o.hw5;
import o.i11;
import o.id2;
import o.lg2;
import o.md;
import o.nc6;
import o.oc;
import o.p10;
import o.pu8;
import o.qa;
import o.rj5;
import o.s91;
import o.sn;
import o.vq6;
import o.w25;
import o.x00;
import o.xl1;
import o.zd3;

public interface a extends sn, dm, p10, com.snaptube.premium.selfupgrade.incremental_upgrade.b.k, PubnativeMediationDependecies, hw5, id2.c, AdView.b, SplashAdView.b, ga.b, ce.a, e61.a, vq6.g, i11.c, DownloadAndSharePopupFragment.m, nc6.f, h9.a, oc.a, md.b, d7.d, qa.c, AdVastWebView.b, pu8.b, ei2.a, AdNotificationManager.f, SimpleInterstitialAdActivity.b, SplashAdActivity.c, AdHandler.a, CleanBaseActivity.b, g.e, AdBanner.e, MraidPresenter.Injector, NativeApiUrlHandler.Injector, ChooseFormatAdRewardViewModel.b, AdRewardLoader.b, AudioPreviewAdController.b, AdFeedbackFragment.b, hg5.a, SnaptubeAdModel.e, g7.b, WaterfallPlugin.Injector, BaseFragment.a, AdRepositoryManager.b, AdResourceService.b {
    void G0(PhoenixApplication phoenixApplication);

    void I(s91 s91Var);

    xl1 Q();

    b85 Q0();

    hh3 S();

    bg5 Y();

    ej3 a();

    void a0(CleanActivity cleanActivity);

    AppDatabase b0();

    d.a c0();

    Cache d();

    void d0(CleanSettingActivity cleanSettingActivity);

    void g0(InsSearchViewModel insSearchViewModel);

    void h0(w25 w25Var);

    void i0(com.snaptube.premium.ads.a aVar);

    zd3 j();

    d64 j0();

    void m0(rj5 rj5Var);

    x00 p0();

    void u0(lg2 lg2Var);

    com.google.android.exoplayer2.upstream.cache.a y0();
}
