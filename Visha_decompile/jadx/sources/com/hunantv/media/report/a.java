package com.hunantv.media.report;

import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.hunantv.media.config.NetPlayConfig;
import com.hunantv.media.drm.IDrmSession;
import com.hunantv.media.drm.MgtvDrmHelper;
import com.hunantv.media.global.Constants;
import com.hunantv.media.global.PlayerReferenceObserver;
import com.hunantv.media.p2p.P2pMgr;
import com.hunantv.media.player.MgtvMediaPlayer;
import com.hunantv.media.player.a.e;
import com.hunantv.media.player.datasource.p2p.CdnM3u8Entity;
import com.hunantv.media.player.datasource.p2p.MGTVP2pDirectMediaDataSource;
import com.hunantv.media.player.helper.MediaCodecHelp;
import com.hunantv.media.player.libnative.IMGTVMediaDataSource;
import com.hunantv.media.player.libnative.ImgoMediaPlayerLib;
import com.hunantv.media.player.loader.ImgoLibLoader;
import com.hunantv.media.player.pragma.DebugLog;
import com.hunantv.media.player.pragma.PlayerConfig;
import com.hunantv.media.player.smooth.SmoothMediaSource;
import com.hunantv.media.player.utils.CodeUtil;
import com.hunantv.media.player.utils.StringUtil;
import com.hunantv.media.player.utils.SystemUtil;
import com.hunantv.media.player.utils.UrlUtil;
import com.hunantv.media.report.a.b;
import com.hunantv.media.report.c.d;
import com.hunantv.media.report.c.f;
import com.hunantv.media.report.c.g;
import com.hunantv.media.report.c.h;
import com.hunantv.media.report.entity.BufferEntity;
import com.hunantv.media.report.entity.CommonEntity;
import com.hunantv.media.report.entity.EndEntity;
import com.hunantv.media.report.entity.ErrorEntity;
import com.hunantv.media.report.entity.HeartBeatEntity;
import com.hunantv.media.report.entity.PVEntity;
import com.hunantv.media.report.entity.SeekEntity;
import com.hunantv.media.report.entity.ServiceEntity;
import com.hunantv.media.report.entity.VVEntity;
import com.transsion.videodownloader.model.Video;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import org.apache.commons.text.lookup.StringLookupFactory;

public class a {
    public static final DecimalFormat b = new DecimalFormat("0.00");
    SmoothMediaSource a;
    private Context c;
    private MgtvMediaPlayer d;
    private String e;
    private int f;
    private int g;
    private long h;
    private long i;
    private long j;
    private ReportParams k;
    private boolean l;
    private c m;
    private Object n;

    public static class AnonymousClass1 {
        static final int[] a;
        static final int[] b;
        static final int[] c;
        static final int[] d;

