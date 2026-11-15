package com.mbridge.msdk.video.module.listener.impl;

import android.os.Handler;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import java.util.Timer;
import java.util.TimerTask;

public class m extends o {
    private Timer A;
    private Handler B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private int G;
    private MBridgeVideoView.u H;

    private MBridgeVideoView f38645x;

    private MBridgeContainerView f38646y;

    private int f38647z;

    class a extends TimerTask {

        class RunnableC0544a implements Runnable {
            RunnableC0544a() {
            }

            @Override
            public void run() {
                m.this.f38646y.showVideoClickView(-1);
                m.this.f38645x.soundOperate(0, 2);
            }
        }

        a() {
        }

        @Override
        public void run() {
            try {
                m.this.B.post(new RunnableC0544a());
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
    }

    public m(MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, com.mbridge.msdk.videocommon.entity.c cVar, com.mbridge.msdk.videocommon.download.a aVar, String str, String str2, int i10, int i11, com.mbridge.msdk.video.module.listener.a aVar2, int i12, boolean z10, int i13) {
        super(campaignEx, cVar, aVar, str, str2, aVar2, i12, z10);
        this.B = new Handler();
        this.C = false;
        this.D = false;
        this.E = false;
        this.f38645x = mBridgeVideoView;
        this.f38646y = mBridgeContainerView;
        this.G = i10;
        this.f38647z = i11;
        this.F = i13;
        if (mBridgeVideoView != null) {
            this.C = mBridgeVideoView.getVideoSkipTime() == 0;
        }
        if (mBridgeVideoView == null || mBridgeContainerView == null) {
            this.f38628a = false;
        }
    }

    private void n() {
        try {
            Timer timer = this.A;
            if (timer != null) {
                timer.cancel();
                this.A = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:23:0x005c  */
    private void o() {
        CampaignEx campaignEx;
        CampaignEx campaignEx2 = this.f38629b;
        if (campaignEx2 == null || campaignEx2.getDynamicTempCode() != 5) {
            return;
        }
        MBridgeVideoView mBridgeVideoView = this.f38645x;
        if (mBridgeVideoView == null || mBridgeVideoView.mCampOrderViewData == null) {
            campaignEx = null;
        } else {
            int i10 = 0;
            for (int i11 = 0; i11 < this.f38645x.mCampOrderViewData.size(); i11++) {
                if (this.f38645x.mCampOrderViewData.get(i11) != null && this.f38645x.mCampOrderViewData.get(i11).getId() == this.f38629b.getId()) {
                    i10 = i11 - 1;
                    break;
                }
            }
            if (i10 < 0 || this.f38645x.mCampOrderViewData.get(i10) == null) {
                campaignEx = null;
            } else {
                campaignEx = this.f38645x.mCampOrderViewData.get(i10);
            }
        }
        if (campaignEx != null) {
            MBridgeVideoView mBridgeVideoView2 = this.f38645x;
            if (mBridgeVideoView2 != null) {
                mBridgeVideoView2.setCampaign(campaignEx);
            }
            MBridgeContainerView mBridgeContainerView = this.f38646y;
            if (mBridgeContainerView != null) {
                mBridgeContainerView.setCampaign(campaignEx);
            }
            a(campaignEx);
        }
    }

    private void p() {
        try {
            n();
            this.A = new Timer();
            this.A.schedule(new a(), 3000L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Code duplicated, block: B:118:0x0251  */
    /* JADX WARN: Code duplicated, block: B:125:0x0269  */
    /* JADX WARN: Code duplicated, block: B:127:0x0271  */
    /* JADX WARN: Code duplicated, block: B:128:0x0278  */
    /* JADX WARN: Code duplicated, block: B:156:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:171:0x0338  */
    /* JADX WARN: Code duplicated, block: B:173:0x033c  */
    /* JADX WARN: Code duplicated, block: B:179:0x0359  */
    @Override
    public void a(int i10, Object obj) {
        CampaignEx campaignEx;
        CampaignEx campaignEx2;
        int bufferTimeout;
        String playURL;
        int i11;
        if (this.f38628a) {
            if (i10 != 1) {
                if (i10 == 2) {
                    this.f38645x.dismissAllAlert();
                    this.f38645x.videoOperate(3);
                    campaignEx = this.f38629b;
                    if (campaignEx == null && campaignEx.isDynamicView() && this.f38629b.getDynamicTempCode() == 5) {
                        if (this.f38646y != null) {
                            MBridgeVideoView mBridgeVideoView = this.f38645x;
                            if (mBridgeVideoView.mCurrPlayNum == mBridgeVideoView.mCampaignSize) {
                                if (this.f38629b.getAdSpaceT() == 2) {
                                    i10 = 16;
                                } else {
                                    this.f38646y.setRewardStatus(true);
                                    this.f38646y.showOrderCampView();
                                }
                            }
                        }
                        com.mbridge.msdk.video.bt.module.orglistener.f.a(this.f38629b, this.f38634g, this.f38645x.mCurrentPlayProgressTime);
                        if (this.G == 2) {
                            i10 = 16;
                        } else {
                            i10 = 16;
                        }
                    } else if (this.G == 2 || this.f38646y.endCardShowing() || this.f38629b.getAdSpaceT() == 2) {
                        i10 = 16;
                    } else {
                        this.f38646y.showEndcard(this.f38629b.getVideo_end_type());
                    }
                } else if (i10 != 5) {
                    if (i10 == 6) {
                        this.f38645x.dismissAllAlert();
                        this.f38645x.videoOperate(3);
                        campaignEx = this.f38629b;
                        if (campaignEx == null) {
                            if (this.G == 2) {
                                i10 = 16;
                            } else {
                                i10 = 16;
                            }
                        } else if (this.G == 2) {
                            i10 = 16;
                        } else {
                            i10 = 16;
                        }
                    } else if (i10 == 8) {
                        MBridgeContainerView mBridgeContainerView = this.f38646y;
                        if (mBridgeContainerView == null) {
                            MBridgeVideoView mBridgeVideoView2 = this.f38645x;
                            if (mBridgeVideoView2 != null) {
                                mBridgeVideoView2.showAlertView();
                            }
                        } else if (mBridgeContainerView.showAlertWebView()) {
                            MBridgeVideoView mBridgeVideoView3 = this.f38645x;
                            if (mBridgeVideoView3 != null) {
                                mBridgeVideoView3.alertWebViewShowed();
                            }
                        } else {
                            MBridgeVideoView mBridgeVideoView4 = this.f38645x;
                            if (mBridgeVideoView4 != null) {
                                mBridgeVideoView4.showAlertView();
                            }
                        }
                    } else if (i10 != 20) {
                        switch (i10) {
                            case 10:
                                this.D = true;
                                this.f38645x.soundOperate(0, 2);
                                this.f38645x.progressOperate(0, 2);
                                break;
                            case 11:
                                this.f38645x.videoOperate(3);
                                this.f38645x.dismissAllAlert();
                                CampaignEx campaignEx3 = this.f38629b;
                                if (campaignEx3 == null || campaignEx3.getVideo_end_type() == 3 || this.f38629b.getRewardTemplateMode() == null || this.f38629b.getRewardTemplateMode().f() == 5002010) {
                                    this.f38645x.setVisibility(0);
                                } else if (this.f38629b.getAdSpaceT() != 2) {
                                    this.f38645x.setVisibility(8);
                                }
                                CampaignEx campaignEx4 = this.f38629b;
                                if (campaignEx4 != null && campaignEx4.getDynamicTempCode() == 5) {
                                    MBridgeVideoView mBridgeVideoView5 = this.f38645x;
                                    if (mBridgeVideoView5.mCurrPlayNum != mBridgeVideoView5.mCampaignSize) {
                                        campaignEx2 = this.f38629b;
                                        if (campaignEx2 == null) {
                                            if (this.f38629b.getAdSpaceT() != 2) {
                                                this.f38646y.showEndcard(this.f38629b.getVideo_end_type());
                                            } else {
                                                this.f38646y.showVideoEndCover();
                                            }
                                        } else if (this.f38629b.getAdSpaceT() != 2) {
                                            this.f38646y.showEndcard(this.f38629b.getVideo_end_type());
                                        } else {
                                            this.f38646y.showVideoEndCover();
                                        }
                                    } else {
                                        MBridgeContainerView mBridgeContainerView2 = this.f38646y;
                                        if (mBridgeContainerView2 != null) {
                                            mBridgeContainerView2.setRewardStatus(true);
                                            this.f38646y.showOrderCampView();
                                        }
                                    }
                                } else {
                                    campaignEx2 = this.f38629b;
                                    if (campaignEx2 == null || campaignEx2.getRewardTemplateMode() == null || this.f38629b.getRewardTemplateMode().f() != 5002010) {
                                        if (this.f38629b.getAdSpaceT() != 2) {
                                            this.f38646y.showEndcard(this.f38629b.getVideo_end_type());
                                        } else {
                                            this.f38646y.showVideoEndCover();
                                        }
                                    }
                                }
                                break;
                            case 12:
                                k();
                                this.f38645x.videoOperate(3);
                                this.f38645x.dismissAllAlert();
                                if (this.f38629b.getVideo_end_type() != 3) {
                                    this.f38645x.setVisibility(8);
                                } else {
                                    this.f38645x.setVisibility(0);
                                }
                                if (this.D || this.F != 0) {
                                    if (this.f38629b.isDynamicView() && this.f38629b.getDynamicTempCode() == 5 && TextUtils.isEmpty(this.f38629b.getendcard_url())) {
                                        o();
                                        this.F = 0;
                                    }
                                    if (!this.D && this.F == 1) {
                                        j();
                                        h();
                                        i();
                                        if (q0.a().a("i_l_s_t_r_i", false) && !this.E) {
                                            this.E = true;
                                            MBridgeVideoView.u uVar = this.H;
                                            if (uVar != null) {
                                                uVar.a();
                                            }
                                        }
                                    }
                                    if (this.f38629b.getAdSpaceT() == 2) {
                                        this.f38646y.showVideoEndCover();
                                    } else {
                                        this.f38646y.showEndcard(this.f38629b.getVideo_end_type());
                                    }
                                }
                                break;
                            case 13:
                                MBridgeVideoView mBridgeVideoView6 = this.f38645x;
                                if (mBridgeVideoView6 != null) {
                                    mBridgeVideoView6.closeVideoOperate(0, 2);
                                    playURL = this.f38645x.getPlayURL();
                                    bufferTimeout = this.f38645x.getBufferTimeout();
                                } else {
                                    bufferTimeout = -1;
                                    playURL = "";
                                }
                                CampaignEx campaignEx5 = this.f38629b;
                                String videoUrlEncode = campaignEx5 != null ? campaignEx5.getVideoUrlEncode() : "";
                                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                                eVar.a("play_url", playURL);
                                eVar.a(CampaignEx.JSON_KEY_VIDEO_URL, videoUrlEncode);
                                eVar.a("timeout", Integer.valueOf(bufferTimeout));
                                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_video_buffer_timeout", this.f38629b, eVar);
                                break;
                            case 14:
                                if (!this.C) {
                                    this.f38645x.closeVideoOperate(0, 1);
                                }
                                break;
                            case 15:
                                if (obj != null && (obj instanceof MBridgeVideoView.v)) {
                                    MBridgeVideoView.v vVar = (MBridgeVideoView.v) obj;
                                    int videoInteractiveType = this.f38646y.getVideoInteractiveType();
                                    if (this.f38629b.getAdSpaceT() == 2) {
                                        SoundImageView soundImageView = this.f38645x.mSoundImageView;
                                        if (soundImageView != null && (soundImageView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                                            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f38645x.mSoundImageView.getLayoutParams();
                                            layoutParams.setMargins(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f), 0, 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 85.0f));
                                            this.f38645x.mSoundImageView.setLayoutParams(layoutParams);
                                        }
                                        TextView textView = this.f38645x.tvFlag;
                                        if (textView != null && (textView.getLayoutParams() instanceof FrameLayout.LayoutParams)) {
                                            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f38645x.tvFlag.getLayoutParams();
                                            layoutParams2.setMargins(t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f), 0, 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 85.0f));
                                            this.f38645x.tvFlag.setVisibility(0);
                                            this.f38645x.tvFlag.setLayoutParams(layoutParams2);
                                        }
                                        this.f38646y.showVideoClickView(1);
                                    } else if (videoInteractiveType >= 0 && vVar.f38596a >= videoInteractiveType) {
                                        this.f38646y.showVideoClickView(1);
                                        this.f38645x.soundOperate(0, 1);
                                    }
                                    this.C = vVar.f38598c;
                                    if (this.f38629b.getDynamicTempCode() != 5) {
                                        int i12 = this.f38647z;
                                        if (((i12 >= 0 && ((i11 = vVar.f38596a) >= i12 || i11 == vVar.f38597b)) || (this.f38629b.getVideoCompleteTime() > 0 && (vVar.f38596a > this.f38629b.getVideoCompleteTime() || vVar.f38596a == vVar.f38597b))) && !this.C) {
                                            this.f38645x.closeVideoOperate(0, 2);
                                            this.C = true;
                                        }
                                    } else {
                                        a(vVar.f38596a, vVar.f38597b);
                                    }
                                }
                                break;
                        }
                    } else if (q0.a().a("i_l_s_t_r_i", false) && (obj instanceof MBridgeVideoView.u)) {
                        this.H = (MBridgeVideoView.u) obj;
                    }
                } else if (obj != null && (obj instanceof Integer)) {
                    this.f38645x.soundOperate((((Integer) obj).intValue() == 1 ? 2 : 1).intValue(), -1);
                }
            } else if (!this.f38646y.endCardShowing()) {
                int videoInteractiveType2 = this.f38646y.getVideoInteractiveType();
                if (videoInteractiveType2 != -2) {
                    if (videoInteractiveType2 == -1) {
                        if (this.f38646y.isLast()) {
                            this.f38646y.showVideoClickView(1);
                            this.f38645x.soundOperate(0, 1);
                            p();
                        } else {
                            this.f38646y.showVideoClickView(-1);
                            this.f38645x.soundOperate(0, 2);
                            n();
                        }
                    }
                } else if (this.f38646y.miniCardLoaded()) {
                    this.f38646y.showVideoClickView(2);
                }
            }
        }
        super.a(i10, obj);
    }

    private void a(int i10, int i11) {
        CampaignEx campaignEx;
        if (this.C || this.f38645x == null || (campaignEx = this.f38629b) == null) {
            return;
        }
        int i12 = this.f38647z;
        int i13 = (i12 < 0 || i10 < i12) ? 1 : 2;
        if (i13 != 2 && (campaignEx.getVideoCompleteTime() != 0 ? i10 > this.f38629b.getVideoCompleteTime() : this.f38645x.mCurrPlayNum > 1)) {
            i13 = 2;
        }
        if (i13 != 2 && this.f38645x.mCurrPlayNum > 1 && i10 == i11) {
            i13 = 2;
        }
        if (i13 == 2) {
            this.f38645x.closeVideoOperate(0, i13);
            this.C = true;
        }
    }
}
