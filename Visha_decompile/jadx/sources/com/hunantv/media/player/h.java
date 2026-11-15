package com.hunantv.media.player;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaCrypto;
import android.os.Bundle;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.google.gson.Gson;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.drm.IDrmManager;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.drm.MgtvDrmParams;
import com.hunantv.media.drm.cbcs.CbcsDrmSession;
import com.hunantv.media.drm.cenc.CencDrmSession;
import com.hunantv.media.drm.utils.MgtvDrmUtils;
import com.hunantv.media.drm2.mask.MaskDrmManager;
import com.hunantv.media.drm2.mask.MaskDrmSession;
import com.hunantv.media.global.Constants;
import com.hunantv.media.global.MgtvPlayerGlobalConfig;
import com.hunantv.media.p2p.IP2pTask;
import com.hunantv.media.p2p.P2pMgr;
import com.hunantv.media.player.datasource.p2p.MGTVP2pDirectMediaDataSource;
import com.hunantv.media.player.helper.BuildHelper;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.hunantv.media.player.libnative.IMGTVMediaDataSource;
import com.hunantv.media.player.libnative.ImgoMediaPlayerHelp;
import com.hunantv.media.player.libnative.ImgoMediaPlayerLib;
import com.hunantv.media.player.libnative.ImgoVsrApi;
import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.pragma.PlayerConfig;
import com.hunantv.media.player.smooth.SmoothMediaSource;
import com.hunantv.media.player.utils.PreferencesUtil;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.SurfaceViewUtil;
import com.hunantv.media.player.utils.ThreadUtil;
import com.hunantv.media.player.utils.UrlUtil;
import com.hunantv.media.report.ReportParams;
import com.hunantv.media.utils.NumericUtil;
import com.hunantv.media.utils.TimeUtil;
import com.hunantv.media.widget.IVideoView;
import com.just.agentweb.DefaultWebClient;
import com.lzy.okgo.model.HttpHeaders;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.security.InvalidParameterException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class h {
    private static final String a = "h";
    private int A;
    private int B;
    private boolean C;
    private String D;
    private boolean E;
    private int F;
    private String G;
    private int H;
    private int I;
    private boolean J;
    private int K;
    private int L;
    private int M;
    private int N;
    private boolean O;
    private boolean P;
    private float Q;
    private long R;
    private int S;
    private SurfaceHolder T;
    private IMgtvRenderView.ISurfaceHolder U;
    private Context V;
    private long W;
    private long X;
    private long Y;
    private long Z;
    private boolean aA;
    private boolean aB;
    private boolean aC;
    private boolean aD;
    private boolean aE;
    private MgtvPlayerDataSource aF;
    private com.hunantv.media.player.datasource.a aG;
    private int aH;
    private int aI;
    private int aJ;
    private int aK;
    private long aL;
    private long aM;
    private long aN;
    private long aO;
    private long aP;
    private long aQ;
    private int aR;
    private String aS;
    private int aT;
    private int aU;
    private long aV;
    private boolean aW;
    private boolean aX;
    private boolean aY;
    private int aZ;
    private int aa;
    private int ab;
    private int ac;
    private long ad;
    private int ae;
    private boolean af;
    private String ag;
    private boolean ah;
    private String ai;
    private boolean aj;
    private boolean ak;
    private int al;
    private boolean am;
    private boolean an;
    private int ao;
    private boolean ap;
    private boolean aq;
    private boolean ar;
    private boolean as;
    private boolean at;
    private boolean au;
    private boolean av;
    private boolean aw;
    private boolean ax;
    private boolean ay;
    private boolean az;
    private String b;
    private ReportParams bA;
    private boolean bB;
    private com.hunantv.media.player.a.a.b bC;
    private volatile int bD;
    private com.hunantv.media.report.a bE;
    private com.hunantv.media.report.a bF;
    private MgtvMediaPlayer bG;
    private boolean bH;
    private int bI;
    private boolean bJ;
    private String bK;
    private final String bL;
    private d.e bM;
    private d.g bN;
    private MgtvPlayerListener.OnInfoListener bO;
    private d.h bP;
    private MgtvPlayerListener.OnInfoStringListener bQ;
    private MgtvPlayerListener.OnPreparedListener bR;
    private MgtvPlayerListener.OnBufferingUpdateListener bS;
    private MgtvPlayerListener.OnVideoSizeChangedListener bT;
    private MgtvPlayerListener.OnSeekCompleteListener bU;
    private MgtvPlayerListener.OnCompletionListener bV;
    private MgtvPlayerListener.OnErrorListener bW;
    private MgtvPlayerListener.OnBufferingTimeoutListener bX;
    private MgtvPlayerListener.OnSwitchSourceListener bY;
    private MgtvPlayerListener.OnRecordVideoListener bZ;
    private boolean ba;
    private int bb;
    private boolean bc;
    private boolean bd;
    private String[] be;
    private PreferencesUtil bf;
    private PlayerConfig bg;
    private boolean bh;
    private int bi;

    @Nullable
    private Bundle bj;

    @Nullable
    private String bk;
    private String bl;
    private MgtvPlayerListener.OnWarningListener bm;
    private boolean bn;
    private int bo;
    private int bp;
    private IP2pTask bq;
    private String br;
    private String bs;
    private String bt;
    private IMGTVMediaDataSource bu;
    private IMGTVMediaDataSource bv;
    private int bw;
    private IP2pTask bx;
    private String by;
    private String bz;
    private String c;
    private volatile boolean ca;
    private d.i cb;
    private d.n cc;
    private MgtvPlayerListener.OnGetFrameImageListener cd;
    private d.f ce;
    private d.InterfaceC0135d cf;
    private MgtvPlayerListener.OnPlayerEventListener cg;
    private d.j ch;
    private MgtvPlayerListener.OnSourceNetHandledListener ci;
    private String cj;
    private String ck;
    private String cl;
    private String cm;

    private String f16cn;
    private d.q co;
    private d.p cp;
    private MgtvPlayerListener.OnSourceFlowHandledListener cq;
    private d.o cr;
    private float cs;
    private d.n ct;
    private boolean cu;
    private boolean cv;
    private boolean cw;
    private IDrmSession cx;
    private List<MgtvDrmParams.DrmInfo> cy;
    private String d;
    private long e;
    private long f;
    private long g;
    private long h;
    private ImgoMediaPlayerLib i;
    private d j;
    private int k;
    private int l;
    private int m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private int s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private int z;

    public h(int i, Context context) {
        this(i, context, null);
    }

    private void aA() {
        this.bp = -1;
        this.bq = null;
        this.bt = null;
        this.br = null;
        this.bs = null;
        this.bx = null;
        this.ba = true;
        this.aF = null;
        aC();
        aB();
        this.J = false;
    }

    private void aB() {
        IMGTVMediaDataSource iMGTVMediaDataSource = this.bu;
        if (iMGTVMediaDataSource != null) {
            iMGTVMediaDataSource.release();
            this.bu = null;
        }
    }

    private void aC() {
        this.bw = 0;
        this.bx = null;
    }

    public boolean aD() {
        return this.cx instanceof CencDrmSession;
    }

    public boolean aE() {
        return this.cx instanceof CbcsDrmSession;
    }

    public boolean aF() {
        return this.cx instanceof MaskDrmSession;
    }

    public static int ad() {
        if (!ImgoLibLoader.getInstance().isAllPlayerLibLoaded()) {
            return -99;
        }
        try {
            return ImgoMediaPlayerLib.getTinkerNumber();
        } catch (Exception unused) {
            return -2;
        } catch (UnsatisfiedLinkError unused2) {
            return -1;
        } catch (Throwable unused3) {
            return -3;
        }
    }

    private boolean av() {
        try {
            if (MgtvPlayerGlobalConfig.getEncryptData() == null || MgtvPlayerGlobalConfig.getTokenA() == null) {
                return false;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(MgtvPlayerGlobalConfig.getTokenA());
            sb.append("M56e9@#G");
            return com.hunantv.media.report.c.h.d(this.V).equals(((MgtvPlayerGlobalConfig.PkgData) new Gson().fromJson(com.hunantv.media.utils.a.a.b(MgtvPlayerGlobalConfig.getEncryptData(), com.hunantv.media.report.c.e.a(sb.toString().toLowerCase()).toLowerCase()), MgtvPlayerGlobalConfig.PkgData.class)).pkg);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private void aw() {
        Bundle bundle = this.bj;
        if (bundle != null) {
            this.bk = bundle.getString("BUNDLE_KEY_LOG_TAG_KEY");
        }
    }

    public String ax() {
        return "[" + this.bk + "][" + getClass().getSimpleName() + "]";
    }

    private void ay() {
        this.Y = 0L;
        this.W = 0L;
        this.X = 0L;
        this.aZ = 0;
        this.aS = null;
        this.aT = 0;
        this.aU = 0;
        this.aV = 0L;
        this.aW = false;
        this.aX = false;
        this.ba = true;
        this.bb = 0;
        this.j.reset();
        this.cj = null;
        this.ck = null;
        this.aL = -1L;
        this.aM = -1L;
        this.aN = -1L;
        this.aO = -1L;
        this.aP = -1L;
        this.aQ = -1L;
        this.aR = -1;
        this.cl = null;
        this.cm = null;
        this.ca = false;
    }

    private void az() {
        this.bc = false;
        this.cw = false;
        this.bh = false;
        this.bI = 0;
        this.bH = false;
        this.N = 0;
        this.ad = 0L;
        this.Q = -1.0f;
        this.bJ = false;
        this.bK = null;
        IDrmSession iDrmSession = this.cx;
        if (iDrmSession != null && iDrmSession.isInnerSession()) {
            this.cx.close();
            this.cx = null;
        }
        aA();
    }

    private int k(int i) {
        if (i == 0) {
            return 0;
        }
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 0 : 10;
        }
        return 1;
    }

    public static int p(h hVar) {
        int i = hVar.bI;
        hVar.bI = i + 1;
        return i;
    }

    public float K() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).getAVDiff();
        }
        return 0.0f;
    }

    public float L() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).getFileStartTime();
        }
        return -1.0f;
    }

    public int M() {
        return this.bb;
    }

    public float N() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).getVideoOutputFramesPerSecond();
        }
        return -1.0f;
    }

    public float O() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).getVideoDecodeFramesPerSecond();
        }
        return -1.0f;
    }

    public long P() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).getBitRate();
        }
        return 0L;
    }

    public d T() {
        d dVarA;
        d dVar = this.j;
        return (!(dVar instanceof i) || (dVarA = ((i) dVar).a()) == null) ? this.j : dVarA;
    }

    public f U() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).getMediaInfo();
        }
        return null;
    }

    public int V() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).getWanosAudioEffectChoice();
        }
        return -1;
    }

    public String X() {
        return this.cj;
    }

    public long Z() {
        return this.aQ;
    }

    public synchronized int a(int i, String str, IP2pTask iP2pTask, String str2, int i2, int i3) throws IllegalStateException, OutOfMemoryError {
        this.Y = System.currentTimeMillis();
        aC();
        aB();
        ar();
        b(i);
        this.ca = true;
        this.bh = false;
        this.br = str;
        this.bt = str;
        this.bq = iP2pTask;
        this.bs = str2;
        this.bD = i2;
        if (i == 2) {
            d dVarT = T();
            if (dVarT instanceof ImgoMediaPlayerLib) {
                if (this.bq != null && UrlUtil.isM3u8(this.br) && P2pMgr.isTaskExist(this.bq)) {
                    MGTVP2pDirectMediaDataSource mGTVP2pDirectMediaDataSource = new MGTVP2pDirectMediaDataSource(this, this.br, this.bp, this.bq.getImgoTask(), new MGTVP2pDirectMediaDataSource.Config().setConnectTimeOutUs(NumericUtil.parseInt(this.c)).setReciveDataTimeOutUs(NumericUtil.parseInt(this.d)));
                    this.bu = mGTVP2pDirectMediaDataSource;
                    mGTVP2pDirectMediaDataSource.setLogTag("loop");
                    this.bu.setInfoListener(new IMGTVMediaDataSource.IInfoListener() {
                        @Override
                        public void onSourceInfoUpdate(Object obj) {
                            String cdnIpFromSourceInfo = P2pMgr.getCdnIpFromSourceInfo(obj);
                            if (h.this.bG != null) {
                                DebugLog.d(h.this.ax(), "setDataSource onSourceInfoUpdate cdnip:" + cdnIpFromSourceInfo);
                                h.this.bG.setLastIP(cdnIpFromSourceInfo);
                            }
                        }
                    });
                    DebugLog.i(ax(), "switchLoopSource MGTVP2pDirectMediaDataSource");
                    return ((ImgoMediaPlayerLib) dVarT).loopSwitchVideoSource(this.bu, str, i2, i3, 0);
                }
                ReportParams reportParams = this.bA;
                if (reportParams != null) {
                    reportParams.setP2ps(3);
                }
            }
        } else if (i == 1 && !StringUtil.isEmpty(str2)) {
            this.bo = 1;
            this.bt = str2;
            return this.j.loopSwitchVideoSource(str2, i2, i3, 0);
        }
        this.bo = 0;
        return this.j.loopSwitchVideoSource(str, i2, i3, 0);
    }

    public int aa() {
        return this.aR;
    }

    public boolean ab() {
        return this.F > 0;
    }

    public IP2pTask ai() {
        return this.bq;
    }

    public boolean aj() {
        return this.aj;
    }

    public long ak() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).getAVCachedBytes();
        }
        return 0L;
    }

    public long al() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).getAVCachedTimeMs();
        }
        return 0L;
    }

    public float am() {
        return this.Q;
    }

    public int an() {
        return this.S;
    }

    public boolean ao() {
        return this.bJ;
    }

    public String ap() {
        return this.bK;
    }

    public boolean aq() {
        return this.bh;
    }

    public void ar() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).maybeUpdateAudioTimestamp();
        }
    }

    public IDrmSession as() {
        return this.cx;
    }

    public int at() {
        if (this.bc) {
            return this.bd ? 2 : 1;
        }
        return 0;
    }

    public float b(int i, float f) {
        d dVarT = T();
        return dVarT instanceof ImgoMediaPlayerLib ? ((ImgoMediaPlayerLib) dVarT).getPropertyFloat(i, f) : f;
    }

    public int d() {
        return (int) this.j.getDuration();
    }

    public int e() {
        return this.j.getVideoWidth();
    }

    public int f() {
        return this.j.getVideoHeight();
    }

    public void finalize() throws Throwable {
        super.finalize();
        az();
    }

    public int g() {
        return this.j.getVideoSarNum();
    }

    public int h() {
        return this.j.getVideoSarDen();
    }

    public int l() {
        return this.bo;
    }

    public boolean m() {
        return e(this.bt) || this.n;
    }

    public int n() {
        return (int) this.j.getCurrentPosition();
    }

    public void o() {
        az();
        this.j.release();
    }

    public int r() {
        return this.j.getBufferingPercent();
    }

    public int s() {
        return this.j.getBufferedPercentage();
    }

    public long t() {
        return this.j.getBufferedPositionMs();
    }

    public int v() {
        return this.k;
    }

    public int w() {
        d dVarT = T();
        return dVarT instanceof ImgoMediaPlayerLib ? (int) ((ImgoMediaPlayerLib) dVarT).getTcpDownloadSpeed() : this.aZ;
    }

    public float x() {
        return this.j.getPlaybackSpeed();
    }

    public int y() {
        return this.bw;
    }

    public h(int i, Context context, Bundle bundle) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        this.b = "ImgoMediaPlayer for Android 5.5.3 20230314";
        this.c = "5000000";
        this.d = "10000000";
        this.e = 2L;
        this.f = 0L;
        this.g = 0L;
        this.h = 0L;
        this.i = null;
        this.j = null;
        this.k = 1;
        this.l = 0;
        this.m = 0;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = 0;
        this.t = true;
        this.u = false;
        this.v = true;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = 1000;
        this.A = 1;
        this.B = 0;
        this.C = false;
        this.D = "0";
        this.E = false;
        this.F = 0;
        this.G = "-1";
        this.H = 0;
        this.I = 0;
        this.J = false;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = false;
        this.P = false;
        this.Q = -1.0f;
        this.R = -1L;
        this.S = 0;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = 0L;
        this.X = 0L;
        this.Y = 0L;
        this.Z = 0L;
        this.aa = 48;
        this.ab = 0;
        this.ac = 8;
        this.ad = 0L;
        this.ae = 0;
        this.af = false;
        this.ag = "chodison";
        this.ah = false;
        this.ai = "";
        this.aj = false;
        this.ak = false;
        this.al = 1;
        this.am = false;
        this.an = false;
        this.ao = 0;
        this.ap = false;
        this.aq = false;
        this.ar = false;
        this.as = false;
        this.at = false;
        this.au = false;
        this.av = false;
        this.aw = false;
        this.ax = false;
        this.ay = false;
        this.az = false;
        this.aA = false;
        this.aB = false;
        this.aC = false;
        this.aD = false;
        this.aE = false;
        this.aL = -1L;
        this.aM = -1L;
        this.aN = -1L;
        this.aO = -1L;
        this.aP = -1L;
        this.aQ = -1L;
        this.aR = -1;
        this.aS = null;
        this.aT = 0;
        this.aU = 0;
        this.aV = 0L;
        this.aW = false;
        this.aX = false;
        this.aY = false;
        this.ba = true;
        this.bb = 0;
        this.bc = false;
        this.be = new String[]{"com.hunantv.imgo.activity", "com.mgtv", "com.hunantv.imgo.activity.inter", "com.starcor.hunan", "com.starcor.mango", "com.hunantv.market", "com.hunantv.playertest", "com.starcor.hunan.test", "com.mgtv.downloader", "com.hunantv.imgo.player.demo", "com.hunantv.mgtv.mgtvplayer", "com.mgmi.adsdk", "com.mgtv.noah", "com.hunantv.imgo.player.core.test", "com.mgtv.vipsdk", "com.hunantv.demo.oversea_main", "com.mgtv.thirdplayer", "com.huawei.himovie.overseas", "com.huawei.hwvplayer", "com.huawei.himovie", "com.mgtv.noah", "com.hunantv.imgo.player.core.test", "com.android.VideoPlayer", "com.ct.itv", "com.huawei.himovie", "com.huawei.hwvplayer", "com.huawei.himovie.overseas", "com.huawei.himovie.mobiletv", "com.hihonor.himovie", "com.huawei.movie.car", "com.crgt.ilife", "com.heytap.yoli", "com.coloros.yoli", "com.huawei.himovie.car", "com.hunantv.imgo.samsung", "com.mg.ec", "com.hunantv.mglive", "com.lion.market", "com.zslm.xishuashua", "com.miui.videoplayer"};
        this.bh = false;
        this.bi = 0;
        this.bk = "";
        this.bn = false;
        this.bo = 0;
        this.bp = -1;
        this.bq = null;
        this.bs = null;
        this.bt = null;
        this.bw = 0;
        this.bx = null;
        this.by = null;
        this.bz = null;
        this.bB = false;
        this.bC = com.hunantv.media.player.a.a.b.NORMAL;
        this.bD = -1;
        this.bH = false;
        this.bJ = false;
        this.bL = "M56e9@#G";
        this.bM = new d.e() {
            @Override
            public boolean a(d dVar, int i2, int i3) {
                if (i2 == 100003 && (h.this.k == 2 || h.this.k == 3)) {
                    int i4 = h.this.k;
                    h hVar = h.this;
                    return i4 == 2 ? hVar.a(hVar.bt, i2, i3) : hVar.b(hVar.bt, i2, i3);
                }
                DebugLog.i(h.this.ax(), "------chodison----onError get current speed:" + h.this.w());
                if (h.this.bW != null) {
                    return h.this.bW.onError(i2, i3);
                }
                return true;
            }
        };
        this.bN = new d.g() {
            @Override
            public boolean a(d dVar, int i2, int i3) {
                String strAx;
                String str;
                PreferencesUtil preferencesUtil;
                String str2;
                if (h.this.bO == null) {
                    return false;
                }
                if (i2 == 3) {
                    if (h.this.Y > 0) {
                        h.this.Z = System.currentTimeMillis() - h.this.Y;
                        DebugLog.e(h.this.ax(), "-----chodison--first video render--loading video consume time huafei：" + h.this.Z);
                        h.this.Y = 0L;
                    }
                    h.this.bh = true;
                } else if (i2 == 6) {
                    if (i3 == 0) {
                        h.this.k = 1;
                        strAx = h.this.ax();
                        str = "MEDIA_INFO_VIDEO_DECODER_OPEN:SW";
                    } else if (i3 == 1) {
                        h.this.k = 2;
                        strAx = h.this.ax();
                        str = "MEDIA_INFO_VIDEO_DECODER_OPEN:HW";
                    }
                    DebugLog.d(strAx, str);
                } else if (i2 == 801) {
                    h hVar = h.this;
                    if (i3 == 1) {
                        hVar.aY = true;
                    } else {
                        hVar.aY = false;
                    }
                } else if (i2 == 810) {
                    try {
                        if (h.this.bA != null && h.this.bA.getVideoType() == ReportParams.VideoType.VOD && h.this.aY && h.this.d() > 0) {
                            DebugLog.d(h.this.ax(), "live in vod change not seekable 0");
                            h.this.aY = false;
                            if (h.this.bO != null) {
                                h.this.bO.onInfo(801, 0);
                            }
                        }
                        if (h.this.bh && !h.this.bH) {
                            h.p(h.this);
                            if (h.this.bI > 3) {
                                DebugLog.d(h.this.ax(), "live in vod mSegCounter:" + h.this.bI + ",mIsLive:" + h.this.aY + ",getDuration():" + h.this.d());
                                if (h.this.bA != null && h.this.bA.getVideoType() == ReportParams.VideoType.VOD && h.this.aY && h.this.d() <= 0) {
                                    DebugLog.e(h.this.ax(), "live in vod complete in");
                                    h.this.bH = true;
                                    h.this.a();
                                    h.this.C();
                                    if (h.this.bm != null) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("psuuid_");
                                        sb.append(h.this.bE != null ? h.this.bE.g() : "00");
                                        h.this.bm.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_LIVE_IN_VOD_COMPLETE, "0", sb.toString(), null);
                                    }
                                    if (h.this.bV != null) {
                                        h.this.bV.onCompletion(30020, 9999);
                                    }
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else if (i2 == 2810) {
                    h.this.bb = i3;
                } else if (i2 == 2880) {
                    DebugLog.d(h.this.ax(), "MEDIA_INFO_MOMERY_PLAY_TYPE:" + i3);
                    if (i3 > 0) {
                        h.this.bc = true;
                        if (i3 == 2) {
                            h.this.bd = true;
                        }
                    }
                } else if (i2 == 2890) {
                    strAx = h.this.ax();
                    str = "MEDIA_INFO_M3U8_EXIST_DATA:" + i3;
                    DebugLog.d(strAx, str);
                } else if (i2 != 10021) {
                    if (i2 == 701) {
                        if (i3 == 1) {
                            h.this.X = System.currentTimeMillis();
                        }
                        h.this.aW = true;
                    } else if (i2 == 702) {
                        if (i3 == 1 && h.this.X != 0) {
                            h.d(h.this, System.currentTimeMillis() - h.this.X);
                            h.this.X = 0L;
                        }
                        h.this.aW = false;
                    } else {
                        if (i2 == 10002) {
                            DebugLog.i(h.this.ax(), "chodison info MEDIA_INFO_MEDIACODEC_H264_NOSUPPORT:" + i3);
                            if (i3 == 0) {
                                preferencesUtil = h.this.bf;
                                str2 = PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_BASELINE;
                            } else {
                                if (i3 != 1) {
                                    if (i3 == 2) {
                                        preferencesUtil = h.this.bf;
                                        str2 = PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_HIGH;
                                    }
                                    return true;
                                }
                                preferencesUtil = h.this.bf;
                                str2 = PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_MAIN;
                            }
                            preferencesUtil.putBoolean(str2, false);
                            return true;
                        }
                        if (i2 == 10003) {
                            DebugLog.i(h.this.ax(), "chodison MEDIA_INFO_MEDIACODEC_H265_NOSUPPORT:" + i3);
                            h.this.bf.putBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H265_SUPPORT, false);
                            return true;
                        }
                    }
                } else if (i3 == 1 && h.this.bq != null && h.this.bq.getStatus() != 0) {
                    DebugLog.e(h.this.ax(), "p2p not running before player load data paused");
                }
                return h.this.bO.onInfo(i2, i3);
            }
        };
        this.bP = new d.h() {
            @Override
            public boolean a(d dVar, int i2, String str) {
                if (h.this.bQ != null) {
                    return h.this.bQ.onInfo(i2, str);
                }
                return false;
            }
        };
        this.ca = false;
        this.cb = new d.i() {
            @Override
            public void a(d dVar, String str, int i2, int i3) {
                DebugLog.d(h.this.ax(), "onLoopSwitchSourceInfo (event:" + i2 + ",key:" + i3 + ",mCurrentLoopSourceKey:" + h.this.bD + ",url:" + str + ")");
                if (i3 < 0 || i3 != h.this.bD) {
                    return;
                }
                if (i2 == 10) {
                    h.this.ca = false;
                }
                if (i2 == 5) {
                    h.this.bR.onPrepared();
                }
                if (i2 == 9) {
                    h.this.bN.a(h.this.j, 3, 0);
                }
            }

            @Override
            public void b(d dVar, String str, int i2, int i3) {
            }

            @Override
            public void c(d dVar, String str, int i2, int i3) {
                DebugLog.e(h.this.ax(), "onLoopSwitchSourceFail (event:" + i2 + ",key:" + i3 + ",mCurrentLoopSourceKey:" + h.this.bD + ",url:" + str + ")");
                if (i3 < 0 || i3 != h.this.bD) {
                    return;
                }
                h.this.bM.a(h.this.j, MgtvMediaPlayer.MGTVMEDIA_ERROR_WHAT_200100, Math.abs(i2) + MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_400100);
            }
        };
        this.cc = new d.n() {
            @Override
            public void onSmoothSwitchSourceComplete(d dVar, int i2, int i3, String str) {
                if (h.this.ct != null) {
                    h.this.ct.onSmoothSwitchSourceComplete(dVar, i2, i3, str);
                }
            }

            @Override
            public void onSmoothSwitchSourceFailed(d dVar, int i2, int i3, String str) {
                if (h.this.ct != null) {
                    h.this.ct.onSmoothSwitchSourceFailed(dVar, i2, i3, str);
                }
            }

            @Override
            public void onSmoothSwitchSourceInfo(d dVar, int i2, int i3, String str) {
                if (h.this.ct != null) {
                    h.this.ct.onSmoothSwitchSourceInfo(dVar, i2, i3, str);
                }
            }
        };
        this.ce = new d.f() {
            @Override
            public void a(d dVar, int i2, int i3) {
                DebugLog.ifmt(h.this.ax(), "onGetFrameImageStatus:%d-%d", Integer.valueOf(i2), Integer.valueOf(i3));
                if (h.this.cd != null) {
                    h.this.cd.onGetFrameImageStatus(i2, i3);
                }
            }

            @Override
            public void a(d dVar, int i2, int i3, String str) {
                DebugLog.ifmt(h.this.ax(), "onGetFrameImageInfo:%d-%d-%s", Integer.valueOf(i2), Integer.valueOf(i3), str);
                if (h.this.cd != null) {
                    h.this.cd.onGetFrameImageInfo(i2, i3, str);
                }
            }
        };
        this.cf = new d.InterfaceC0135d() {
            @Override
            public void a(Map<UUID, MgtvDrmUtils.PSSH> map) {
                if (map == null) {
                    DebugLog.i(h.this.ax(), "onDrmPsshMap null");
                    h.this.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_PARAMS);
                    return;
                }
                DebugLog.i(h.this.ax(), "onDrmPsshMap success");
                if (h.this.aD()) {
                    ((CencDrmSession) h.this.cx).realProvision(map);
                    return;
                }
                boolean zAE = h.this.aE();
                h hVar = h.this;
                if (zAE) {
                    ((CbcsDrmSession) hVar.cx).realProvision(map);
                } else {
                    hVar.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_SESSION);
                }
            }

            @Override
            public void a(byte[] bArr) {
                h hVar;
                int i2;
                h hVar2;
                int i3;
                int iInit;
                if (bArr == null || bArr.length <= 0) {
                    DebugLog.i(h.this.ax(), "onMaskDrmInit keyid is null");
                    hVar = h.this;
                    i2 = MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_KEYID_INVALID;
                } else {
                    DebugLog.i(h.this.ax(), "onDrmKeyId success.keyid size=" + bArr.length);
                    if (h.this.cx != null) {
                        h.this.cx.close();
                        h.this.cx = null;
                    }
                    if (h.this.cx != null) {
                        boolean zAF = h.this.aF();
                        hVar2 = h.this;
                        if (!zAF) {
                            i3 = MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_SESSION;
                            hVar2.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, i3);
                            return;
                        }
                        ((MaskDrmSession) hVar2.cx).realProvision(bArr);
                        return;
                    }
                    if (!MaskDrmManager.getInstance().isInited() && (iInit = MaskDrmManager.getInstance().init((Application) h.this.V.getApplicationContext(), null)) != 0) {
                        DebugLog.i(h.a, "MaskDrmManager init error ret=" + iInit);
                        h.this.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INIT_ERROR);
                    }
                    if (!MaskDrmManager.getInstance().isInited()) {
                        hVar2 = h.this;
                        i3 = MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INIT_INVALID;
                        hVar2.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, i3);
                        return;
                    } else {
                        if (h.this.cy != null && h.this.cy.size() > 0) {
                            h.this.cx = MaskDrmManager.getInstance().genDrmSession(new IDrmManager.SessionConfig(null, null, ((MgtvDrmParams.DrmInfo) h.this.cy.get(0)).drmType, h.this.cy));
                            h.this.cx.setIsInnerSession(true);
                            h.this.cx.addOnProvisionSuccessListener(new IDrmSession.OnProvisionSuccessListener() {
                                @Override
                                public void onSuccess(IDrmSession iDrmSession) {
                                    h.this.E();
                                }
                            });
                            h.this.cx.addOnProvisionErrorListener(new IDrmSession.OnProvisionErrorListener() {
                                @Override
                                public void onError(IDrmSession iDrmSession, int i4, String str) {
                                    h.this.d(iDrmSession != null ? iDrmSession.getErrorWhat() : MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, i4);
                                }
                            });
                            h.this.cx.bind(h.this);
                            hVar2 = h.this;
                            ((MaskDrmSession) hVar2.cx).realProvision(bArr);
                            return;
                        }
                        hVar = h.this;
                        i2 = MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INFO_LIST_INVALID;
                    }
                }
                hVar.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, i2);
            }
        };
        this.ch = new d.j() {
            @Override
            public void a(d dVar, int i2, Bundle bundle2) {
                if (i2 != 131152 || bundle2 == null || h.this.cg == null) {
                    return;
                }
                h.this.cg.onInfo(bundle2.getInt(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_PLAYER_EVENT_TYPE_INT), bundle2.getInt(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_PLAYER_EVENT_ARG1_INT));
            }
        };
        this.cl = "NONE";
        this.co = new d.q() {
            @Override
            public void a(d dVar, int i2, Bundle bundle2) {
                String strAx;
                StringBuilder sb;
                String str;
                String[] strArrSplit;
                String string;
                MgtvPlayerListener.OnFrameListener innerFrameListener;
                String[] strArrSplit2;
                String str2;
                if (i2 != 32) {
                    if (i2 != 33) {
                        if (i2 != 41) {
                            if (i2 == 64) {
                                if (h.this.I != 1 || h.this.J || h.this.bm == null) {
                                    return;
                                }
                                h.this.bm.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_DNS_SYNC_IN_ASYNC, h.this.bE != null ? h.this.bE.g() : "00", "", null);
                                h.this.J = true;
                                return;
                            }
                            if (i2 == 74244) {
                                if (h.this.bQ == null || bundle2 == null) {
                                    return;
                                }
                                h.this.bQ.onInfo(8, "" + bundle2.getInt(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_EVENT_IO_TRAFFIC_DLBYTES_INT) + "-" + bundle2.getInt(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_EVENT_IO_TRAFFIC_AVCACHEDTIMEMS_INT));
                                return;
                            }
                            if (i2 != 48) {
                                int i3 = -1;
                                if (i2 != 49) {
                                    if (i2 == 80 || i2 == 81) {
                                        if (i2 == 81) {
                                            string = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_AFRAME_COMING_CLOCK_STRING);
                                        } else {
                                            String string2 = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_VFRAME_COMING_CLOCK_STRING);
                                            bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_VFRAME_COMING_CLOCK_STRING);
                                            string = string2;
                                        }
                                        if (h.this.bG == null || (innerFrameListener = h.this.bG.getInnerFrameListener()) == null || StringUtil.isEmpty(string) || (strArrSplit2 = string.split("-")) == null || strArrSplit2.length < 4) {
                                            return;
                                        }
                                        MgtvPlayerListener.FrameClock frameClock = new MgtvPlayerListener.FrameClock();
                                        int i4 = NumericUtil.parseInt(strArrSplit2[0], -1);
                                        frameClock.clock_type = i4;
                                        if (i4 == 1) {
                                            frameClock.tTimeMs = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                            frameClock.ptsMs = NumericUtil.parseLong(strArrSplit2[2], -1L);
                                            frameClock.cTimeMs = NumericUtil.parseLong(strArrSplit2[3], -1L);
                                        } else {
                                            if (i4 == 0) {
                                                frameClock.pkt_pts = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                                str2 = strArrSplit2[2];
                                            } else if (i4 == 2 || i4 == 4 || i4 == 5) {
                                                frameClock.pkt_pts = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                                frameClock.startPts = NumericUtil.parseLong(strArrSplit2[2], -1L);
                                                frameClock.endPts = NumericUtil.parseLong(strArrSplit2[3], -1L);
                                            } else if (i4 == 3) {
                                                frameClock.pkt_pts = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                                frameClock.vframe_time = NumericUtil.parseLong(strArrSplit2[2], -1L);
                                                frameClock.seekSerial = NumericUtil.parseLong(strArrSplit2[3], -1L);
                                            } else if (i4 == 6) {
                                                frameClock.pkt_pts = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                                str2 = strArrSplit2[2];
                                            }
                                            frameClock.vframe_time = NumericUtil.parseLong(str2, -1L);
                                        }
                                        if (frameClock.checkValid(frameClock.clock_type)) {
                                            innerFrameListener.onVFrameClockCome(frameClock);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (bundle2 == null) {
                                    return;
                                }
                                h.this.f16cn = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_DNS_ABORT_INFO_STRING);
                                try {
                                    int i5 = Integer.parseInt(h.this.f16cn) / 1000;
                                    if (i5 > 30) {
                                        i5 = 30;
                                    }
                                    i3 = i5 / 5;
                                } catch (Exception unused) {
                                }
                                if (h.this.bm != null) {
                                    h.this.bm.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_DNS_ABORT, i3 + "", "cost:" + h.this.f16cn + ",url:" + h.this.bl, null);
                                }
                                strAx = h.this.ax();
                                sb = new StringBuilder();
                                sb.append("update mCurrentDnsAbortTime(ms):");
                                str = h.this.f16cn;
                            } else {
                                if (bundle2 == null) {
                                    return;
                                }
                                h.this.cm = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_HLS_SEG_SIZE_INFO_STRING);
                                DebugLog.i(h.this.ax(), "update mCurrentHLSSegSizeInfo :" + h.this.cm);
                                if (h.this.cm == null || (strArrSplit = h.this.cm.split("/")) == null || strArrSplit.length < 5 || !"4".equalsIgnoreCase(strArrSplit[0])) {
                                    return;
                                }
                                h.this.bJ = true;
                                h.this.bK = strArrSplit[4];
                                strAx = h.this.ax();
                                sb = new StringBuilder();
                                sb.append("update mCurrentHLSSegSizeInfo error mLastSegInfoErrFileName:");
                                str = h.this.bK;
                            }
                        } else {
                            if (bundle2 == null) {
                                return;
                            }
                            h.this.cl = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_DRM_METHOD_NAME_STRING);
                            strAx = h.this.ax();
                            sb = new StringBuilder();
                            sb.append("update mCurrentDrmMetodName :");
                            str = h.this.cl;
                        }
                    } else {
                        if (bundle2 == null) {
                            return;
                        }
                        h.this.ck = bundle2.getString("codec_name");
                        strAx = h.this.ax();
                        sb = new StringBuilder();
                        sb.append("update mCurrentAudioDecoderName :");
                        str = h.this.ck;
                    }
                } else {
                    if (bundle2 == null) {
                        return;
                    }
                    h.this.cj = bundle2.getString("codec_name");
                    strAx = h.this.ax();
                    sb = new StringBuilder();
                    sb.append("update mCurrentVideoDecoderName :");
                    str = h.this.cj;
                }
                sb.append(str);
                DebugLog.i(strAx, sb.toString());
            }
        };
        this.cp = new d.p() {
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:25:0x009d  */
            @Override
            public boolean a(d dVar, int i2, Bundle bundle2) {
                if (h.this.ci != null) {
                    return h.this.ci.onSourceNetCtrl(i2, bundle2);
                }
                DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x", Integer.valueOf(i2));
                switch (i2) {
                    case 131073:
                        DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener will tcp connect ip:%s", bundle2.getString("ip"));
                        return false;
                    case 131074:
                        DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener did tcp connect: ip:%s, port:%d, family:%d, error_code:%d", bundle2.getString("ip"), Integer.valueOf(bundle2.getInt("error")), Integer.valueOf(bundle2.getInt("family")), Integer.valueOf(bundle2.getInt("error")));
                        return false;
                    case 131075:
                        int i3 = bundle2.getInt("error_code");
                        if (i3 != 0) {
                            h hVar = h.this;
                            hVar.aS = hVar.f(bundle2.getString("url"));
                            h.this.aU = i3;
                            h.this.aV = bundle2.getInt("retry_counter");
                            h.this.aT = bundle2.getInt("io_type");
                            if (i3 == 300005 || (h.this.aX && i3 == 300600)) {
                                DebugLog.efmt(h.this.ax(), "OnSourceNetHandledListener (CTRL_WILL_HTTP_OPEN) network broken,RetryCount:%d,error_code:%d", Long.valueOf(h.this.aV), Integer.valueOf(i3));
                                return true;
                            }
                            if (h.this.aY) {
                                if (!(h.this.aW && h.this.J() && UrlUtil.isSegment(h.this.aS)) && h.this.aX) {
                                    UrlUtil.isM3u8(h.this.aS);
                                } else {
                                    h hVar2 = h.this;
                                    hVar2.aV = hVar2.e;
                                }
                            } else if (h.this.aW || !h.this.aX) {
                                h hVar3 = h.this;
                                hVar3.aV = hVar3.e;
                            }
                            DebugLog.ifmt(h.this.ax(), "OnSourceNetHandledListener (CTRL_WILL_HTTP_OPEN)  url:%s,iotype:%d, RetryCount:%d,error_code:%d", h.this.aS, Integer.valueOf(h.this.aT), Long.valueOf(h.this.aV), Integer.valueOf(i3));
                            if (h.this.e > h.this.aV && ((i3 < 300400 || i3 > 300499) && (i3 < 300500 || i3 > 300599))) {
                                return true;
                            }
                            DebugLog.efmt(h.this.ax(), "OnSourceNetHandledListener (CTRL_WILL_HTTP_OPEN) skip,RetryCount:%d,error_code:%d", Long.valueOf(h.this.aV), Integer.valueOf(i3));
                            return false;
                        }
                        return false;
                    case 131076:
                        DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener did tcp close", new Object[0]);
                        return false;
                    default:
                        return false;
                }
            }

            @Override
            public void b(d dVar, int i2, Bundle bundle2) {
                MgtvPlayerListener.OnAVPlayListener onAVPlayListener;
                DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener.onSourceNetEvent 0x%5x", Integer.valueOf(i2));
                if (i2 != 22) {
                    switch (i2) {
                        case 1:
                            long j = bundle2.getLong("http_offset");
                            int i3 = bundle2.getInt("http_error");
                            String string = bundle2.getString("http_url");
                            bundle2.getString("player_hash");
                            bundle2.getString("user_msg");
                            bundle2.getInt("retry_counter");
                            long j2 = bundle2.getLong("switch_key");
                            h.this.bl = string;
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http will open: url:%s, offset:%d, error:%d, switch_key:%d", string, Long.valueOf(j), Integer.valueOf(i3), Long.valueOf(j2));
                            break;
                        case 2:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http did open: url:%s, offset:%d, error:%d, http_code:%d, http_filesize:%d, switch_key:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")), Integer.valueOf(bundle2.getInt("http_code")), Long.valueOf(bundle2.getLong("http_filesize")), Long.valueOf(bundle2.getLong("switch_key")));
                            break;
                        case 3:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http will seek: url:%s, offset:%d, error:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")));
                            break;
                        case 4:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http did seek: url:%s, offset:%d, error:%d, http_code:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")), Integer.valueOf(bundle2.getInt("http_code")));
                            break;
                        case 5:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http will close: url:%s, offset:%d, error:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")));
                            break;
                        case 6:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http did close: url:%s, offset:%d, error:%d, http_code:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")), Integer.valueOf(bundle2.getInt("http_code")));
                            break;
                        default:
                            switch (i2) {
                                case 17:
                                    long j3 = bundle2.getLong("time_consume");
                                    h.this.aM = j3;
                                    DebugLog.ifmt(h.this.ax(), "onSourceNetEvent loading video data(tcp connect):%d ms", Long.valueOf(TimeUtil.us2ms(j3)));
                                    break;
                                case 18:
                                    long j4 = bundle2.getLong("time_consume");
                                    h.this.aN = j4;
                                    DebugLog.ifmt(h.this.ax(), "onSourceNetEvent loading video data(http response):%d ms", Long.valueOf(TimeUtil.us2ms(j4)));
                                    break;
                                case 19:
                                    long j5 = bundle2.getLong("time_consume");
                                    h.this.aO = j5;
                                    DebugLog.ifmt(h.this.ax(), "onSourceNetEvent loading video data(find stream info):%d ms", Long.valueOf(TimeUtil.us2ms(j5)));
                                    break;
                                case 20:
                                    long j6 = bundle2.getLong("time_consume");
                                    h.this.aP = j6;
                                    DebugLog.ifmt(h.this.ax(), "onSourceNetEvent loading video data(fist buffer):%d ms", Long.valueOf(TimeUtil.us2ms(j6)));
                                    break;
                                default:
                                    switch (i2) {
                                        case 78337:
                                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent tcp will host address name: hostname:%s, family:%d, error:%d, ip:%s, port:%d", bundle2.getString("host_hostname"), Integer.valueOf(bundle2.getInt("host_family")), Integer.valueOf(bundle2.getInt("host_error")), bundle2.getString("host_ip"), Integer.valueOf(bundle2.getInt("host_port")));
                                            break;
                                        case 78338:
                                            int i4 = bundle2.getInt("host_error");
                                            int i5 = bundle2.getInt("host_family");
                                            String string2 = bundle2.getString("host_hostname");
                                            String string3 = bundle2.getString("host_ip");
                                            int i6 = bundle2.getInt("host_port");
                                            int i7 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TYPE_INT);
                                            int i8 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TIME_INT);
                                            long j7 = i8;
                                            if (j7 > h.this.aQ) {
                                                h.this.aQ = j7;
                                                h.this.aR = i7;
                                            }
                                            DebugLog.i(h.this.ax(), "loading video data(dns) " + i8 + " ms");
                                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent tcp did host address name: hostname:%s, family:%d, error:%d, ip:%s, port:%d, dns_type:%d, dns_time:%d ms", string2, Integer.valueOf(i5), Integer.valueOf(i4), string3, Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8));
                                            break;
                                        default:
                                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent %5x", Integer.valueOf(i2));
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                } else {
                    long j8 = bundle2.getLong("time_consume");
                    DebugLog.ifmt(h.this.ax(), "chodison paused status is_paused:%d ", Long.valueOf(j8));
                    if (h.this.bG != null && (onAVPlayListener = h.this.bG.getOnAVPlayListener()) != null) {
                        onAVPlayListener.onAVPauseOrPlay(j8 == 1);
                    }
                }
                if (h.this.ci != null) {
                    h.this.ci.onSourceNetEvent(i2, bundle2);
                }
            }
        };
        this.cr = new d.o() {
            @Override
            public void a(d dVar, int i2, Bundle bundle2) {
                if (h.this.cq != null) {
                    h.this.cq.onSourceFlowInfoEvent(i2, bundle2);
                }
            }
        };
        this.cs = 1.0f;
        this.cw = false;
        this.cy = null;
        this.V = context;
        this.k = i;
        this.bj = bundle;
        a(context, false);
    }

    public static String ac() {
        if (!ImgoLibLoader.getInstance().isAllPlayerLibLoaded()) {
            return "n";
        }
        try {
            return ImgoMediaPlayerLib.getDlopenStatus();
        } catch (Exception unused) {
            return "n2";
        } catch (UnsatisfiedLinkError unused2) {
            return "n1";
        } catch (Throwable unused3) {
            return "n3";
        }
    }

    public IMGTVMediaDataSource A() {
        return this.bu;
    }

    public boolean B() {
        return this.ba;
    }

    public void C() {
        if (this.ba) {
            d dVarT = T();
            if (dVarT instanceof ImgoMediaPlayerLib) {
                DebugLog.i(ax(), "call native pauseLoadData");
                ((ImgoMediaPlayerLib) dVarT).pauseLoadData(true);
                this.ba = false;
            }
        }
    }

    public void D() {
        if (this.ba) {
            return;
        }
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            DebugLog.i(ax(), "call native resumeLoadData");
            ((ImgoMediaPlayerLib) dVarT).pauseLoadData(false);
            this.ba = true;
        }
    }

    public void E() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setDrmLicensePrepared(2);
        }
    }

    public boolean F() {
        if (this.aH <= 0 || this.aI <= 0) {
            return false;
        }
        d dVar = this.j;
        boolean zIsSupportedSnapshot = dVar instanceof ImgoMediaPlayerLib ? ((ImgoMediaPlayerLib) dVar).isSupportedSnapshot() : false;
        IMgtvRenderView.ISurfaceHolder iSurfaceHolder = this.U;
        if (iSurfaceHolder == null) {
            return zIsSupportedSnapshot;
        }
        IMgtvRenderView renderView = iSurfaceHolder.getRenderView();
        if (renderView instanceof com.hunantv.media.player.f.e) {
            zIsSupportedSnapshot = true;
        }
        return renderView instanceof com.hunantv.media.player.f.d ? SurfaceViewUtil.isSnapshotSupport() : zIsSupportedSnapshot;
    }

    public boolean G() {
        return this.j.isMediaCodecSWRender();
    }

    public String H() {
        return this.bt;
    }

    public String I() {
        return this.br;
    }

    public boolean J() {
        return UrlUtil.isM3u8(this.bt);
    }

    public boolean Q() {
        return this.cu;
    }

    public boolean R() {
        return this.cv;
    }

    public boolean S() {
        return this.cw;
    }

    public boolean W() {
        return a(T());
    }

    public String Y() {
        return this.ck;
    }

    public int a(IMgtvRenderView iMgtvRenderView) {
        if (iMgtvRenderView == null) {
            return 0;
        }
        if (iMgtvRenderView instanceof com.hunantv.media.player.f.e) {
            return 1;
        }
        boolean z = iMgtvRenderView instanceof com.hunantv.media.player.f.d;
        return 0;
    }

    public void ae() throws IllegalStateException, IOException, IllegalArgumentException {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).stopRecordVideo();
        }
    }

    public boolean af() {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).isVideoRecording();
        }
        return false;
    }

    public String ag() {
        return this.cl;
    }

    public boolean ah() {
        if (this.bG.isSystemPlayer()) {
            this.al = 0;
        }
        return this.al > 0;
    }

    public boolean p() {
        return this.ca;
    }

    public String q() {
        return this.cm;
    }

    public boolean u() {
        return this.k != 1;
    }

    public d z() {
        return this.j;
    }

    @TargetApi(14)
    public h(int i, Context context, boolean z, int i2, Bundle bundle) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        this.b = "ImgoMediaPlayer for Android 5.5.3 20230314";
        this.c = "5000000";
        this.d = "10000000";
        this.e = 2L;
        this.f = 0L;
        this.g = 0L;
        this.h = 0L;
        this.i = null;
        this.j = null;
        this.k = 1;
        this.l = 0;
        this.m = 0;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = 0;
        this.t = true;
        this.u = false;
        this.v = true;
        this.w = false;
        this.x = false;
        this.y = false;
        this.z = 1000;
        this.A = 1;
        this.B = 0;
        this.C = false;
        this.D = "0";
        this.E = false;
        this.F = 0;
        this.G = "-1";
        this.H = 0;
        this.I = 0;
        this.J = false;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = false;
        this.P = false;
        this.Q = -1.0f;
        this.R = -1L;
        this.S = 0;
        this.T = null;
        this.U = null;
        this.V = null;
        this.W = 0L;
        this.X = 0L;
        this.Y = 0L;
        this.Z = 0L;
        this.aa = 48;
        this.ab = 0;
        this.ac = 8;
        this.ad = 0L;
        this.ae = 0;
        this.af = false;
        this.ag = "chodison";
        this.ah = false;
        this.ai = "";
        this.aj = false;
        this.ak = false;
        this.al = 1;
        this.am = false;
        this.an = false;
        this.ao = 0;
        this.ap = false;
        this.aq = false;
        this.ar = false;
        this.as = false;
        this.at = false;
        this.au = false;
        this.av = false;
        this.aw = false;
        this.ax = false;
        this.ay = false;
        this.az = false;
        this.aA = false;
        this.aB = false;
        this.aC = false;
        this.aD = false;
        this.aE = false;
        this.aL = -1L;
        this.aM = -1L;
        this.aN = -1L;
        this.aO = -1L;
        this.aP = -1L;
        this.aQ = -1L;
        this.aR = -1;
        this.aS = null;
        this.aT = 0;
        this.aU = 0;
        this.aV = 0L;
        this.aW = false;
        this.aX = false;
        this.aY = false;
        this.ba = true;
        this.bb = 0;
        this.bc = false;
        this.be = new String[]{"com.hunantv.imgo.activity", "com.mgtv", "com.hunantv.imgo.activity.inter", "com.starcor.hunan", "com.starcor.mango", "com.hunantv.market", "com.hunantv.playertest", "com.starcor.hunan.test", "com.mgtv.downloader", "com.hunantv.imgo.player.demo", "com.hunantv.mgtv.mgtvplayer", "com.mgmi.adsdk", "com.mgtv.noah", "com.hunantv.imgo.player.core.test", "com.mgtv.vipsdk", "com.hunantv.demo.oversea_main", "com.mgtv.thirdplayer", "com.huawei.himovie.overseas", "com.huawei.hwvplayer", "com.huawei.himovie", "com.mgtv.noah", "com.hunantv.imgo.player.core.test", "com.android.VideoPlayer", "com.ct.itv", "com.huawei.himovie", "com.huawei.hwvplayer", "com.huawei.himovie.overseas", "com.huawei.himovie.mobiletv", "com.hihonor.himovie", "com.huawei.movie.car", "com.crgt.ilife", "com.heytap.yoli", "com.coloros.yoli", "com.huawei.himovie.car", "com.hunantv.imgo.samsung", "com.mg.ec", "com.hunantv.mglive", "com.lion.market", "com.zslm.xishuashua", "com.miui.videoplayer"};
        this.bh = false;
        this.bi = 0;
        this.bk = "";
        this.bn = false;
        this.bo = 0;
        this.bp = -1;
        this.bq = null;
        this.bs = null;
        this.bt = null;
        this.bw = 0;
        this.bx = null;
        this.by = null;
        this.bz = null;
        this.bB = false;
        this.bC = com.hunantv.media.player.a.a.b.NORMAL;
        this.bD = -1;
        this.bH = false;
        this.bJ = false;
        this.bL = "M56e9@#G";
        this.bM = new d.e() {
            @Override
            public boolean a(d dVar, int i3, int i4) {
                if (i3 == 100003 && (h.this.k == 2 || h.this.k == 3)) {
                    int i5 = h.this.k;
                    h hVar = h.this;
                    return i5 == 2 ? hVar.a(hVar.bt, i3, i4) : hVar.b(hVar.bt, i3, i4);
                }
                DebugLog.i(h.this.ax(), "------chodison----onError get current speed:" + h.this.w());
                if (h.this.bW != null) {
                    return h.this.bW.onError(i3, i4);
                }
                return true;
            }
        };
        this.bN = new d.g() {
            @Override
            public boolean a(d dVar, int i3, int i4) {
                String strAx;
                String str;
                PreferencesUtil preferencesUtil;
                String str2;
                if (h.this.bO == null) {
                    return false;
                }
                if (i3 == 3) {
                    if (h.this.Y > 0) {
                        h.this.Z = System.currentTimeMillis() - h.this.Y;
                        DebugLog.e(h.this.ax(), "-----chodison--first video render--loading video consume time huafei：" + h.this.Z);
                        h.this.Y = 0L;
                    }
                    h.this.bh = true;
                } else if (i3 == 6) {
                    if (i4 == 0) {
                        h.this.k = 1;
                        strAx = h.this.ax();
                        str = "MEDIA_INFO_VIDEO_DECODER_OPEN:SW";
                    } else if (i4 == 1) {
                        h.this.k = 2;
                        strAx = h.this.ax();
                        str = "MEDIA_INFO_VIDEO_DECODER_OPEN:HW";
                    }
                    DebugLog.d(strAx, str);
                } else if (i3 == 801) {
                    h hVar = h.this;
                    if (i4 == 1) {
                        hVar.aY = true;
                    } else {
                        hVar.aY = false;
                    }
                } else if (i3 == 810) {
                    try {
                        if (h.this.bA != null && h.this.bA.getVideoType() == ReportParams.VideoType.VOD && h.this.aY && h.this.d() > 0) {
                            DebugLog.d(h.this.ax(), "live in vod change not seekable 0");
                            h.this.aY = false;
                            if (h.this.bO != null) {
                                h.this.bO.onInfo(801, 0);
                            }
                        }
                        if (h.this.bh && !h.this.bH) {
                            h.p(h.this);
                            if (h.this.bI > 3) {
                                DebugLog.d(h.this.ax(), "live in vod mSegCounter:" + h.this.bI + ",mIsLive:" + h.this.aY + ",getDuration():" + h.this.d());
                                if (h.this.bA != null && h.this.bA.getVideoType() == ReportParams.VideoType.VOD && h.this.aY && h.this.d() <= 0) {
                                    DebugLog.e(h.this.ax(), "live in vod complete in");
                                    h.this.bH = true;
                                    h.this.a();
                                    h.this.C();
                                    if (h.this.bm != null) {
                                        StringBuilder sb = new StringBuilder();
                                        sb.append("psuuid_");
                                        sb.append(h.this.bE != null ? h.this.bE.g() : "00");
                                        h.this.bm.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_LIVE_IN_VOD_COMPLETE, "0", sb.toString(), null);
                                    }
                                    if (h.this.bV != null) {
                                        h.this.bV.onCompletion(30020, 9999);
                                    }
                                }
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else if (i3 == 2810) {
                    h.this.bb = i4;
                } else if (i3 == 2880) {
                    DebugLog.d(h.this.ax(), "MEDIA_INFO_MOMERY_PLAY_TYPE:" + i4);
                    if (i4 > 0) {
                        h.this.bc = true;
                        if (i4 == 2) {
                            h.this.bd = true;
                        }
                    }
                } else if (i3 == 2890) {
                    strAx = h.this.ax();
                    str = "MEDIA_INFO_M3U8_EXIST_DATA:" + i4;
                    DebugLog.d(strAx, str);
                } else if (i3 != 10021) {
                    if (i3 == 701) {
                        if (i4 == 1) {
                            h.this.X = System.currentTimeMillis();
                        }
                        h.this.aW = true;
                    } else if (i3 == 702) {
                        if (i4 == 1 && h.this.X != 0) {
                            h.d(h.this, System.currentTimeMillis() - h.this.X);
                            h.this.X = 0L;
                        }
                        h.this.aW = false;
                    } else {
                        if (i3 == 10002) {
                            DebugLog.i(h.this.ax(), "chodison info MEDIA_INFO_MEDIACODEC_H264_NOSUPPORT:" + i4);
                            if (i4 == 0) {
                                preferencesUtil = h.this.bf;
                                str2 = PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_BASELINE;
                            } else {
                                if (i4 != 1) {
                                    if (i4 == 2) {
                                        preferencesUtil = h.this.bf;
                                        str2 = PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_HIGH;
                                    }
                                    return true;
                                }
                                preferencesUtil = h.this.bf;
                                str2 = PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_MAIN;
                            }
                            preferencesUtil.putBoolean(str2, false);
                            return true;
                        }
                        if (i3 == 10003) {
                            DebugLog.i(h.this.ax(), "chodison MEDIA_INFO_MEDIACODEC_H265_NOSUPPORT:" + i4);
                            h.this.bf.putBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H265_SUPPORT, false);
                            return true;
                        }
                    }
                } else if (i4 == 1 && h.this.bq != null && h.this.bq.getStatus() != 0) {
                    DebugLog.e(h.this.ax(), "p2p not running before player load data paused");
                }
                return h.this.bO.onInfo(i3, i4);
            }
        };
        this.bP = new d.h() {
            @Override
            public boolean a(d dVar, int i3, String str) {
                if (h.this.bQ != null) {
                    return h.this.bQ.onInfo(i3, str);
                }
                return false;
            }
        };
        this.ca = false;
        this.cb = new d.i() {
            @Override
            public void a(d dVar, String str, int i3, int i4) {
                DebugLog.d(h.this.ax(), "onLoopSwitchSourceInfo (event:" + i3 + ",key:" + i4 + ",mCurrentLoopSourceKey:" + h.this.bD + ",url:" + str + ")");
                if (i4 < 0 || i4 != h.this.bD) {
                    return;
                }
                if (i3 == 10) {
                    h.this.ca = false;
                }
                if (i3 == 5) {
                    h.this.bR.onPrepared();
                }
                if (i3 == 9) {
                    h.this.bN.a(h.this.j, 3, 0);
                }
            }

            @Override
            public void b(d dVar, String str, int i3, int i4) {
            }

            @Override
            public void c(d dVar, String str, int i3, int i4) {
                DebugLog.e(h.this.ax(), "onLoopSwitchSourceFail (event:" + i3 + ",key:" + i4 + ",mCurrentLoopSourceKey:" + h.this.bD + ",url:" + str + ")");
                if (i4 < 0 || i4 != h.this.bD) {
                    return;
                }
                h.this.bM.a(h.this.j, MgtvMediaPlayer.MGTVMEDIA_ERROR_WHAT_200100, Math.abs(i3) + MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_400100);
            }
        };
        this.cc = new d.n() {
            @Override
            public void onSmoothSwitchSourceComplete(d dVar, int i3, int i4, String str) {
                if (h.this.ct != null) {
                    h.this.ct.onSmoothSwitchSourceComplete(dVar, i3, i4, str);
                }
            }

            @Override
            public void onSmoothSwitchSourceFailed(d dVar, int i3, int i4, String str) {
                if (h.this.ct != null) {
                    h.this.ct.onSmoothSwitchSourceFailed(dVar, i3, i4, str);
                }
            }

            @Override
            public void onSmoothSwitchSourceInfo(d dVar, int i3, int i4, String str) {
                if (h.this.ct != null) {
                    h.this.ct.onSmoothSwitchSourceInfo(dVar, i3, i4, str);
                }
            }
        };
        this.ce = new d.f() {
            @Override
            public void a(d dVar, int i3, int i4) {
                DebugLog.ifmt(h.this.ax(), "onGetFrameImageStatus:%d-%d", Integer.valueOf(i3), Integer.valueOf(i4));
                if (h.this.cd != null) {
                    h.this.cd.onGetFrameImageStatus(i3, i4);
                }
            }

            @Override
            public void a(d dVar, int i3, int i4, String str) {
                DebugLog.ifmt(h.this.ax(), "onGetFrameImageInfo:%d-%d-%s", Integer.valueOf(i3), Integer.valueOf(i4), str);
                if (h.this.cd != null) {
                    h.this.cd.onGetFrameImageInfo(i3, i4, str);
                }
            }
        };
        this.cf = new d.InterfaceC0135d() {
            @Override
            public void a(Map<UUID, MgtvDrmUtils.PSSH> map) {
                if (map == null) {
                    DebugLog.i(h.this.ax(), "onDrmPsshMap null");
                    h.this.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_PARAMS);
                    return;
                }
                DebugLog.i(h.this.ax(), "onDrmPsshMap success");
                if (h.this.aD()) {
                    ((CencDrmSession) h.this.cx).realProvision(map);
                    return;
                }
                boolean zAE = h.this.aE();
                h hVar = h.this;
                if (zAE) {
                    ((CbcsDrmSession) hVar.cx).realProvision(map);
                } else {
                    hVar.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_SESSION);
                }
            }

            @Override
            public void a(byte[] bArr) {
                h hVar;
                int i3;
                h hVar2;
                int i4;
                int iInit;
                if (bArr == null || bArr.length <= 0) {
                    DebugLog.i(h.this.ax(), "onMaskDrmInit keyid is null");
                    hVar = h.this;
                    i3 = MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_KEYID_INVALID;
                } else {
                    DebugLog.i(h.this.ax(), "onDrmKeyId success.keyid size=" + bArr.length);
                    if (h.this.cx != null) {
                        h.this.cx.close();
                        h.this.cx = null;
                    }
                    if (h.this.cx != null) {
                        boolean zAF = h.this.aF();
                        hVar2 = h.this;
                        if (!zAF) {
                            i4 = MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INVALID_SESSION;
                            hVar2.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, i4);
                            return;
                        }
                        ((MaskDrmSession) hVar2.cx).realProvision(bArr);
                        return;
                    }
                    if (!MaskDrmManager.getInstance().isInited() && (iInit = MaskDrmManager.getInstance().init((Application) h.this.V.getApplicationContext(), null)) != 0) {
                        DebugLog.i(h.a, "MaskDrmManager init error ret=" + iInit);
                        h.this.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INIT_ERROR);
                    }
                    if (!MaskDrmManager.getInstance().isInited()) {
                        hVar2 = h.this;
                        i4 = MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INIT_INVALID;
                        hVar2.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, i4);
                        return;
                    } else {
                        if (h.this.cy != null && h.this.cy.size() > 0) {
                            h.this.cx = MaskDrmManager.getInstance().genDrmSession(new IDrmManager.SessionConfig(null, null, ((MgtvDrmParams.DrmInfo) h.this.cy.get(0)).drmType, h.this.cy));
                            h.this.cx.setIsInnerSession(true);
                            h.this.cx.addOnProvisionSuccessListener(new IDrmSession.OnProvisionSuccessListener() {
                                @Override
                                public void onSuccess(IDrmSession iDrmSession) {
                                    h.this.E();
                                }
                            });
                            h.this.cx.addOnProvisionErrorListener(new IDrmSession.OnProvisionErrorListener() {
                                @Override
                                public void onError(IDrmSession iDrmSession, int i5, String str) {
                                    h.this.d(iDrmSession != null ? iDrmSession.getErrorWhat() : MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, i5);
                                }
                            });
                            h.this.cx.bind(h.this);
                            hVar2 = h.this;
                            ((MaskDrmSession) hVar2.cx).realProvision(bArr);
                            return;
                        }
                        hVar = h.this;
                        i3 = MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_INFO_LIST_INVALID;
                    }
                }
                hVar.d(MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, i3);
            }
        };
        this.ch = new d.j() {
            @Override
            public void a(d dVar, int i3, Bundle bundle2) {
                if (i3 != 131152 || bundle2 == null || h.this.cg == null) {
                    return;
                }
                h.this.cg.onInfo(bundle2.getInt(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_PLAYER_EVENT_TYPE_INT), bundle2.getInt(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_PLAYER_EVENT_ARG1_INT));
            }
        };
        this.cl = "NONE";
        this.co = new d.q() {
            @Override
            public void a(d dVar, int i3, Bundle bundle2) {
                String strAx;
                StringBuilder sb;
                String str;
                String[] strArrSplit;
                String string;
                MgtvPlayerListener.OnFrameListener innerFrameListener;
                String[] strArrSplit2;
                String str2;
                if (i3 != 32) {
                    if (i3 != 33) {
                        if (i3 != 41) {
                            if (i3 == 64) {
                                if (h.this.I != 1 || h.this.J || h.this.bm == null) {
                                    return;
                                }
                                h.this.bm.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_DNS_SYNC_IN_ASYNC, h.this.bE != null ? h.this.bE.g() : "00", "", null);
                                h.this.J = true;
                                return;
                            }
                            if (i3 == 74244) {
                                if (h.this.bQ == null || bundle2 == null) {
                                    return;
                                }
                                h.this.bQ.onInfo(8, "" + bundle2.getInt(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_EVENT_IO_TRAFFIC_DLBYTES_INT) + "-" + bundle2.getInt(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_EVENT_IO_TRAFFIC_AVCACHEDTIMEMS_INT));
                                return;
                            }
                            if (i3 != 48) {
                                int i4 = -1;
                                if (i3 != 49) {
                                    if (i3 == 80 || i3 == 81) {
                                        if (i3 == 81) {
                                            string = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_AFRAME_COMING_CLOCK_STRING);
                                        } else {
                                            String string2 = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_VFRAME_COMING_CLOCK_STRING);
                                            bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_VFRAME_COMING_CLOCK_STRING);
                                            string = string2;
                                        }
                                        if (h.this.bG == null || (innerFrameListener = h.this.bG.getInnerFrameListener()) == null || StringUtil.isEmpty(string) || (strArrSplit2 = string.split("-")) == null || strArrSplit2.length < 4) {
                                            return;
                                        }
                                        MgtvPlayerListener.FrameClock frameClock = new MgtvPlayerListener.FrameClock();
                                        int i5 = NumericUtil.parseInt(strArrSplit2[0], -1);
                                        frameClock.clock_type = i5;
                                        if (i5 == 1) {
                                            frameClock.tTimeMs = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                            frameClock.ptsMs = NumericUtil.parseLong(strArrSplit2[2], -1L);
                                            frameClock.cTimeMs = NumericUtil.parseLong(strArrSplit2[3], -1L);
                                        } else {
                                            if (i5 == 0) {
                                                frameClock.pkt_pts = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                                str2 = strArrSplit2[2];
                                            } else if (i5 == 2 || i5 == 4 || i5 == 5) {
                                                frameClock.pkt_pts = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                                frameClock.startPts = NumericUtil.parseLong(strArrSplit2[2], -1L);
                                                frameClock.endPts = NumericUtil.parseLong(strArrSplit2[3], -1L);
                                            } else if (i5 == 3) {
                                                frameClock.pkt_pts = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                                frameClock.vframe_time = NumericUtil.parseLong(strArrSplit2[2], -1L);
                                                frameClock.seekSerial = NumericUtil.parseLong(strArrSplit2[3], -1L);
                                            } else if (i5 == 6) {
                                                frameClock.pkt_pts = NumericUtil.parseLong(strArrSplit2[1], -1L);
                                                str2 = strArrSplit2[2];
                                            }
                                            frameClock.vframe_time = NumericUtil.parseLong(str2, -1L);
                                        }
                                        if (frameClock.checkValid(frameClock.clock_type)) {
                                            innerFrameListener.onVFrameClockCome(frameClock);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (bundle2 == null) {
                                    return;
                                }
                                h.this.f16cn = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_DNS_ABORT_INFO_STRING);
                                try {
                                    int i6 = Integer.parseInt(h.this.f16cn) / 1000;
                                    if (i6 > 30) {
                                        i6 = 30;
                                    }
                                    i4 = i6 / 5;
                                } catch (Exception unused) {
                                }
                                if (h.this.bm != null) {
                                    h.this.bm.onWarning(MgtvMediaPlayer.MGTVMEDIA_WARNING_DNS_ABORT, i4 + "", "cost:" + h.this.f16cn + ",url:" + h.this.bl, null);
                                }
                                strAx = h.this.ax();
                                sb = new StringBuilder();
                                sb.append("update mCurrentDnsAbortTime(ms):");
                                str = h.this.f16cn;
                            } else {
                                if (bundle2 == null) {
                                    return;
                                }
                                h.this.cm = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_HLS_SEG_SIZE_INFO_STRING);
                                DebugLog.i(h.this.ax(), "update mCurrentHLSSegSizeInfo :" + h.this.cm);
                                if (h.this.cm == null || (strArrSplit = h.this.cm.split("/")) == null || strArrSplit.length < 5 || !"4".equalsIgnoreCase(strArrSplit[0])) {
                                    return;
                                }
                                h.this.bJ = true;
                                h.this.bK = strArrSplit[4];
                                strAx = h.this.ax();
                                sb = new StringBuilder();
                                sb.append("update mCurrentHLSSegSizeInfo error mLastSegInfoErrFileName:");
                                str = h.this.bK;
                            }
                        } else {
                            if (bundle2 == null) {
                                return;
                            }
                            h.this.cl = bundle2.getString(ImgoMediaPlayerLib.OnNativeInvokeListener.ARG_EVENT_STREAM_INFO_DRM_METHOD_NAME_STRING);
                            strAx = h.this.ax();
                            sb = new StringBuilder();
                            sb.append("update mCurrentDrmMetodName :");
                            str = h.this.cl;
                        }
                    } else {
                        if (bundle2 == null) {
                            return;
                        }
                        h.this.ck = bundle2.getString("codec_name");
                        strAx = h.this.ax();
                        sb = new StringBuilder();
                        sb.append("update mCurrentAudioDecoderName :");
                        str = h.this.ck;
                    }
                } else {
                    if (bundle2 == null) {
                        return;
                    }
                    h.this.cj = bundle2.getString("codec_name");
                    strAx = h.this.ax();
                    sb = new StringBuilder();
                    sb.append("update mCurrentVideoDecoderName :");
                    str = h.this.cj;
                }
                sb.append(str);
                DebugLog.i(strAx, sb.toString());
            }
        };
        this.cp = new d.p() {
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:25:0x009d  */
            @Override
            public boolean a(d dVar, int i3, Bundle bundle2) {
                if (h.this.ci != null) {
                    return h.this.ci.onSourceNetCtrl(i3, bundle2);
                }
                DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener.onSourceNetCtrl 0x%5x", Integer.valueOf(i3));
                switch (i3) {
                    case 131073:
                        DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener will tcp connect ip:%s", bundle2.getString("ip"));
                        return false;
                    case 131074:
                        DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener did tcp connect: ip:%s, port:%d, family:%d, error_code:%d", bundle2.getString("ip"), Integer.valueOf(bundle2.getInt("error")), Integer.valueOf(bundle2.getInt("family")), Integer.valueOf(bundle2.getInt("error")));
                        return false;
                    case 131075:
                        int i4 = bundle2.getInt("error_code");
                        if (i4 != 0) {
                            h hVar = h.this;
                            hVar.aS = hVar.f(bundle2.getString("url"));
                            h.this.aU = i4;
                            h.this.aV = bundle2.getInt("retry_counter");
                            h.this.aT = bundle2.getInt("io_type");
                            if (i4 == 300005 || (h.this.aX && i4 == 300600)) {
                                DebugLog.efmt(h.this.ax(), "OnSourceNetHandledListener (CTRL_WILL_HTTP_OPEN) network broken,RetryCount:%d,error_code:%d", Long.valueOf(h.this.aV), Integer.valueOf(i4));
                                return true;
                            }
                            if (h.this.aY) {
                                if (!(h.this.aW && h.this.J() && UrlUtil.isSegment(h.this.aS)) && h.this.aX) {
                                    UrlUtil.isM3u8(h.this.aS);
                                } else {
                                    h hVar3 = h.this;
                                    hVar3.aV = hVar3.e;
                                }
                            } else if (h.this.aW || !h.this.aX) {
                                h hVar4 = h.this;
                                hVar4.aV = hVar4.e;
                            }
                            DebugLog.ifmt(h.this.ax(), "OnSourceNetHandledListener (CTRL_WILL_HTTP_OPEN)  url:%s,iotype:%d, RetryCount:%d,error_code:%d", h.this.aS, Integer.valueOf(h.this.aT), Long.valueOf(h.this.aV), Integer.valueOf(i4));
                            if (h.this.e > h.this.aV && ((i4 < 300400 || i4 > 300499) && (i4 < 300500 || i4 > 300599))) {
                                return true;
                            }
                            DebugLog.efmt(h.this.ax(), "OnSourceNetHandledListener (CTRL_WILL_HTTP_OPEN) skip,RetryCount:%d,error_code:%d", Long.valueOf(h.this.aV), Integer.valueOf(i4));
                            return false;
                        }
                        return false;
                    case 131076:
                        DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener did tcp close", new Object[0]);
                        return false;
                    default:
                        return false;
                }
            }

            @Override
            public void b(d dVar, int i3, Bundle bundle2) {
                MgtvPlayerListener.OnAVPlayListener onAVPlayListener;
                DebugLog.dfmt(h.this.ax(), "OnSourceNetHandledListener.onSourceNetEvent 0x%5x", Integer.valueOf(i3));
                if (i3 != 22) {
                    switch (i3) {
                        case 1:
                            long j = bundle2.getLong("http_offset");
                            int i4 = bundle2.getInt("http_error");
                            String string = bundle2.getString("http_url");
                            bundle2.getString("player_hash");
                            bundle2.getString("user_msg");
                            bundle2.getInt("retry_counter");
                            long j2 = bundle2.getLong("switch_key");
                            h.this.bl = string;
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http will open: url:%s, offset:%d, error:%d, switch_key:%d", string, Long.valueOf(j), Integer.valueOf(i4), Long.valueOf(j2));
                            break;
                        case 2:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http did open: url:%s, offset:%d, error:%d, http_code:%d, http_filesize:%d, switch_key:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")), Integer.valueOf(bundle2.getInt("http_code")), Long.valueOf(bundle2.getLong("http_filesize")), Long.valueOf(bundle2.getLong("switch_key")));
                            break;
                        case 3:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http will seek: url:%s, offset:%d, error:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")));
                            break;
                        case 4:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http did seek: url:%s, offset:%d, error:%d, http_code:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")), Integer.valueOf(bundle2.getInt("http_code")));
                            break;
                        case 5:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http will close: url:%s, offset:%d, error:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")));
                            break;
                        case 6:
                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent http did close: url:%s, offset:%d, error:%d, http_code:%d", bundle2.getString("http_url"), Long.valueOf(bundle2.getLong("http_offset")), Integer.valueOf(bundle2.getInt("http_error")), Integer.valueOf(bundle2.getInt("http_code")));
                            break;
                        default:
                            switch (i3) {
                                case 17:
                                    long j3 = bundle2.getLong("time_consume");
                                    h.this.aM = j3;
                                    DebugLog.ifmt(h.this.ax(), "onSourceNetEvent loading video data(tcp connect):%d ms", Long.valueOf(TimeUtil.us2ms(j3)));
                                    break;
                                case 18:
                                    long j4 = bundle2.getLong("time_consume");
                                    h.this.aN = j4;
                                    DebugLog.ifmt(h.this.ax(), "onSourceNetEvent loading video data(http response):%d ms", Long.valueOf(TimeUtil.us2ms(j4)));
                                    break;
                                case 19:
                                    long j5 = bundle2.getLong("time_consume");
                                    h.this.aO = j5;
                                    DebugLog.ifmt(h.this.ax(), "onSourceNetEvent loading video data(find stream info):%d ms", Long.valueOf(TimeUtil.us2ms(j5)));
                                    break;
                                case 20:
                                    long j6 = bundle2.getLong("time_consume");
                                    h.this.aP = j6;
                                    DebugLog.ifmt(h.this.ax(), "onSourceNetEvent loading video data(fist buffer):%d ms", Long.valueOf(TimeUtil.us2ms(j6)));
                                    break;
                                default:
                                    switch (i3) {
                                        case 78337:
                                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent tcp will host address name: hostname:%s, family:%d, error:%d, ip:%s, port:%d", bundle2.getString("host_hostname"), Integer.valueOf(bundle2.getInt("host_family")), Integer.valueOf(bundle2.getInt("host_error")), bundle2.getString("host_ip"), Integer.valueOf(bundle2.getInt("host_port")));
                                            break;
                                        case 78338:
                                            int i5 = bundle2.getInt("host_error");
                                            int i6 = bundle2.getInt("host_family");
                                            String string2 = bundle2.getString("host_hostname");
                                            String string3 = bundle2.getString("host_ip");
                                            int i7 = bundle2.getInt("host_port");
                                            int i8 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TYPE_INT);
                                            int i9 = bundle2.getInt(MgtvPlayerListener.OnSourceNetHandledListener.ARG_HOST_ARRR_DNS_TIME_INT);
                                            long j7 = i9;
                                            if (j7 > h.this.aQ) {
                                                h.this.aQ = j7;
                                                h.this.aR = i8;
                                            }
                                            DebugLog.i(h.this.ax(), "loading video data(dns) " + i9 + " ms");
                                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent tcp did host address name: hostname:%s, family:%d, error:%d, ip:%s, port:%d, dns_type:%d, dns_time:%d ms", string2, Integer.valueOf(i6), Integer.valueOf(i5), string3, Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i9));
                                            break;
                                        default:
                                            DebugLog.dfmt(h.this.ax(), "onSourceNetEvent %5x", Integer.valueOf(i3));
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                } else {
                    long j8 = bundle2.getLong("time_consume");
                    DebugLog.ifmt(h.this.ax(), "chodison paused status is_paused:%d ", Long.valueOf(j8));
                    if (h.this.bG != null && (onAVPlayListener = h.this.bG.getOnAVPlayListener()) != null) {
                        onAVPlayListener.onAVPauseOrPlay(j8 == 1);
                    }
                }
                if (h.this.ci != null) {
                    h.this.ci.onSourceNetEvent(i3, bundle2);
                }
            }
        };
        this.cr = new d.o() {
            @Override
            public void a(d dVar, int i3, Bundle bundle2) {
                if (h.this.cq != null) {
                    h.this.cq.onSourceFlowInfoEvent(i3, bundle2);
                }
            }
        };
        this.cs = 1.0f;
        this.cw = false;
        this.cy = null;
        this.V = context;
        this.k = i;
        this.bj = bundle;
        this.L = i2;
        a(context, z);
    }

    public static long d(h hVar, long j) {
        long j2 = hVar.W + j;
        hVar.W = j2;
        return j2;
    }

    public int b(byte[] bArr) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).setWanosAudioEffectConfig(bArr);
        }
        return -999;
    }

    public void j(int i) {
        this.S = i;
    }

    public void k() throws IllegalStateException {
        List<MgtvDrmParams.DrmInfo> list = this.cy;
        if (list == null || list.size() <= 0 || !String.valueOf(20).equals(this.cy.get(0).drmType) || ImgoLibLoader.getInstance().isMgtvDrmLibLoaded()) {
            this.j.prepareAsync();
            return;
        }
        d.e eVar = this.bM;
        if (eVar != null) {
            eVar.a(this.j, MgtvMediaPlayer.MGTVMEDIA_ERROR_400802, MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_DRM_LIB_LOAD_FAILED);
        }
    }

    public int a(SmoothMediaSource smoothMediaSource) {
        aC();
        DebugLog.i(ax(), "switchSmoothSource " + smoothMediaSource);
        try {
            String str = smoothMediaSource.url;
            if (str != null && !"".equals(str.trim())) {
                int i = smoothMediaSource.readType;
                if (i == 0) {
                    this.j.smoothSwitchVideoSource(smoothMediaSource.url, smoothMediaSource.getKey(), smoothMediaSource.getSwitchMod(), smoothMediaSource.getLevel(), smoothMediaSource.getArg(), smoothMediaSource.getTsFlowTag());
                    return 0;
                }
                if (i == 1) {
                    this.j.smoothSwitchVideoSource(smoothMediaSource.proxyUrl, smoothMediaSource.getKey(), smoothMediaSource.getSwitchMod(), smoothMediaSource.getLevel(), smoothMediaSource.getArg(), smoothMediaSource.getTsFlowTag());
                    return 0;
                }
                if (i != 2) {
                    return -10;
                }
                MGTVP2pDirectMediaDataSource mGTVP2pDirectMediaDataSource = new MGTVP2pDirectMediaDataSource(this, smoothMediaSource.getUrl(), smoothMediaSource.getReadType(), null, new MGTVP2pDirectMediaDataSource.Config().setConnectTimeOutUs(NumericUtil.parseInt(this.c)).setReciveDataTimeOutUs(NumericUtil.parseInt(this.d)));
                mGTVP2pDirectMediaDataSource.setLogTag("smooth");
                mGTVP2pDirectMediaDataSource.setInfoListener(new IMGTVMediaDataSource.IInfoListener() {
                    @Override
                    public void onSourceInfoUpdate(Object obj) {
                        String cdnIpFromSourceInfo = P2pMgr.getCdnIpFromSourceInfo(obj);
                        if (h.this.bG != null) {
                            DebugLog.d(h.this.ax(), "setDataSource onSourceInfoUpdate cdnip:" + cdnIpFromSourceInfo);
                            h.this.bG.setLastIP(cdnIpFromSourceInfo);
                        }
                    }
                });
                smoothMediaSource.setP2pDirectSource(mGTVP2pDirectMediaDataSource);
                this.j.smoothSwitchVideoSource(smoothMediaSource.getP2pDirectSource(), smoothMediaSource.url, smoothMediaSource.getKey(), smoothMediaSource.getSwitchMod(), smoothMediaSource.getLevel(), smoothMediaSource.getArg(), smoothMediaSource.getTsFlowTag());
                return 0;
            }
            return -20;
        } catch (IllegalStateException e) {
            e.printStackTrace();
            return MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_400198;
        } catch (Exception unused) {
            return -11;
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
            return MgtvMediaPlayer.MGTVMEDIA_ERROR_EXTRA_400199;
        }
    }

    @TargetApi(14)
    public Bitmap c(int i, int i2) {
        int i3;
        if (i == -1) {
            i = this.aH;
        }
        if (i2 == -1) {
            i2 = this.aI;
        }
        if (i < 0 || i2 < 0) {
            DebugLog.e(ax(), "chodison setting video scale w/h is invalid,w:" + i + ",h:" + i2);
            return null;
        }
        int i4 = this.aH;
        if (i4 == 0 || (i3 = this.aI) == 0) {
            DebugLog.e(ax(), "chodison current video w/h is 0");
            return null;
        }
        if (i4 < i) {
            i = i4;
        }
        if (i3 < i2) {
            i2 = i3;
        }
        IMgtvRenderView.ISurfaceHolder iSurfaceHolder = this.U;
        if (iSurfaceHolder != null) {
            IMgtvRenderView renderView = iSurfaceHolder.getRenderView();
            if (renderView instanceof com.hunantv.media.player.f.e) {
                try {
                    return ((com.hunantv.media.player.f.e) renderView).getBitmap(i, i2);
                } catch (Exception e) {
                    DebugLog.e(ax(), "skip getSnapshot14 TextureRenderView getBitmap cause:" + e.getMessage());
                    e.printStackTrace();
                    return null;
                }
            }
            if ((renderView instanceof com.hunantv.media.player.f.d) && (renderView.getView() instanceof SurfaceView)) {
                try {
                    return SurfaceViewUtil.getSnapshot((SurfaceView) renderView.getView(), i, i2);
                } catch (Exception e2) {
                    DebugLog.e(ax(), "skip getSnapshot14 TextureRenderView getBitmap cause:" + e2.getMessage());
                    e2.printStackTrace();
                    return null;
                }
            }
        }
        d dVar = this.j;
        if (!(dVar instanceof ImgoMediaPlayerLib)) {
            return null;
        }
        int[] iArr = new int[i * i2];
        if (((ImgoMediaPlayerLib) dVar).getPicture32(i, i2, iArr) > 0) {
            return Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888);
        }
        DebugLog.e(ax(), "chodison getPicture32 failed ");
        return null;
    }

    public void i(int i) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setWanosAudioEffectChoice(i);
        }
    }

    public boolean j() {
        MgtvPlayerListener.OnErrorListener onErrorListener;
        int i;
        this.bi = 0;
        az();
        try {
            ay();
            return true;
        } catch (OutOfMemoryError unused) {
            if (this.bW == null) {
                return true;
            }
            onErrorListener = this.bW;
            i = 11;
            onErrorListener.onError(IVideoView.MEDIA_ERROR_OUTOFMEM, i);
            return false;
        } catch (Throwable unused2) {
            if (this.bW == null) {
                return true;
            }
            onErrorListener = this.bW;
            i = 12;
            onErrorListener.onError(IVideoView.MEDIA_ERROR_OUTOFMEM, i);
            return false;
        }
    }

    public int a(byte[] bArr) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            return ((ImgoMediaPlayerLib) dVarT).setKeyFrameInfoFileBuf(bArr);
        }
        return -1;
    }

    public Bitmap b(int i, int i2) {
        if (BuildHelper.isApi14_IceCreamSandwichOrLater()) {
            return c(i, i2);
        }
        d dVar = this.j;
        if (!(dVar instanceof ImgoMediaPlayerLib)) {
            return null;
        }
        int[] iArr = new int[i * i2];
        if (((ImgoMediaPlayerLib) dVar).getPicture32(i, i2, iArr) > 0) {
            return Bitmap.createBitmap(iArr, i, i2, Bitmap.Config.ARGB_8888);
        }
        DebugLog.e(ax(), "chodison getPicture32 failed ");
        return null;
    }

    public String c(int i) {
        if (i == 0) {
            return "NORMAL";
        }
        if (i != 1) {
            return i != 2 ? "NONE" : "P2PDIRECT";
        }
        return "PROXY";
    }

    public boolean i() {
        return this.j.isPlaying();
    }

    public String f(String str) {
        int iIndexOf = str.indexOf(DefaultWebClient.HTTP_SCHEME);
        if (iIndexOf == -1) {
            iIndexOf = str.indexOf("https://");
        }
        return str.substring(iIndexOf);
    }

    public long a(int i, long j) {
        d dVarT = T();
        return dVarT instanceof ImgoMediaPlayerLib ? ((ImgoMediaPlayerLib) dVarT).getPropertyLong(i, j) : j;
    }

    public h b(com.hunantv.media.report.a aVar) {
        this.bF = aVar;
        return this;
    }

    public void d(int i) {
        this.j.setAudioStreamType(i);
    }

    public void e(int i) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setDrmLicensePrepared(i);
        }
    }

    public void g(int i) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).nativeCrashTest(i);
        }
    }

    public void h(int i) {
        d dVarT = T();
        if (!(dVarT instanceof ImgoMediaPlayerLib) || i <= 0) {
            return;
        }
        ((ImgoMediaPlayerLib) dVarT).setVideoFrameTimeMsClockNotify(i);
    }

    public void c() throws IllegalStateException {
        this.j.start();
    }

    public void d(final int i, final int i2) {
        ThreadUtil.postOnUiThread(new Runnable() {
            @Override
            public void run() {
                if (h.this.bM != null) {
                    h.this.bM.a(h.this.j, i, i2);
                }
            }
        });
    }

    public void e(boolean z) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setNETIsBroken(z);
        }
    }

    public void f(int i) {
        DebugLog.i(ax(), "setPlaybackStep:" + i);
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setPlaybackStep(i);
        }
    }

    public void g(boolean z) {
        b(ImgoMediaPlayerLib.FFP_PROP_INT64_VSR_RUN_EANBLE, z ? 1L : 0L);
    }

    public void h(boolean z) {
        g(z);
    }

    public void c(String str) throws IllegalStateException, IOException, IllegalArgumentException {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).startRecordVideo(str);
        }
    }

    public void d(boolean z) {
        d dVarT = T();
        DebugLog.i(ax(), "enableSmoothAccSeek :" + z);
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).enableSmoothAccSeek(z);
        }
    }

    public void f(boolean z) {
    }

    private boolean e(String str) {
        return UrlUtil.isSuffixUrl(str, ".mp3") || UrlUtil.isSuffixUrl(str, ".amr") || UrlUtil.isSuffixUrl(str, ".m4a") || UrlUtil.isSuffixUrl(str, ".mgm4a") || UrlUtil.isSuffixUrl(str, ".ogg") || UrlUtil.isSuffixUrl(str, ".aac") || UrlUtil.isSuffixUrl(str, ".wanos") || UrlUtil.isSuffixUrl(str, ".ape") || UrlUtil.isSuffixUrl(str, ".flac") || UrlUtil.isSuffixUrl(str, ".mgflac");
    }

    public void b() throws IllegalStateException {
        this.Y = 0L;
        this.j.stop();
    }

    public void c(boolean z) {
        d dVarT = T();
        DebugLog.i(ax(), "enableP2PSmoothFailMode :" + z);
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).enableP2PSmoothFailMode(z);
        }
    }

    private boolean d(String str) {
        if (av()) {
            return true;
        }
        for (String str2 : this.be) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    public void b(int i) {
        this.bo = i;
        ReportParams reportParams = this.bA;
        if (reportParams != null) {
            reportParams.setP2ps(k(i));
        }
    }

    public h a(d.n nVar) {
        this.ct = nVar;
        return this;
    }

    public void b(int i, long j) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setPropertyLong(i, j);
        }
    }

    public h a(com.hunantv.media.report.a aVar) {
        this.bE = aVar;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0076  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    public void b(int i, boolean z) {
        String strAx;
        StringBuilder sb;
        d dVarT;
        if (com.hunantv.media.report.c.h.d()) {
            if (i == 1) {
                if (!com.hunantv.media.report.c.h.b(this.V)) {
                    strAx = ax();
                    sb = new StringBuilder();
                    sb.append("enableOppoFunc :");
                    sb.append(i);
                    sb.append(StringUtils.COMMA);
                    sb.append(z);
                    sb.append(" not support");
                    DebugLog.e(strAx, sb.toString());
                    return;
                }
                this.cu = z;
                dVarT = T();
                DebugLog.i(ax(), "enableOppoFunc :" + i + StringUtils.COMMA + z);
                if (dVarT instanceof ImgoMediaPlayerLib) {
                    ((ImgoMediaPlayerLib) dVarT).enableOppoFunc(i, z);
                }
            }
            if (i == 2) {
                if (!com.hunantv.media.report.c.h.c(this.V)) {
                    strAx = ax();
                    sb = new StringBuilder();
                    sb.append("enableOppoFunc :");
                    sb.append(i);
                    sb.append(StringUtils.COMMA);
                    sb.append(z);
                    sb.append(" not support");
                    DebugLog.e(strAx, sb.toString());
                    return;
                }
                this.cv = z;
            }
            dVarT = T();
            DebugLog.i(ax(), "enableOppoFunc :" + i + StringUtils.COMMA + z);
            if (dVarT instanceof ImgoMediaPlayerLib) {
                ((ImgoMediaPlayerLib) dVarT).enableOppoFunc(i, z);
            }
        }
    }

    private void b(SurfaceHolder surfaceHolder) {
        this.T = surfaceHolder;
        if (surfaceHolder != null) {
            if (surfaceHolder.getSurface() == null) {
                throw new InvalidParameterException("the surface is null");
            }
            if (surfaceHolder.getSurface() != null && !surfaceHolder.getSurface().isValid()) {
                throw new InvalidParameterException("the surface is not valid from holder");
            }
        }
    }

    public void a() throws IllegalStateException {
        this.j.pause();
    }

    public void b(String str) {
        PlayerConfig playerConfig = this.bg;
        if (playerConfig != null) {
            playerConfig.setProxyType(str);
        }
    }

    public void a(float f) {
        this.cs = f;
        this.j.setPlaybackSpeed(f);
    }

    public void b(String str, int i, int i2, int i3) throws IllegalStateException, IOException, IllegalArgumentException {
        aC();
        ar();
        this.j.switchVideoSource(str, i, i2, i3);
    }

    public void a(float f, float f2) {
        d dVar = this.j;
        if (dVar != null) {
            dVar.setVolume(f, f2);
        }
    }

    public void b(boolean z) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).enableFramePTSNotify(z);
        }
    }

    public void a(int i) throws IllegalStateException {
        if (!this.bh) {
            this.bc = true;
        }
        this.j.seekTo(i);
    }

    public boolean b(String str, int i, int i2) {
        d dVar = this.j;
        if (dVar != null) {
            dVar.stop();
            this.j.release();
            if (this.T != null || this.U != null) {
                try {
                    DebugLog.e(ax(), "------chodison----reprepare Imgomediaplayer change decoder to ffmpeg   url:" + str);
                    this.k = 1;
                    this.Y = 0L;
                    if (this.i == null) {
                        ImgoMediaPlayerLib imgoMediaPlayerLib = new ImgoMediaPlayerLib(this.V, this.bj);
                        this.i = imgoMediaPlayerLib;
                        this.j = imgoMediaPlayerLib;
                    }
                    a(str);
                    SurfaceHolder surfaceHolder = this.T;
                    if (surfaceHolder != null) {
                        this.j.setDisplay(surfaceHolder);
                    } else {
                        IMgtvRenderView.ISurfaceHolder iSurfaceHolder = this.U;
                        if (iSurfaceHolder != null) {
                            iSurfaceHolder.bindToMediaPlayer(this);
                        }
                    }
                    this.j.prepareAsync();
                    MgtvPlayerListener.OnInfoListener onInfoListener = this.bO;
                    if (onInfoListener != null) {
                        onInfoListener.onInfo(5, 503);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    MgtvPlayerListener.OnErrorListener onErrorListener = this.bW;
                    if (onErrorListener != null) {
                        return onErrorListener.onError(i, i2);
                    }
                }
            }
        } else {
            MgtvPlayerListener.OnErrorListener onErrorListener2 = this.bW;
            if (onErrorListener2 != null) {
                return onErrorListener2.onError(i, i2);
            }
        }
        return true;
    }

    public void a(int i, float f) {
        if (i != 2019081201) {
            return;
        }
        this.Q = f;
        this.R = (long) (1000000.0f * f);
        DebugLog.d(ax(), "setConfig player prepare video start time(s): " + f);
    }

    public void a(int i, int i2) {
        String strAx;
        StringBuilder sb;
        String str;
        String strAx2;
        StringBuilder sb2;
        int i3;
        String string;
        String strAx3;
        StringBuilder sb3;
        int i4;
        String strAx4;
        String str2;
        switch (i) {
            case 201507061:
                this.c = "" + (i2 * 1000);
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig connecttimeout(ms):";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 201507062:
                this.d = "" + (i2 * 1000);
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig dataTimeout(ms):";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 201507063:
                this.e = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig reconnect count:");
                sb2.append(this.e);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 201507065:
                this.l = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig video render type:");
                i3 = this.l;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 201507066:
                this.m = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig audio render type:");
                i3 = this.m;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 201507067:
                if (i2 != 1) {
                    this.n = false;
                } else {
                    this.n = true;
                    strAx = ax();
                    string = "setConfig player audio type,eg:mp3";
                    DebugLog.d(strAx, string);
                }
                break;
            case 2016010201:
                this.f = i2;
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig player max buffer time(ms):";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 2016010202:
                this.g = 1048576 * i2;
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig player max buffer size(MB):";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 2016010203:
                if (i2 != 1) {
                    this.p = false;
                } else {
                    this.p = true;
                    strAx = ax();
                    string = "setConfig player reconfig surface from key frame for mediacodec";
                    DebugLog.d(strAx, string);
                }
                break;
            case 2016010204:
                this.h = i2;
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig player max buffering timeout time(ms):";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 2016021701:
                this.aa = i2;
                strAx3 = ax();
                sb3 = new StringBuilder();
                sb3.append("setConfig skip loop filter type:");
                i4 = this.aa;
                sb3.append(i4);
                DebugLog.i(strAx3, sb3.toString());
                break;
            case 2016021702:
                this.ab = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig skip frame type:");
                i3 = this.ab;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2016021703:
                this.ac = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig frame drop num:");
                i3 = this.ac;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2016021704:
                if (i2 != 1) {
                    this.q = false;
                } else {
                    this.q = true;
                    strAx = ax();
                    string = "setConfig player enable seek within segment for hls";
                    DebugLog.d(strAx, string);
                }
                break;
            case 2016021705:
                if (i2 != 1) {
                    DebugLog.d(ax(), "setConfig player enable imgo custom protocol");
                    this.r = false;
                } else {
                    this.r = true;
                    strAx = ax();
                    string = "setConfig player disable imgo custom protocol";
                    DebugLog.d(strAx, string);
                }
                break;
            case 2016021706:
                this.s = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig player time adjust type:");
                i3 = this.s;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2016032101:
                this.ad = i2;
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig player seek position(ms) start:";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 2016041201:
                this.ae = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig hls skip ts num:");
                i3 = this.ae;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2016060201:
                if (i2 != 1) {
                    this.t = false;
                } else {
                    this.t = true;
                    strAx = ax();
                    string = "setConfig player disable buffering timeout before first frame!";
                    DebugLog.d(strAx, string);
                }
                break;
            case 2016060202:
                if (i2 != 1) {
                    this.u = false;
                } else {
                    this.u = true;
                    strAx = ax();
                    string = "setConfig player disable buffering timeout after first frame!";
                    DebugLog.d(strAx, string);
                }
                break;
            case 2016070401:
                if (i2 == 1) {
                    this.v = true;
                    strAx = ax();
                    string = "setConfig player enable imgo hls datasource protocol!";
                } else {
                    this.v = false;
                    strAx = ax();
                    string = "setConfig player disable imgo hls datasource protocol!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2016081801:
                if (i2 != 1) {
                    this.w = false;
                    strAx = ax();
                    string = "setConfig player disable imgo HW speed mode!";
                } else if (BuildHelper.getSDKVersion() >= 23) {
                    this.w = true;
                    strAx = ax();
                    string = "setConfig player enable imgo HW speed mode!";
                } else {
                    this.w = false;
                    strAx = ax();
                    sb = new StringBuilder();
                    sb.append("setConfig player enable imgo HW speed mode, but auto disable for not support,cur_version:!");
                    i2 = BuildHelper.getSDKVersion();
                    sb.append(i2);
                    string = sb.toString();
                }
                DebugLog.d(strAx, string);
                break;
            case 2017031301:
                if (i2 == 1) {
                    this.x = true;
                    strAx = ax();
                    string = "setConfig player enable http keep alive mode";
                } else {
                    this.x = false;
                    strAx = ax();
                    string = "setConfig player disable http keep alive mode";
                }
                DebugLog.d(strAx, string);
                break;
            case 2017031302:
                if (i2 == 1) {
                    this.y = true;
                    strAx = ax();
                    string = "setConfig player enable imgo accurate seek mode!";
                } else {
                    this.y = false;
                    strAx = ax();
                    string = "setConfig player disable imgo accurate seek mode!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2017051801:
                this.z = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig accuate seek key frame interval num:");
                i3 = this.z;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2017061201:
                int i5 = this.A;
                if (i5 >= 0 && i5 <= 2) {
                    this.A = i2;
                }
                strAx3 = ax();
                sb3 = new StringBuilder();
                sb3.append("setConfig player setting getaddrinfo dns family type:");
                i4 = this.A;
                sb3.append(i4);
                DebugLog.i(strAx3, sb3.toString());
                break;
            case 2017061202:
                this.D = "" + (i2 * 1000);
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig AddrinfoTimeout(ms):";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 2017080701:
                if (i2 == 1) {
                    this.E = true;
                    strAx = ax();
                    string = "setConfig player enable imgo seek force from key frame mode!";
                } else {
                    this.E = false;
                    strAx = ax();
                    string = "setConfig player disable imgo seek force from key frame mode!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2017112301:
                this.B = i2;
                strAx3 = ax();
                sb3 = new StringBuilder();
                sb3.append("setConfig player prepared data to start mode:");
                i4 = this.B;
                sb3.append(i4);
                DebugLog.i(strAx3, sb3.toString());
                break;
            case 2017122201:
                this.aJ = i2 * 1024;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig imgoasync data memory seek backward without seeking,BWSize:");
                i3 = this.aJ;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2017122202:
                this.aK = i2 * 1024;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig imgoasync data memory seek forwards without seeking,BWSize:");
                i3 = this.aK;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2018022701:
                this.F = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig player network dns cache enable:");
                i3 = this.F;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2018022702:
                this.G = "" + (i2 * 1000);
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig network dns cache timeout(ms):";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 2018022703:
                this.H = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig player network dns cache clear enable:");
                i3 = this.H;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2018042401:
                if (i2 == 1) {
                    this.af = true;
                    strAx = ax();
                    string = "setConfig player enable auto rotate!";
                } else {
                    this.af = false;
                    strAx = ax();
                    string = "setConfig player disable auto rotate!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2018051001:
                if (i2 == 1) {
                    this.aj = true;
                    strAx = ax();
                    string = "setConfig player enable force hw decoder mode!";
                } else {
                    this.aj = false;
                    strAx = ax();
                    string = "setConfig player disable force hw decoder mode!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2018071401:
                if (i2 == 1) {
                    this.ak = true;
                    strAx = ax();
                    string = "setConfig player enable muxing video function!";
                } else {
                    this.ak = false;
                    strAx = ax();
                    string = "setConfig player disable muxing video function!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2018091301:
                if (i2 == 1 || i2 == 2) {
                    this.al = i2;
                    strAx = ax();
                    sb = new StringBuilder();
                    str = "setConfig player enable mediacodec key frame backup function mode: ";
                    sb.append(str);
                    sb.append(i2);
                    string = sb.toString();
                } else {
                    this.al = 0;
                    strAx = ax();
                    string = "setConfig player disable mediacodec key frame backup function!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2018091302:
                this.K = i2;
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig player live start index : ";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 2018100801:
                if (i2 == 1) {
                    this.L = 1;
                    strAx = ax();
                    string = "setConfig player enable live mode ";
                } else if (i2 == 2) {
                    this.L = 2;
                    strAx = ax();
                    string = "setConfig player enable loop mode ";
                } else if (i2 == 3) {
                    this.L = 3;
                    strAx = ax();
                    string = "setConfig player enable smooth mode ";
                } else {
                    this.L = 0;
                    strAx = ax();
                    string = "setConfig player enable normal mode ";
                }
                DebugLog.d(strAx, string);
                break;
            case 2018110701:
                this.I = i2;
                strAx2 = ax();
                sb2 = new StringBuilder();
                sb2.append("setConfig player network dns native async enable:");
                i3 = this.I;
                sb2.append(i3);
                DebugLog.d(strAx2, sb2.toString());
                break;
            case 2018112701:
                this.M = i2;
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig loopplayer loop mode: ";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 2018112702:
                this.N = i2;
                strAx = ax();
                sb = new StringBuilder();
                str = "setConfig player prepare start positon(ms): ";
                sb.append(str);
                sb.append(i2);
                string = sb.toString();
                DebugLog.d(strAx, string);
                break;
            case 2019050601:
                if (i2 == 1) {
                    this.am = true;
                    strAx = ax();
                    string = "setConfig player enable hls skip ts num >= 5 error completed!";
                } else {
                    this.am = false;
                    strAx = ax();
                    string = "setConfig player disable hls skip ts num >= 5 error completed!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2019050602:
                if (i2 == 1) {
                    this.an = true;
                    strAx = ax();
                    string = "setConfig player enable context modify error completed!";
                } else {
                    this.an = false;
                    strAx = ax();
                    string = "setConfig player disable context modify error completed!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2019052701:
                if (i2 == 1 || i2 == 2) {
                    this.ao = i2;
                    strAx = ax();
                    sb = new StringBuilder();
                    str = "setConfig player enable local hls file play md5 check, type:";
                    sb.append(str);
                    sb.append(i2);
                    string = sb.toString();
                } else {
                    this.ao = 0;
                    strAx = ax();
                    string = "setConfig player disable local hls file play md5 check";
                }
                DebugLog.d(strAx, string);
                break;
            case 2019053101:
                if (i2 == 1) {
                    this.ap = true;
                    strAx4 = ax();
                    str2 = "setConfig player enable mgtvmediacodec(support async create codec)!";
                } else {
                    this.ap = false;
                    strAx4 = ax();
                    str2 = "setConfig player disable mgtvmediacodec(support async create codec)!";
                }
                DebugLog.i(strAx4, str2);
                break;
            case 2019090401:
                if (i2 == 1) {
                    this.aw = true;
                    strAx = ax();
                    string = "setConfig player enable HDJ mode!";
                } else {
                    this.aw = false;
                    strAx = ax();
                    string = "setConfig player disable HDJ mode!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2019090402:
                if (i2 == 1) {
                    this.ax = true;
                    strAx = ax();
                    string = "setConfig player HDJ URL is last!";
                } else {
                    this.ax = false;
                    strAx = ax();
                    string = "setConfig player HDJ url is not last!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2019121101:
                if (i2 == 1) {
                    this.aq = true;
                    strAx = ax();
                    string = "setConfig player enable mgtvmediacodec(support async flush)!";
                } else {
                    this.aq = false;
                    strAx = ax();
                    string = "setConfig player disable mgtvmediacodec(support async flush)!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2019121102:
                if (i2 == 1) {
                    this.ar = true;
                    strAx = ax();
                    string = "setConfig player enable mediacodec(support flush to recreate codec)!";
                } else {
                    this.ar = false;
                    strAx = ax();
                    string = "setConfig player disable mediacodec(support flush to recreate codec)!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2020021001:
                if (i2 != 1) {
                    this.o = false;
                } else {
                    this.o = true;
                    strAx = ax();
                    string = "setConfig player get frame imgage mode,only for ffmpeg decoder";
                    DebugLog.d(strAx, string);
                }
                break;
            case 2020060901:
                if (i2 == 1) {
                    this.ay = true;
                    strAx = ax();
                    string = "setConfig player disable keyframe seek ts num check!";
                } else {
                    this.ay = false;
                    strAx = ax();
                    string = "setConfig player enable keyframe seek ts num check!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2020072001:
                if (i2 == 1) {
                    this.aC = true;
                    strAx4 = ax();
                    str2 = "setConfig player enable mediacodec sw render!";
                } else {
                    this.aC = false;
                    strAx4 = ax();
                    str2 = "setConfig player disable mediacodec sw render!";
                }
                DebugLog.i(strAx4, str2);
                break;
            case 2020072002:
                if (i2 == 1) {
                    this.aD = true;
                    strAx4 = ax();
                    str2 = "setConfig player enable mediacodec sw render mark!";
                } else {
                    this.aD = false;
                    strAx4 = ax();
                    str2 = "setConfig player disable mediacodec sw render mark!";
                }
                DebugLog.i(strAx4, str2);
                break;
            case 2020072201:
                if (i2 == 1) {
                    this.C = true;
                    strAx = ax();
                    string = "setConfig player disable AV decoder start!";
                } else {
                    this.C = false;
                    strAx = ax();
                    string = "setConfig player enable AV decoder start!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2020080601:
                if (i2 == 1) {
                    this.az = true;
                    strAx = ax();
                    string = "setConfig player enable seekto on completed!";
                } else {
                    this.az = false;
                    strAx = ax();
                    string = "setConfig player disable seekto on completed!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2020102101:
                if (i2 == 1) {
                    this.aA = true;
                    strAx = ax();
                    string = "setConfig player enable vendor.oplus-sr-enable.value!";
                } else {
                    this.aA = false;
                    strAx = ax();
                    string = "setConfig player disable vendor.oplus-sr-enable.value!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2020110501:
                if (i2 == 1) {
                    this.aB = true;
                    strAx = ax();
                    string = "setConfig player enable vendor.oplus-osie-enable.value!";
                } else {
                    this.aB = false;
                    strAx = ax();
                    string = "setConfig player disable vendor.oplus-osie-enable.value!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2021030401:
                if (i2 == 1) {
                    this.as = true;
                    strAx = ax();
                    string = "setConfig player enable live low lantacy!";
                } else {
                    this.as = false;
                    strAx = ax();
                    string = "setConfig player disable live low lantacy)!";
                }
                DebugLog.d(strAx, string);
                break;
            case 2021031501:
                if (i2 == 1) {
                    this.ah = true;
                    strAx4 = ax();
                    str2 = "setConfig player enable flow report!";
                } else {
                    this.ah = false;
                    strAx4 = ax();
                    str2 = "setConfig player disable flow report!";
                }
                DebugLog.i(strAx4, str2);
                break;
            case 2022031001:
                if (i2 == 1) {
                    this.av = true;
                    strAx4 = ax();
                    str2 = "setConfig player enable imgovsr!";
                } else {
                    this.av = false;
                    strAx4 = ax();
                    str2 = "setConfig player disable imgovsr!";
                }
                DebugLog.i(strAx4, str2);
                break;
            default:
                DebugLog.e(ax(), "setConfig unknown arg_type:" + i + ",arg_value:" + i2);
                break;
        }
    }

    public void a(int i, String str) {
        String strAx;
        StringBuilder sb;
        String str2;
        if (i == 2018042501) {
            this.ag = str;
            strAx = ax();
            sb = new StringBuilder();
            sb.append("setConfig player log thread name:");
            str2 = this.ag;
        } else {
            if (i != 2021031001) {
                DebugLog.e(ax(), "setConfig unknown arg_type:" + i + ",arg_svalue:" + str);
                return;
            }
            this.ai = str;
            strAx = ax();
            sb = new StringBuilder();
            sb.append("setConfig player flow ts flag:");
            str2 = this.ai;
        }
        sb.append(str2);
        DebugLog.d(strAx, sb.toString());
    }

    public void a(int i, String str, IP2pTask iP2pTask, String str2, int i2, int i3, int i4) throws IllegalStateException, IOException, IllegalArgumentException {
        aC();
        ar();
        this.bw = k(i);
        this.bx = iP2pTask;
        d dVarT = T();
        if ((dVarT instanceof ImgoMediaPlayerLib) && i == 2) {
            if (iP2pTask != null && P2pMgr.isTaskExist(iP2pTask)) {
                MGTVP2pDirectMediaDataSource mGTVP2pDirectMediaDataSource = new MGTVP2pDirectMediaDataSource(this, str, i, iP2pTask.getImgoTask(), new MGTVP2pDirectMediaDataSource.Config().setConnectTimeOutUs(NumericUtil.parseInt(this.c)).setReciveDataTimeOutUs(NumericUtil.parseInt(this.d)));
                this.bv = mGTVP2pDirectMediaDataSource;
                mGTVP2pDirectMediaDataSource.setLogTag(ClientABTestDTOKt.SWITCH);
                ((ImgoMediaPlayerLib) dVarT).switchVideoSource(this.bv, str, i2, i3, i4);
                return;
            }
            this.bw = 3;
        }
        if (i != 1 || StringUtil.isEmpty(str2)) {
            this.j.switchVideoSource(str, i2, i3, i4);
        } else {
            this.j.switchVideoSource(str2, i2, i3, i4);
        }
    }

    public void a(int i, String str, String str2) {
        this.br = str;
        this.bt = str2;
        b(i);
    }

    public void a(int i, boolean z) throws IllegalStateException {
        if (!this.bh) {
            this.bc = true;
        }
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).seekTo(i, z ? 1 : 0);
        } else {
            dVarT.seekTo(i);
        }
    }

    public void a(long j, long j2) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setVideoFrameTimeClockNotify(j, j2);
        }
    }

    private void a(Context context, boolean z) throws SecurityException, UnsatisfiedLinkError, NullPointerException {
        b bVar;
        aw();
        this.bg = new PlayerConfig();
        this.bf = new PreferencesUtil(context);
        ImgoMediaPlayerHelp.ImgoLogValueSet((d(context.getPackageName()) ? "1" : "0") + "12345678test");
        if (this.j != null) {
            return;
        }
        int i = this.k;
        if (i != 0) {
            if (i == 1 || i == 2) {
                DebugLog.e(ax(), "------chodison----prepare to new Imgomediaplayer ffmpeg(1) or mediacodec(2) type=" + this.k);
                if (PlayerConfig.mMTK_Chip_use_systemplayer.booleanValue() && this.k == 2 && BuildHelper.isApi16_JellyBeanOrLater() && MediaCodecHelp.isMTKMediaCodec() && BuildHelper.isApiLess18_JellyBeanMR2()) {
                    DebugLog.e(ax(), "------chodison--HW->SYS--prepare to new Imgomediaplayer system player");
                    this.j = new b(this.bj);
                    this.k = 0;
                } else if (this.i == null) {
                    ImgoMediaPlayerLib imgoMediaPlayerLib = new ImgoMediaPlayerLib(this.V, this.bj);
                    this.i = imgoMediaPlayerLib;
                    this.j = imgoMediaPlayerLib;
                    imgoMediaPlayerLib.setLogReport(PlayerConfig.use_report_level, PlayerConfig.use_log_level);
                    this.i.setCrashRecordPath(PlayerConfig.Crash_Path);
                }
            } else if (i == 3) {
                DebugLog.e(ax(), "------chodison----prepare to new Imgomediaplayer ExoPlayer");
            } else {
                DebugLog.e(ax(), "------chodison----default prepare to new Imgomediaplayer system player");
                bVar = new b();
            }
            if (z && this.k != 1) {
                this.j = new k(this.j);
            }
            this.j.setOnSourceNetHandledListener(this.cp);
            this.j.setOnSourceFlowHandledListener(this.cr);
            this.j.setOnStreamInfoListener(this.co);
            this.j.setOnLoopSwitchSourceListener(this.cb);
            this.j.setOnSmoothSwitchSourceListener(this.cc);
            this.j.setOnGetFrameImageListener(this.ce);
            this.j.setOnDrmListener(this.cf);
            this.j.setOnPlayerEventListener(this.ch);
        }
        DebugLog.e(ax(), "------chodison----prepare to new Imgomediaplayer system player");
        bVar = new b(this.bj);
        this.j = bVar;
        if (z) {
            this.j = new k(this.j);
        }
        this.j.setOnSourceNetHandledListener(this.cp);
        this.j.setOnSourceFlowHandledListener(this.cr);
        this.j.setOnStreamInfoListener(this.co);
        this.j.setOnLoopSwitchSourceListener(this.cb);
        this.j.setOnSmoothSwitchSourceListener(this.cc);
        this.j.setOnGetFrameImageListener(this.ce);
        this.j.setOnDrmListener(this.cf);
        this.j.setOnPlayerEventListener(this.ch);
    }

    public void a(MediaCrypto mediaCrypto) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setDrmLicensePrepared(mediaCrypto);
        }
    }

    public void a(Surface surface) {
        this.j.setSurface(surface);
    }

    public void a(Surface surface, int i) {
        this.j.setSurface(surface, i);
    }

    public void a(SurfaceHolder surfaceHolder) throws InvalidParameterException {
        DebugLog.i(ax(), "setDisplay " + surfaceHolder);
        this.j.setDisplay(surfaceHolder);
        b(surfaceHolder);
    }

    public void a(SurfaceHolder surfaceHolder, int i) throws InvalidParameterException {
        DebugLog.i(ax(), "setDisplay " + surfaceHolder + ",key:" + i);
        this.j.setDisplay(surfaceHolder, i);
        b(surfaceHolder);
    }

    public void a(IDrmSession iDrmSession) {
        this.cx = iDrmSession;
        if (iDrmSession != null) {
            iDrmSession.bind(this);
        }
    }

    public void a(IP2pTask iP2pTask) {
        this.bq = iP2pTask;
    }

    public void a(IMgtvRenderView.ISurfaceHolder iSurfaceHolder, int i) {
        DebugLog.i(ax(), "setSurfaceHolder in. holder:" + iSurfaceHolder + ",newKey:" + i);
        this.U = iSurfaceHolder;
        if (iSurfaceHolder == null) {
            a((SurfaceHolder) null);
            return;
        }
        if (i > 0) {
            iSurfaceHolder.bindToMediaPlayer(this, i);
        } else {
            iSurfaceHolder.bindToMediaPlayer(this);
        }
        DebugLog.i(ax(), "setSurfaceHolder out");
    }

    public void a(MgtvMediaPlayer mgtvMediaPlayer) {
        this.bG = mgtvMediaPlayer;
    }

    public void a(MgtvPlayerDataSource mgtvPlayerDataSource) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        this.aE = true;
        this.aF = mgtvPlayerDataSource;
        b(3);
        a(mgtvPlayerDataSource.getPath());
    }

    public void a(MgtvPlayerListener.OnBufferingTimeoutListener onBufferingTimeoutListener) {
        this.bX = onBufferingTimeoutListener;
        this.j.setOnBufferingTimeoutListener(new d.a() {
            @Override
            public boolean a(d dVar, int i, int i2) {
                if (h.this.bX == null) {
                    return true;
                }
                DebugLog.d(h.this.ax(), "buffreing timeout to stop player in!");
                h.this.j.stop();
                DebugLog.d(h.this.ax(), "buffreing timeout to stop player out!");
                return h.this.bX.onBufferingTimeout(i, i2);
            }
        });
    }

    public void a(MgtvPlayerListener.OnBufferingUpdateListener onBufferingUpdateListener) {
        this.bS = onBufferingUpdateListener;
        this.j.setOnBufferingUpdateListener(new d.b() {
            @Override
            public void a(d dVar, int i) {
                if (h.this.bS != null) {
                    h.this.bS.onBufferingUpdate(i);
                }
            }
        });
    }

    public void a(MgtvPlayerListener.OnCompletionListener onCompletionListener) {
        this.bV = onCompletionListener;
        this.j.setOnCompletionListener(new d.c() {
            @Override
            public void a(d dVar, int i, int i2) {
                if (h.this.bV != null) {
                    h.this.bV.onCompletion(i, i2);
                }
            }
        });
    }

    public void a(MgtvPlayerListener.OnErrorListener onErrorListener) {
        this.bW = onErrorListener;
        this.j.setOnErrorListener(this.bM);
    }

    public void a(MgtvPlayerListener.OnGetFrameImageListener onGetFrameImageListener) {
        this.cd = onGetFrameImageListener;
    }

    public void a(MgtvPlayerListener.OnInfoListener onInfoListener) {
        this.bO = onInfoListener;
        this.j.setOnInfoListener(this.bN);
    }

    public void a(MgtvPlayerListener.OnInfoStringListener onInfoStringListener) {
        this.bQ = onInfoStringListener;
        this.j.setOnInfoStringListener(this.bP);
    }

    public void a(MgtvPlayerListener.OnPlayerEventListener onPlayerEventListener) {
        this.cg = onPlayerEventListener;
    }

    public void a(MgtvPlayerListener.OnPreparedListener onPreparedListener) {
        this.bR = onPreparedListener;
        this.j.setOnPreparedListener(new d.k() {
            @Override
            public void a(d dVar) {
                h.this.aX = true;
                if (h.this.bi > 0) {
                    try {
                        h hVar = h.this;
                        hVar.a(hVar.bi);
                    } catch (IllegalStateException unused) {
                    }
                }
                h.this.bi = 0;
                if (h.this.bR != null) {
                    h.this.bR.onPrepared();
                }
            }
        });
    }

    public void a(MgtvPlayerListener.OnRecordVideoListener onRecordVideoListener) {
        this.bZ = onRecordVideoListener;
        this.j.setOnRecordVideoListener(new d.l() {
            @Override
            public void a(d dVar, int i, int i2) {
                if (h.this.bZ != null) {
                    h.this.bZ.onRecordVideoInfo(i, i2);
                }
            }

            @Override
            public void b(d dVar, int i, int i2) {
                if (h.this.bZ != null) {
                    h.this.bZ.onRecordVideoErr(i, i2);
                }
            }
        });
    }

    public void a(MgtvPlayerListener.OnSeekCompleteListener onSeekCompleteListener) {
        this.bU = onSeekCompleteListener;
        this.j.setOnSeekCompleteListener(new d.m() {
            @Override
            public void a(d dVar, int i, int i2) {
                if (h.this.bU != null) {
                    h.this.bU.onSeekComplete(i, i2);
                }
            }
        });
    }

    public void a(MgtvPlayerListener.OnSourceFlowHandledListener onSourceFlowHandledListener) {
        this.cq = onSourceFlowHandledListener;
    }

    public void a(MgtvPlayerListener.OnSourceNetHandledListener onSourceNetHandledListener) {
        this.ci = onSourceNetHandledListener;
    }

    public void a(MgtvPlayerListener.OnSwitchSourceListener onSwitchSourceListener) {
        this.bY = onSwitchSourceListener;
        this.j.setOnSwitchSourceListener(new d.r() {
            @Override
            public void a(d dVar, String str, int i, int i2) {
                if (i == 2 && h.this.bx != null) {
                    h hVar = h.this;
                    hVar.bq = hVar.bx;
                }
                if (h.this.bY != null) {
                    DebugLog.d(h.this.ax(), "switch video source info (" + i + StringUtils.COMMA + i2 + StringUtils.COMMA + str + ")");
                    h.this.bY.onSwitchSourceInfo(str, i, i2);
                }
            }

            @Override
            public void b(d dVar, String str, int i, int i2) {
                if (i == 0 && h.this.bx != null) {
                    h hVar = h.this;
                    hVar.bq = hVar.bx;
                }
                if (h.this.bY != null) {
                    DebugLog.d(h.this.ax(), "switch video source complete (" + i + StringUtils.COMMA + i2 + StringUtils.COMMA + str + ")");
                    h.this.bY.onSwitchSourceComplete(str, i, i2);
                }
            }

            @Override
            public void c(d dVar, String str, int i, int i2) {
                if (h.this.bY != null) {
                    DebugLog.d(h.this.ax(), "switch video source failed (" + i + StringUtils.COMMA + i2 + StringUtils.COMMA + str + ")");
                    h.this.bY.onSwitchSourceFailed(str, i, i2);
                }
            }
        });
    }

    public void a(MgtvPlayerListener.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.bT = onVideoSizeChangedListener;
        this.j.setOnVideoSizeChangedListener(new d.s() {
            @Override
            public void a(d dVar, int i, int i2, int i3, int i4) {
                h.this.aH = i;
                h.this.aI = i2;
                if (h.this.bT != null) {
                    h.this.bT.onVideoSizeChanged(i, i2);
                }
            }
        });
    }

    public void a(MgtvPlayerListener.OnWarningListener onWarningListener) {
        this.bm = onWarningListener;
    }

    public void a(ReportParams reportParams) {
        this.bA = reportParams;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x027c  */
    /* JADX WARN: Code duplicated, block: B:103:0x0287  */
    /* JADX WARN: Code duplicated, block: B:104:0x0291  */
    /* JADX WARN: Code duplicated, block: B:107:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:110:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:113:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:114:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:117:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:118:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:121:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:123:0x030a  */
    /* JADX WARN: Code duplicated, block: B:126:0x0313  */
    /* JADX WARN: Code duplicated, block: B:127:0x031b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0328  */
    /* JADX WARN: Code duplicated, block: B:133:0x0338  */
    /* JADX WARN: Code duplicated, block: B:134:0x0342  */
    /* JADX WARN: Code duplicated, block: B:137:0x034f  */
    /* JADX WARN: Code duplicated, block: B:138:0x0357  */
    /* JADX WARN: Code duplicated, block: B:141:0x0362  */
    /* JADX WARN: Code duplicated, block: B:142:0x036a  */
    /* JADX WARN: Code duplicated, block: B:145:0x03c5  */
    /* JADX WARN: Code duplicated, block: B:146:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:149:0x03d6  */
    /* JADX WARN: Code duplicated, block: B:150:0x03de  */
    /* JADX WARN: Code duplicated, block: B:153:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:154:0x03fa  */
    /* JADX WARN: Code duplicated, block: B:157:0x0417  */
    /* JADX WARN: Code duplicated, block: B:159:0x0426  */
    /* JADX WARN: Code duplicated, block: B:161:0x0436  */
    /* JADX WARN: Code duplicated, block: B:164:0x0443  */
    /* JADX WARN: Code duplicated, block: B:165:0x044b  */
    /* JADX WARN: Code duplicated, block: B:168:0x0456  */
    /* JADX WARN: Code duplicated, block: B:169:0x045e  */
    /* JADX WARN: Code duplicated, block: B:172:0x0473  */
    /* JADX WARN: Code duplicated, block: B:173:0x047d  */
    /* JADX WARN: Code duplicated, block: B:176:0x048e  */
    /* JADX WARN: Code duplicated, block: B:177:0x0496  */
    /* JADX WARN: Code duplicated, block: B:180:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:183:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:186:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:187:0x04d2  */
    /* JADX WARN: Code duplicated, block: B:190:0x04e4  */
    /* JADX WARN: Code duplicated, block: B:201:0x0512  */
    /* JADX WARN: Code duplicated, block: B:204:0x0519  */
    /* JADX WARN: Code duplicated, block: B:211:0x0537  */
    /* JADX WARN: Code duplicated, block: B:213:0x053a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:216:0x053f  */
    /* JADX WARN: Code duplicated, block: B:219:0x0546  */
    /* JADX WARN: Code duplicated, block: B:222:0x058a  */
    /* JADX WARN: Code duplicated, block: B:223:0x0592  */
    /* JADX WARN: Code duplicated, block: B:226:0x05a3  */
    /* JADX WARN: Code duplicated, block: B:227:0x05ad  */
    /* JADX WARN: Code duplicated, block: B:230:0x05b4  */
    /* JADX WARN: Code duplicated, block: B:231:0x05be  */
    /* JADX WARN: Code duplicated, block: B:234:0x05cb  */
    /* JADX WARN: Code duplicated, block: B:235:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:238:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:240:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:242:0x05f6  */
    /* JADX WARN: Code duplicated, block: B:245:0x060f  */
    /* JADX WARN: Code duplicated, block: B:248:0x062e  */
    /* JADX WARN: Code duplicated, block: B:251:0x0646  */
    /* JADX WARN: Code duplicated, block: B:253:0x064a  */
    /* JADX WARN: Code duplicated, block: B:255:0x064e  */
    /* JADX WARN: Code duplicated, block: B:256:0x0654  */
    /* JADX WARN: Code duplicated, block: B:257:0x065c  */
    /* JADX WARN: Code duplicated, block: B:25:0x00db  */
    /* JADX WARN: Code duplicated, block: B:260:0x0666  */
    /* JADX WARN: Code duplicated, block: B:263:0x067d  */
    /* JADX WARN: Code duplicated, block: B:267:0x0691  */
    /* JADX WARN: Code duplicated, block: B:268:0x0695 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:269:0x0697  */
    /* JADX WARN: Code duplicated, block: B:272:0x06a8  */
    /* JADX WARN: Code duplicated, block: B:283:0x06e3  */
    /* JADX WARN: Code duplicated, block: B:286:0x070e  */
    /* JADX WARN: Code duplicated, block: B:289:0x0719  */
    /* JADX WARN: Code duplicated, block: B:28:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:292:0x0732  */
    /* JADX WARN: Code duplicated, block: B:295:0x0741  */
    /* JADX WARN: Code duplicated, block: B:298:0x077b  */
    /* JADX WARN: Code duplicated, block: B:301:0x07b1  */
    /* JADX WARN: Code duplicated, block: B:303:0x07b5  */
    /* JADX WARN: Code duplicated, block: B:305:0x07b9  */
    /* JADX WARN: Code duplicated, block: B:306:0x07d0  */
    /* JADX WARN: Code duplicated, block: B:309:0x07db  */
    /* JADX WARN: Code duplicated, block: B:30:0x011a  */
    /* JADX WARN: Code duplicated, block: B:312:0x07f5  */
    /* JADX WARN: Code duplicated, block: B:313:0x07f8  */
    /* JADX WARN: Code duplicated, block: B:315:0x0801  */
    /* JADX WARN: Code duplicated, block: B:318:0x080c  */
    /* JADX WARN: Code duplicated, block: B:31:0x0122  */
    /* JADX WARN: Code duplicated, block: B:321:0x0815  */
    /* JADX WARN: Code duplicated, block: B:322:0x081d  */
    /* JADX WARN: Code duplicated, block: B:325:0x0828  */
    /* JADX WARN: Code duplicated, block: B:326:0x0830  */
    /* JADX WARN: Code duplicated, block: B:329:0x083b  */
    /* JADX WARN: Code duplicated, block: B:330:0x0843  */
    /* JADX WARN: Code duplicated, block: B:333:0x0866  */
    /* JADX WARN: Code duplicated, block: B:335:0x0877  */
    /* JADX WARN: Code duplicated, block: B:338:0x0893  */
    /* JADX WARN: Code duplicated, block: B:341:0x08af  */
    /* JADX WARN: Code duplicated, block: B:344:0x08cb  */
    /* JADX WARN: Code duplicated, block: B:346:0x08de  */
    /* JADX WARN: Code duplicated, block: B:349:0x08e9  */
    /* JADX WARN: Code duplicated, block: B:34:0x0136  */
    /* JADX WARN: Code duplicated, block: B:352:0x08f5  */
    /* JADX WARN: Code duplicated, block: B:37:0x0145  */
    /* JADX WARN: Code duplicated, block: B:50:0x0174  */
    /* JADX WARN: Code duplicated, block: B:51:0x0185  */
    /* JADX WARN: Code duplicated, block: B:54:0x019d  */
    /* JADX WARN: Code duplicated, block: B:55:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:58:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:61:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:64:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:67:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:70:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:72:0x0202  */
    /* JADX WARN: Code duplicated, block: B:75:0x020f  */
    /* JADX WARN: Code duplicated, block: B:77:0x0217 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:83:0x022c  */
    /* JADX WARN: Code duplicated, block: B:85:0x0241  */
    /* JADX WARN: Code duplicated, block: B:90:0x0252  */
    /* JADX WARN: Code duplicated, block: B:94:0x0264  */
    /* JADX WARN: Code duplicated, block: B:97:0x0271  */
    /* JADX WARN: Instruction removed from duplicated block: B:28:0x00e6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:295:0x0741, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:298:0x077b, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:305:0x07b9, please report this as an issue */
    public void a(String str) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        ImgoMediaPlayerLib imgoMediaPlayerLib;
        String userAgent;
        int playCheckVsrVulkan;
        String strAx;
        String str2;
        ImgoMediaPlayerLib imgoMediaPlayerLib2;
        long j;
        String str3;
        String str4;
        String str5;
        long j2;
        long j3;
        long j4;
        long j5;
        int i;
        long j6;
        long j7;
        long j8;
        long j9;
        boolean zIsCtxModifyErrEnable;
        boolean z;
        boolean z2;
        boolean z3;
        long j10;
        long j11;
        IDrmSession iDrmSession;
        int i2;
        List<MgtvDrmParams.DrmInfo> list;
        int i3;
        long j12;
        ReportParams reportParams;
        long j13;
        long j14;
        ImgoMediaPlayerLib imgoMediaPlayerLib3;
        String str6;
        int i4;
        int i5;
        int i6;
        MgtvMediaPlayer mgtvMediaPlayer;
        ReportParams reportParams2;
        MgtvMediaPlayer mgtvMediaPlayer2;
        String strAx2;
        StringBuilder sb;
        String str7;
        String strAx3;
        String str8;
        this.bh = false;
        this.bt = str;
        if (this.bo == 0) {
            this.br = str;
        }
        this.cl = null;
        aC();
        aB();
        b(this.bo);
        if (this.Y == 0) {
            this.Y = System.currentTimeMillis();
        }
        int i7 = this.k;
        if ((i7 == 1 || i7 == 2) && (imgoMediaPlayerLib = this.i) != null) {
            imgoMediaPlayerLib.setOption(2, "skip_loop_filter", this.aa);
            this.i.setOption(2, "skip_frame", this.ab);
            this.i.setOption(4, "framedrop", this.ac);
            if (this.k == 1) {
                DebugLog.i(ax(), "------chodison----set to Imgomediaplayer ffmpeg");
                userAgent = this.bg.getUserAgent(this.V, 1);
            } else {
                if (BuildHelper.isApi16_JellyBeanOrLater()) {
                    DebugLog.i(ax(), "------chodison----set to Imgomediaplayer mediacodec");
                    this.i.setOption(4, "overlay-format", 842225234L);
                    userAgent = this.bg.getUserAgent(this.V, 2);
                } else {
                    DebugLog.i(ax(), "------chodison--mediacodec--set to Imgomediaplayer ffmpeg");
                    this.k = 1;
                    this.b = this.bg.getUserAgent(this.V, 1);
                    MgtvPlayerListener.OnInfoListener onInfoListener = this.bO;
                    if (onInfoListener != null) {
                        onInfoListener.onInfo(5, 501);
                    }
                }
                playCheckVsrVulkan = NetPlayConfig.getPlayCheckVsrVulkan();
                DebugLog.i(ax(), "chodison enable_imgovsr " + this.av + ", checkVsr:" + playCheckVsrVulkan);
                if (BuildHelper.supportX86()) {
                    this.av = false;
                    playCheckVsrVulkan = 0;
                }
                if (this.av) {
                    DebugLog.i(ax(), "chodison imgovsr_is_supported " + ImgoVsrApi.imgovsr_is_supported() + ", imgovsr_get_version:" + ImgoVsrApi.imgovsr_get_version());
                    if (!"none".equals(ImgoVsrApi.imgovsr_get_version())) {
                        this.i.setOption(4, "enable_imgovsr", 1L);
                        this.aC = true;
                    } else {
                        this.i.setOption(4, "enable_imgovsr", 0L);
                    }
                } else {
                    this.i.setOption(4, "enable_imgovsr", 0L);
                }
                this.i.setOption(4, "enable_check_imgovsr", playCheckVsrVulkan);
                long j15 = 1397050439;
                if (this.l == 1) {
                    strAx = ax();
                    str2 = "------chodison----set to video render type opengles";
                } else {
                    if (!this.aC || ((this.av || NetPlayConfig.isEnableSWOpengl()) && this.k == 1)) {
                        strAx = ax();
                        str2 = "------chodison--EnableMediacodecSW--change to video render type opengles";
                    } else {
                        DebugLog.i(ax(), "------chodison----set to video render type Anativewindow");
                        imgoMediaPlayerLib2 = this.i;
                        j15 = 842225234;
                    }
                    imgoMediaPlayerLib2.setOption(4, "overlay-format", j15);
                    if (this.m == 1) {
                        DebugLog.i(ax(), "------chodison----set to audio render type opensles");
                        this.i.setOption(4, "opensles", 1L);
                        j = 0;
                    } else {
                        DebugLog.i(ax(), "------chodison----set to audio render type audiotrack");
                        j = 0;
                        this.i.setOption(4, "opensles", 0L);
                    }
                    if (this.j instanceof k) {
                        this.i.setOption(4, "inside-release-surface", 1L);
                    } else {
                        this.i.setOption(4, "inside-release-surface", j);
                    }
                    if (this.q) {
                        this.i.setOption(1, "seek_within_segment", 1L);
                    }
                    str3 = this.b;
                    if (str3 != null) {
                        this.i.setOption(1, "user_agent", str3);
                    }
                    DebugLog.i(ax(), "setDataSource connecttimeout" + this.c + ",dataTimeout:" + this.d);
                    str4 = this.d;
                    if (str4 != null) {
                        this.i.setOption(1, "timeout", str4);
                    }
                    str5 = this.c;
                    if (str5 != null) {
                        this.i.setOption(1, "open_timeout", str5);
                    }
                    if (!e(str) || this.n) {
                        this.i.setOption(4, "video-disable", 1L);
                        this.y = true;
                    }
                    if ((str == null && str.indexOf(".h264") > 0) || (str != null && str.indexOf(".hevc") > 0)) {
                        this.i.setOption(4, "audio-disable", 1L);
                    }
                    if (this.o) {
                        this.i.setOption(4, "audio-disable", 1L);
                        this.i.setOption(4, "get_frame_image_mode", 1L);
                        this.i.setOption(4, "packet-buffering", 0L);
                    }
                    if (str != null || (str.indexOf(".concat") <= 0 && str.indexOf(".ffconcat") <= 0)) {
                        j2 = 0;
                    } else {
                        j2 = 0;
                        this.i.setOption(1, "safe", 0L);
                    }
                    j3 = this.g;
                    if (j3 > j2) {
                        this.i.setOption(4, "max-buffer-size", j3);
                    }
                    j4 = this.f;
                    if (j4 > j2) {
                        this.i.setOption(4, "max-buffer-time", j4);
                    }
                    if (this.p) {
                        this.i.setOption(4, "mediacodec-reconfig-keyframe", 1L);
                    }
                    if (this.r) {
                        this.i.setOption(4, "enable-custom-protocol", 0L);
                    } else {
                        this.i.setOption(4, "enable-custom-protocol", 1L);
                        this.i.setOption(1, "http-tcp-hook", "imgotcphook");
                    }
                    this.i.setOption(1, "protocol_whitelist", "cache,crypto,file,http,https,mgtvmediadatasource,imgohlsds,imgohttphook,imgotcphook,pipe,rtp,srtp,tcp,tls,udp,udplite,rtmp,data,imgoasync,mgtvjsource,mgtvcrypto,mgtvdrmcrypto,mgtvio");
                    this.i.setOption(4, "no-time-adjust", this.s);
                    j5 = this.h;
                    if (j5 > 0) {
                        this.i.setOption(4, "max-buffering-timeout-time", j5);
                    }
                    i = this.ae;
                    if (i > 0) {
                        this.i.setOption(1, "skip_ts_num", i);
                    }
                    if (this.t) {
                        j6 = 0;
                        this.i.setOption(4, "enable-timeout-before-frame", 0L);
                    } else {
                        j6 = 0;
                        this.i.setOption(4, "enable-timeout-before-frame", 1L);
                    }
                    if (this.u) {
                        this.i.setOption(4, "enable-timeout-after-frame", j6);
                    } else {
                        this.i.setOption(4, "enable-timeout-after-frame", 1L);
                    }
                    if (this.v) {
                        this.i.setOption(4, "enable-imgohlsds-protocol", 1L);
                        if (this.r) {
                            this.i.setOption(4, "enable-handle-resolution-change", 1L);
                        }
                        if (this.x) {
                            this.i.setOption(1, HttpHeaders.HEAD_VALUE_CONNECTION_KEEP_ALIVE, 1L);
                        } else {
                            this.i.setOption(1, HttpHeaders.HEAD_VALUE_CONNECTION_KEEP_ALIVE, 0L);
                        }
                        if (this.bB || this.bC != com.hunantv.media.player.a.a.b.FREE_HTTP_DNS) {
                            j7 = 0;
                            this.i.setOption(1, "ds_http_dns", 0L);
                        } else {
                            this.i.setOption(1, "ds_http_dns", 1L);
                            j7 = 0;
                        }
                    } else {
                        j7 = 0;
                        this.i.setOption(4, "enable-imgohlsds-protocol", 0L);
                    }
                    if (this.w) {
                        this.i.setOption(4, "speed-play-mode", 1L);
                    } else {
                        this.i.setOption(4, "speed-play-mode", j7);
                    }
                    if (this.y) {
                        this.i.setOption(4, "enable-accurate-seek", 1L);
                    } else {
                        this.i.setOption(4, "enable-accurate-seek", j7);
                    }
                    this.i.setOption(4, "max-key-frame-interval", this.z);
                    this.i.setOption(1, "addrinfo_type", this.A);
                    this.i.setOption(1, "addrinfo_timeout", this.D);
                    this.i.setOption(1, "dns_cache_enable", this.F);
                    this.i.setOption(1, "dns_cache_timeout", this.G);
                    this.i.setOption(1, "dns_cache_clear", this.H);
                    this.i.setOption(1, "dns_async_enable", this.I);
                    this.i.setOption(4, "start-on-prepared", this.B);
                    if (this.C) {
                        this.i.setOption(4, "play-on-started", 0L);
                    } else {
                        this.i.setOption(4, "play-on-started", 1L);
                    }
                    if (this.E) {
                        this.i.setOption(4, "enable-seek-keyframe", 1L);
                    } else {
                        this.i.setOption(4, "enable-seek-keyframe", 0L);
                    }
                    if (this.af) {
                        this.i.setOption(4, "mediacodec-auto-rotate", 1L);
                        this.i.setOption(4, "avfilter-auto-rotate", 1L);
                    } else {
                        this.i.setOption(4, "mediacodec-auto-rotate", 0L);
                        this.i.setOption(4, "avfilter-auto-rotate", 0L);
                    }
                    this.i.setOption(4, "log_thread_name", this.ag);
                    if (this.ah) {
                        this.i.setOption(1, "enable_flow_report", 1L);
                        if (StringUtil.isEmpty(this.ai)) {
                            this.ai = "";
                        }
                        this.i.setOption(1, "flow_ts_flag", this.ai);
                        j8 = 0;
                    } else {
                        j8 = 0;
                        this.i.setOption(1, "enable_flow_report", 0L);
                    }
                    if (this.aj) {
                        this.i.setOption(4, "only_hw", 1L);
                    } else {
                        this.i.setOption(4, "only_hw", j8);
                    }
                    if (this.ak) {
                        this.i.setOption(4, "enable_imgomuxing", 1L);
                    } else {
                        this.i.setOption(4, "enable_imgomuxing", j8);
                    }
                    this.i.setOption(4, "enable-amc-keyframe-backup", this.al);
                    if (this.am) {
                        this.i.setOption(4, "enable_skip_ts_error", 1L);
                        j9 = 0;
                    } else {
                        j9 = 0;
                        this.i.setOption(4, "enable_skip_ts_error", 0L);
                    }
                    zIsCtxModifyErrEnable = NetPlayConfig.isCtxModifyErrEnable();
                    this.an = zIsCtxModifyErrEnable;
                    if (zIsCtxModifyErrEnable) {
                        this.i.setOption(4, "enable_context_modify_error", 1L);
                    } else {
                        this.i.setOption(4, "enable_context_modify_error", j9);
                    }
                    if (UrlUtil.isLocal(str) || !UrlUtil.isM3u8(str)) {
                        this.i.setOption(1, "md5r_check_type", 0L);
                    } else {
                        this.i.setOption(1, "md5r_check_type", this.ao);
                        this.i.setOption(4, "no-time-adjust", 1L);
                    }
                    if (this.ap) {
                        this.aq = true;
                        this.i.setOption(4, "enable_mgtvmediacodec", 1L);
                    } else {
                        this.aq = false;
                        this.i.setOption(4, "enable_mgtvmediacodec", 0L);
                    }
                    if (NetPlayConfig.isAACExAudioEnable() || (reportParams2 = this.bA) == null || !"101".equalsIgnoreCase(reportParams2.getDef()) || (mgtvMediaPlayer2 = this.bG) == null || mgtvMediaPlayer2.getDataSourceInfo() == null || !"aac".equalsIgnoreCase(this.bG.getDataSourceInfo().getAudioFormat())) {
                        z = false;
                    } else {
                        z = true;
                    }
                    if (NetPlayConfig.isWanosAudioInnerEnable() || (mgtvMediaPlayer = this.bG) == null || mgtvMediaPlayer.getDataSourceInfo() == null || !"wanos".equalsIgnoreCase(this.bG.getDataSourceInfo().getAudioFormat())) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    if (!z || z2) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    this.at = z3;
                    if (Constants.FOR_OTT) {
                        this.at = true;
                    }
                    DebugLog.i(ax(), "enable_imgoWanosaudio: " + this.at + ",WanosV2Enable: " + NetPlayConfig.getConfigWanosV2Enable() + ",WanosVersion: " + NetPlayConfig.getConfigWanosVersion() + ",mIsSpatializerEnable: " + NetPlayConfig.isSpatializerEnable());
                    if (this.at) {
                        this.i.setOption(4, "enable_imgoWanosaudio", 1L);
                    } else {
                        this.i.setOption(4, "enable_imgoWanosaudio", 0L);
                    }
                    if (!MediaCodecHelp.sFlushCodecBlackList.isEmpty()) {
                        DebugLog.i(a, "flush in blacklist EnableCodecFlushRecreate");
                        this.ar = true;
                    } else {
                        this.ar = false;
                    }
                    if (this.aq) {
                        this.i.setOption(4, "enable_mgtvcodec_flush_check", 1L);
                        j10 = 0;
                    } else {
                        j10 = 0;
                        this.i.setOption(4, "enable_mgtvcodec_flush_check", 0L);
                    }
                    if (this.ar) {
                        this.i.setOption(4, "enable_codec_flush_recreate", 1L);
                    } else {
                        this.i.setOption(4, "enable_codec_flush_recreate", j10);
                    }
                    if (str.startsWith("imgolivehook:")) {
                        if (str.indexOf("rtmp://") == -1 || str.indexOf(".flv") != -1) {
                            this.i.setOption(4, "packet-buffering", 0L);
                        }
                        this.i.setOption(4, "start-on-prepared", 1L);
                        this.i.setOption(4, "video-pictq-size", 2L);
                        if (this.k == 1) {
                            this.i.setOption(2, "skip_frame", 8L);
                            this.i.setOption(4, "max-fps", 25L);
                        }
                    }
                    this.i.setOption(1, "live_start_index", this.K);
                    if (this.as) {
                        this.L = 1;
                        this.i.setOption(4, "enable-live-lowlantacy", 1L);
                    }
                    this.i.setOption(4, "enable-player-mode", this.L);
                    if (this.L == 3) {
                        if (this.O) {
                            if (this.P) {
                                this.i.setOption(4, "enable-handle-resolution-change", 2L);
                            } else {
                                this.i.setOption(4, "enable-handle-resolution-change", 3L);
                            }
                        } else {
                            this.i.setOption(4, "enable-handle-resolution-change", 1L);
                        }
                    }
                    if (this.L == 2) {
                        this.i.setOption(4, "enable-handle-resolution-change", 1L);
                        this.i.setOption(1, "loop_mode_enable", this.M);
                    }
                    j11 = this.R;
                    if (j11 >= 0 && j11 < 604800000000L) {
                        this.i.setOption(1, "video_start_time", j11);
                        i6 = this.S;
                        if (i6 == 0) {
                            this.S = 2;
                        } else if (i6 == 1) {
                            this.S = 3;
                        }
                    }
                    this.i.setOption(1, "enable_mgtv_fast_mode", this.S);
                    iDrmSession = this.cx;
                    if (iDrmSession != null || iDrmSession.getSessionConfig() == null) {
                        i2 = 0;
                    } else {
                        i2 = ("4".equalsIgnoreCase(this.cx.getSessionConfig().drmType) || "5".equalsIgnoreCase(this.cx.getSessionConfig().drmType) || "6".equalsIgnoreCase(this.cx.getSessionConfig().drmType)) ? 2 : 1;
                    }
                    DebugLog.i(ax(), "set drm_type:" + i2);
                    long j16 = (long) i2;
                    this.i.setOption(1, "drm_type", j16);
                    this.i.setOption(4, "drm_type", j16);
                    if (i2 == 2) {
                        this.i.setOption(4, "play-on-started", 0L);
                    }
                    list = this.cy;
                    if (list != null || list.size() <= 0) {
                        this.i.setOption(4, "drm_flag", 0L);
                    } else {
                        this.i.setOption(4, "drm_flag", this.cy.get(0).drmType);
                    }
                    i3 = this.N;
                    if (i3 > 0) {
                        this.i.setOption(1, "prepare_start_pos", i3);
                        this.i.setOption(4, "prepare_start_pos", this.N);
                        DebugLog.i(ax(), "chodison prepare_start_pos:" + this.N + ",enable_mgtv_fast_mode:" + this.S);
                    }
                    j12 = this.ad;
                    if (j12 > 0) {
                        this.i.setOption(1, "prepare_start_pos", j12);
                        this.i.setOption(4, "seek-at-start", this.ad);
                        DebugLog.i(ax(), "chodison prepare_start_pos(seek):" + this.ad + ",enable_mgtv_fast_mode:" + this.S);
                    }
                    if (this.r || this.v) {
                        if (this.aE) {
                            this.i.setOption(1, "imgoplayer-url", "mgtvio:" + str);
                        } else {
                            this.i.setOption(1, "imgoplayer-url", str);
                        }
                    }
                    reportParams = this.bA;
                    if (reportParams != null || !"1".equalsIgnoreCase(reportParams.getIstry())) {
                        this.i.setOption(4, "enable_check_key_ts_num", 1L);
                        if (this.ay) {
                            j13 = 0;
                            this.i.setOption(4, "enable_check_key_ts_num", 0L);
                        }
                        if (this.ay) {
                            this.i.setOption(4, "enable_check_key_ts_num", j13);
                        }
                        if (this.az) {
                            this.i.setOption(4, "enable_completed_seekto", 1L);
                        } else {
                            this.i.setOption(4, "enable_completed_seekto", j13);
                        }
                        if (this.aC) {
                            this.i.setOption(4, "enable_mediacodec_sw", 2L);
                        } else {
                            this.i.setOption(4, "enable_mediacodec_sw", j13);
                        }
                        if (this.aD) {
                            this.i.setOption(4, "enable_mediacodec_sw_mark", 1L);
                        } else {
                            this.i.setOption(4, "enable_mediacodec_sw_mark", j13);
                        }
                        this.i.setOption(1, "icy", j13);
                        this.i.setLogReport(PlayerConfig.use_report_level, PlayerConfig.use_log_level);
                        this.i.setCrashRecordPath(PlayerConfig.Crash_Path);
                        if (this.k == 2) {
                            this.i.setOption(4, "mediacodec", 1L);
                            if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_HIGH, true)) {
                                DebugLog.i(ax(), "------chodison----set mediacodec_avchigh to 0");
                                this.i.setOption(4, "mediacodec_avchigh", 0L);
                            }
                            if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_MAIN, true)) {
                                DebugLog.i(ax(), "------chodison----set mediacodec_avcmain to 0");
                                this.i.setOption(4, "mediacodec_avcmain", 0L);
                            }
                            if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_BASELINE, true)) {
                                DebugLog.i(ax(), "------chodison----set mediacodec_avcbase to 0");
                                this.i.setOption(4, "mediacodec_avcbase", 0L);
                            }
                            if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H265_SUPPORT, true)) {
                                DebugLog.i(ax(), "------chodison----set mediacodec_hevc to 0");
                                imgoMediaPlayerLib3 = this.i;
                                str6 = "mediacodec_hevc";
                                j14 = 0;
                            }
                            i4 = this.aJ;
                            if (i4 > 0) {
                                this.i.setOption(1, "imgoasync-backwards-capacity", i4);
                            }
                            i5 = this.aK;
                            if (i5 > 0) {
                                this.i.setOption(1, "imgoasync-forwards-capacity", i5);
                            }
                            ar();
                        } else {
                            j14 = 0;
                            imgoMediaPlayerLib3 = this.i;
                            str6 = "mediacodec";
                        }
                        imgoMediaPlayerLib3.setOption(4, str6, j14);
                        i4 = this.aJ;
                        if (i4 > 0) {
                            this.i.setOption(1, "imgoasync-backwards-capacity", i4);
                        }
                        i5 = this.aK;
                        if (i5 > 0) {
                            this.i.setOption(1, "imgoasync-forwards-capacity", i5);
                        }
                        ar();
                    } else {
                        this.i.setOption(4, "enable_check_key_ts_num", 0L);
                        this.i.setOption(1, "is_retry", 1L);
                    }
                    j13 = 0;
                    if (this.ay) {
                        this.i.setOption(4, "enable_check_key_ts_num", j13);
                    }
                    if (this.az) {
                        this.i.setOption(4, "enable_completed_seekto", 1L);
                    } else {
                        this.i.setOption(4, "enable_completed_seekto", j13);
                    }
                    if (this.aC) {
                        this.i.setOption(4, "enable_mediacodec_sw", 2L);
                    } else {
                        this.i.setOption(4, "enable_mediacodec_sw", j13);
                    }
                    if (this.aD) {
                        this.i.setOption(4, "enable_mediacodec_sw_mark", 1L);
                    } else {
                        this.i.setOption(4, "enable_mediacodec_sw_mark", j13);
                    }
                    this.i.setOption(1, "icy", j13);
                    this.i.setLogReport(PlayerConfig.use_report_level, PlayerConfig.use_log_level);
                    this.i.setCrashRecordPath(PlayerConfig.Crash_Path);
                    if (this.k == 2) {
                        this.i.setOption(4, "mediacodec", 1L);
                        if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_HIGH, true)) {
                            DebugLog.i(ax(), "------chodison----set mediacodec_avchigh to 0");
                            this.i.setOption(4, "mediacodec_avchigh", 0L);
                        }
                        if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_MAIN, true)) {
                            DebugLog.i(ax(), "------chodison----set mediacodec_avcmain to 0");
                            this.i.setOption(4, "mediacodec_avcmain", 0L);
                        }
                        if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_BASELINE, true)) {
                            DebugLog.i(ax(), "------chodison----set mediacodec_avcbase to 0");
                            this.i.setOption(4, "mediacodec_avcbase", 0L);
                        }
                        if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H265_SUPPORT, true)) {
                            DebugLog.i(ax(), "------chodison----set mediacodec_hevc to 0");
                            imgoMediaPlayerLib3 = this.i;
                            str6 = "mediacodec_hevc";
                            j14 = 0;
                        }
                        i4 = this.aJ;
                        if (i4 > 0) {
                            this.i.setOption(1, "imgoasync-backwards-capacity", i4);
                        }
                        i5 = this.aK;
                        if (i5 > 0) {
                            this.i.setOption(1, "imgoasync-forwards-capacity", i5);
                        }
                        ar();
                    } else {
                        j14 = 0;
                        imgoMediaPlayerLib3 = this.i;
                        str6 = "mediacodec";
                    }
                    imgoMediaPlayerLib3.setOption(4, str6, j14);
                    i4 = this.aJ;
                    if (i4 > 0) {
                        this.i.setOption(1, "imgoasync-backwards-capacity", i4);
                    }
                    i5 = this.aK;
                    if (i5 > 0) {
                        this.i.setOption(1, "imgoasync-forwards-capacity", i5);
                    }
                    ar();
                }
                DebugLog.i(strAx, str2);
                imgoMediaPlayerLib2 = this.i;
                imgoMediaPlayerLib2.setOption(4, "overlay-format", j15);
                if (this.m == 1) {
                    DebugLog.i(ax(), "------chodison----set to audio render type opensles");
                    this.i.setOption(4, "opensles", 1L);
                    j = 0;
                } else {
                    DebugLog.i(ax(), "------chodison----set to audio render type audiotrack");
                    j = 0;
                    this.i.setOption(4, "opensles", 0L);
                }
                if (this.j instanceof k) {
                    this.i.setOption(4, "inside-release-surface", 1L);
                } else {
                    this.i.setOption(4, "inside-release-surface", j);
                }
                if (this.q) {
                    this.i.setOption(1, "seek_within_segment", 1L);
                }
                str3 = this.b;
                if (str3 != null) {
                    this.i.setOption(1, "user_agent", str3);
                }
                DebugLog.i(ax(), "setDataSource connecttimeout" + this.c + ",dataTimeout:" + this.d);
                str4 = this.d;
                if (str4 != null) {
                    this.i.setOption(1, "timeout", str4);
                }
                str5 = this.c;
                if (str5 != null) {
                    this.i.setOption(1, "open_timeout", str5);
                }
                if (!e(str)) {
                    this.i.setOption(4, "video-disable", 1L);
                    this.y = true;
                } else {
                    this.i.setOption(4, "video-disable", 1L);
                    this.y = true;
                }
                if (str == null) {
                    this.i.setOption(4, "audio-disable", 1L);
                } else {
                    this.i.setOption(4, "audio-disable", 1L);
                }
                if (this.o) {
                    this.i.setOption(4, "audio-disable", 1L);
                    this.i.setOption(4, "get_frame_image_mode", 1L);
                    this.i.setOption(4, "packet-buffering", 0L);
                }
                if (str != null) {
                    j2 = 0;
                } else {
                    j2 = 0;
                }
                j3 = this.g;
                if (j3 > j2) {
                    this.i.setOption(4, "max-buffer-size", j3);
                }
                j4 = this.f;
                if (j4 > j2) {
                    this.i.setOption(4, "max-buffer-time", j4);
                }
                if (this.p) {
                    this.i.setOption(4, "mediacodec-reconfig-keyframe", 1L);
                }
                if (this.r) {
                    this.i.setOption(4, "enable-custom-protocol", 0L);
                } else {
                    this.i.setOption(4, "enable-custom-protocol", 1L);
                    this.i.setOption(1, "http-tcp-hook", "imgotcphook");
                }
                this.i.setOption(1, "protocol_whitelist", "cache,crypto,file,http,https,mgtvmediadatasource,imgohlsds,imgohttphook,imgotcphook,pipe,rtp,srtp,tcp,tls,udp,udplite,rtmp,data,imgoasync,mgtvjsource,mgtvcrypto,mgtvdrmcrypto,mgtvio");
                this.i.setOption(4, "no-time-adjust", this.s);
                j5 = this.h;
                if (j5 > 0) {
                    this.i.setOption(4, "max-buffering-timeout-time", j5);
                }
                i = this.ae;
                if (i > 0) {
                    this.i.setOption(1, "skip_ts_num", i);
                }
                if (this.t) {
                    j6 = 0;
                    this.i.setOption(4, "enable-timeout-before-frame", 0L);
                } else {
                    j6 = 0;
                    this.i.setOption(4, "enable-timeout-before-frame", 1L);
                }
                if (this.u) {
                    this.i.setOption(4, "enable-timeout-after-frame", j6);
                } else {
                    this.i.setOption(4, "enable-timeout-after-frame", 1L);
                }
                if (this.v) {
                    this.i.setOption(4, "enable-imgohlsds-protocol", 1L);
                    if (this.r) {
                        this.i.setOption(4, "enable-handle-resolution-change", 1L);
                    }
                    if (this.x) {
                        this.i.setOption(1, HttpHeaders.HEAD_VALUE_CONNECTION_KEEP_ALIVE, 1L);
                    } else {
                        this.i.setOption(1, HttpHeaders.HEAD_VALUE_CONNECTION_KEEP_ALIVE, 0L);
                    }
                    if (this.bB) {
                        j7 = 0;
                        this.i.setOption(1, "ds_http_dns", 0L);
                    } else {
                        j7 = 0;
                        this.i.setOption(1, "ds_http_dns", 0L);
                    }
                } else {
                    j7 = 0;
                    this.i.setOption(4, "enable-imgohlsds-protocol", 0L);
                }
                if (this.w) {
                    this.i.setOption(4, "speed-play-mode", 1L);
                } else {
                    this.i.setOption(4, "speed-play-mode", j7);
                }
                if (this.y) {
                    this.i.setOption(4, "enable-accurate-seek", 1L);
                } else {
                    this.i.setOption(4, "enable-accurate-seek", j7);
                }
                this.i.setOption(4, "max-key-frame-interval", this.z);
                this.i.setOption(1, "addrinfo_type", this.A);
                this.i.setOption(1, "addrinfo_timeout", this.D);
                this.i.setOption(1, "dns_cache_enable", this.F);
                this.i.setOption(1, "dns_cache_timeout", this.G);
                this.i.setOption(1, "dns_cache_clear", this.H);
                this.i.setOption(1, "dns_async_enable", this.I);
                this.i.setOption(4, "start-on-prepared", this.B);
                if (this.C) {
                    this.i.setOption(4, "play-on-started", 0L);
                } else {
                    this.i.setOption(4, "play-on-started", 1L);
                }
                if (this.E) {
                    this.i.setOption(4, "enable-seek-keyframe", 1L);
                } else {
                    this.i.setOption(4, "enable-seek-keyframe", 0L);
                }
                if (this.af) {
                    this.i.setOption(4, "mediacodec-auto-rotate", 1L);
                    this.i.setOption(4, "avfilter-auto-rotate", 1L);
                } else {
                    this.i.setOption(4, "mediacodec-auto-rotate", 0L);
                    this.i.setOption(4, "avfilter-auto-rotate", 0L);
                }
                this.i.setOption(4, "log_thread_name", this.ag);
                if (this.ah) {
                    this.i.setOption(1, "enable_flow_report", 1L);
                    if (StringUtil.isEmpty(this.ai)) {
                        this.ai = "";
                    }
                    this.i.setOption(1, "flow_ts_flag", this.ai);
                    j8 = 0;
                } else {
                    j8 = 0;
                    this.i.setOption(1, "enable_flow_report", 0L);
                }
                if (this.aj) {
                    this.i.setOption(4, "only_hw", 1L);
                } else {
                    this.i.setOption(4, "only_hw", j8);
                }
                if (this.ak) {
                    this.i.setOption(4, "enable_imgomuxing", 1L);
                } else {
                    this.i.setOption(4, "enable_imgomuxing", j8);
                }
                this.i.setOption(4, "enable-amc-keyframe-backup", this.al);
                if (this.am) {
                    this.i.setOption(4, "enable_skip_ts_error", 1L);
                    j9 = 0;
                } else {
                    j9 = 0;
                    this.i.setOption(4, "enable_skip_ts_error", 0L);
                }
                zIsCtxModifyErrEnable = NetPlayConfig.isCtxModifyErrEnable();
                this.an = zIsCtxModifyErrEnable;
                if (zIsCtxModifyErrEnable) {
                    this.i.setOption(4, "enable_context_modify_error", 1L);
                } else {
                    this.i.setOption(4, "enable_context_modify_error", j9);
                }
                if (UrlUtil.isLocal(str)) {
                    this.i.setOption(1, "md5r_check_type", 0L);
                } else {
                    this.i.setOption(1, "md5r_check_type", 0L);
                }
                if (this.ap) {
                    this.aq = true;
                    this.i.setOption(4, "enable_mgtvmediacodec", 1L);
                } else {
                    this.aq = false;
                    this.i.setOption(4, "enable_mgtvmediacodec", 0L);
                }
                if (NetPlayConfig.isAACExAudioEnable()) {
                    z = false;
                } else {
                    z = false;
                }
                if (NetPlayConfig.isWanosAudioInnerEnable()) {
                    z2 = false;
                } else {
                    z2 = false;
                }
                if (z) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                this.at = z3;
                if (Constants.FOR_OTT) {
                    this.at = true;
                }
                DebugLog.i(ax(), "enable_imgoWanosaudio: " + this.at + ",WanosV2Enable: " + NetPlayConfig.getConfigWanosV2Enable() + ",WanosVersion: " + NetPlayConfig.getConfigWanosVersion() + ",mIsSpatializerEnable: " + NetPlayConfig.isSpatializerEnable());
                if (this.at) {
                    this.i.setOption(4, "enable_imgoWanosaudio", 1L);
                } else {
                    this.i.setOption(4, "enable_imgoWanosaudio", 0L);
                }
                if (!MediaCodecHelp.sFlushCodecBlackList.isEmpty()) {
                    DebugLog.i(a, "flush in blacklist EnableCodecFlushRecreate");
                    this.ar = true;
                } else {
                    this.ar = false;
                }
                if (this.aq) {
                    this.i.setOption(4, "enable_mgtvcodec_flush_check", 1L);
                    j10 = 0;
                } else {
                    j10 = 0;
                    this.i.setOption(4, "enable_mgtvcodec_flush_check", 0L);
                }
                if (this.ar) {
                    this.i.setOption(4, "enable_codec_flush_recreate", 1L);
                } else {
                    this.i.setOption(4, "enable_codec_flush_recreate", j10);
                }
                if (str.startsWith("imgolivehook:")) {
                    if (str.indexOf("rtmp://") == -1) {
                        this.i.setOption(4, "packet-buffering", 0L);
                    } else {
                        this.i.setOption(4, "packet-buffering", 0L);
                    }
                    this.i.setOption(4, "start-on-prepared", 1L);
                    this.i.setOption(4, "video-pictq-size", 2L);
                    if (this.k == 1) {
                        this.i.setOption(2, "skip_frame", 8L);
                        this.i.setOption(4, "max-fps", 25L);
                    }
                }
                this.i.setOption(1, "live_start_index", this.K);
                if (this.as) {
                    this.L = 1;
                    this.i.setOption(4, "enable-live-lowlantacy", 1L);
                }
                this.i.setOption(4, "enable-player-mode", this.L);
                if (this.L == 3) {
                    if (this.O) {
                        if (this.P) {
                            this.i.setOption(4, "enable-handle-resolution-change", 2L);
                        } else {
                            this.i.setOption(4, "enable-handle-resolution-change", 3L);
                        }
                    } else {
                        this.i.setOption(4, "enable-handle-resolution-change", 1L);
                    }
                }
                if (this.L == 2) {
                    this.i.setOption(4, "enable-handle-resolution-change", 1L);
                    this.i.setOption(1, "loop_mode_enable", this.M);
                }
                j11 = this.R;
                if (j11 >= 0) {
                    this.i.setOption(1, "video_start_time", j11);
                    i6 = this.S;
                    if (i6 == 0) {
                        this.S = 2;
                    } else if (i6 == 1) {
                        this.S = 3;
                    }
                }
                this.i.setOption(1, "enable_mgtv_fast_mode", this.S);
                iDrmSession = this.cx;
                if (iDrmSession != null) {
                    i2 = 0;
                } else {
                    i2 = 0;
                }
                DebugLog.i(ax(), "set drm_type:" + i2);
                long j17 = (long) i2;
                this.i.setOption(1, "drm_type", j17);
                this.i.setOption(4, "drm_type", j17);
                if (i2 == 2) {
                    this.i.setOption(4, "play-on-started", 0L);
                }
                list = this.cy;
                if (list != null) {
                    this.i.setOption(4, "drm_flag", 0L);
                } else {
                    this.i.setOption(4, "drm_flag", 0L);
                }
                i3 = this.N;
                if (i3 > 0) {
                    this.i.setOption(1, "prepare_start_pos", i3);
                    this.i.setOption(4, "prepare_start_pos", this.N);
                    DebugLog.i(ax(), "chodison prepare_start_pos:" + this.N + ",enable_mgtv_fast_mode:" + this.S);
                }
                j12 = this.ad;
                if (j12 > 0) {
                    this.i.setOption(1, "prepare_start_pos", j12);
                    this.i.setOption(4, "seek-at-start", this.ad);
                    DebugLog.i(ax(), "chodison prepare_start_pos(seek):" + this.ad + ",enable_mgtv_fast_mode:" + this.S);
                }
                if (this.r) {
                    if (this.aE) {
                        this.i.setOption(1, "imgoplayer-url", "mgtvio:" + str);
                    } else {
                        this.i.setOption(1, "imgoplayer-url", str);
                    }
                } else if (this.aE) {
                    this.i.setOption(1, "imgoplayer-url", "mgtvio:" + str);
                } else {
                    this.i.setOption(1, "imgoplayer-url", str);
                }
                reportParams = this.bA;
                if (reportParams != null) {
                    this.i.setOption(4, "enable_check_key_ts_num", 1L);
                    if (this.ay) {
                        j13 = 0;
                        this.i.setOption(4, "enable_check_key_ts_num", 0L);
                    } else {
                        j13 = 0;
                    }
                } else {
                    this.i.setOption(4, "enable_check_key_ts_num", 1L);
                    if (this.ay) {
                        j13 = 0;
                        this.i.setOption(4, "enable_check_key_ts_num", 0L);
                    } else {
                        j13 = 0;
                    }
                }
                if (this.ay) {
                    this.i.setOption(4, "enable_check_key_ts_num", j13);
                }
                if (this.az) {
                    this.i.setOption(4, "enable_completed_seekto", 1L);
                } else {
                    this.i.setOption(4, "enable_completed_seekto", j13);
                }
                if (this.aC) {
                    this.i.setOption(4, "enable_mediacodec_sw", 2L);
                } else {
                    this.i.setOption(4, "enable_mediacodec_sw", j13);
                }
                if (this.aD) {
                    this.i.setOption(4, "enable_mediacodec_sw_mark", 1L);
                } else {
                    this.i.setOption(4, "enable_mediacodec_sw_mark", j13);
                }
                this.i.setOption(1, "icy", j13);
                this.i.setLogReport(PlayerConfig.use_report_level, PlayerConfig.use_log_level);
                this.i.setCrashRecordPath(PlayerConfig.Crash_Path);
                if (this.k == 2) {
                    this.i.setOption(4, "mediacodec", 1L);
                    if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_HIGH, true)) {
                        DebugLog.i(ax(), "------chodison----set mediacodec_avchigh to 0");
                        this.i.setOption(4, "mediacodec_avchigh", 0L);
                    }
                    if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_MAIN, true)) {
                        DebugLog.i(ax(), "------chodison----set mediacodec_avcmain to 0");
                        this.i.setOption(4, "mediacodec_avcmain", 0L);
                    }
                    if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_BASELINE, true)) {
                        DebugLog.i(ax(), "------chodison----set mediacodec_avcbase to 0");
                        this.i.setOption(4, "mediacodec_avcbase", 0L);
                    }
                    if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H265_SUPPORT, true)) {
                        DebugLog.i(ax(), "------chodison----set mediacodec_hevc to 0");
                        imgoMediaPlayerLib3 = this.i;
                        str6 = "mediacodec_hevc";
                        j14 = 0;
                    }
                    i4 = this.aJ;
                    if (i4 > 0) {
                        this.i.setOption(1, "imgoasync-backwards-capacity", i4);
                    }
                    i5 = this.aK;
                    if (i5 > 0) {
                        this.i.setOption(1, "imgoasync-forwards-capacity", i5);
                    }
                    ar();
                } else {
                    j14 = 0;
                    imgoMediaPlayerLib3 = this.i;
                    str6 = "mediacodec";
                }
                imgoMediaPlayerLib3.setOption(4, str6, j14);
                i4 = this.aJ;
                if (i4 > 0) {
                    this.i.setOption(1, "imgoasync-backwards-capacity", i4);
                }
                i5 = this.aK;
                if (i5 > 0) {
                    this.i.setOption(1, "imgoasync-forwards-capacity", i5);
                }
                ar();
            }
            this.b = userAgent;
            playCheckVsrVulkan = NetPlayConfig.getPlayCheckVsrVulkan();
            DebugLog.i(ax(), "chodison enable_imgovsr " + this.av + ", checkVsr:" + playCheckVsrVulkan);
            if (BuildHelper.supportX86()) {
                this.av = false;
                playCheckVsrVulkan = 0;
            }
            if (this.av) {
                DebugLog.i(ax(), "chodison imgovsr_is_supported " + ImgoVsrApi.imgovsr_is_supported() + ", imgovsr_get_version:" + ImgoVsrApi.imgovsr_get_version());
                if (!"none".equals(ImgoVsrApi.imgovsr_get_version())) {
                    this.i.setOption(4, "enable_imgovsr", 1L);
                    this.aC = true;
                } else {
                    this.i.setOption(4, "enable_imgovsr", 0L);
                }
            } else {
                this.i.setOption(4, "enable_imgovsr", 0L);
            }
            this.i.setOption(4, "enable_check_imgovsr", playCheckVsrVulkan);
            long j18 = 1397050439;
            if (this.l == 1) {
                strAx = ax();
                str2 = "------chodison----set to video render type opengles";
            } else {
                if (this.aC) {
                }
                strAx = ax();
                str2 = "------chodison--EnableMediacodecSW--change to video render type opengles";
            }
            DebugLog.i(strAx, str2);
            imgoMediaPlayerLib2 = this.i;
            imgoMediaPlayerLib2.setOption(4, "overlay-format", j18);
            if (this.m == 1) {
                DebugLog.i(ax(), "------chodison----set to audio render type opensles");
                this.i.setOption(4, "opensles", 1L);
                j = 0;
            } else {
                DebugLog.i(ax(), "------chodison----set to audio render type audiotrack");
                j = 0;
                this.i.setOption(4, "opensles", 0L);
            }
            if (this.j instanceof k) {
                this.i.setOption(4, "inside-release-surface", 1L);
            } else {
                this.i.setOption(4, "inside-release-surface", j);
            }
            if (this.q) {
                this.i.setOption(1, "seek_within_segment", 1L);
            }
            str3 = this.b;
            if (str3 != null) {
                this.i.setOption(1, "user_agent", str3);
            }
            DebugLog.i(ax(), "setDataSource connecttimeout" + this.c + ",dataTimeout:" + this.d);
            str4 = this.d;
            if (str4 != null) {
                this.i.setOption(1, "timeout", str4);
            }
            str5 = this.c;
            if (str5 != null) {
                this.i.setOption(1, "open_timeout", str5);
            }
            if (!e(str)) {
                this.i.setOption(4, "video-disable", 1L);
                this.y = true;
            } else {
                this.i.setOption(4, "video-disable", 1L);
                this.y = true;
            }
            if (str == null) {
                this.i.setOption(4, "audio-disable", 1L);
            } else {
                this.i.setOption(4, "audio-disable", 1L);
            }
            if (this.o) {
                this.i.setOption(4, "audio-disable", 1L);
                this.i.setOption(4, "get_frame_image_mode", 1L);
                this.i.setOption(4, "packet-buffering", 0L);
            }
            if (str != null) {
                j2 = 0;
            } else {
                j2 = 0;
            }
            j3 = this.g;
            if (j3 > j2) {
                this.i.setOption(4, "max-buffer-size", j3);
            }
            j4 = this.f;
            if (j4 > j2) {
                this.i.setOption(4, "max-buffer-time", j4);
            }
            if (this.p) {
                this.i.setOption(4, "mediacodec-reconfig-keyframe", 1L);
            }
            if (this.r) {
                this.i.setOption(4, "enable-custom-protocol", 0L);
            } else {
                this.i.setOption(4, "enable-custom-protocol", 1L);
                this.i.setOption(1, "http-tcp-hook", "imgotcphook");
            }
            this.i.setOption(1, "protocol_whitelist", "cache,crypto,file,http,https,mgtvmediadatasource,imgohlsds,imgohttphook,imgotcphook,pipe,rtp,srtp,tcp,tls,udp,udplite,rtmp,data,imgoasync,mgtvjsource,mgtvcrypto,mgtvdrmcrypto,mgtvio");
            this.i.setOption(4, "no-time-adjust", this.s);
            j5 = this.h;
            if (j5 > 0) {
                this.i.setOption(4, "max-buffering-timeout-time", j5);
            }
            i = this.ae;
            if (i > 0) {
                this.i.setOption(1, "skip_ts_num", i);
            }
            if (this.t) {
                j6 = 0;
                this.i.setOption(4, "enable-timeout-before-frame", 0L);
            } else {
                j6 = 0;
                this.i.setOption(4, "enable-timeout-before-frame", 1L);
            }
            if (this.u) {
                this.i.setOption(4, "enable-timeout-after-frame", j6);
            } else {
                this.i.setOption(4, "enable-timeout-after-frame", 1L);
            }
            if (this.v) {
                this.i.setOption(4, "enable-imgohlsds-protocol", 1L);
                if (this.r) {
                    this.i.setOption(4, "enable-handle-resolution-change", 1L);
                }
                if (this.x) {
                    this.i.setOption(1, HttpHeaders.HEAD_VALUE_CONNECTION_KEEP_ALIVE, 1L);
                } else {
                    this.i.setOption(1, HttpHeaders.HEAD_VALUE_CONNECTION_KEEP_ALIVE, 0L);
                }
                if (this.bB) {
                    j7 = 0;
                    this.i.setOption(1, "ds_http_dns", 0L);
                } else {
                    j7 = 0;
                    this.i.setOption(1, "ds_http_dns", 0L);
                }
            } else {
                j7 = 0;
                this.i.setOption(4, "enable-imgohlsds-protocol", 0L);
            }
            if (this.w) {
                this.i.setOption(4, "speed-play-mode", 1L);
            } else {
                this.i.setOption(4, "speed-play-mode", j7);
            }
            if (this.y) {
                this.i.setOption(4, "enable-accurate-seek", 1L);
            } else {
                this.i.setOption(4, "enable-accurate-seek", j7);
            }
            this.i.setOption(4, "max-key-frame-interval", this.z);
            this.i.setOption(1, "addrinfo_type", this.A);
            this.i.setOption(1, "addrinfo_timeout", this.D);
            this.i.setOption(1, "dns_cache_enable", this.F);
            this.i.setOption(1, "dns_cache_timeout", this.G);
            this.i.setOption(1, "dns_cache_clear", this.H);
            this.i.setOption(1, "dns_async_enable", this.I);
            this.i.setOption(4, "start-on-prepared", this.B);
            if (this.C) {
                this.i.setOption(4, "play-on-started", 0L);
            } else {
                this.i.setOption(4, "play-on-started", 1L);
            }
            if (this.E) {
                this.i.setOption(4, "enable-seek-keyframe", 1L);
            } else {
                this.i.setOption(4, "enable-seek-keyframe", 0L);
            }
            if (this.af) {
                this.i.setOption(4, "mediacodec-auto-rotate", 1L);
                this.i.setOption(4, "avfilter-auto-rotate", 1L);
            } else {
                this.i.setOption(4, "mediacodec-auto-rotate", 0L);
                this.i.setOption(4, "avfilter-auto-rotate", 0L);
            }
            this.i.setOption(4, "log_thread_name", this.ag);
            if (this.ah) {
                this.i.setOption(1, "enable_flow_report", 1L);
                if (StringUtil.isEmpty(this.ai)) {
                    this.ai = "";
                }
                this.i.setOption(1, "flow_ts_flag", this.ai);
                j8 = 0;
            } else {
                j8 = 0;
                this.i.setOption(1, "enable_flow_report", 0L);
            }
            if (this.aj) {
                this.i.setOption(4, "only_hw", 1L);
            } else {
                this.i.setOption(4, "only_hw", j8);
            }
            if (this.ak) {
                this.i.setOption(4, "enable_imgomuxing", 1L);
            } else {
                this.i.setOption(4, "enable_imgomuxing", j8);
            }
            this.i.setOption(4, "enable-amc-keyframe-backup", this.al);
            if (this.am) {
                this.i.setOption(4, "enable_skip_ts_error", 1L);
                j9 = 0;
            } else {
                j9 = 0;
                this.i.setOption(4, "enable_skip_ts_error", 0L);
            }
            zIsCtxModifyErrEnable = NetPlayConfig.isCtxModifyErrEnable();
            this.an = zIsCtxModifyErrEnable;
            if (zIsCtxModifyErrEnable) {
                this.i.setOption(4, "enable_context_modify_error", 1L);
            } else {
                this.i.setOption(4, "enable_context_modify_error", j9);
            }
            if (UrlUtil.isLocal(str)) {
                this.i.setOption(1, "md5r_check_type", 0L);
            } else {
                this.i.setOption(1, "md5r_check_type", 0L);
            }
            if (this.ap) {
                this.aq = true;
                this.i.setOption(4, "enable_mgtvmediacodec", 1L);
            } else {
                this.aq = false;
                this.i.setOption(4, "enable_mgtvmediacodec", 0L);
            }
            if (NetPlayConfig.isAACExAudioEnable()) {
                z = false;
            } else {
                z = false;
            }
            if (NetPlayConfig.isWanosAudioInnerEnable()) {
                z2 = false;
            } else {
                z2 = false;
            }
            if (z) {
                z3 = true;
            } else {
                z3 = true;
            }
            this.at = z3;
            if (Constants.FOR_OTT) {
                this.at = true;
            }
            DebugLog.i(ax(), "enable_imgoWanosaudio: " + this.at + ",WanosV2Enable: " + NetPlayConfig.getConfigWanosV2Enable() + ",WanosVersion: " + NetPlayConfig.getConfigWanosVersion() + ",mIsSpatializerEnable: " + NetPlayConfig.isSpatializerEnable());
            if (this.at) {
                this.i.setOption(4, "enable_imgoWanosaudio", 1L);
            } else {
                this.i.setOption(4, "enable_imgoWanosaudio", 0L);
            }
            if (!MediaCodecHelp.sFlushCodecBlackList.isEmpty()) {
                DebugLog.i(a, "flush in blacklist EnableCodecFlushRecreate");
                this.ar = true;
            } else {
                this.ar = false;
            }
            if (this.aq) {
                this.i.setOption(4, "enable_mgtvcodec_flush_check", 1L);
                j10 = 0;
            } else {
                j10 = 0;
                this.i.setOption(4, "enable_mgtvcodec_flush_check", 0L);
            }
            if (this.ar) {
                this.i.setOption(4, "enable_codec_flush_recreate", 1L);
            } else {
                this.i.setOption(4, "enable_codec_flush_recreate", j10);
            }
            if (str.startsWith("imgolivehook:")) {
                if (str.indexOf("rtmp://") == -1) {
                    this.i.setOption(4, "packet-buffering", 0L);
                } else {
                    this.i.setOption(4, "packet-buffering", 0L);
                }
                this.i.setOption(4, "start-on-prepared", 1L);
                this.i.setOption(4, "video-pictq-size", 2L);
                if (this.k == 1) {
                    this.i.setOption(2, "skip_frame", 8L);
                    this.i.setOption(4, "max-fps", 25L);
                }
            }
            this.i.setOption(1, "live_start_index", this.K);
            if (this.as) {
                this.L = 1;
                this.i.setOption(4, "enable-live-lowlantacy", 1L);
            }
            this.i.setOption(4, "enable-player-mode", this.L);
            if (this.L == 3) {
                if (this.O) {
                    if (this.P) {
                        this.i.setOption(4, "enable-handle-resolution-change", 2L);
                    } else {
                        this.i.setOption(4, "enable-handle-resolution-change", 3L);
                    }
                } else {
                    this.i.setOption(4, "enable-handle-resolution-change", 1L);
                }
            }
            if (this.L == 2) {
                this.i.setOption(4, "enable-handle-resolution-change", 1L);
                this.i.setOption(1, "loop_mode_enable", this.M);
            }
            j11 = this.R;
            if (j11 >= 0) {
                this.i.setOption(1, "video_start_time", j11);
                i6 = this.S;
                if (i6 == 0) {
                    this.S = 2;
                } else if (i6 == 1) {
                    this.S = 3;
                }
            }
            this.i.setOption(1, "enable_mgtv_fast_mode", this.S);
            iDrmSession = this.cx;
            if (iDrmSession != null) {
                i2 = 0;
            } else {
                i2 = 0;
            }
            DebugLog.i(ax(), "set drm_type:" + i2);
            long j19 = (long) i2;
            this.i.setOption(1, "drm_type", j19);
            this.i.setOption(4, "drm_type", j19);
            if (i2 == 2) {
                this.i.setOption(4, "play-on-started", 0L);
            }
            list = this.cy;
            if (list != null) {
                this.i.setOption(4, "drm_flag", 0L);
            } else {
                this.i.setOption(4, "drm_flag", 0L);
            }
            i3 = this.N;
            if (i3 > 0) {
                this.i.setOption(1, "prepare_start_pos", i3);
                this.i.setOption(4, "prepare_start_pos", this.N);
                DebugLog.i(ax(), "chodison prepare_start_pos:" + this.N + ",enable_mgtv_fast_mode:" + this.S);
            }
            j12 = this.ad;
            if (j12 > 0) {
                this.i.setOption(1, "prepare_start_pos", j12);
                this.i.setOption(4, "seek-at-start", this.ad);
                DebugLog.i(ax(), "chodison prepare_start_pos(seek):" + this.ad + ",enable_mgtv_fast_mode:" + this.S);
            }
            if (this.r) {
                if (this.aE) {
                    this.i.setOption(1, "imgoplayer-url", "mgtvio:" + str);
                } else {
                    this.i.setOption(1, "imgoplayer-url", str);
                }
            } else if (this.aE) {
                this.i.setOption(1, "imgoplayer-url", "mgtvio:" + str);
            } else {
                this.i.setOption(1, "imgoplayer-url", str);
            }
            reportParams = this.bA;
            if (reportParams != null) {
                this.i.setOption(4, "enable_check_key_ts_num", 1L);
                if (this.ay) {
                    j13 = 0;
                    this.i.setOption(4, "enable_check_key_ts_num", 0L);
                } else {
                    j13 = 0;
                }
            } else {
                this.i.setOption(4, "enable_check_key_ts_num", 1L);
                if (this.ay) {
                    j13 = 0;
                    this.i.setOption(4, "enable_check_key_ts_num", 0L);
                } else {
                    j13 = 0;
                }
            }
            if (this.ay) {
                this.i.setOption(4, "enable_check_key_ts_num", j13);
            }
            if (this.az) {
                this.i.setOption(4, "enable_completed_seekto", 1L);
            } else {
                this.i.setOption(4, "enable_completed_seekto", j13);
            }
            if (this.aC) {
                this.i.setOption(4, "enable_mediacodec_sw", 2L);
            } else {
                this.i.setOption(4, "enable_mediacodec_sw", j13);
            }
            if (this.aD) {
                this.i.setOption(4, "enable_mediacodec_sw_mark", 1L);
            } else {
                this.i.setOption(4, "enable_mediacodec_sw_mark", j13);
            }
            this.i.setOption(1, "icy", j13);
            this.i.setLogReport(PlayerConfig.use_report_level, PlayerConfig.use_log_level);
            this.i.setCrashRecordPath(PlayerConfig.Crash_Path);
            if (this.k == 2) {
                this.i.setOption(4, "mediacodec", 1L);
                if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_HIGH, true)) {
                    DebugLog.i(ax(), "------chodison----set mediacodec_avchigh to 0");
                    this.i.setOption(4, "mediacodec_avchigh", 0L);
                }
                if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_MAIN, true)) {
                    DebugLog.i(ax(), "------chodison----set mediacodec_avcmain to 0");
                    this.i.setOption(4, "mediacodec_avcmain", 0L);
                }
                if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H264_SUPPORT_BASELINE, true)) {
                    DebugLog.i(ax(), "------chodison----set mediacodec_avcbase to 0");
                    this.i.setOption(4, "mediacodec_avcbase", 0L);
                }
                if (!this.bf.getBoolean(PreferencesUtil.PREKEY_MEDIACODEC_H265_SUPPORT, true)) {
                    DebugLog.i(ax(), "------chodison----set mediacodec_hevc to 0");
                    imgoMediaPlayerLib3 = this.i;
                    str6 = "mediacodec_hevc";
                    j14 = 0;
                }
                i4 = this.aJ;
                if (i4 > 0) {
                    this.i.setOption(1, "imgoasync-backwards-capacity", i4);
                }
                i5 = this.aK;
                if (i5 > 0) {
                    this.i.setOption(1, "imgoasync-forwards-capacity", i5);
                }
                ar();
            } else {
                j14 = 0;
                imgoMediaPlayerLib3 = this.i;
                str6 = "mediacodec";
            }
            imgoMediaPlayerLib3.setOption(4, str6, j14);
            i4 = this.aJ;
            if (i4 > 0) {
                this.i.setOption(1, "imgoasync-backwards-capacity", i4);
            }
            i5 = this.aK;
            if (i5 > 0) {
                this.i.setOption(1, "imgoasync-forwards-capacity", i5);
            }
            ar();
        }
        if (!str.startsWith("ImgoRtmpIMediaDataSource:")) {
            d dVarT = T();
            if (dVarT instanceof ImgoMediaPlayerLib) {
                if (!this.bn || (!str.startsWith("file:") && !str.startsWith("/"))) {
                    int i8 = this.bo;
                    if (i8 == 3) {
                        MgtvPlayerDataSource mgtvPlayerDataSource = this.aF;
                        if (mgtvPlayerDataSource instanceof MgtvByteBufferPlayerDataSource) {
                            MgtvByteBufferPlayerDataSource mgtvByteBufferPlayerDataSource = (MgtvByteBufferPlayerDataSource) mgtvPlayerDataSource;
                            com.hunantv.media.player.datasource.b bVar = new com.hunantv.media.player.datasource.b(mgtvByteBufferPlayerDataSource.getBufferMap(), mgtvByteBufferPlayerDataSource.getPath());
                            this.bu = bVar;
                            bVar.setLogTag("main");
                            this.i.setOption(1, "imgoplayer-url", "mgtvio:" + str);
                            ((ImgoMediaPlayerLib) dVarT).setDataSource(this.bu, 1);
                            return;
                        }
                    }
                    if (i8 != 2 || this.bq == null || !UrlUtil.isM3u8(this.br)) {
                        if (this.bo == 2) {
                            this.bo = 0;
                            ReportParams reportParams3 = this.bA;
                            if (reportParams3 != null) {
                                reportParams3.setP2ps(3);
                            }
                        }
                        a(str, this.bp);
                        dVarT.setDataSource(str);
                        DebugLog.i(ax(), "setDataSource2 " + c(this.bo));
                        DebugLog.d(ax(), "path:" + str);
                        return;
                    }
                    if (P2pMgr.isTaskExist(this.bq)) {
                        MGTVP2pDirectMediaDataSource.Config reciveDataTimeOutUs = new MGTVP2pDirectMediaDataSource.Config().setConnectTimeOutUs(NumericUtil.parseInt(this.c)).setReciveDataTimeOutUs(NumericUtil.parseInt(this.d));
                        this.i.setOption(4, "video-source-type", this.bp);
                        MGTVP2pDirectMediaDataSource mGTVP2pDirectMediaDataSource = new MGTVP2pDirectMediaDataSource(this, this.br, this.bp, this.bq.getImgoTask(), reciveDataTimeOutUs);
                        this.bu = mGTVP2pDirectMediaDataSource;
                        mGTVP2pDirectMediaDataSource.setLogTag("main");
                        this.bu.setInfoListener(new IMGTVMediaDataSource.IInfoListener() {
                            @Override
                            public void onSourceInfoUpdate(Object obj) {
                                String cdnIpFromSourceInfo = P2pMgr.getCdnIpFromSourceInfo(obj);
                                if (h.this.bG != null) {
                                    DebugLog.d(h.this.ax(), "setDataSource onSourceInfoUpdate cdnip:" + cdnIpFromSourceInfo);
                                    h.this.bG.setLastIP(cdnIpFromSourceInfo);
                                }
                            }
                        });
                        ((ImgoMediaPlayerLib) dVarT).setDataSource(this.bu);
                        strAx3 = ax();
                        str8 = "setDataSource MGTVP2pDirectMediaDataSource";
                    } else {
                        this.bo = 0;
                        ReportParams reportParams4 = this.bA;
                        if (reportParams4 != null) {
                            reportParams4.setP2ps(3);
                        }
                        a(str, this.bp);
                        dVarT.setDataSource(str);
                        strAx2 = ax();
                        sb = new StringBuilder();
                        str7 = "setDataSource1 NORMAL path:";
                    }
                } else {
                    com.hunantv.media.player.datasource.c cVar = new com.hunantv.media.player.datasource.c(str, this.bp);
                    this.bu = cVar;
                    ImgoMediaPlayerLib imgoMediaPlayerLib4 = (ImgoMediaPlayerLib) dVarT;
                    if (this.aE) {
                        imgoMediaPlayerLib4.setDataSource(cVar, 1);
                        strAx3 = ax();
                        str8 = "setDataSource MGTVDataSourceLocal io";
                    } else {
                        imgoMediaPlayerLib4.setDataSource(cVar);
                        strAx3 = ax();
                        str8 = "setDataSource MGTVDataSourceLocal";
                    }
                }
            } else {
                if (this.bo == 2) {
                    this.bo = 0;
                    ReportParams reportParams5 = this.bA;
                    if (reportParams5 != null) {
                        reportParams5.setP2ps(3);
                    }
                }
                a(str, this.bp);
                this.j.setDataSource(str);
                strAx2 = ax();
                sb = new StringBuilder();
                sb.append("setDataSource3 ");
                sb.append(c(this.bo));
                str7 = " path:";
            }
            sb.append(str7);
            sb.append(str);
            DebugLog.i(strAx2, sb.toString());
            return;
        }
        if (this.aG == null) {
            this.aG = new com.hunantv.media.player.datasource.a();
        }
        b(0);
        this.aG.a(str.substring(25));
        this.bo = 0;
        this.j.setDataSource(this.aG);
        strAx3 = ax();
        str8 = "setDataSource RtmpIMediaDataSource";
        DebugLog.i(strAx3, str8);
    }

    private void a(String str, int i) {
        ImgoMediaPlayerLib imgoMediaPlayerLib = this.i;
        if (imgoMediaPlayerLib != null) {
            if (!this.r || this.v) {
                imgoMediaPlayerLib.setOption(1, "imgoplayer-url", str);
            }
        }
    }

    public void a(String str, long j, long j2, int i, int i2, int i3) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setFrameImageAtTime(str, j, j2, i, i2, i3);
        }
    }

    public void a(String str, @Nullable IP2pTask iP2pTask, @Nullable String str2, int i) throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
        DebugLog.i(ax(), "setP2pDataSource path:" + str + ",p2pTask:" + iP2pTask + ",proxyPath:" + str2 + ",stream_type:" + i);
        this.bq = iP2pTask;
        this.br = str;
        this.bs = str2;
        if (this.bo == 1) {
            if (!StringUtil.isEmpty(str2)) {
                ReportParams reportParams = this.bA;
                if (reportParams != null) {
                    reportParams.setP2ps(2);
                }
                a(str2);
                return;
            }
            b(0);
        }
        a(str);
    }

    public void a(List<MgtvDrmParams.DrmInfo> list) {
        this.cy = list;
    }

    public void a(boolean z) {
        this.j.setScreenOnWhilePlaying(z);
    }

    public void a(boolean z, int i) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            ((ImgoMediaPlayerLib) dVarT).setLoopSeekPlay(z, i);
        }
    }

    public void a(boolean z, long j, long j2) {
        d dVarT = T();
        if (dVarT instanceof ImgoMediaPlayerLib) {
            this.cw = z;
            ((ImgoMediaPlayerLib) dVarT).setLoopABPlay(z, j, j2);
        }
    }

    public void a(boolean z, com.hunantv.media.player.a.a.b bVar) {
        this.bB = z;
        this.bC = bVar;
    }

    public void a(boolean z, boolean z2) {
        this.O = z;
        this.P = z2;
    }

    public boolean a(int i, int i2, int i3) {
        return this.av && u() && (i3 == 0 || NetPlayConfig.getConfigAIQEDef() == i3);
    }

    private static boolean a(d dVar) {
        return dVar != null && (dVar instanceof ImgoMediaPlayerLib);
    }

    public boolean a(String str, int i, int i2) {
        return a(str, i, i2, 1);
    }

    public boolean a(String str, int i, int i2, int i3) {
        MgtvPlayerListener.OnErrorListener onErrorListener;
        int i4;
        MgtvPlayerListener.OnInfoListener onInfoListener;
        int i5 = this.k;
        if (this.j == null || aD()) {
            if (aD()) {
                i = MgtvMediaPlayer.MGTVMEDIA_ERROR_400802;
            }
            DebugLog.i(ax(), " resetVideoPath2TargetPlayerType " + i5 + "-> " + i3 + " failed error:" + i + "-" + i2);
            MgtvPlayerListener.OnErrorListener onErrorListener2 = this.bW;
            if (onErrorListener2 != null) {
                return onErrorListener2.onError(i, i2);
            }
        } else {
            this.j.pause();
            this.j.setDisplay(null);
            if (this.bh) {
                this.bi = (int) this.j.getCurrentPosition();
            }
            try {
                ay();
            } catch (OutOfMemoryError unused) {
                if (this.bW != null) {
                    onErrorListener = this.bW;
                    i4 = IVideoView.MEDIA_ERROR_OUTOFMEM;
                }
                return onErrorListener.onError(i4, 10);
            }
            if (str == null || "".equals(str.trim())) {
                onErrorListener = this.bW;
                i4 = 7000011;
                return onErrorListener.onError(i4, 10);
            }
            this.j.setPlaybackSpeed(this.cs);
            MgtvMediaPlayer mgtvMediaPlayer = this.bG;
            if (mgtvMediaPlayer != null) {
                if (mgtvMediaPlayer.getVideoFrameClockNotifyType() == 1) {
                    h(this.bG.getVideoFrameClockNotifyMs());
                } else if (this.bG.getVideoFrameClockNotifyType() == 2) {
                    a(this.bG.getmVideoFrameClockNotifyTimeStart(), this.bG.getmVideoFrameClockNotifyTimeEnd());
                }
            }
            try {
                DebugLog.e(ax(), "------chodison----reprepare resetVideoPath2TargetPlayerType " + i5 + "->" + i3 + " url:" + str);
                this.k = i3;
                IMgtvRenderView.ISurfaceHolder iSurfaceHolder = this.U;
                if (iSurfaceHolder != null && iSurfaceHolder.getRenderView() != null && a(this.U.getRenderView()) == 1) {
                    MgtvPlayerListener.OnInfoListener onInfoListener2 = this.bO;
                    if (onInfoListener2 != null) {
                        onInfoListener2.onInfo(200001, this.k);
                    }
                    return true;
                }
                this.Y = 0L;
                a(str);
                SurfaceHolder surfaceHolder = this.T;
                if (surfaceHolder != null) {
                    this.j.setDisplay(surfaceHolder);
                } else {
                    IMgtvRenderView.ISurfaceHolder iSurfaceHolder2 = this.U;
                    if (iSurfaceHolder2 != null) {
                        iSurfaceHolder2.bindToMediaPlayer(this);
                    }
                }
                this.j.prepareAsync();
                DebugLog.i(ax(), " resetVideoPath2TargetPlayerType " + i5 + "-> " + i3 + " success");
                if (i5 != i3 && i5 == 2 && i3 == 1 && (onInfoListener = this.bO) != null) {
                    onInfoListener.onInfo(5, 503);
                }
            } catch (Exception e) {
                e.printStackTrace();
                DebugLog.i(ax(), " resetVideoPath2FFmpeg HW -> SW failed");
                MgtvPlayerListener.OnErrorListener onErrorListener3 = this.bW;
                if (onErrorListener3 != null) {
                    return onErrorListener3.onError(i, i2);
                }
            }
        }
        return true;
    }
}