        static {
            int[] iArr = new int[Constants.ReportWay.values().length];
            d = iArr;
            try {
                iArr[Constants.ReportWay.HTTP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                d[Constants.ReportWay.LOCAL_BROADCAST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                d[Constants.ReportWay.BROADCAST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[MgtvMediaPlayer.Hw2SwType.values().length];
            c = iArr2;
            try {
                iArr2[MgtvMediaPlayer.Hw2SwType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                c[MgtvMediaPlayer.Hw2SwType.HW_2_SW_RESET.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                c[MgtvMediaPlayer.Hw2SwType.HW_2_SW_DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                c[MgtvMediaPlayer.Hw2SwType.HW_2_SW_OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[ReportParams.End.Target.values().length];
            b = iArr3;
            try {
                iArr3[ReportParams.End.Target.CHANGE_SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                b[ReportParams.End.Target.CHANGE_DEFINITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            int[] iArr4 = new int[MgtvMediaPlayer.RenderType.values().length];
            a = iArr4;
            try {
                iArr4[MgtvMediaPlayer.RenderType.NATIVE_WINDOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[MgtvMediaPlayer.RenderType.OPENGL_ES.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public interface InterfaceC0139a {
    }

    public class b implements InterfaceC0139a {
        public int a;
        public int b;
        public ErrorEntity c;

        public b(int i, int i2, ErrorEntity errorEntity) {
            this.a = i;
            this.b = i2;
            this.c = errorEntity;
        }
    }

    public enum c {
        NONE(0),
        PV(1),
        VV(2),
        ERR(3),
        END(4);

        private final int f;

        c(int i) {
            this.f = i;
        }

        public int a() {
            return this.f;
        }
    }

    public a(Context context, MgtvMediaPlayer mgtvMediaPlayer) {
        this(context, mgtvMediaPlayer, false);
    }

    /* JADX WARN: Code duplicated, block: B:125:0x04a0  */
    /* JADX WARN: Code duplicated, block: B:128:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:136:0x050d  */
    /* JADX WARN: Code duplicated, block: B:138:0x0511  */
    /* JADX WARN: Code duplicated, block: B:139:0x051d  */
    /* JADX WARN: Code duplicated, block: B:141:0x0522  */
    /* JADX WARN: Code duplicated, block: B:145:0x055b  */
    /* JADX WARN: Code duplicated, block: B:146:0x055e  */
    /* JADX WARN: Code duplicated, block: B:148:0x0564  */
    /* JADX WARN: Code duplicated, block: B:149:0x0567  */
    /* JADX WARN: Code duplicated, block: B:152:0x0592  */
    /* JADX WARN: Code duplicated, block: B:168:0x05fe  */
    /* JADX WARN: Code duplicated, block: B:169:0x0601  */
    /* JADX WARN: Code duplicated, block: B:171:0x0605  */
    /* JADX WARN: Code duplicated, block: B:173:0x0673  */
    /* JADX WARN: Code duplicated, block: B:176:0x068e  */
    /* JADX WARN: Code duplicated, block: B:179:0x06a0  */
    /* JADX WARN: Code duplicated, block: B:181:0x06af  */
    /* JADX WARN: Code duplicated, block: B:184:0x06bf  */
    /* JADX WARN: Code duplicated, block: B:187:0x06ca  */
    /* JADX WARN: Code duplicated, block: B:189:0x06d6  */
    /* JADX WARN: Code duplicated, block: B:190:0x06d8  */
    /* JADX WARN: Code duplicated, block: B:193:0x06e2  */
    /* JADX WARN: Code duplicated, block: B:195:0x06e8  */
    /* JADX WARN: Code duplicated, block: B:196:0x06ea  */
    /* JADX WARN: Code duplicated, block: B:201:0x0701  */
    /* JADX WARN: Code duplicated, block: B:202:0x0703  */
    /* JADX WARN: Code duplicated, block: B:205:0x0729  */
    /* JADX WARN: Code duplicated, block: B:206:0x072b  */
    /* JADX WARN: Code duplicated, block: B:209:0x0739  */
    /* JADX WARN: Code duplicated, block: B:212:0x0765  */
    /* JADX WARN: Code duplicated, block: B:217:0x0784  */
    /* JADX WARN: Code duplicated, block: B:222:0x078f  */
    /* JADX WARN: Code duplicated, block: B:233:0x07c5  */
    /* JADX WARN: Code duplicated, block: B:236:0x0811  */
    /* JADX WARN: Code duplicated, block: B:52:0x0182  */
    /* JADX WARN: Code duplicated, block: B:64:0x0220  */
    /* JADX WARN: Code duplicated, block: B:66:0x023a  */
    /* JADX WARN: Code duplicated, block: B:69:0x025e  */
    /* JADX WARN: Code duplicated, block: B:72:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:74:0x0300  */
    /* JADX WARN: Code duplicated, block: B:76:0x0319  */
    /* JADX WARN: Instruction removed from duplicated block: B:128:0x04c6, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:171:0x0605, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:176:0x068e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:202:0x0703, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:52:0x0182, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:66:0x023a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:69:0x025e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x0300, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v29, types: [int] */
    /* JADX WARN: Type inference failed for: r1v88 */
    /* JADX WARN: Type inference failed for: r1v91 */
    /* JADX WARN: Type inference failed for: r1v92 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.lang.StringBuilder] */
    private CommonEntity a(Context context, InterfaceC0139a interfaceC0139a, String str) {
        String string;
        int i;
        MgtvMediaPlayer mgtvMediaPlayer;
        String strValueOf;
        String cdnip;
        MgtvMediaPlayer mgtvMediaPlayer2;
        String hostName;
        StringBuilder sb;
        int p2ps;
        String string2;
        String cdnip2;
        ReportParams reportParams;
        b bVar;
        MgtvMediaPlayer mgtvMediaPlayer3;
        MgtvMediaPlayer mgtvMediaPlayer4;
        String str2;
        String str3;
        String str4;
        String svds;
        boolean zIsP2p;
        ?? r1;
        MgtvMediaPlayer mgtvMediaPlayer5;
        String str5;
        NetPlayConfig netPlayConfig;
        int i2;
        StringBuilder sb2;
        String localMd5;
        String str6;
        StringBuilder sb3;
        String downloadSDKVersion;
        String fstime;
        IDrmSession drmSession;
        String currentDrmMetodName;
        SmoothMediaSource smoothMediaSource;
        ReportParams reportParams2;
        String vfps;
        String drmLibLoadErrorMsg;
        String[] strArrSplit;
        CommonEntity commonEntity = new CommonEntity();
        ServiceEntity serviceEntity = commonEntity.service;
        if (this.e == null) {
            this.e = a(this.c);
        }
        commonEntity.psuuid = this.e;
        String strA = ReportParams.GlobalSet.getsAppVersionName();
        if (StringUtil.isEmpty(strA)) {
            strA = h.a(context);
        }
        commonEntity.aver = strA;
        commonEntity.time = String.valueOf(System.currentTimeMillis());
        commonEntity.mod = h.e();
        commonEntity.mf = h.a();
        commonEntity.f17net = d.a(context);
        commonEntity.sver = h.f();
        commonEntity.psdkv = h.g();
        commonEntity.logver = PlayerConfig.getLibFullVersion();
        commonEntity.prst = NetPlayConfig.getPrst();
        if (h.e(context)) {
            string = "1";
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("0");
            sb4.append(h.f(context) ? "1" : "0");
            sb4.append(h.g(context) ? "1" : "0");
            sb4.append(h.h(context) ? "1" : "0");
            string = sb4.toString();
        }
        commonEntity.pshdrt = string;
        MgtvMediaPlayer mgtvMediaPlayer6 = this.d;
        int i3 = 0;
        if (mgtvMediaPlayer6 != null) {
            commonEntity.prottp = e(mgtvMediaPlayer6.getPlayingUrl());
            commonEntity.vtp = a(this.d.getVideoType());
            commonEntity.sctp = String.valueOf(this.d.getDataSourceTypeOrdinal());
            commonEntity.ptp = this.d.getPlayerType() == 0 ? "1" : "0";
            StringBuilder sb5 = new StringBuilder();
            sb5.append(commonEntity.logver);
            sb5.append("_");
            if (this.d.getRetryLastErrorCode() != 0) {
                str6 = this.d.getRetryLastErrorCode() + "";
            } else {
                str6 = "n";
            }
            sb5.append(str6);
            commonEntity.logver = sb5.toString();
            if (this.k != null) {
                sb3 = new StringBuilder();
                sb3.append(commonEntity.logver);
                sb3.append("_");
                sb3.append(this.k.getAddrInfoInt());
            } else {
                sb3 = new StringBuilder();
                sb3.append(commonEntity.logver);
                sb3.append("_n");
            }
            commonEntity.logver = sb3.toString();
            ReportParams reportParams3 = this.k;
            if (reportParams3 != null && reportParams3.getVideoType() == ReportParams.VideoType.LOCAL) {
                downloadSDKVersion = this.k.getDownloadSDKVersion();
            } else if (this.d != null) {
                downloadSDKVersion = this.d.getMaxDnsType() + "";
            } else {
                if (this.d.getVideoType() != ReportParams.VideoType.HOME_PREVIEW || this.d.getVideoType() == ReportParams.VideoType.INTERACTIVE) {
                    commonEntity.s3 = this.d.getPlayerMode() + "";
                }
                serviceEntity.ct = String.valueOf(this.d.getCurrentPosition() / 1000);
                serviceEntity.et = String.valueOf(this.d.getCurrentPosition() / 1000);
                serviceEntity.vts = String.valueOf(this.d.getDuration() / 1000);
                commonEntity.fstime = "n";
                fstime = this.d.getFstime();
                if (!StringUtil.isEmpty(fstime) && (strArrSplit = fstime.split("/")) != null && strArrSplit.length >= 2 && !"21".equalsIgnoreCase(strArrSplit[0])) {
                    commonEntity.fstime = strArrSplit[1];
                }
                commonEntity.imp4d = this.d.getImp4dh() + "";
                commonEntity.mpx = this.d.getMpx() + "";
                drmSession = this.d.getDrmSession();
                if (drmSession != null) {
                    commonEntity.drmt = drmSession.getDrmt();
                    commonEntity.drmdi = drmSession.getDrmdi();
                    drmLibLoadErrorMsg = ImgoLibLoader.getInstance().getDrmLibLoadErrorMsg();
                    if (!StringUtil.isEmpty(drmLibLoadErrorMsg)) {
                        commonEntity.drmdi += "__de_" + drmLibLoadErrorMsg;
                    }
                }
                currentDrmMetodName = this.d.getCurrentDrmMetodName();
                if (!StringUtil.isEmpty(currentDrmMetodName)) {
                    commonEntity.drmdi += "__km_" + currentDrmMetodName;
                }
                commonEntity.pcdnf = UrlUtil.getUrlParamsValue(this.d.getPlayingOriginUrl(), "pcdnFlag");
                commonEntity.scid = UrlUtil.getUrlParamsValue(this.d.getPlayingOriginUrl(), "scid");
                commonEntity.pbox = UrlUtil.getUrlParamsValue(this.d.getPlayingOriginUrl(), "pbox");
                commonEntity.vfmt = this.d.getVideoFormat();
                commonEntity.afmt = this.d.getAudioFormat();
                commonEntity.vfmt = this.d.getVideoFormat();
                commonEntity.waev = this.d.waev;
                commonEntity.wadls = "" + this.d.wadls;
                commonEntity.tldls = com.hunantv.media.player.h.ac();
                commonEntity.dcpf = UrlUtil.getUrlParamsValue(this.d.getPlayingOriginUrl(), "dcp");
                commonEntity.devci = h.h();
                smoothMediaSource = this.a;
                if (smoothMediaSource != null) {
                    commonEntity.vsri = smoothMediaSource.getVsri();
                    vfps = this.a.getVfps();
                } else {
                    commonEntity.vsri = "" + this.d.vsri;
                    reportParams2 = this.k;
                    if (reportParams2 != null) {
                        vfps = reportParams2.getVfps();
                    }
                }
                commonEntity.vfps = vfps;
            }
            commonEntity.dnst = downloadSDKVersion;
            if (this.d.getVideoType() != ReportParams.VideoType.HOME_PREVIEW) {
                commonEntity.s3 = this.d.getPlayerMode() + "";
            } else {
                commonEntity.s3 = this.d.getPlayerMode() + "";
            }
            serviceEntity.ct = String.valueOf(this.d.getCurrentPosition() / 1000);
            serviceEntity.et = String.valueOf(this.d.getCurrentPosition() / 1000);
            serviceEntity.vts = String.valueOf(this.d.getDuration() / 1000);
            commonEntity.fstime = "n";
            fstime = this.d.getFstime();
            if (!StringUtil.isEmpty(fstime)) {
                commonEntity.fstime = strArrSplit[1];
            }
            commonEntity.imp4d = this.d.getImp4dh() + "";
            commonEntity.mpx = this.d.getMpx() + "";
            drmSession = this.d.getDrmSession();
            if (drmSession != null) {
                commonEntity.drmt = drmSession.getDrmt();
                commonEntity.drmdi = drmSession.getDrmdi();
                drmLibLoadErrorMsg = ImgoLibLoader.getInstance().getDrmLibLoadErrorMsg();
                if (!StringUtil.isEmpty(drmLibLoadErrorMsg)) {
                    commonEntity.drmdi += "__de_" + drmLibLoadErrorMsg;
                }
            }
            currentDrmMetodName = this.d.getCurrentDrmMetodName();
            if (!StringUtil.isEmpty(currentDrmMetodName)) {
                commonEntity.drmdi += "__km_" + currentDrmMetodName;
            }
            commonEntity.pcdnf = UrlUtil.getUrlParamsValue(this.d.getPlayingOriginUrl(), "pcdnFlag");
            commonEntity.scid = UrlUtil.getUrlParamsValue(this.d.getPlayingOriginUrl(), "scid");
            commonEntity.pbox = UrlUtil.getUrlParamsValue(this.d.getPlayingOriginUrl(), "pbox");
            commonEntity.vfmt = this.d.getVideoFormat();
            commonEntity.afmt = this.d.getAudioFormat();
            commonEntity.vfmt = this.d.getVideoFormat();
            commonEntity.waev = this.d.waev;
            commonEntity.wadls = "" + this.d.wadls;
            commonEntity.tldls = com.hunantv.media.player.h.ac();
            commonEntity.dcpf = UrlUtil.getUrlParamsValue(this.d.getPlayingOriginUrl(), "dcp");
            commonEntity.devci = h.h();
            smoothMediaSource = this.a;
            if (smoothMediaSource != null) {
                commonEntity.vsri = smoothMediaSource.getVsri();
                vfps = this.a.getVfps();
            } else {
                commonEntity.vsri = "" + this.d.vsri;
                reportParams2 = this.k;
                if (reportParams2 != null) {
                    vfps = reportParams2.getVfps();
                }
            }
            commonEntity.vfps = vfps;
        }
        commonEntity.appgn = h.d(context);
        if (this.l) {
            commonEntity.reschg = "4";
        }
        ReportParams reportParams4 = this.k;
        if (reportParams4 != null) {
            commonEntity.def = reportParams4.getDef();
            commonEntity.isndn = "" + this.k.getIsndn();
            commonEntity.renvtp = String.valueOf(this.k.getRenvtp());
            commonEntity.suuid = this.k.getVideoSession();
            commonEntity.vtp = a(this.k.getVideoType());
            commonEntity.retry = String.valueOf(this.k.getRetryIndex());
            if (!this.l) {
                commonEntity.reschg = String.valueOf(this.k.getCaseType());
            }
            commonEntity.proxy = String.valueOf(this.k.getProxyType().ordinal());
            String str7 = "2";
            if (this.k.getVideoType() == ReportParams.VideoType.LOCAL) {
                if ("0".equalsIgnoreCase(this.k.getLocalMd5()) || "1".equalsIgnoreCase(this.k.getLocalMd5())) {
                    sb2 = new StringBuilder();
                    sb2.append(commonEntity.snum1);
                    localMd5 = this.k.getLocalMd5();
                } else {
                    if (this.k.getRemoteMd5() == null || "".equalsIgnoreCase(this.k.getRemoteMd5().trim())) {
                        sb2 = new StringBuilder();
                        sb2.append(commonEntity.snum1);
                        sb2.append("2");
                    } else if (this.k.getLocalMd5() == null || "".equalsIgnoreCase(this.k.getLocalMd5().trim())) {
                        sb2 = new StringBuilder();
                        sb2.append(commonEntity.snum1);
                        sb2.append("3");
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(commonEntity.snum1);
                        localMd5 = f.a(this.k.getRemoteMd5(), this.k.getLocalMd5()) ? "1" : "0";
                    }
                    strValueOf = sb2.toString();
                }
                sb2.append(localMd5);
                strValueOf = sb2.toString();
            } else {
                if (this.k.getVideoType() == ReportParams.VideoType.VOD && (mgtvMediaPlayer = this.d) != null) {
                    strValueOf = String.valueOf(mgtvMediaPlayer.getMaxDnsMs());
                }
                commonEntity.abt = this.k.getAbt();
                commonEntity.exCommonFields = this.k.getExCommonFields();
                commonEntity.vid = this.k.getVid();
                cdnip = this.k.getCdnip();
                commonEntity.url = cdnip;
                if ((StringUtil.isEmpty(cdnip) || "n".equalsIgnoreCase(commonEntity.url)) && (mgtvMediaPlayer2 = this.d) != null) {
                    hostName = UrlUtil.getHostName(mgtvMediaPlayer2.getPlayingOriginUrl());
                    if (!StringUtil.isEmpty(hostName)) {
                        commonEntity.url = hostName;
                    }
                }
                commonEntity.chash = this.k.getRenderType() + "_" + this.k.getEnhanceQualityType();
                if (this.d != null) {
                    commonEntity.chash += "_" + (this.d.isMediaCodecSWRender() ? 1 : 0);
                }
                if (this.d != null && this.k.getVideoType() == ReportParams.VideoType.IMMERSIVE) {
                    commonEntity.chash = "sc_" + this.d.getMediaCodecColorFormat();
                }
                if (this.l) {
                    if (this.d != null) {
                        sb = new StringBuilder();
                        p2ps = this.d.getSwitchP2ps();
                    } else {
                        string2 = "00";
                    }
                    commonEntity.p2ps = string2;
                    commonEntity.rdtp = this.k.getRenderType() + "";
                    cdnip2 = this.k.getCdnip();
                    if (StringUtil.isEmpty(cdnip2)) {
                        commonEntity.s2 = "0";
                    } else if (e.a(cdnip2)) {
                        commonEntity.s2 = "1";
                    } else {
                        commonEntity.s2 = "2";
                    }
                    commonEntity.s3 = this.k.getDef();
                    commonEntity.has_ad = this.k.getHasAd() + "";
                    reportParams = this.k;
                    if (reportParams == null && reportParams.getDrm() != null && (this.k.getProxyType() == ReportParams.ProxyType.NOPROXY_DRM || this.k.getProxyType() == ReportParams.ProxyType.P2P_DRM || this.k.getProxyType() == ReportParams.ProxyType.UNICOM_DRM)) {
                        b bVar2 = new b();
                        bVar2.a("v", "1");
                        bVar2.a("lic", this.k.getDrm().lic);
                        bVar2.a("firm", this.k.getDrm().firm);
                        bVar2.a("ec", this.k.getDrm().ec);
                        MgtvMediaPlayer mgtvMediaPlayer7 = this.d;
                        if (mgtvMediaPlayer7 != null) {
                            bVar2.a("de", mgtvMediaPlayer7.getDuration() > 0 ? "0" : "1");
                        }
                        bVar2.a("pes", str);
                        commonEntity.dsc = bVar2.toString();
                    } else {
                        if (this.k != null) {
                            bVar = new b();
                            bVar.a("v", "3");
                            bVar.a("kerr", this.k.getKeyInfo().keyInfoRet + "");
                            bVar.a("vid", this.k.getKeyInfo().keyinfoVid);
                            bVar.a("def", this.k.getKeyInfo().keyinfoDef);
                            bVar.a("url", UrlUtil.getHostName(this.k.getKeyInfo().keyinfoUrl));
                            bVar.a("fn", UrlUtil.getFileName(this.k.getKeyInfo().keyinfoUrl));
                            if (!StringUtil.isEmpty(this.k.getKeyInfo().reqHttpCode)) {
                                bVar.a("hc", this.k.getKeyInfo().reqHttpCode);
                            }
                            if (StringUtil.isEmpty(this.k.getKeyInfo().reqErrMsg)) {
                                i3 = 0;
                            } else {
                                String str8 = this.k.getKeyInfo().reqErrMsg;
                                i3 = 0;
                                bVar.a("em", str8.substring(0, str8.length() <= 8 ? str8.length() : 8));
                            }
                            bVar.a("try", this.k.getIstry());
                            mgtvMediaPlayer3 = this.d;
                            if (mgtvMediaPlayer3 == null) {
                                str7 = "0";
                            } else if (!e.c(mgtvMediaPlayer3.getLastIP())) {
                                if (e.b(this.d.getLastIP())) {
                                    str7 = "1";
                                } else {
                                    str7 = "0";
                                }
                            }
                            bVar.a("ip", str7);
                            mgtvMediaPlayer4 = this.d;
                            if (mgtvMediaPlayer4 != null) {
                                if (mgtvMediaPlayer4.getDuration() > 0) {
                                    str2 = "0";
                                } else {
                                    str2 = "1";
                                }
                                bVar.a("de", str2);
                            }
                            bVar.a("pes", str);
                            commonEntity.dsc = bVar.toString();
                        }
                        if (this.k.getKeyInfo().keyInfoRet != 0) {
                            str3 = "0";
                        } else {
                            str3 = this.k.getKeyInfo().keyInfoSetLayer + "";
                        }
                        StringBuilder sb6 = new StringBuilder();
                        if (this.k.getKeyInfo().keyInfoExist) {
                            str4 = "1";
                        } else {
                            str4 = "0";
                        }
                        sb6.append(str4);
                        sb6.append(this.k.getKeyInfo().keyInfoSet ? "1" : "0");
                        sb6.append(str3);
                        commonEntity.iskid = sb6.toString();
                        commonEntity.svtp = this.k.getSvtp() + "";
                        svds = this.k.getSvds();
                        if (svds != null && svds.toUpperCase().startsWith("FFF")) {
                            commonEntity.svds = svds;
                        }
                        commonEntity.encinfo = this.k.getEncinfo();
                        zIsP2p = this.k.isP2p();
                        i = 1;
                        r1 = zIsP2p;
                        if (true == zIsP2p && P2pMgr.isMgP2p()) {
                            r1 = zIsP2p;
                            r1 = 2;
                        }
                        r1 = zIsP2p;
                        mgtvMediaPlayer5 = this.d;
                        if (mgtvMediaPlayer5 != null || mgtvMediaPlayer5.getReadDataSourceType() == 2) {
                            str5 = "";
                        } else {
                            if (P2pMgr.isYfProxyP2p(this.d.getPlayingUrl())) {
                                i2 = 1;
                            } else {
                                i2 = P2pMgr.isMgProxyP2p(this.d.getPlayingUrl()) ? 2 : i3;
                            }
                            if (r1 != i2) {
                                str5 = "_" + i2;
                            } else {
                                str5 = "";
                            }
                        }
                        commonEntity.p2pt = r1 + "" + str5;
                        commonEntity.flowt = this.k.getFlowt();
                        commonEntity.sptp = this.k.getSptp() + "";
                        commonEntity.fhash = this.k.getVideoFileHash();
                        commonEntity.pptp = this.k.getPlayPreviewType();
                        commonEntity.addrty = "n";
                        netPlayConfig = NetPlayConfig.getsGlobalNetPlayConfig();
                        if (netPlayConfig != null) {
                            commonEntity.addrty = netPlayConfig.getAddrinfo_type();
                        }
                        serviceEntity.bsid = this.k.getBsid();
                        serviceEntity.pay = this.k.getPay();
                        serviceEntity.fpid = this.k.getFpid();
                        serviceEntity.ap = this.k.getAp();
                        serviceEntity.def = this.k.getDef();
                        serviceEntity.fpn = this.k.getFpn();
                        serviceEntity.url = this.k.getUrl();
                        serviceEntity.vid = this.k.getVid();
                        serviceEntity.cdnip = this.k.getCdnip();
                        serviceEntity.plid = this.k.getPlid();
                        serviceEntity.fpa = this.k.getFpa();
                        serviceEntity.cid = this.k.getCid();
                        serviceEntity.istry = this.k.getIstry();
                        serviceEntity.isad = this.k.getIsad();
                        serviceEntity.pt = a(this.k.getVideoType());
                        serviceEntity.cf = this.k.getCf();
                        serviceEntity.switcher = this.k.getSwitcher();
                        serviceEntity.submit = this.k.getSubmit();
                        serviceEntity.bdid = this.k.getBdid();
                        serviceEntity.cpn = this.k.getCpn();
                        serviceEntity.datano = this.k.getDatano();
                        serviceEntity.refmdid = this.k.getRefmdid();
                        serviceEntity.acp = this.k.getAcp();
                        serviceEntity.exServiceFields = this.k.getExServiceFields();
                    }
                    i3 = 0;
                    if (this.k.getKeyInfo().keyInfoRet != 0) {
                        str3 = "0";
                    } else {
                        str3 = this.k.getKeyInfo().keyInfoSetLayer + "";
                    }
                    StringBuilder sb7 = new StringBuilder();
                    if (this.k.getKeyInfo().keyInfoExist) {
                        str4 = "1";
                    } else {
                        str4 = "0";
                    }
                    sb7.append(str4);
                    sb7.append(this.k.getKeyInfo().keyInfoSet ? "1" : "0");
                    sb7.append(str3);
                    commonEntity.iskid = sb7.toString();
                    commonEntity.svtp = this.k.getSvtp() + "";
                    svds = this.k.getSvds();
                    if (svds != null) {
                        commonEntity.svds = svds;
                    }
                    commonEntity.encinfo = this.k.getEncinfo();
                    zIsP2p = this.k.isP2p();
                    i = 1;
                    r1 = zIsP2p;
                    if (true == zIsP2p) {
                        r1 = zIsP2p;
                        r1 = 2;
                    }
                    r1 = zIsP2p;
                    mgtvMediaPlayer5 = this.d;
                    if (mgtvMediaPlayer5 != null) {
                        str5 = "";
                    } else {
                        str5 = "";
                    }
                    commonEntity.p2pt = r1 + "" + str5;
                    commonEntity.flowt = this.k.getFlowt();
                    commonEntity.sptp = this.k.getSptp() + "";
                    commonEntity.fhash = this.k.getVideoFileHash();
                    commonEntity.pptp = this.k.getPlayPreviewType();
                    commonEntity.addrty = "n";
                    netPlayConfig = NetPlayConfig.getsGlobalNetPlayConfig();
                    if (netPlayConfig != null) {
                        commonEntity.addrty = netPlayConfig.getAddrinfo_type();
                    }
                    serviceEntity.bsid = this.k.getBsid();
                    serviceEntity.pay = this.k.getPay();
                    serviceEntity.fpid = this.k.getFpid();
                    serviceEntity.ap = this.k.getAp();
                    serviceEntity.def = this.k.getDef();
                    serviceEntity.fpn = this.k.getFpn();
                    serviceEntity.url = this.k.getUrl();
                    serviceEntity.vid = this.k.getVid();
                    serviceEntity.cdnip = this.k.getCdnip();
                    serviceEntity.plid = this.k.getPlid();
                    serviceEntity.fpa = this.k.getFpa();
                    serviceEntity.cid = this.k.getCid();
                    serviceEntity.istry = this.k.getIstry();
                    serviceEntity.isad = this.k.getIsad();
                    serviceEntity.pt = a(this.k.getVideoType());
                    serviceEntity.cf = this.k.getCf();
                    serviceEntity.switcher = this.k.getSwitcher();
                    serviceEntity.submit = this.k.getSubmit();
                    serviceEntity.bdid = this.k.getBdid();
                    serviceEntity.cpn = this.k.getCpn();
                    serviceEntity.datano = this.k.getDatano();
                    serviceEntity.refmdid = this.k.getRefmdid();
                    serviceEntity.acp = this.k.getAcp();
                    serviceEntity.exServiceFields = this.k.getExServiceFields();
                } else {
                    sb = new StringBuilder();
                    p2ps = this.k.getP2ps();
                }
                sb.append(p2ps);
                sb.append("");
                string2 = sb.toString();
                commonEntity.p2ps = string2;
                commonEntity.rdtp = this.k.getRenderType() + "";
                cdnip2 = this.k.getCdnip();
                if (StringUtil.isEmpty(cdnip2)) {
                    commonEntity.s2 = "0";
                } else if (e.a(cdnip2)) {
                    commonEntity.s2 = "1";
                } else {
                    commonEntity.s2 = "2";
                }
                commonEntity.s3 = this.k.getDef();
                commonEntity.has_ad = this.k.getHasAd() + "";
                reportParams = this.k;
                if (reportParams == null) {
                    if (this.k != null) {
                        bVar = new b();
                        bVar.a("v", "3");
                        bVar.a("kerr", this.k.getKeyInfo().keyInfoRet + "");
                        bVar.a("vid", this.k.getKeyInfo().keyinfoVid);
                        bVar.a("def", this.k.getKeyInfo().keyinfoDef);
                        bVar.a("url", UrlUtil.getHostName(this.k.getKeyInfo().keyinfoUrl));
                        bVar.a("fn", UrlUtil.getFileName(this.k.getKeyInfo().keyinfoUrl));
                        if (!StringUtil.isEmpty(this.k.getKeyInfo().reqHttpCode)) {
                            bVar.a("hc", this.k.getKeyInfo().reqHttpCode);
                        }
                        if (StringUtil.isEmpty(this.k.getKeyInfo().reqErrMsg)) {
                            String str9 = this.k.getKeyInfo().reqErrMsg;
                            i3 = 0;
                            bVar.a("em", str9.substring(0, str9.length() <= 8 ? str9.length() : 8));
                        } else {
                            i3 = 0;
                        }
                        bVar.a("try", this.k.getIstry());
                        mgtvMediaPlayer3 = this.d;
                        if (mgtvMediaPlayer3 == null) {
                            str7 = "0";
                        } else if (!e.c(mgtvMediaPlayer3.getLastIP())) {
                            if (e.b(this.d.getLastIP())) {
                                str7 = "1";
                            } else {
                                str7 = "0";
                            }
                        }
                        bVar.a("ip", str7);
                        mgtvMediaPlayer4 = this.d;
                        if (mgtvMediaPlayer4 != null) {
                            if (mgtvMediaPlayer4.getDuration() > 0) {
                                str2 = "0";
                            } else {
                                str2 = "1";
                            }
                            bVar.a("de", str2);
                        }
                        bVar.a("pes", str);
                        commonEntity.dsc = bVar.toString();
                    } else {
                        i3 = 0;
                    }
                } else if (this.k != null) {
                    bVar = new b();
                    bVar.a("v", "3");
                    bVar.a("kerr", this.k.getKeyInfo().keyInfoRet + "");
                    bVar.a("vid", this.k.getKeyInfo().keyinfoVid);
                    bVar.a("def", this.k.getKeyInfo().keyinfoDef);
                    bVar.a("url", UrlUtil.getHostName(this.k.getKeyInfo().keyinfoUrl));
                    bVar.a("fn", UrlUtil.getFileName(this.k.getKeyInfo().keyinfoUrl));
                    if (!StringUtil.isEmpty(this.k.getKeyInfo().reqHttpCode)) {
                        bVar.a("hc", this.k.getKeyInfo().reqHttpCode);
                    }
                    if (StringUtil.isEmpty(this.k.getKeyInfo().reqErrMsg)) {
                        String str10 = this.k.getKeyInfo().reqErrMsg;
                        i3 = 0;
                        bVar.a("em", str10.substring(0, str10.length() <= 8 ? str10.length() : 8));
                    } else {
                        i3 = 0;
                    }
                    bVar.a("try", this.k.getIstry());
                    mgtvMediaPlayer3 = this.d;
                    if (mgtvMediaPlayer3 == null) {
                        str7 = "0";
                    } else if (!e.c(mgtvMediaPlayer3.getLastIP())) {
                        if (e.b(this.d.getLastIP())) {
                            str7 = "1";
                        } else {
                            str7 = "0";
                        }
                    }
                    bVar.a("ip", str7);
                    mgtvMediaPlayer4 = this.d;
                    if (mgtvMediaPlayer4 != null) {
                        if (mgtvMediaPlayer4.getDuration() > 0) {
                            str2 = "0";
                        } else {
                            str2 = "1";
                        }
                        bVar.a("de", str2);
                    }
                    bVar.a("pes", str);
                    commonEntity.dsc = bVar.toString();
                } else {
                    i3 = 0;
                }
                if (this.k.getKeyInfo().keyInfoRet != 0) {
                    str3 = "0";
                } else {
                    str3 = this.k.getKeyInfo().keyInfoSetLayer + "";
                }
                StringBuilder sb8 = new StringBuilder();
                if (this.k.getKeyInfo().keyInfoExist) {
                    str4 = "1";
                } else {
                    str4 = "0";
                }
                sb8.append(str4);
                sb8.append(this.k.getKeyInfo().keyInfoSet ? "1" : "0");
                sb8.append(str3);
                commonEntity.iskid = sb8.toString();
                commonEntity.svtp = this.k.getSvtp() + "";
                svds = this.k.getSvds();
                if (svds != null) {
                    commonEntity.svds = svds;
                }
                commonEntity.encinfo = this.k.getEncinfo();
                zIsP2p = this.k.isP2p();
                i = 1;
                r1 = zIsP2p;
                if (true == zIsP2p) {
                    r1 = zIsP2p;
                    r1 = 2;
                }
                r1 = zIsP2p;
                mgtvMediaPlayer5 = this.d;
                if (mgtvMediaPlayer5 != null) {
                    str5 = "";
                } else {
                    str5 = "";
                }
                commonEntity.p2pt = r1 + "" + str5;
                commonEntity.flowt = this.k.getFlowt();
                commonEntity.sptp = this.k.getSptp() + "";
                commonEntity.fhash = this.k.getVideoFileHash();
                commonEntity.pptp = this.k.getPlayPreviewType();
                commonEntity.addrty = "n";
                netPlayConfig = NetPlayConfig.getsGlobalNetPlayConfig();
                if (netPlayConfig != null) {
                    commonEntity.addrty = netPlayConfig.getAddrinfo_type();
                }
                serviceEntity.bsid = this.k.getBsid();
                serviceEntity.pay = this.k.getPay();
                serviceEntity.fpid = this.k.getFpid();
                serviceEntity.ap = this.k.getAp();
                serviceEntity.def = this.k.getDef();
                serviceEntity.fpn = this.k.getFpn();
                serviceEntity.url = this.k.getUrl();
                serviceEntity.vid = this.k.getVid();
                serviceEntity.cdnip = this.k.getCdnip();
                serviceEntity.plid = this.k.getPlid();
                serviceEntity.fpa = this.k.getFpa();
                serviceEntity.cid = this.k.getCid();
                serviceEntity.istry = this.k.getIstry();
                serviceEntity.isad = this.k.getIsad();
                serviceEntity.pt = a(this.k.getVideoType());
                serviceEntity.cf = this.k.getCf();
                serviceEntity.switcher = this.k.getSwitcher();
                serviceEntity.submit = this.k.getSubmit();
                serviceEntity.bdid = this.k.getBdid();
                serviceEntity.cpn = this.k.getCpn();
                serviceEntity.datano = this.k.getDatano();
                serviceEntity.refmdid = this.k.getRefmdid();
                serviceEntity.acp = this.k.getAcp();
                serviceEntity.exServiceFields = this.k.getExServiceFields();
            }
            commonEntity.snum1 = strValueOf;
            commonEntity.abt = this.k.getAbt();
            commonEntity.exCommonFields = this.k.getExCommonFields();
            commonEntity.vid = this.k.getVid();
            cdnip = this.k.getCdnip();
            commonEntity.url = cdnip;
            if (StringUtil.isEmpty(cdnip)) {
                hostName = UrlUtil.getHostName(mgtvMediaPlayer2.getPlayingOriginUrl());
                if (!StringUtil.isEmpty(hostName)) {
                    commonEntity.url = hostName;
                }
            } else {
                hostName = UrlUtil.getHostName(mgtvMediaPlayer2.getPlayingOriginUrl());
                if (!StringUtil.isEmpty(hostName)) {
                    commonEntity.url = hostName;
                }
            }
            commonEntity.chash = this.k.getRenderType() + "_" + this.k.getEnhanceQualityType();
            if (this.d != null) {
                commonEntity.chash += "_" + (this.d.isMediaCodecSWRender() ? 1 : 0);
            }
            if (this.d != null) {
                commonEntity.chash = "sc_" + this.d.getMediaCodecColorFormat();
            }
            if (this.l) {
                if (this.d != null) {
                    sb = new StringBuilder();
                    p2ps = this.d.getSwitchP2ps();
                } else {
                    string2 = "00";
                }
                commonEntity.p2ps = string2;
                commonEntity.rdtp = this.k.getRenderType() + "";
                cdnip2 = this.k.getCdnip();
                if (StringUtil.isEmpty(cdnip2)) {
                    commonEntity.s2 = "0";
                } else if (e.a(cdnip2)) {
                    commonEntity.s2 = "1";
                } else {
                    commonEntity.s2 = "2";
                }
                commonEntity.s3 = this.k.getDef();
                commonEntity.has_ad = this.k.getHasAd() + "";
                reportParams = this.k;
                if (reportParams == null) {
                    if (this.k != null) {
                        bVar = new b();
                        bVar.a("v", "3");
                        bVar.a("kerr", this.k.getKeyInfo().keyInfoRet + "");
                        bVar.a("vid", this.k.getKeyInfo().keyinfoVid);
                        bVar.a("def", this.k.getKeyInfo().keyinfoDef);
                        bVar.a("url", UrlUtil.getHostName(this.k.getKeyInfo().keyinfoUrl));
                        bVar.a("fn", UrlUtil.getFileName(this.k.getKeyInfo().keyinfoUrl));
                        if (!StringUtil.isEmpty(this.k.getKeyInfo().reqHttpCode)) {
                            bVar.a("hc", this.k.getKeyInfo().reqHttpCode);
                        }
                        if (StringUtil.isEmpty(this.k.getKeyInfo().reqErrMsg)) {
                            String str11 = this.k.getKeyInfo().reqErrMsg;
                            i3 = 0;
                            bVar.a("em", str11.substring(0, str11.length() <= 8 ? str11.length() : 8));
                        } else {
                            i3 = 0;
                        }
                        bVar.a("try", this.k.getIstry());
                        mgtvMediaPlayer3 = this.d;
                        if (mgtvMediaPlayer3 == null) {
                            str7 = "0";
                        } else if (!e.c(mgtvMediaPlayer3.getLastIP())) {
                            if (e.b(this.d.getLastIP())) {
                                str7 = "1";
                            } else {
                                str7 = "0";
                            }
                        }
                        bVar.a("ip", str7);
                        mgtvMediaPlayer4 = this.d;
                        if (mgtvMediaPlayer4 != null) {
                            if (mgtvMediaPlayer4.getDuration() > 0) {
                                str2 = "0";
                            } else {
                                str2 = "1";
                            }
                            bVar.a("de", str2);
                        }
                        bVar.a("pes", str);
                        commonEntity.dsc = bVar.toString();
                    } else {
                        i3 = 0;
                    }
                } else if (this.k != null) {
                    bVar = new b();
                    bVar.a("v", "3");
                    bVar.a("kerr", this.k.getKeyInfo().keyInfoRet + "");
                    bVar.a("vid", this.k.getKeyInfo().keyinfoVid);
                    bVar.a("def", this.k.getKeyInfo().keyinfoDef);
                    bVar.a("url", UrlUtil.getHostName(this.k.getKeyInfo().keyinfoUrl));
                    bVar.a("fn", UrlUtil.getFileName(this.k.getKeyInfo().keyinfoUrl));
                    if (!StringUtil.isEmpty(this.k.getKeyInfo().reqHttpCode)) {
                        bVar.a("hc", this.k.getKeyInfo().reqHttpCode);
                    }
                    if (StringUtil.isEmpty(this.k.getKeyInfo().reqErrMsg)) {
                        String str12 = this.k.getKeyInfo().reqErrMsg;
                        i3 = 0;
                        bVar.a("em", str12.substring(0, str12.length() <= 8 ? str12.length() : 8));
                    } else {
                        i3 = 0;
                    }
                    bVar.a("try", this.k.getIstry());
                    mgtvMediaPlayer3 = this.d;
                    if (mgtvMediaPlayer3 == null) {
                        str7 = "0";
                    } else if (!e.c(mgtvMediaPlayer3.getLastIP())) {
                        if (e.b(this.d.getLastIP())) {
                            str7 = "1";
                        } else {
                            str7 = "0";
                        }
                    }
                    bVar.a("ip", str7);
                    mgtvMediaPlayer4 = this.d;
                    if (mgtvMediaPlayer4 != null) {
                        if (mgtvMediaPlayer4.getDuration() > 0) {
                            str2 = "0";
                        } else {
                            str2 = "1";
                        }
                        bVar.a("de", str2);
                    }
                    bVar.a("pes", str);
                    commonEntity.dsc = bVar.toString();
                } else {
                    i3 = 0;
                }
                if (this.k.getKeyInfo().keyInfoRet != 0) {
                    str3 = "0";
                } else {
                    str3 = this.k.getKeyInfo().keyInfoSetLayer + "";
                }
                StringBuilder sb9 = new StringBuilder();
                if (this.k.getKeyInfo().keyInfoExist) {
                    str4 = "1";
                } else {
                    str4 = "0";
                }
                sb9.append(str4);
                sb9.append(this.k.getKeyInfo().keyInfoSet ? "1" : "0");
                sb9.append(str3);
                commonEntity.iskid = sb9.toString();
                commonEntity.svtp = this.k.getSvtp() + "";
                svds = this.k.getSvds();
                if (svds != null) {
                    commonEntity.svds = svds;
                }
                commonEntity.encinfo = this.k.getEncinfo();
                zIsP2p = this.k.isP2p();
                i = 1;
                r1 = zIsP2p;
                if (true == zIsP2p) {
                    r1 = zIsP2p;
                    r1 = 2;
                }
                r1 = zIsP2p;
                mgtvMediaPlayer5 = this.d;
                if (mgtvMediaPlayer5 != null) {
                    str5 = "";
                } else {
                    str5 = "";
                }
                commonEntity.p2pt = r1 + "" + str5;
                commonEntity.flowt = this.k.getFlowt();
                commonEntity.sptp = this.k.getSptp() + "";
                commonEntity.fhash = this.k.getVideoFileHash();
                commonEntity.pptp = this.k.getPlayPreviewType();
                commonEntity.addrty = "n";
                netPlayConfig = NetPlayConfig.getsGlobalNetPlayConfig();
                if (netPlayConfig != null) {
                    commonEntity.addrty = netPlayConfig.getAddrinfo_type();
                }
                serviceEntity.bsid = this.k.getBsid();
                serviceEntity.pay = this.k.getPay();
                serviceEntity.fpid = this.k.getFpid();
                serviceEntity.ap = this.k.getAp();
                serviceEntity.def = this.k.getDef();
                serviceEntity.fpn = this.k.getFpn();
                serviceEntity.url = this.k.getUrl();
                serviceEntity.vid = this.k.getVid();
                serviceEntity.cdnip = this.k.getCdnip();
                serviceEntity.plid = this.k.getPlid();
                serviceEntity.fpa = this.k.getFpa();
                serviceEntity.cid = this.k.getCid();
                serviceEntity.istry = this.k.getIstry();
                serviceEntity.isad = this.k.getIsad();
                serviceEntity.pt = a(this.k.getVideoType());
                serviceEntity.cf = this.k.getCf();
                serviceEntity.switcher = this.k.getSwitcher();
                serviceEntity.submit = this.k.getSubmit();
                serviceEntity.bdid = this.k.getBdid();
                serviceEntity.cpn = this.k.getCpn();
                serviceEntity.datano = this.k.getDatano();
                serviceEntity.refmdid = this.k.getRefmdid();
                serviceEntity.acp = this.k.getAcp();
                serviceEntity.exServiceFields = this.k.getExServiceFields();
            } else {
                sb = new StringBuilder();
                p2ps = this.k.getP2ps();
            }
            sb.append(p2ps);
            sb.append("");
            string2 = sb.toString();
            commonEntity.p2ps = string2;
            commonEntity.rdtp = this.k.getRenderType() + "";
            cdnip2 = this.k.getCdnip();
            if (StringUtil.isEmpty(cdnip2)) {
                commonEntity.s2 = "0";
            } else if (e.a(cdnip2)) {
                commonEntity.s2 = "1";
            } else {
                commonEntity.s2 = "2";
            }
            commonEntity.s3 = this.k.getDef();
            commonEntity.has_ad = this.k.getHasAd() + "";
            reportParams = this.k;
            if (reportParams == null) {
                if (this.k != null) {
                    bVar = new b();
                    bVar.a("v", "3");
                    bVar.a("kerr", this.k.getKeyInfo().keyInfoRet + "");
                    bVar.a("vid", this.k.getKeyInfo().keyinfoVid);
                    bVar.a("def", this.k.getKeyInfo().keyinfoDef);
                    bVar.a("url", UrlUtil.getHostName(this.k.getKeyInfo().keyinfoUrl));
                    bVar.a("fn", UrlUtil.getFileName(this.k.getKeyInfo().keyinfoUrl));
                    if (!StringUtil.isEmpty(this.k.getKeyInfo().reqHttpCode)) {
                        bVar.a("hc", this.k.getKeyInfo().reqHttpCode);
                    }
                    if (StringUtil.isEmpty(this.k.getKeyInfo().reqErrMsg)) {
                        String str13 = this.k.getKeyInfo().reqErrMsg;
                        i3 = 0;
                        bVar.a("em", str13.substring(0, str13.length() <= 8 ? str13.length() : 8));
                    } else {
                        i3 = 0;
                    }
                    bVar.a("try", this.k.getIstry());
                    mgtvMediaPlayer3 = this.d;
                    if (mgtvMediaPlayer3 == null) {
                        str7 = "0";
                    } else if (!e.c(mgtvMediaPlayer3.getLastIP())) {
                        if (e.b(this.d.getLastIP())) {
                            str7 = "1";
                        } else {
                            str7 = "0";
                        }
                    }
                    bVar.a("ip", str7);
                    mgtvMediaPlayer4 = this.d;
                    if (mgtvMediaPlayer4 != null) {
                        if (mgtvMediaPlayer4.getDuration() > 0) {
                            str2 = "0";
                        } else {
                            str2 = "1";
                        }
                        bVar.a("de", str2);
                    }
                    bVar.a("pes", str);
                    commonEntity.dsc = bVar.toString();
                } else {
                    i3 = 0;
                }
            } else if (this.k != null) {
                bVar = new b();
                bVar.a("v", "3");
                bVar.a("kerr", this.k.getKeyInfo().keyInfoRet + "");
                bVar.a("vid", this.k.getKeyInfo().keyinfoVid);
                bVar.a("def", this.k.getKeyInfo().keyinfoDef);
                bVar.a("url", UrlUtil.getHostName(this.k.getKeyInfo().keyinfoUrl));
                bVar.a("fn", UrlUtil.getFileName(this.k.getKeyInfo().keyinfoUrl));
                if (!StringUtil.isEmpty(this.k.getKeyInfo().reqHttpCode)) {
                    bVar.a("hc", this.k.getKeyInfo().reqHttpCode);
                }
                if (StringUtil.isEmpty(this.k.getKeyInfo().reqErrMsg)) {
                    String str14 = this.k.getKeyInfo().reqErrMsg;
                    i3 = 0;
                    bVar.a("em", str14.substring(0, str14.length() <= 8 ? str14.length() : 8));
                } else {
                    i3 = 0;
                }
                bVar.a("try", this.k.getIstry());
                mgtvMediaPlayer3 = this.d;
                if (mgtvMediaPlayer3 == null) {
                    str7 = "0";
                } else if (!e.c(mgtvMediaPlayer3.getLastIP())) {
                    if (e.b(this.d.getLastIP())) {
                        str7 = "1";
                    } else {
                        str7 = "0";
                    }
                }
                bVar.a("ip", str7);
                mgtvMediaPlayer4 = this.d;
                if (mgtvMediaPlayer4 != null) {
                    if (mgtvMediaPlayer4.getDuration() > 0) {
                        str2 = "0";
                    } else {
                        str2 = "1";
                    }
                    bVar.a("de", str2);
                }
                bVar.a("pes", str);
                commonEntity.dsc = bVar.toString();
            } else {
                i3 = 0;
            }
            if (this.k.getKeyInfo().keyInfoRet != 0) {
                str3 = "0";
            } else {
                str3 = this.k.getKeyInfo().keyInfoSetLayer + "";
            }
            StringBuilder sb10 = new StringBuilder();
            if (this.k.getKeyInfo().keyInfoExist) {
                str4 = "1";
            } else {
                str4 = "0";
            }
            sb10.append(str4);
            sb10.append(this.k.getKeyInfo().keyInfoSet ? "1" : "0");
            sb10.append(str3);
            commonEntity.iskid = sb10.toString();
            commonEntity.svtp = this.k.getSvtp() + "";
            svds = this.k.getSvds();
            if (svds != null) {
                commonEntity.svds = svds;
            }
            commonEntity.encinfo = this.k.getEncinfo();
            zIsP2p = this.k.isP2p();
            i = 1;
            r1 = zIsP2p;
            if (true == zIsP2p) {
                r1 = zIsP2p;
                r1 = 2;
            }
            r1 = zIsP2p;
            mgtvMediaPlayer5 = this.d;
            if (mgtvMediaPlayer5 != null) {
                str5 = "";
            } else {
                str5 = "";
            }
            commonEntity.p2pt = r1 + "" + str5;
            commonEntity.flowt = this.k.getFlowt();
            commonEntity.sptp = this.k.getSptp() + "";
            commonEntity.fhash = this.k.getVideoFileHash();
            commonEntity.pptp = this.k.getPlayPreviewType();
            commonEntity.addrty = "n";
            netPlayConfig = NetPlayConfig.getsGlobalNetPlayConfig();
            if (netPlayConfig != null) {
                commonEntity.addrty = netPlayConfig.getAddrinfo_type();
            }
            serviceEntity.bsid = this.k.getBsid();
            serviceEntity.pay = this.k.getPay();
            serviceEntity.fpid = this.k.getFpid();
            serviceEntity.ap = this.k.getAp();
            serviceEntity.def = this.k.getDef();
            serviceEntity.fpn = this.k.getFpn();
            serviceEntity.url = this.k.getUrl();
            serviceEntity.vid = this.k.getVid();
            serviceEntity.cdnip = this.k.getCdnip();
            serviceEntity.plid = this.k.getPlid();
            serviceEntity.fpa = this.k.getFpa();
            serviceEntity.cid = this.k.getCid();
            serviceEntity.istry = this.k.getIstry();
            serviceEntity.isad = this.k.getIsad();
            serviceEntity.pt = a(this.k.getVideoType());
            serviceEntity.cf = this.k.getCf();
            serviceEntity.switcher = this.k.getSwitcher();
            serviceEntity.submit = this.k.getSubmit();
            serviceEntity.bdid = this.k.getBdid();
            serviceEntity.cpn = this.k.getCpn();
            serviceEntity.datano = this.k.getDatano();
            serviceEntity.refmdid = this.k.getRefmdid();
            serviceEntity.acp = this.k.getAcp();
            serviceEntity.exServiceFields = this.k.getExServiceFields();
        } else {
            i = 1;
        }
        commonEntity.rdtp += "_ref_" + PlayerReferenceObserver.size();
        ArrayList<MediaCodecHelp.CodecPerformance> decoderPerformanceList = MediaCodecHelp.getDecoderPerformanceList();
        String str15 = null;
        String str16 = null;
        int i4 = i3;
        int i5 = i4;
        while (i3 < decoderPerformanceList.size()) {
            String str17 = decoderPerformanceList.get(i3).mimeType;
            String str18 = decoderPerformanceList.get(i3).performance;
            String str19 = decoderPerformanceList.get(i3).hdr;
            if (str17.equals(MediaCodecHelp.AMIME_VIDEO_AVC)) {
                if (str18.contains(MediaCodecHelp.UHD) || str18.contains(MediaCodecHelp.SHD)) {
                    i4 = i;
                }
                if (StringUtil.isEmpty(str15)) {
                    str15 = "H264_" + str18 + str19;
                } else {
                    str15 = str15 + "__H264_" + str18 + str19;
                }
                commonEntity.sfhdamf = decoderPerformanceList.get(i3).max_fps_1080p;
            }
            if (str17.equals(MediaCodecHelp.AMIME_VIDEO_HEVC)) {
                if (str18.contains(MediaCodecHelp.UHD) || str18.contains(MediaCodecHelp.SHD)) {
                    i5 = i;
                }
                if (StringUtil.isEmpty(str16)) {
                    str16 = "H265_" + str18 + str19;
                } else {
                    str16 = str16 + "__H265_" + str18 + str19;
                }
                commonEntity.s4kmf = decoderPerformanceList.get(i3).max_fps_4k;
                commonEntity.sfhdhmf = decoderPerformanceList.get(i3).max_fps_1080p;
                commonEntity.shdrt = decoderPerformanceList.get(i3).shdrt;
            }
            i3++;
        }
        commonEntity.s4k = i4 + "" + i5;
        commonEntity.sshdr = MediaCodecHelp.getScreenPerformance(context).sshdr;
        commonEntity.srpf = MediaCodecHelp.getScreenPerformance(context).srpf;
        commonEntity.srpll = MediaCodecHelp.getScreenPerformance(context).srpll;
        commonEntity.srplh = MediaCodecHelp.getScreenPerformance(context).srplh;
        commonEntity.cdpf = str15 + "__" + str16;
        commonEntity.drmveri = "n";
        commonEntity.tappgn = ReportParams.GlobalSet.getsValidPackageNames();
        commonEntity.emdid = ReportParams.GlobalSet.getsChannelId();
        return commonEntity;
    }

    private String e(int i, int i2) {
        ReportParams reportParams = this.k;
        if (reportParams == null) {
            return null;
        }
        long leaveTimeS = reportParams.getLeaveTimeS();
        if (!CodeUtil.isHttp4XX(i, i2) || leaveTimeS <= 540) {
            return null;
        }
        long j = 7200;
        if (leaveTimeS > j) {
            leaveTimeS = j;
        }
        return "err_" + ((int) (((long) 1) + (leaveTimeS / 1800))) + "_" + i2;
    }

    private void h() {
        MgtvMediaPlayer mgtvMediaPlayer;
        m();
        c cVar = c.PV;
        String strA = a(cVar);
        this.m = cVar;
        this.h = System.currentTimeMillis();
        this.e = a(this.c);
        PVEntity pVEntity = new PVEntity();
        CommonEntity commonEntityA = a(this.c, strA);
        pVEntity.common = commonEntityA;
        if (commonEntityA != null && (mgtvMediaPlayer = this.d) != null && mgtvMediaPlayer.getCacheTsPaths() != null) {
            int length = this.d.getCacheTsPaths().length;
        }
        if (pVEntity.common != null) {
            b bVar = new b("__");
            bVar.a("root", SystemUtil.isRoot1() + "");
            bVar.a("wv", MgtvDrmHelper.getWidevineSupportMsg());
            if ("HUAWEI".equalsIgnoreCase(h.a())) {
                bVar.a("wp", MgtvDrmHelper.getWisePlaySupportMsg());
            }
            pVEntity.common.drmdi = bVar.toString();
        }
        a(a(pVEntity));
    }

    private String i() {
        String aLLAV1Decoder = MediaCodecHelp.getALLAV1Decoder(false);
        return aLLAV1Decoder != null ? aLLAV1Decoder : MgtvMediaPlayer.getH265Decoder(false);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:33:0x01fe  */
    private void j() {
        ReportParams reportParams;
        MgtvMediaPlayer.DataSourceInfo dataSourceInfo;
        StringBuilder sb;
        long totalBytes;
        StringBuilder sb2;
        c cVar = c.VV;
        String strA = a(cVar);
        if (this.m != c.PV) {
            return;
        }
        this.m = cVar;
        VVEntity vVEntity = new VVEntity();
        vVEntity.setImgovsrDeviceInfo(ReportParams.GlobalSet.getImgovsrDeviceInfo());
        vVEntity.cdtp = i() + "_cbl_" + (!MediaCodecHelp.sCreateCodecBlackList.isEmpty() ? 1 : 0) + "_fbl_" + (!MediaCodecHelp.sFlushCodecBlackList.isEmpty() ? 1 : 0);
        if (this.h > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.h;
            if (a(jCurrentTimeMillis)) {
                vVEntity.ltst = String.valueOf(jCurrentTimeMillis);
            } else {
                vVEntity.ltst = "0";
            }
            DebugLog.i("ReportManager", "reportVV render_start cost:" + jCurrentTimeMillis + " ms");
        }
        MgtvMediaPlayer mgtvMediaPlayer = this.d;
        if (mgtvMediaPlayer != null) {
            vVEntity.dectp = mgtvMediaPlayer.getCurrentVideoDecoderName();
            vVEntity.hddc = a(this.d);
            if (this.d.getCurrentPosition() > 10000) {
                vVEntity.mp = "1";
            } else {
                vVEntity.mp = "0";
            }
            vVEntity.cip = this.d.getLastIP();
            if (this.d.getImgoMediaPlayer() != null) {
                com.hunantv.media.player.d dVarT = this.d.getImgoMediaPlayer().T();
                if (dVarT instanceof ImgoMediaPlayerLib) {
                    ImgoMediaPlayerLib imgoMediaPlayerLib = (ImgoMediaPlayerLib) dVarT;
                    long vVTimeStatisticVVT = imgoMediaPlayerLib.getVVTimeStatisticVVT();
                    long vVTimeStatisticVVBT = imgoMediaPlayerLib.getVVTimeStatisticVVBT();
                    if (this.l) {
                        vVEntity.t2 = "0";
                        vVEntity.t3 = "0";
                        vVEntity.t5 = "0";
                        if (this.a != null) {
                            vVEntity.t1 = this.a.getVVTimeT1() + "";
                            vVEntity.t4 = this.a.getVVTimeT4() + "";
                            vVEntity.t6 = this.a.getVVTimeT6() + "";
                            sb = new StringBuilder();
                            sb.append(this.a.getVVTimeVVT());
                        }
                        vVEntity.vvbt = vVTimeStatisticVVBT + "";
                        totalBytes = this.d.getInnerFlowDataStatistic().getTotalBytes();
                        if (vVTimeStatisticVVT > 0) {
                            sb2 = new StringBuilder();
                            sb2.append((1000 * totalBytes) / vVTimeStatisticVVT);
                        } else {
                            sb2 = new StringBuilder();
                            sb2.append(totalBytes);
                        }
                        sb2.append("");
                        vVEntity.vvs = sb2.toString();
                        b bVar = new b();
                        bVar.a("svc", this.d.getNetdSVCTimeMs() + "");
                        bVar.a("vvb", totalBytes + "");
                        bVar.a("buft", this.d.getVVbuft() + "");
                        vVEntity.netd = bVar.toString();
                        vVEntity.dlpt = imgoMediaPlayerLib.getVVTimeStatisticDLPT() + "";
                    } else {
                        vVEntity.t1 = imgoMediaPlayerLib.getVVTimeStatisticT1() + "";
                        vVEntity.t2 = imgoMediaPlayerLib.getVVTimeStatisticT2() + "";
                        vVEntity.t3 = imgoMediaPlayerLib.getVVTimeStatisticT3() + "";
                        vVEntity.t4 = imgoMediaPlayerLib.getVVTimeStatisticT4() + "";
                        vVEntity.t5 = imgoMediaPlayerLib.getVVTimeStatisticT5() + "";
                        vVEntity.t6 = imgoMediaPlayerLib.getVVTimeStatisticT6() + "";
                        sb = new StringBuilder();
                        sb.append(vVTimeStatisticVVT);
                    }
                    sb.append("");
                    vVEntity.vvt = sb.toString();
                    vVEntity.vvbt = vVTimeStatisticVVBT + "";
                    totalBytes = this.d.getInnerFlowDataStatistic().getTotalBytes();
                    if (vVTimeStatisticVVT > 0) {
                        sb2 = new StringBuilder();
                        sb2.append((1000 * totalBytes) / vVTimeStatisticVVT);
                    } else {
                        sb2 = new StringBuilder();
                        sb2.append(totalBytes);
                    }
                    sb2.append("");
                    vVEntity.vvs = sb2.toString();
                    b bVar2 = new b();
                    bVar2.a("svc", this.d.getNetdSVCTimeMs() + "");
                    bVar2.a("vvb", totalBytes + "");
                    bVar2.a("buft", this.d.getVVbuft() + "");
                    vVEntity.netd = bVar2.toString();
                    vVEntity.dlpt = imgoMediaPlayerLib.getVVTimeStatisticDLPT() + "";
                }
            }
            MgtvMediaPlayer mgtvMediaPlayer2 = this.d;
            vVEntity.vsinfo = mgtvMediaPlayer2.hdrInfo;
            vVEntity.vsrver = mgtvMediaPlayer2.vsrver;
            vVEntity.vsrvkver = mgtvMediaPlayer2.vsrvkver;
        }
        CommonEntity commonEntityA = a(this.c, strA);
        vVEntity.common = commonEntityA;
        if (commonEntityA != null && this.d != null && (reportParams = this.k) != null && reportParams.getVideoType() == ReportParams.VideoType.VOD && (dataSourceInfo = this.d.getDataSourceInfo()) != null) {
            if (dataSourceInfo.getVideoWidth() == this.d.getVideoWidth() && dataSourceInfo.getVideoHeight() == this.d.getVideoHeight()) {
                StringBuilder sb3 = new StringBuilder();
                CommonEntity commonEntity = vVEntity.common;
                sb3.append(commonEntity.s3);
                sb3.append("_s");
                commonEntity.s3 = sb3.toString();
            } else {
                StringBuilder sb4 = new StringBuilder();
                CommonEntity commonEntity2 = vVEntity.common;
                sb4.append(commonEntity2.s3);
                sb4.append("_n_");
                sb4.append(dataSourceInfo.getVideoWidth());
                sb4.append("x");
                sb4.append(dataSourceInfo.getVideoHeight());
                sb4.append("_");
                sb4.append(this.d.getVideoWidth());
                sb4.append("x");
                sb4.append(this.d.getVideoHeight());
                commonEntity2.s3 = sb4.toString();
            }
        }
        a(a(vVEntity));
    }

    private boolean k() {
        ReportParams reportParams = this.k;
        if (reportParams != null) {
            return reportParams.getVideoType() == ReportParams.VideoType.VOD || this.k.getVideoType() == ReportParams.VideoType.LOCAL;
        }
        return false;
    }

    private String l() {
        MgtvMediaPlayer mgtvMediaPlayer = this.d;
        if (mgtvMediaPlayer == null) {
            return "-1";
        }
        if (UrlUtil.isSuffixUrl(mgtvMediaPlayer.getPlayingUrl(), Video.SUFFIX.SUFFIX_M3U8) || UrlUtil.isSuffixUrl(this.d.getPlayingUrl(), ".m3u")) {
            return "1";
        }
        if (UrlUtil.isSuffixUrl(this.d.getPlayingUrl(), Video.SUFFIX.SUFFIX_MP4)) {
            return "2";
        }
        if (UrlUtil.isSuffixUrl(this.d.getPlayingUrl(), ".ts")) {
            return "4";
        }
        if (UrlUtil.isSuffixUrl(this.d.getPlayingUrl(), ".tmp")) {
            return "5";
        }
        if (UrlUtil.isSuffixUrl(this.d.getPlayingUrl(), ".m4a") || UrlUtil.isSuffixUrl(this.d.getPlayingUrl(), ".mgm4a")) {
            return "10";
        }
        return (UrlUtil.isSuffixUrl(this.d.getPlayingUrl(), ".flac") || UrlUtil.isSuffixUrl(this.d.getPlayingUrl(), ".mgflac")) ? "11" : "0";
    }

    private void m() {
        this.f = 0;
        this.g = 0;
        this.h = -1L;
        ReportParams reportParams = this.k;
        if (reportParams != null) {
            boolean zIsInnerRetry = reportParams.getEnd().isInnerRetry();
            ReportParams.End end = this.k.getEnd();
            if (zIsInnerRetry) {
                end.setInnerRetry(false);
            } else {
                end.setTarget(ReportParams.End.Target.CHANGE_SOURCE);
            }
        }
    }

    private boolean n() {
        c cVar = this.m;
        return (cVar == c.ERR || cVar == c.END) ? false : true;
    }

    public void b() {
        DebugLog.i("ReportManager", "reportVV in");
        synchronized (this.n) {
            j();
        }
        DebugLog.i("ReportManager", "reportVV out");
    }

    public void c() {
        DebugLog.i("ReportManager", "reportStop in.");
        synchronized (this.n) {
            try {
                String str = "1";
                ReportParams reportParams = this.k;
                if (reportParams != null) {
                    if (reportParams.getEnd().isInnerRetry()) {
                        str = "3";
                    } else {
                        int i = AnonymousClass1.b[this.k.getEnd().getTarget().ordinal()];
                        if (i == 1) {
                            str = "1";
                        } else if (i == 2) {
                            str = "2";
                        }
                    }
                }
                a(str, 0, 0);
            } catch (Throwable th) {
                throw th;
            }
        }
        DebugLog.i("ReportManager", "reportStop out.");
    }

    public void d() {
        synchronized (this.n) {
            this.g++;
            d("0");
        }
    }

    public void f() {
    }

    public String g() {
        return this.e;
    }

    public a(Context context, MgtvMediaPlayer mgtvMediaPlayer, boolean z) {
        this.h = -1L;
        this.i = -1L;
        this.j = -1L;
        this.m = c.NONE;
        this.n = new Object();
        this.c = context;
        this.d = mgtvMediaPlayer;
        this.l = z;
    }

    private CommonEntity a(Context context, String str) {
        return a(context, (InterfaceC0139a) null, str);
    }

    private void d(String str) {
        if (n()) {
            SeekEntity seekEntity = new SeekEntity();
            seekEntity.seek_type = str;
            seekEntity.common = a(this.c, a((c) null));
            if (str.equals("0")) {
                this.j = System.currentTimeMillis();
            } else if (this.j > -1) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.j;
                if (a(jCurrentTimeMillis)) {
                    seekEntity.common.service.td = String.valueOf(jCurrentTimeMillis);
                }
            }
            seekEntity.common.service.idx = String.valueOf(this.g);
            a(a(seekEntity));
        }
    }

    private String e(String str) {
        String protocol = UrlUtil.getProtocol(str);
        MgtvMediaPlayer mgtvMediaPlayer = this.d;
        String fileFormat = "";
        if (mgtvMediaPlayer != null && mgtvMediaPlayer.getFileFormat() != null && !"".equals(this.d.getFileFormat().trim())) {
            fileFormat = this.d.getFileFormat();
        }
        return protocol + l() + "_" + fileFormat;
    }

    private void f(int i, int i2) {
        c cVar = c.END;
        String strA = a(cVar);
        this.i = -1L;
        this.j = -1L;
        this.m = cVar;
        EndEntity endEntity = new EndEntity();
        endEntity.endtp = "10_10_" + i + "_" + i2;
        String strE = e(i, i2);
        if (strE != null) {
            endEntity.ptst = strE;
        }
        endEntity.common = a(this.c, strA);
        a(a(endEntity));
        m();
    }

    public void b(int i, int i2) {
        DebugLog.i("ReportManager", "reportEndWithErrorMp in. " + i + "-" + i2);
        synchronized (this.n) {
            f(i, i2);
        }
        DebugLog.i("ReportManager", "reportEndWithErrorMp out.");
    }

    public void c(String str) {
        this.e = str;
    }

    public a(MgtvMediaPlayer mgtvMediaPlayer, boolean z) {
        this(mgtvMediaPlayer != null ? mgtvMediaPlayer.getContext() : null, mgtvMediaPlayer, z);
    }

    public static String a(Context context) {
        String strTrim = StringUtil.trim(h.a() + h.e() + new Random().nextLong());
        StringBuilder sb = new StringBuilder();
        sb.append(strTrim);
        sb.append(System.currentTimeMillis());
        String strA = com.hunantv.media.report.c.b.a(sb.toString());
        if (strA != null && !"".equals(strA.trim())) {
            return strA;
        }
        return strTrim + System.currentTimeMillis();
    }

    public static boolean c(int i, int i2) {
        return d(i, i2) || MGTVP2pDirectMediaDataSource.isP2pDirectTimeoutError(i, i2);
    }

    public static boolean d(int i, int i2) {
        return i == 300001 || i == 300002 || i == 300003 || i == 300004 || i2 == 100911 || i2 == 100910;
    }

    public void b(int i, int i2, String str) {
        String str2;
        String str3;
        CdnM3u8Entity lastM3u8Entity;
        c cVar = c.ERR;
        String strA = a(cVar);
        if (n()) {
            this.m = cVar;
            ErrorEntity errorEntity = new ErrorEntity();
            errorEntity.et = a(this.d, i, i2);
            errorEntity.sc = String.valueOf(i);
            errorEntity.exr = String.valueOf(i2);
            b bVar = new b();
            String str4 = "";
            if (this.k != null) {
                bVar.a("lc", "" + this.k.getLastErrorCodeExtra());
            }
            if (this.d != null) {
                bVar.a("sr", "" + this.d.getSourceRetryCount());
                bVar.a("sc", "" + this.d.getSourceRetryCode());
                bVar.a(StringLookupFactory.KEY_DNS, this.d.getCurrentDnsDsc());
                bVar.a("live", this.d.isLive() + "");
                String currentDrmMetodName = this.d.getCurrentDrmMetodName();
                if (currentDrmMetodName != null) {
                    bVar.a("km", currentDrmMetodName);
                }
                bVar.a("imp4e", this.d.isInitMp4Error() ? "1" : "0");
                bVar.a("ipn", this.d.getLastIPCount() + "");
                bVar.a("ipi", this.d.getLastIpIndex() + "");
                bVar.a("ipt", this.d.getLastDnsType() + "");
                if (this.k != null) {
                    bVar.a("ln", UrlUtil.getFileName(this.d.getLastRequestUrl()));
                }
                IMGTVMediaDataSource iMGTVMediaDataSourceA = this.d.getImgoMediaPlayer() != null ? this.d.getImgoMediaPlayer().A() : null;
                if ((iMGTVMediaDataSourceA instanceof MGTVP2pDirectMediaDataSource) && (lastM3u8Entity = ((MGTVP2pDirectMediaDataSource) iMGTVMediaDataSourceA).getLastM3u8Entity()) != null && lastM3u8Entity.isSizeError) {
                    bVar.a("m3u", lastM3u8Entity.contentLength + "_" + lastM3u8Entity.httpBodySize);
                }
                bVar.a("vcn", this.d.getCodecName());
                bVar.a("netc", this.d.isNetworkChangeWhilePlaying() ? "1" : "0");
                bVar.a("lds", this.d.getLastDlSize() > 0 ? "1" : "0");
                if (e.b(this.d.getLastIP())) {
                    str3 = "1";
                } else {
                    str3 = e.c(this.d.getLastIP()) ? "2" : "0";
                }
                bVar.a("ipf", str3);
                String playingOriginUrl = this.d.getPlayingOriginUrl();
                if (StringUtil.isEmpty(playingOriginUrl)) {
                    playingOriginUrl = this.d.getPlayingUrl();
                }
                str4 = playingOriginUrl;
                if (this.d.getImgoMediaPlayer() != null) {
                    bVar.a("gif", this.d.getImgoMediaPlayer().S() ? "1" : "0");
                }
                errorEntity.surl = UrlUtil.urlEncode(this.d.getPlayingOriginUrl());
                if (this.d.getDataSourceInfo() != null && this.d.getDataSourceInfo().getAudioChildInfo() != null) {
                    errorEntity.licurl = this.d.getDataSourceInfo().getAudioChildInfo().getLicenseUrl();
                }
            }
            bVar.a("on", UrlUtil.getFileName(str4));
            errorEntity.cdtp = i();
            MgtvMediaPlayer mgtvMediaPlayer = this.d;
            if (mgtvMediaPlayer != null) {
                com.hunantv.media.player.h imgoMediaPlayer = mgtvMediaPlayer.getImgoMediaPlayer();
                if (imgoMediaPlayer == null || !imgoMediaPlayer.ao()) {
                    str2 = errorEntity.cdtp + "_sie_0";
                } else {
                    str2 = errorEntity.cdtp + "_sie_1_" + imgoMediaPlayer.ap();
                }
                errorEntity.cdtp = str2;
                errorEntity.dectp = this.d.getCurrentVideoDecoderName();
                errorEntity.hddc = a(this.d);
                errorEntity.ptst = this.d.isRendered() ? String.valueOf(this.d.getPlayTicker().getTickCount()) : String.valueOf((System.currentTimeMillis() - this.h) / 1000);
                errorEntity.cip = this.d.getLastIP();
            }
            String strE = e(i, i2);
            if (strE != null) {
                errorEntity.ptst = strE;
            }
            errorEntity.common = a(this.c, new b(i, i2, errorEntity), strA);
            DebugLog.i("ReportManager", "reportErr statics_num1:" + errorEntity.common.snum1 + ",video_type" + errorEntity.common.vtp);
            if (errorEntity.common != null) {
                bVar.a("pes", strA);
                errorEntity.common.dsc = bVar.toString();
            }
            a(a(errorEntity));
        }
    }

    public void e() {
        synchronized (this.n) {
            d("1");
        }
    }

    private String a(MgtvMediaPlayer mgtvMediaPlayer) {
        int i = 0;
        String.valueOf(0);
        int i2 = AnonymousClass1.c[mgtvMediaPlayer.getHw2SwType().ordinal()];
        if (i2 != 1) {
            i = 2;
            if (i2 != 2) {
                i = 3;
                if (i2 != 3) {
                    i = 4;
                }
            }
        } else if (mgtvMediaPlayer.isHardware()) {
            return String.valueOf(1);
        }
        return String.valueOf(i);
    }

    public void b(String str) {
        synchronized (this.n) {
            a("1", str);
        }
    }

    private String a(MgtvMediaPlayer mgtvMediaPlayer, int i, int i2) {
        if (!c(i, i2)) {
            return (mgtvMediaPlayer == null || !mgtvMediaPlayer.isRendered()) ? "101" : "102";
        }
        if (mgtvMediaPlayer == null || !mgtvMediaPlayer.isRendered()) {
            return "201";
        }
        return i == 300003 ? "203" : "202";
    }

    private String a(ReportParams.VideoType videoType) {
        MgtvMediaPlayer mgtvMediaPlayer;
        String videoTypeStr = ReportParams.getVideoTypeStr(videoType);
        videoTypeStr.hashCode();
        return (videoTypeStr.equals("1") && (mgtvMediaPlayer = this.d) != null && UrlUtil.isLocal(mgtvMediaPlayer.getPlayingUrl())) ? "3" : videoTypeStr;
    }

    private String a(c cVar) {
        if (cVar == null) {
            return "n";
        }
        if (cVar == this.m) {
            DebugLog.e("ReportManager", "mCurrentStatus already equals targetStatus,targetStatus = " + cVar);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(cVar == this.m ? "1" : "0");
        sb.append(this.m.a());
        return sb.toString();
    }

    private HashMap<String, String> a(Object obj) {
        return g.a(obj);
    }

    public void a() {
        DebugLog.i("ReportManager", "reportPV in");
        synchronized (this.n) {
            h();
        }
        DebugLog.i("ReportManager", "reportPV out");
    }

    public void a(int i) {
        synchronized (this.n) {
            try {
                if (n() && k()) {
                    HeartBeatEntity heartBeatEntity = new HeartBeatEntity();
                    MgtvMediaPlayer mgtvMediaPlayer = this.d;
                    if (mgtvMediaPlayer != null) {
                        heartBeatEntity.current_position = String.valueOf(mgtvMediaPlayer.getCurrentPosition());
                        heartBeatEntity.duration = String.valueOf(this.d.getDuration());
                    }
                    CommonEntity commonEntityA = a(this.c, a((c) null));
                    heartBeatEntity.common = commonEntityA;
                    commonEntityA.service.idx = String.valueOf(i);
                    a(a(heartBeatEntity));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(int i, int i2) {
        String str;
        DebugLog.i("ReportManager", "reportComplete in. " + i + "-" + i2);
        synchronized (this.n) {
            if (i == 0) {
                str = "0";
            } else {
                str = i == 400802 ? "101" : "9";
            }
            try {
                a(str, i, i2);
            } catch (Throwable th) {
                throw th;
            }
        }
        DebugLog.i("ReportManager", "reportComplete out.");
    }

    public void a(int i, int i2, String str) {
        DebugLog.i("ReportManager", "reportErr in." + i + "-" + i2);
        synchronized (this.n) {
            b(i, i2, str);
        }
        DebugLog.i("ReportManager", "reportErr out");
    }

    public void a(SmoothMediaSource smoothMediaSource) {
        this.a = smoothMediaSource;
    }

    public void a(ReportParams reportParams) {
        this.k = reportParams;
    }

    public void a(String str) {
        synchronized (this.n) {
            this.f++;
            a("0", str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00cf  */
    private void a(String str, int i, int i2) {
        String str2;
        String str3;
        c cVar = c.END;
        String strA = a(cVar);
        if (!n() || this.m == c.NONE) {
            return;
        }
        this.i = -1L;
        this.j = -1L;
        this.m = cVar;
        EndEntity endEntity = new EndEntity();
        MgtvMediaPlayer mgtvMediaPlayer = this.d;
        String str4 = (mgtvMediaPlayer == null || !mgtvMediaPlayer.isRendered()) ? "10_" : "20_";
        MgtvMediaPlayer mgtvMediaPlayer2 = this.d;
        if (mgtvMediaPlayer2 == null || mgtvMediaPlayer2.getDrmSession() == null) {
            str2 = "";
        } else if (this.d.getImgoMediaPlayer() != null) {
            com.hunantv.media.player.d dVarT = this.d.getImgoMediaPlayer().T();
            if (dVarT instanceof ImgoMediaPlayerLib) {
                ImgoMediaPlayerLib imgoMediaPlayerLib = (ImgoMediaPlayerLib) dVarT;
                str2 = "_" + imgoMediaPlayerLib.getDrmPreparedStatus();
                endEntity.vsrcount = "" + imgoMediaPlayerLib.getPImgoVsrExeInfo(ImgoMediaPlayerLib.FFP_PROP_INT64_VSRTIME_COUNT, 0L);
                endEntity.vsravgt = "" + imgoMediaPlayerLib.getPImgoVsrExeInfo(ImgoMediaPlayerLib.FFP_PROP_INT64_VSRTIME_AVG, 0L);
                endEntity.vsrmint = "" + imgoMediaPlayerLib.getPImgoVsrExeInfo(ImgoMediaPlayerLib.FFP_PROP_INT64_VSRTIME_MIN, 0L);
                endEntity.vsrmaxt = "" + imgoMediaPlayerLib.getPImgoVsrExeInfo(ImgoMediaPlayerLib.FFP_PROP_INT64_VSRTIME_MAX, 0L);
            } else {
                str2 = "_n";
            }
        } else {
            str2 = "_n";
        }
        endEntity.endtp = str4 + str + str2;
        if (this.d != null) {
            endEntity.cdtp = this.d.getLastTsSkipErrExtra() + "_" + this.d.getLastTsSkipErrFileName() + "_";
            StringBuilder sb = new StringBuilder();
            sb.append(this.d.getRecordMaxPlaySpeed());
            sb.append("");
            endEntity.umaxs = sb.toString();
            com.hunantv.media.player.h imgoMediaPlayer = this.d.getImgoMediaPlayer();
            if (imgoMediaPlayer == null || !imgoMediaPlayer.ao()) {
                str3 = endEntity.cdtp + "_sie_0";
            } else {
                str3 = endEntity.cdtp + "_sie_1_" + imgoMediaPlayer.ap();
            }
            endEntity.cdtp = str3;
            endEntity.dectp = this.d.getCurrentVideoDecoderName();
            endEntity.hddc = a(this.d);
            endEntity.ptst = this.d.isRendered() ? String.valueOf(this.d.getPlayTicker().getTickCount()) : String.valueOf((System.currentTimeMillis() - this.h) / 1000);
            endEntity.cip = this.d.getLastIP();
        }
        if ("9".equalsIgnoreCase(str)) {
            endEntity.endtp += "_" + i + "_" + i2;
            String strE = e(i, i2);
            if (strE != null) {
                endEntity.ptst = strE;
            }
        }
        CommonEntity commonEntityA = a(this.c, strA);
        endEntity.common = commonEntityA;
        if (commonEntityA != null && this.d != null) {
            StringBuilder sb2 = new StringBuilder();
            CommonEntity commonEntity = endEntity.common;
            sb2.append(commonEntity.rdtp);
            sb2.append("_fps_");
            sb2.append(this.d.getFpsMsg());
            commonEntity.rdtp = sb2.toString();
            try {
                StringBuilder sb3 = new StringBuilder();
                CommonEntity commonEntity2 = endEntity.common;
                sb3.append(commonEntity2.rdtp);
                sb3.append("_ats_");
                sb3.append(b.format(this.d.getPropertyFloat(10007, -2.0f)));
                commonEntity2.rdtp = sb3.toString();
            } catch (Exception unused) {
                StringBuilder sb4 = new StringBuilder();
                CommonEntity commonEntity3 = endEntity.common;
                sb4.append(commonEntity3.rdtp);
                sb4.append("_ats_e");
                commonEntity3.rdtp = sb4.toString();
            }
        }
        a(a(endEntity));
        m();
    }

    private void a(String str, String str2) {
        if (n()) {
            BufferEntity bufferEntity = new BufferEntity();
            bufferEntity.buffer_type = str;
            bufferEntity.buffer_kind = str2;
            bufferEntity.common = a(this.c, a((c) null));
            if (str.equals("0")) {
                this.i = System.currentTimeMillis();
            } else if (this.i > -1) {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.i;
                if (a(jCurrentTimeMillis)) {
                    bufferEntity.common.service.td = String.valueOf(jCurrentTimeMillis);
                }
            }
            bufferEntity.common.service.idx = String.valueOf(this.f);
            a(a(bufferEntity));
        }
    }

    private void a(HashMap<String, String> map) {
        ReportParams reportParams = this.k;
        if (reportParams == null || !(reportParams.getVideoType() == ReportParams.VideoType.AD_PRE || this.k.getVideoType() == ReportParams.VideoType.AD_MID || this.k.getVideoType() == ReportParams.VideoType.HOME)) {
            a(map, AnonymousClass1.d[Constants.REPORT_WAY.ordinal()] != 3);
        }
    }

    private synchronized void a(HashMap<String, String> map, boolean z) {
        try {
            try {
                if (this.c != null) {
                    Intent intent = new Intent("mgtv.player.action.PLAYER_REPORT_EVENT");
                    intent.putExtra("EXTRA_REPORT_PARAMS", map);
                    if (z) {
                        LocalBroadcastManager.getInstance(this.c).sendBroadcast(intent);
                    } else {
                        this.c.sendBroadcast(intent);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean a(long j) {
        return j >= 0 && j <= 1800000;
    }
}
