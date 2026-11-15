package com.mgtv.thirdsdk.playcore.e;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.hunantv.imgo.adview.AdTopBar;
import com.hunantv.imgo.data.ErrorData;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.net.entity.LiveSourceEntity;
import com.hunantv.imgo.net.entity.PlayerAuthDataEntity;
import com.hunantv.media.widget.IVideoView;
import com.mgmi.ssp.AdError;
import com.mgmi.ssp.MediaListener;
import com.mgmi.ssp.PreRollVideoAd;
import com.mgmi.ssp.TParams;
import com.mgtv.ssp.MgSspLoginStatusReceiver;
import com.mgtv.ssp.authbase.AccountInfo;
import com.mgtv.ssp.authbase.MgSspAccountCallback;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import com.mgtv.thirdsdk.playcore.callback.MgtvPlayerListener;
import com.mgtv.thirdsdk.playcore.view.ImgoPlayerView;
import com.mgtv.thirdsdk.playcore.view.MgtvPlayerView;

public class f {
    private static final String d = "f";
    AdTopBar b;
    private MgtvPlayerView e;
    private ImgoPlayerView f;
    private FrameLayout g;
    private FrameLayout h;
    private PlayerAuthDataEntity i;
    private int j;
    private com.mgtv.thirdsdk.playcore.e k;
    private MgtvPlayerListener.AdListener l;
    private MgtvPlayerListener.AdUpdateStatusListener m;
    private com.mgtv.thirdsdk.playcore.c.b n;
    private boolean o;
    private boolean p;
    private MgSspAccountCallback q;
    private com.mgtv.ssp.authbase.c r;
    private String c = "";
    public boolean a = false;
    private boolean s = true;

    public f(MgtvPlayerView mgtvPlayerView, com.mgtv.thirdsdk.playcore.e eVar) {
        this.e = mgtvPlayerView;
        this.k = eVar;
        a();
    }

    private void e() {
        TParams tParams = new TParams();
        try {
            if (TextUtils.isEmpty(this.k.aH)) {
                tParams.setPosition(0);
            } else {
                tParams.setPosition(Integer.parseInt(this.k.aH));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        tParams.setNid(com.hunantv.imgo.util.b.l(""));
        tParams.setisVip(com.hunantv.imgo.util.b.j());
        tParams.setIsppreview(this.k.v ? 1 : 0);
        try {
            com.mgtv.thirdsdk.playcore.e eVar = this.k;
            if (eVar.ah) {
                LiveSourceEntity liveSourceEntity = eVar.aj;
                if (liveSourceEntity != null) {
                    if (TextUtils.isEmpty(liveSourceEntity.cameraId)) {
                        tParams.setVid(0);
                        tParams.setCamera_id(0);
                    } else {
                        int i = Integer.parseInt(this.k.aj.cameraId);
                        tParams.setVid(i);
                        tParams.setCamera_id(i);
                    }
                    if (TextUtils.isEmpty(this.k.aj.activityId)) {
                        tParams.setActivityId(0);
                    } else {
                        tParams.setActivityId(Integer.parseInt(this.k.aj.activityId));
                    }
                    String str = this.k.aj.adParams;
                    if (!TextUtils.isEmpty(str)) {
                        tParams.setAdParams(str);
                    }
                }
                tParams.setChannellive(1);
            } else {
                if (!TextUtils.isEmpty(eVar.h)) {
                    tParams.setVid(Integer.parseInt(this.k.h));
                }
                PlayerAuthDataEntity playerAuthDataEntity = this.k.p;
                if (playerAuthDataEntity == null) {
                    return;
                }
                String str2 = playerAuthDataEntity.adParams;
                if (!TextUtils.isEmpty(str2)) {
                    tParams.setAdParams(str2);
                }
                if (TextUtils.isEmpty(this.k.p.clipId)) {
                    tParams.setHid(0);
                } else {
                    tParams.setHid(Integer.parseInt(this.k.p.clipId));
                }
            }
            tParams.setIspay(0);
            tParams.setFrom(this.c);
            com.hunantv.imgo.log.e.b("lyzzz3213131", "initPreRollVideoAd1", true);
            if (this.k.a != null) {
                String str3 = d;
                com.hunantv.imgo.log.e.b(str3, "PreRollVideoAd: ppid=" + MgtvPlayerConstants.MGSDK_PPID + "; preid= " + MgtvPlayerConstants.MGSDK_PREID, true);
                com.hunantv.imgo.log.e.b(str3, "params:vid=" + tParams.getVid() + ": vip=" + tParams.getISVip() + ": preview=" + tParams.getIspreview() + ": hid=" + tParams.getHid(), true);
                com.hunantv.imgo.log.e.b("lyzzz3213131", "initPreRollVideoAd2", true);
                this.k.aN = new PreRollVideoAd(this.k.a, this.g, MgtvPlayerConstants.MGSDK_PPID, MgtvPlayerConstants.MGSDK_PREID, new MediaListener() {
                    @Override
                    public int getCurrentTime() {
                        return f.this.f.getCurrentPosition();
                    }

                    @Override
                    public IVideoView getPositiveView() {
                        if (f.this.f != null) {
                            return f.this.f.mVideoView;
                        }
                        return null;
                    }

                    @Override
                    public Bitmap getSnapshot(int i2, int i3) {
                        if (f.this.k != null) {
                            return f.this.k.aM;
                        }
                        return null;
                    }

                    @Override
                    public int getVideoHeight() {
                        int iO = f.this.k != null ? f.this.k.o() : 0;
                        return (iO != 0 || f.this.g == null) ? iO : f.this.g.getHeight();
                    }

                    @Override
                    public int getVideoWith() {
                        int iN = f.this.k != null ? f.this.k.n() : 0;
                        return (iN != 0 || f.this.g == null) ? iN : f.this.g.getWidth();
                    }

                    @Override
                    public boolean isContentPlaying() {
                        if (f.this.f != null) {
                            return f.this.f.isPlaying();
                        }
                        return false;
                    }

                    @Override
                    public boolean isFullScreen() {
                        return f.this.k.at;
                    }

                    @Override
                    public void onAdClick() {
                    }

                    @Override
                    public void onAdComplete() {
                        if (f.this.k == null) {
                            return;
                        }
                        if (f.this.k == null || f.this.k.k() != 12) {
                            f.this.k.Y = false;
                            if (f.this.k.ae && f.this.l != null) {
                                f.this.l.onAdComplete();
                                f.this.p = false;
                            }
                            if (!f.this.k.ae && f.this.l != null) {
                                f.this.l.onAdEmpty();
                                com.hunantv.imgo.log.e.b(f.d, "onAdComplete：onAdEmpty", true);
                            }
                            if (f.this.n != null) {
                                f.this.k.b(4);
                                com.hunantv.imgo.log.e.b(f.d, "onAdComplete：" + f.this.k.a(4) + "ms", true);
                                if (f.this.k.aA) {
                                    f.this.h();
                                } else {
                                    f.this.n.a(7);
                                }
                                f.this.f();
                                f.this.k.as = true;
                            }
                        }
                    }

                    @Override
                    public void onAdCountClicked() {
                        if (f.this.r != null) {
                            f.this.r.a(new MgSspLoginStatusReceiver() {
                                @Override
                                public void result(int i2, AccountInfo accountInfo) {
                                }
                            });
                        }
                    }

                    @Override
                    public void onAdError(@NonNull AdError adError) {
                        if (f.this.l != null) {
                            f.this.l.onAdError(adError);
                            com.hunantv.imgo.log.e.b(f.d, "onAdError", true);
                            ErrorData errorData = new ErrorData();
                            if (adError != null) {
                                errorData.setMsg(adError.getErrorMsg());
                                errorData.setCode(adError.getErrorCode() + "");
                            }
                        }
                    }

                    @Override
                    public void onAdPrepared() {
                        com.hunantv.imgo.log.e.b(f.d, "onAdPrepare", true);
                        if (f.this.k == null) {
                            return;
                        }
                        if (f.this.k == null || f.this.k.k() != 12) {
                            f.this.k.Y = true;
                            f.this.k.aa = true;
                            f.this.p = false;
                            f.this.k.ae = true;
                            if (f.this.k.as) {
                                f.this.k.as = false;
                            }
                            if (f.this.l != null && f.this.o) {
                                f.this.l.onAdPrepare();
                            }
                            f.this.g();
                        }
                    }

                    @Override
                    public void onAdRequestSuccess() {
                        VideoSDKReport.a().a(true, (ErrorData) null, f.this.c);
                    }

                    @Override
                    public void onAdStart() {
                        if (f.this.k == null) {
                            return;
                        }
                        f.this.k.Y = true;
                        f.this.k.aa = true;
                        f.this.k.ae = true;
                        f.this.k.ao = true;
                        f.this.k.as = false;
                        f.this.p = true;
                        if (f.this.l == null || !f.this.o) {
                            return;
                        }
                        com.hunantv.imgo.log.e.b(f.d, "onAdStart", true);
                        VideoSDKReport.a().a(System.currentTimeMillis() - com.hunantv.imgo.util.e.a, com.hunantv.imgo.util.e.b, com.hunantv.imgo.util.e.c, com.hunantv.imgo.util.e.d, f.this.c, "front_ad");
                        f.this.l.onAdStartPlayering();
                    }

                    @Override
                    public void onClickBackButton() {
                        if (f.this.l != null) {
                            f.this.l.onClickBack();
                        }
                    }

                    @Override
                    public void onClickFullScreenButton() {
                        if (f.this.l != null) {
                            f.this.l.onClickFullScreen();
                        }
                    }

                    @Override
                    public void onNoAd(@NonNull AdError adError) {
                        if (f.this.k == null) {
                            return;
                        }
                        if (f.this.k == null || f.this.k.k() != 12) {
                            f.this.k.Z = false;
                            if (adError != null && adError.getErrorCode() == 5006) {
                                f.this.k.Z = true;
                            }
                            f.this.k.Y = false;
                            if (f.this.k.ae && f.this.l != null) {
                                f.this.l.onAdComplete();
                                f.this.p = false;
                            }
                            if (!f.this.k.ae && f.this.l != null) {
                                f.this.l.onAdEmpty();
                                com.hunantv.imgo.log.e.b(f.d, "onNoAd：onAdEmpty", true);
                            }
                            if (f.this.n != null) {
                                f.this.k.b(4);
                                com.hunantv.imgo.log.e.b(f.d, "onNoAd--------------：" + f.this.k.a(4) + "ms; error:" + adError.getErrorMsg(), true);
                                if (f.this.k.aA) {
                                    f.this.h();
                                } else {
                                    f.this.n.a(7);
                                }
                                f.this.f();
                                f.this.k.as = true;
                            }
                            VideoSDKReport.a().a(false, (ErrorData) null, f.this.c);
                        }
                    }

                    @Override
                    public void onUpdateAdTime(int i2) {
                    }

                    @Override
                    public void onUpdateStatus(boolean z, boolean z2, boolean z3) {
                        if (f.this.m != null) {
                            f.this.m.onUpdateStatus(z, z2, z3);
                        }
                    }

                    @Override
                    public void onVideoSizeChanged(int i2, int i3) {
                        if (f.this.l != null) {
                            f.this.l.onAdSizeChanged(i2, i3);
                        }
                    }

                    @Override
                    public void resumePlay() {
                        if (f.this.f != null) {
                            f.this.f.play();
                        }
                    }

                    @Override
                    public void onAdClick(String str4) {
                    }
                }, 5, com.hunantv.imgo.util.b.Y(), tParams);
                com.mgtv.thirdsdk.playcore.e eVar2 = this.k;
                eVar2.aN.setLocalPlay(eVar2.ag);
                this.k.aN.setIsDeatilBtnShow(true);
            }
            com.mgtv.thirdsdk.playcore.e eVar3 = this.k;
            if (eVar3.aN != null) {
                com.mgtv.thirdsdk.playcore.c.b bVar = this.n;
                if (bVar != null) {
                    eVar3.at = bVar.a();
                }
                this.k.aN.resumeByUser();
            }
        } catch (Throwable th) {
            th.printStackTrace();
            com.hunantv.imgo.log.e.b(d, "adexception", true);
        }
    }

    public void f() {
        i();
    }

    public void g() {
        com.mgtv.thirdsdk.playcore.c.b bVar;
        if (this.k.T == 2 && (bVar = this.n) != null) {
            bVar.a(10);
        }
        this.k.T = 1;
    }

    public void h() {
        com.mgtv.thirdsdk.playcore.c.b bVar;
        if (!this.k.aA || (bVar = this.n) == null) {
            return;
        }
        bVar.a(11);
    }

    private void i() {
        FrameLayout frameLayout = this.h;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            this.b = null;
        }
    }

    public void b() {
        MgtvPlayerListener.AdListener adListener;
        MgtvPlayerListener.AdListener adListener2;
        com.mgtv.thirdsdk.playcore.e eVar = this.k;
        if (eVar == null || eVar.k() == 12) {
            return;
        }
        if (this.a) {
            this.k.Y = false;
            if (this.n != null) {
                h();
                this.k.b(4);
                this.n.a(7);
                f();
                this.k.as = true;
            }
            com.hunantv.imgo.log.e.b("lyzzz3213131", "IMMERSION_SOURCE.equals(from)", true);
            return;
        }
        com.mgtv.thirdsdk.playcore.e eVar2 = this.k;
        if (!eVar2.aI) {
            if (eVar2.aN == null) {
                eVar2.ab = true;
                System.out.println("Player isInterruptBeforeAd 11");
            } else {
                eVar2.ab = true;
                if (eVar2.ae && !eVar2.Y) {
                    System.out.println("Player isInterruptBeforeAd 22");
                    this.k.aN.finish();
                }
            }
            com.hunantv.imgo.log.e.b("lyzzz3213131", "!mPlayerData.videoVisiable()", true);
            return;
        }
        eVar2.ab = false;
        if (!eVar2.ah) {
            PlayerAuthDataEntity playerAuthDataEntity = eVar2.p;
            this.i = playerAuthDataEntity;
            if (playerAuthDataEntity != null) {
                this.j = playerAuthDataEntity.time;
            }
        }
        eVar2.T = 1;
        this.o = true;
        this.p = false;
        eVar2.as = false;
        eVar2.ad = -1L;
        f();
        String str = d;
        com.hunantv.imgo.log.e.b(str, "playAd()", true);
        if (TextUtils.isEmpty(this.k.h)) {
            com.mgtv.thirdsdk.playcore.e eVar3 = this.k;
            eVar3.Y = false;
            if (eVar3.ae && (adListener2 = this.l) != null) {
                adListener2.onAdComplete();
                this.p = false;
            }
            if (!this.k.ae && (adListener = this.l) != null) {
                adListener.onAdEmpty();
                com.hunantv.imgo.log.e.b(str, "onNoAd：onAdEmpty", true);
            }
            if (this.n != null) {
                h();
                this.k.b(4);
                com.hunantv.imgo.log.e.b(str, "onNoAd--------------： videoId empty", true);
                this.n.a(7);
                f();
                this.k.as = true;
            }
            com.hunantv.imgo.log.e.b("lyzzz3213131", "mPlayerData.videoId", true);
            return;
        }
        if (this.k.aN == null) {
            e();
        } else {
            com.hunantv.imgo.log.e.b("lyzzz3213131", "stop()", true);
            c();
            com.hunantv.imgo.log.e.b(str, "finish", true);
            this.k.aN = null;
            com.hunantv.imgo.log.e.b("lyzzz3213131", "initPreRollVideoAd0()", true);
            e();
        }
        com.mgtv.thirdsdk.playcore.e eVar4 = this.k;
        PreRollVideoAd preRollVideoAd = eVar4.aN;
        if (preRollVideoAd != null) {
            if (!eVar4.ab) {
                preRollVideoAd.loadAd(true);
            }
            com.hunantv.imgo.log.e.b(str, "loadAd", true);
        } else if (eVar4 != null) {
            eVar4.b(4);
            com.mgtv.thirdsdk.playcore.c.b bVar = this.n;
            if (bVar != null) {
                bVar.a(7);
            }
            this.k.as = true;
        }
        System.out.println("Player isInterruptBeforeAd 33");
        this.k.ab = false;
    }

    public void c() {
        try {
            com.hunantv.imgo.log.e.b(d, "stop", true);
            FrameLayout frameLayout = this.g;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
            }
            f();
            PreRollVideoAd preRollVideoAd = this.k.aN;
            if (preRollVideoAd != null) {
                preRollVideoAd.finish();
            }
        } catch (Exception e) {
            e.printStackTrace();
            com.hunantv.imgo.log.e.b(d, "stop" + e.toString(), true);
        }
    }

    public void a() {
        MgtvPlayerView mgtvPlayerView = this.e;
        if (mgtvPlayerView != null) {
            this.f = mgtvPlayerView.getVideoPlayer();
            this.g = this.e.getAdLayout();
            this.h = this.e.getAdControlFrameLayout();
        }
        this.s = com.hunantv.imgo.util.b.Z();
    }

    public void a(String str) {
        this.c = str;
    }

    public void a(com.mgtv.thirdsdk.playcore.c.b bVar) {
        this.n = bVar;
    }

    public void a(MgtvPlayerListener.AdListener adListener) {
        this.l = adListener;
    }

    public void a(MgtvPlayerListener.AdUpdateStatusListener adUpdateStatusListener) {
        this.m = adUpdateStatusListener;
    }

    public void a(MgSspAccountCallback mgSspAccountCallback) {
        this.q = mgSspAccountCallback;
    }

    public void a(com.mgtv.ssp.authbase.c cVar) {
        this.r = cVar;
    }

    public void a(boolean z) {
        com.mgtv.thirdsdk.playcore.e eVar = this.k;
        if (eVar != null) {
            eVar.at = z;
            if (z) {
                PreRollVideoAd preRollVideoAd = eVar.aN;
                if (preRollVideoAd != null) {
                    preRollVideoAd.noticeFullScreen();
                    return;
                }
                return;
            }
            PreRollVideoAd preRollVideoAd2 = eVar.aN;
            if (preRollVideoAd2 != null) {
                preRollVideoAd2.noticeHarlfScreen();
            }
        }
    }
}
