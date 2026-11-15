package com.transsion.postdetail.layer.local;

import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c0 {

    public static final a f46973e0 = new a(null);
    private String A;
    private String B;
    private String C;
    private String D;
    private String F;
    private String G;
    private DownloadBean H;
    private String I;
    private int J;
    private boolean K;
    private int L;
    private int M;
    private String P;
    private UGCVideo S;
    private String T;
    private String U;
    private String V;
    private boolean Y;
    private TnPlayerType Z;

    private com.transsion.player.orplayer.f f46974a;

    private boolean f46975a0;

    private boolean f46977b0;

    private long f46978c;

    private gj.c f46979c0;

    private long f46980d;

    private boolean f46981d0;

    private long f46982e;

    private long f46983f;

    private long f46984g;

    private int f46985h;

    private int f46986i;

    private long f46987j;

    private long f46988k;

    private long f46989l;

    private long f46990m;

    private long f46991n;

    private long f46992o;

    private boolean f46993p;

    private boolean f46995r;

    private boolean f46996s;

    private long f46997t;

    private long f46998u;

    private int f46999v;

    private long f47000w;

    private Integer f47001x;

    private String f47002y;

    private String f47003z;

    private final String f46976b = "long_video_play";

    private boolean f46994q = true;
    private int E = -1;
    private int N = -1;
    private int O = -1;
    private String Q = "local_video_detail";
    private String R = "long_video_play";
    private Map W = new LinkedHashMap();
    private final List X = new ArrayList();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static void c(c0 c0Var, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        c0Var.b(z10);
    }

    private final gj.c f() {
        if (this.f46979c0 == null) {
            this.f46979c0 = (gj.c) gj.a.f61068a.a(gj.c.class);
        }
        return this.f46979c0;
    }

    private final void x(boolean z10) {
        this.f46978c = 0L;
        this.f46980d = 0L;
        this.f46982e = 0L;
        this.f46983f = 0L;
        this.f46984g = 0L;
        this.f46985h = 0;
        this.f46988k = 0L;
        this.f46989l = 0L;
        this.f46997t = 0L;
        this.f46998u = 0L;
        this.f46999v = 0;
        this.f46990m = 0L;
        this.f46991n = 0L;
        this.f46992o = 0L;
        this.f46986i = 0;
        this.f46993p = false;
        this.f47001x = null;
        this.f47002y = null;
        this.J = 0;
        this.f47003z = "";
        if (z10) {
            return;
        }
        this.f46987j = 0L;
        this.f47000w = 0L;
        this.Z = null;
        this.f46975a0 = false;
        this.f46977b0 = false;
        this.f46996s = false;
    }

    public final void A(int i10) {
        this.O = i10;
    }

    public final void B(int i10) {
        this.N = i10;
    }

    public final void C(boolean z10) {
        this.f46995r = z10;
    }

    public final void D(String str) {
        Intrinsics.h(str, "<set-?>");
        this.R = str;
    }

    public final void E(boolean z10) {
        this.Y = z10;
    }

    public final void F(boolean z10) {
        this.f46981d0 = z10;
    }

    public final void G(int i10, String str) {
        String str2;
        if (i10 == 1 || this.J != 1 || (str2 = this.f47003z) == null || str2.length() <= 0) {
            this.J = i10;
            this.f47003z = str;
        }
    }

    public final void H(com.transsion.player.orplayer.f fVar) {
        this.f46974a = fVar;
    }

    public final void I(String str) {
        Intrinsics.h(str, "<set-?>");
        this.Q = str;
    }

    public final void J(String str) {
        this.F = str;
    }

    public final void K(String str) {
        this.P = str;
    }

    public final void L(boolean z10) {
        this.f46977b0 = z10;
    }

    public final void M(String str) {
        this.T = str;
    }

    public final void N(String str) {
        this.V = str;
    }

    public final void O(String str) {
        this.U = str;
    }

    public final void P(UGCVideo uGCVideo) {
        this.S = uGCVideo;
    }

    public final void a() {
        this.f46980d = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "addSurface", false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:150:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:152:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:155:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:158:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:161:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:176:0x0341  */
    /* JADX WARN: Code duplicated, block: B:178:0x0350  */
    /* JADX WARN: Code duplicated, block: B:180:0x0356  */
    /* JADX WARN: Code duplicated, block: B:181:0x035c  */
    /* JADX WARN: Code duplicated, block: B:184:0x0366  */
    /* JADX WARN: Code duplicated, block: B:186:0x036c  */
    /* JADX WARN: Code duplicated, block: B:187:0x0372  */
    /* JADX WARN: Code duplicated, block: B:190:0x039f  */
    /* JADX WARN: Code duplicated, block: B:193:0x0401  */
    /* JADX WARN: Code duplicated, block: B:194:0x0404  */
    /* JADX WARN: Code duplicated, block: B:197:0x0422  */
    /* JADX WARN: Code duplicated, block: B:198:0x0425  */
    /* JADX WARN: Code duplicated, block: B:201:0x042f  */
    /* JADX WARN: Code duplicated, block: B:202:0x0432  */
    /* JADX WARN: Code duplicated, block: B:205:0x043c  */
    /* JADX WARN: Code duplicated, block: B:208:0x0449  */
    /* JADX WARN: Code duplicated, block: B:209:0x044c  */
    /* JADX WARN: Code duplicated, block: B:212:0x0456  */
    /* JADX WARN: Code duplicated, block: B:213:0x0459  */
    /* JADX WARN: Code duplicated, block: B:216:0x046b  */
    /* JADX WARN: Code duplicated, block: B:219:0x0479 A[LOOP:1: B:217:0x0473->B:219:0x0479, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:222:0x049b  */
    /* JADX WARN: Code duplicated, block: B:225:0x04ac  */
    /* JADX WARN: Code duplicated, block: B:228:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:232:0x04db A[Catch: all -> 0x0508, TryCatch #0 {all -> 0x0508, blocks: (B:229:0x04c0, B:230:0x04d5, B:232:0x04db, B:234:0x04e7, B:237:0x04f9), top: B:290:0x04c0 }] */
    /* JADX WARN: Code duplicated, block: B:241:0x050c  */
    /* JADX WARN: Code duplicated, block: B:244:0x0516  */
    /* JADX WARN: Code duplicated, block: B:250:0x056b  */
    /* JADX WARN: Code duplicated, block: B:256:0x058d  */
    /* JADX WARN: Code duplicated, block: B:263:0x05b2  */
    /* JADX WARN: Code duplicated, block: B:264:0x05d0  */
    /* JADX WARN: Code duplicated, block: B:266:0x05da  */
    /* JADX WARN: Code duplicated, block: B:267:0x05df  */
    /* JADX WARN: Code duplicated, block: B:270:0x05e4  */
    /* JADX WARN: Code duplicated, block: B:271:0x05e9  */
    /* JADX WARN: Code duplicated, block: B:277:0x0636  */
    /* JADX WARN: Code duplicated, block: B:282:0x0644  */
    /* JADX WARN: Code duplicated, block: B:286:0x064f  */
    /* JADX WARN: Code duplicated, block: B:290:0x04c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:295:0x04e7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:296:0x04f9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:297:0x04f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:299:0x04d5 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:263:0x05b2, please report this as an issue */
    public final void b(boolean z10) {
        String postId;
        String subjectId;
        String resourceId;
        String ugcVideoId;
        int epse;
        int epse2;
        int i10;
        int i11;
        long j10;
        Object obj;
        String strValueOf;
        long j11;
        String strValueOf2;
        long j12;
        Object obj2;
        long j13;
        long j14;
        Object obj3;
        Object obj4;
        TnPlayerType tnPlayerType;
        Object obj5;
        Object obj6;
        Map mapA;
        Integer num;
        String str;
        String str2;
        String str3;
        LinkedHashMap linkedHashMap;
        String lan;
        DownloadBean downloadBean;
        boolean z11;
        wf.a.C0922a c0922a;
        DownloadBean downloadBean2;
        String subjectId2;
        DownloadBean downloadBean3;
        String resourceId2;
        DownloadBean downloadBean4;
        String subjectId3;
        DownloadBean downloadBean5;
        String resourceId3;
        gj.c cVarF;
        Long size;
        Long size2;
        String ops;
        String ugcVideoCollectionId;
        String subjectId4;
        UGCVideoBelongToCollection belongToCollection;
        if (this.f46978c == 0 && !this.f46996s) {
            wf.a.C0922a.f(wf.a.f74274a, this.f46976b, " exitPlay, return", false, 4, null);
            return;
        }
        if (!this.f46996s) {
            wf.a.C0922a.v(wf.a.f74274a, this.f46976b, " curVideoIsApp2Background = " + z10, false, 4, null);
            this.f46996s = z10;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        DownloadBean downloadBean6 = this.H;
        if (downloadBean6 == null || (postId = downloadBean6.getPostId()) == null) {
            postId = "";
        }
        linkedHashMap2.put("post_id", postId);
        DownloadBean downloadBean7 = this.H;
        if (downloadBean7 == null || (subjectId = downloadBean7.getSubjectId()) == null) {
            subjectId = "";
        }
        linkedHashMap2.put("subject_id", subjectId);
        DownloadBean downloadBean8 = this.H;
        if (downloadBean8 == null || (resourceId = downloadBean8.getResourceId()) == null) {
            resourceId = "";
        }
        linkedHashMap2.put("resource_id", resourceId);
        String str4 = this.F;
        if (str4 == null) {
            str4 = "";
        }
        linkedHashMap2.put("play_type", str4);
        String strH = this.I;
        if (strH == null) {
            strH = qi.h.f69682a.h();
        }
        linkedHashMap2.put(WebConstants.PAGE_FROM, strH);
        String str5 = this.G;
        if (str5 == null) {
            str5 = "";
        }
        linkedHashMap2.put("url", str5);
        com.transsion.baselib.helper.d dVar = com.transsion.baselib.helper.d.f42124a;
        linkedHashMap2.put("speed", String.valueOf(dVar.d()));
        linkedHashMap2.put("scale_mode", String.valueOf(dVar.c().getValue()));
        linkedHashMap2.put("lock", this.Y ? "1" : "0");
        UGCVideo uGCVideo = this.S;
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null) {
            DownloadBean downloadBean9 = this.H;
            ugcVideoId = downloadBean9 != null ? downloadBean9.getUgcVideoId() : null;
        }
        if (ugcVideoId != null && ugcVideoId.length() != 0) {
            UGCVideo uGCVideo2 = this.S;
            if (uGCVideo2 == null || (belongToCollection = uGCVideo2.getBelongToCollection()) == null || (ugcVideoCollectionId = belongToCollection.getCollectionId()) == null) {
                DownloadBean downloadBean10 = this.H;
                ugcVideoCollectionId = downloadBean10 != null ? downloadBean10.getUgcVideoCollectionId() : null;
                if (ugcVideoCollectionId == null) {
                    ugcVideoCollectionId = "";
                }
            }
            linkedHashMap2.put("content_id", ugcVideoId);
            linkedHashMap2.put("belong_to_collection_id", ugcVideoCollectionId);
            linkedHashMap2.put("content_type", "ugc_video");
            DownloadBean downloadBean11 = this.H;
            if (downloadBean11 == null || (subjectId4 = downloadBean11.getSubjectId()) == null) {
                subjectId4 = "";
            }
            linkedHashMap2.put("refer_subject_id", subjectId4);
        }
        String str6 = this.T;
        if (str6 != null) {
            linkedHashMap2.put("parent_content_id", str6);
        }
        String str7 = this.U;
        if (str7 != null) {
            linkedHashMap2.put("track_id", str7);
        }
        String str8 = this.V;
        if (str8 != null) {
            linkedHashMap2.put("parent_track_id", str8);
        }
        cw.e.a aVar = cw.e.f58665a;
        linkedHashMap2.put("pip_feature", String.valueOf(aVar.b().c()));
        linkedHashMap2.put("pip_system_feature", String.valueOf(aVar.b().i()));
        String str9 = this.P;
        if (str9 != null && str9.length() > 0) {
            String str10 = this.P;
            Intrinsics.e(str10);
            linkedHashMap2.put("resolution", str10);
        }
        if (Intrinsics.c(this.F, "0") || Intrinsics.c(this.F, "1")) {
            DownloadBean downloadBean12 = this.H;
            linkedHashMap2.put("item_type", String.valueOf(downloadBean12 != null ? Integer.valueOf(downloadBean12.getType()) : null));
        }
        DownloadBean downloadBean13 = this.H;
        if (!TextUtils.isEmpty(downloadBean13 != null ? downloadBean13.getOps() : null)) {
            DownloadBean downloadBean14 = this.H;
            if (downloadBean14 == null || (ops = downloadBean14.getOps()) == null) {
                ops = "";
            }
            linkedHashMap2.put("ops", ops);
        }
        DownloadBean downloadBean15 = this.H;
        if (downloadBean15 != null && (size2 = downloadBean15.getSize()) != null) {
            linkedHashMap2.put("resource_size", String.valueOf(size2.longValue()));
        }
        DownloadBean downloadBean16 = this.H;
        if (downloadBean16 != null) {
            long progress = downloadBean16.getProgress();
            if (Intrinsics.c(this.F, "1")) {
                float f10 = progress * 100.0f;
                DownloadBean downloadBean17 = this.H;
                linkedHashMap2.put("downloaded_percent", String.valueOf(f10 / ((downloadBean17 == null || (size = downloadBean17.getSize()) == null) ? 1L : size.longValue())));
            }
        }
        for (Map.Entry entry : this.W.entrySet()) {
            linkedHashMap2.put("subtitle_use_time_" + ((ht.a) entry.getKey()).b().getType() + "_" + ((ht.a) entry.getKey()).b().getLan(), String.valueOf(((Number) entry.getValue()).longValue()));
        }
        DownloadBean downloadBean18 = this.H;
        if (downloadBean18 != null && downloadBean18.isSeries()) {
            DownloadBean downloadBean19 = this.H;
            if ((downloadBean19 != null ? downloadBean19.getEp() : 0) > 0) {
                DownloadBean downloadBean20 = this.H;
                epse = downloadBean20 != null ? downloadBean20.getSe() : 0;
                DownloadBean downloadBean21 = this.H;
                if (downloadBean21 != null) {
                    epse2 = downloadBean21.getEp();
                }
            } else {
                DownloadBean downloadBean22 = this.H;
                epse = downloadBean22 != null ? downloadBean22.getEpse() / 100 : 0;
                DownloadBean downloadBean23 = this.H;
                if (downloadBean23 != null) {
                    epse2 = downloadBean23.getEpse() % 100;
                }
            }
            if (epse > 0) {
                linkedHashMap2.put("seasons", String.valueOf(epse));
            }
            if (epse2 > 0) {
                linkedHashMap2.put("episode", String.valueOf(epse2));
            }
            i10 = this.N;
            if (i10 >= 0) {
                linkedHashMap2.put(RequestParameters.POSITION, String.valueOf(i10));
            }
            i11 = this.O;
            if (i11 >= 0) {
                linkedHashMap2.put("parent_position", String.valueOf(i11));
            }
            if (this.f46997t != 0) {
                this.f46998u += System.currentTimeMillis() - this.f46997t;
                this.f46997t = 0L;
            }
            if (this.f46982e <= 0 || this.f46996s) {
                linkedHashMap2.put("is_start", "1");
                j10 = this.f46978c;
                obj = "1";
                if (j10 > 0) {
                    j14 = this.f46982e;
                    if (j14 > 0) {
                        strValueOf = String.valueOf(j14 - j10);
                    } else {
                        strValueOf = "0";
                    }
                } else {
                    strValueOf = "0";
                }
                linkedHashMap2.put("delay_v", strValueOf);
                j11 = this.f46980d;
                if (j11 > 0) {
                    j13 = this.f46982e;
                    if (j13 > 0) {
                        strValueOf2 = String.valueOf(j13 - j11);
                    } else {
                        strValueOf2 = "0";
                    }
                } else {
                    strValueOf2 = "0";
                }
                linkedHashMap2.put("delay", strValueOf2);
                linkedHashMap2.put("buffer_time", String.valueOf(this.f46983f));
                linkedHashMap2.put("buffer_count", String.valueOf(this.f46985h));
                linkedHashMap2.put("seek_count", String.valueOf(this.f46986i));
                j12 = this.f47000w;
                if (j12 > 0) {
                    linkedHashMap2.put("play_complete", String.valueOf((this.f46987j / j12) * 100.0f));
                    linkedHashMap2.put("total_duration", String.valueOf(this.f47000w));
                }
                linkedHashMap2.put("play_duration", String.valueOf(this.f46989l));
                linkedHashMap2.put("play_duration_middlepage", String.valueOf(this.f46991n));
                linkedHashMap2.put("play_duration_fullscreen", String.valueOf(this.f46990m));
                linkedHashMap2.put("play_duration_pip", String.valueOf(this.f46992o));
                linkedHashMap2.put("pause_duration", String.valueOf(this.f46998u));
                linkedHashMap2.put("pause_count", String.valueOf(this.f46999v));
                if (this.f46993p) {
                    obj2 = obj;
                } else {
                    obj2 = "0";
                }
                linkedHashMap2.put(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, obj2);
                linkedHashMap2.put("video_bitrate", String.valueOf(this.L));
                linkedHashMap2.put("audio_bitrate", String.valueOf(this.M));
            } else {
                linkedHashMap2.put("is_start", "0");
                linkedHashMap2.put("delay_v", this.f46978c > 0 ? String.valueOf(System.currentTimeMillis() - this.f46978c) : "0");
                linkedHashMap2.put("delay", this.f46980d > 0 ? String.valueOf(System.currentTimeMillis() - this.f46980d) : "0");
                linkedHashMap2.put("not_play_error_msg", String.valueOf(this.f47003z));
                obj = "1";
            }
            if (z10) {
                obj3 = obj;
            } else {
                obj3 = "0";
            }
            linkedHashMap2.put("app_to_background", obj3);
            if (this.K) {
                obj4 = obj;
            } else {
                obj4 = "0";
            }
            linkedHashMap2.put("is_replay", obj4);
            tnPlayerType = this.Z;
            if (tnPlayerType != null) {
                linkedHashMap2.put("error_player", String.valueOf(tnPlayerType));
            }
            if (this.f46975a0) {
                obj5 = obj;
            } else {
                obj5 = "0";
            }
            linkedHashMap2.put("aliyun_2_sfotdecoder", obj5);
            if (this.f46977b0) {
                obj6 = obj;
            } else {
                obj6 = "0";
            }
            linkedHashMap2.put("timeout_replay", obj6);
            mapA = com.transsnet.downloader.util.h.f57716a.a();
            if (!mapA.isEmpty()) {
                for (Map.Entry entry2 : mapA.entrySet()) {
                    linkedHashMap2.put((String) entry2.getKey(), String.valueOf(((Number) entry2.getValue()).longValue()));
                }
            }
            num = this.f47001x;
            if (num != null) {
                linkedHashMap2.put("player_error_code", String.valueOf(num.intValue()));
            }
            str = this.f47002y;
            if (str != null) {
                linkedHashMap2.put("player_error_msg", str);
            }
            if (this.X.isEmpty()) {
                linkedHashMap2.put("subtitle_downloaded", "0");
            } else {
                try {
                    linkedHashMap = new LinkedHashMap();
                    List list = this.X;
                    ArrayList<ht.a> arrayList = new ArrayList();
                    arrayList.addAll(list);
                    for (ht.a aVar2 : arrayList) {
                        if (aVar2.d()) {
                            lan = aVar2.b().getLan();
                            Intrinsics.e(lan);
                            if (linkedHashMap.containsKey(lan)) {
                                String lan2 = aVar2.b().getLan();
                                Intrinsics.e(lan2);
                                linkedHashMap.put(lan2, "");
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
                str2 = this.C;
                if (str2 == null) {
                    str2 = "";
                }
                linkedHashMap2.put("subtitle_type", str2);
                str3 = this.D;
                if (str3 == null) {
                    str3 = "";
                }
                linkedHashMap2.put("subtitle_lan", str3);
                linkedHashMap2.put("subtitle_from", String.valueOf(this.E));
                wf.a.C0922a.f(wf.a.f74274a, "ORSubtitle", "LanName= " + this.C + ",Lan = " + this.D + ", From = " + this.E, false, 4, null);
            }
            if (TextUtils.isEmpty(this.A) || !TextUtils.isEmpty(this.B)) {
                linkedHashMap2.put("subtitle_bilingual", CollectionsKt.q(this.A, this.B).toString());
            }
            downloadBean = this.H;
            if (downloadBean == null && downloadBean.getSubjectType() == 6) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11 && (cVarF = f()) != null) {
                cVarF.b(this.f46989l);
            }
            c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, this.f46976b, "video exit， report and reset data", false, 4, null);
            if (this.f47001x != null) {
                c0922a.i(this.f46976b, "error " + qi.h.f69682a.n(linkedHashMap2), true);
            } else {
                String str11 = this.f46976b;
                Object obj7 = linkedHashMap2.get("is_start");
                downloadBean2 = this.H;
                if (downloadBean2 != null) {
                    subjectId2 = downloadBean2.getSubjectId();
                } else {
                    subjectId2 = null;
                }
                downloadBean3 = this.H;
                if (downloadBean3 != null) {
                    resourceId2 = downloadBean3.getResourceId();
                } else {
                    resourceId2 = null;
                }
                c0922a.i(str11, "is_start=" + obj7 + " subject_id=" + subjectId2 + " requestId=" + resourceId2 + " urlOrPath=" + this.G, true);
            }
            qi.h.f69682a.C(this.Q, this.R, this.f46989l, linkedHashMap2);
            Bundle bundle = new Bundle();
            downloadBean4 = this.H;
            if (downloadBean4 != null || (subjectId3 = downloadBean4.getSubjectId()) == null) {
                subjectId3 = "";
            }
            bundle.putString("subject_id", subjectId3);
            downloadBean5 = this.H;
            if (downloadBean5 != null || (resourceId3 = downloadBean5.getResourceId()) == null) {
                resourceId3 = "";
            }
            bundle.putString("resource_id", resourceId3);
            String str12 = this.F;
            bundle.putString("play_type", str12 != null ? str12 : "");
            bundle.putBoolean("is_music_liked_fragment", this.f46981d0);
            com.transsion.baselib.report.e.f42196a.l(this.R, bundle, com.transsion.baselib.report.k.f42210a.o());
            x(z10);
        }
        epse = 0;
        epse2 = 0;
        if (epse > 0) {
            linkedHashMap2.put("seasons", String.valueOf(epse));
        }
        if (epse2 > 0) {
            linkedHashMap2.put("episode", String.valueOf(epse2));
        }
        i10 = this.N;
        if (i10 >= 0) {
            linkedHashMap2.put(RequestParameters.POSITION, String.valueOf(i10));
        }
        i11 = this.O;
        if (i11 >= 0) {
            linkedHashMap2.put("parent_position", String.valueOf(i11));
        }
        if (this.f46997t != 0) {
            this.f46998u += System.currentTimeMillis() - this.f46997t;
            this.f46997t = 0L;
        }
        if (this.f46982e <= 0) {
            linkedHashMap2.put("is_start", "1");
            j10 = this.f46978c;
            obj = "1";
            if (j10 > 0) {
                j14 = this.f46982e;
                if (j14 > 0) {
                    strValueOf = String.valueOf(j14 - j10);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap2.put("delay_v", strValueOf);
            j11 = this.f46980d;
            if (j11 > 0) {
                j13 = this.f46982e;
                if (j13 > 0) {
                    strValueOf2 = String.valueOf(j13 - j11);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap2.put("delay", strValueOf2);
            linkedHashMap2.put("buffer_time", String.valueOf(this.f46983f));
            linkedHashMap2.put("buffer_count", String.valueOf(this.f46985h));
            linkedHashMap2.put("seek_count", String.valueOf(this.f46986i));
            j12 = this.f47000w;
            if (j12 > 0) {
                linkedHashMap2.put("play_complete", String.valueOf((this.f46987j / j12) * 100.0f));
                linkedHashMap2.put("total_duration", String.valueOf(this.f47000w));
            }
            linkedHashMap2.put("play_duration", String.valueOf(this.f46989l));
            linkedHashMap2.put("play_duration_middlepage", String.valueOf(this.f46991n));
            linkedHashMap2.put("play_duration_fullscreen", String.valueOf(this.f46990m));
            linkedHashMap2.put("play_duration_pip", String.valueOf(this.f46992o));
            linkedHashMap2.put("pause_duration", String.valueOf(this.f46998u));
            linkedHashMap2.put("pause_count", String.valueOf(this.f46999v));
            if (this.f46993p) {
                obj2 = obj;
            } else {
                obj2 = "0";
            }
            linkedHashMap2.put(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, obj2);
            linkedHashMap2.put("video_bitrate", String.valueOf(this.L));
            linkedHashMap2.put("audio_bitrate", String.valueOf(this.M));
        } else {
            linkedHashMap2.put("is_start", "1");
            j10 = this.f46978c;
            obj = "1";
            if (j10 > 0) {
                j14 = this.f46982e;
                if (j14 > 0) {
                    strValueOf = String.valueOf(j14 - j10);
                } else {
                    strValueOf = "0";
                }
            } else {
                strValueOf = "0";
            }
            linkedHashMap2.put("delay_v", strValueOf);
            j11 = this.f46980d;
            if (j11 > 0) {
                j13 = this.f46982e;
                if (j13 > 0) {
                    strValueOf2 = String.valueOf(j13 - j11);
                } else {
                    strValueOf2 = "0";
                }
            } else {
                strValueOf2 = "0";
            }
            linkedHashMap2.put("delay", strValueOf2);
            linkedHashMap2.put("buffer_time", String.valueOf(this.f46983f));
            linkedHashMap2.put("buffer_count", String.valueOf(this.f46985h));
            linkedHashMap2.put("seek_count", String.valueOf(this.f46986i));
            j12 = this.f47000w;
            if (j12 > 0) {
                linkedHashMap2.put("play_complete", String.valueOf((this.f46987j / j12) * 100.0f));
                linkedHashMap2.put("total_duration", String.valueOf(this.f47000w));
            }
            linkedHashMap2.put("play_duration", String.valueOf(this.f46989l));
            linkedHashMap2.put("play_duration_middlepage", String.valueOf(this.f46991n));
            linkedHashMap2.put("play_duration_fullscreen", String.valueOf(this.f46990m));
            linkedHashMap2.put("play_duration_pip", String.valueOf(this.f46992o));
            linkedHashMap2.put("pause_duration", String.valueOf(this.f46998u));
            linkedHashMap2.put("pause_count", String.valueOf(this.f46999v));
            if (this.f46993p) {
                obj2 = obj;
            } else {
                obj2 = "0";
            }
            linkedHashMap2.put(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, obj2);
            linkedHashMap2.put("video_bitrate", String.valueOf(this.L));
            linkedHashMap2.put("audio_bitrate", String.valueOf(this.M));
        }
        if (z10) {
            obj3 = obj;
        } else {
            obj3 = "0";
        }
        linkedHashMap2.put("app_to_background", obj3);
        if (this.K) {
            obj4 = obj;
        } else {
            obj4 = "0";
        }
        linkedHashMap2.put("is_replay", obj4);
        tnPlayerType = this.Z;
        if (tnPlayerType != null) {
            linkedHashMap2.put("error_player", String.valueOf(tnPlayerType));
        }
        if (this.f46975a0) {
            obj5 = obj;
        } else {
            obj5 = "0";
        }
        linkedHashMap2.put("aliyun_2_sfotdecoder", obj5);
        if (this.f46977b0) {
            obj6 = obj;
        } else {
            obj6 = "0";
        }
        linkedHashMap2.put("timeout_replay", obj6);
        mapA = com.transsnet.downloader.util.h.f57716a.a();
        if (!mapA.isEmpty()) {
            while (r3.hasNext()) {
                linkedHashMap2.put((String) entry2.getKey(), String.valueOf(((Number) entry2.getValue()).longValue()));
            }
        }
        num = this.f47001x;
        if (num != null) {
            linkedHashMap2.put("player_error_code", String.valueOf(num.intValue()));
        }
        str = this.f47002y;
        if (str != null) {
            linkedHashMap2.put("player_error_msg", str);
        }
        if (this.X.isEmpty()) {
            linkedHashMap2.put("subtitle_downloaded", "0");
        } else {
            linkedHashMap = new LinkedHashMap();
            List list2 = this.X;
            ArrayList<ht.a> arrayList2 = new ArrayList();
            arrayList2.addAll(list2);
            while (r4.hasNext()) {
                if (aVar2.d()) {
                    lan = aVar2.b().getLan();
                    Intrinsics.e(lan);
                    if (linkedHashMap.containsKey(lan)) {
                        String lan3 = aVar2.b().getLan();
                        Intrinsics.e(lan3);
                        linkedHashMap.put(lan3, "");
                    }
                }
            }
            str2 = this.C;
            if (str2 == null) {
                str2 = "";
            }
            linkedHashMap2.put("subtitle_type", str2);
            str3 = this.D;
            if (str3 == null) {
                str3 = "";
            }
            linkedHashMap2.put("subtitle_lan", str3);
            linkedHashMap2.put("subtitle_from", String.valueOf(this.E));
            wf.a.C0922a.f(wf.a.f74274a, "ORSubtitle", "LanName= " + this.C + ",Lan = " + this.D + ", From = " + this.E, false, 4, null);
        }
        if (TextUtils.isEmpty(this.A)) {
            linkedHashMap2.put("subtitle_bilingual", CollectionsKt.q(this.A, this.B).toString());
        } else {
            linkedHashMap2.put("subtitle_bilingual", CollectionsKt.q(this.A, this.B).toString());
        }
        downloadBean = this.H;
        if (downloadBean == null) {
            z11 = false;
        } else {
            z11 = false;
        }
        if (!z11) {
            cVarF.b(this.f46989l);
        }
        c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.f46976b, "video exit， report and reset data", false, 4, null);
        if (this.f47001x != null) {
            c0922a.i(this.f46976b, "error " + qi.h.f69682a.n(linkedHashMap2), true);
        } else {
            String str13 = this.f46976b;
            Object obj8 = linkedHashMap2.get("is_start");
            downloadBean2 = this.H;
            if (downloadBean2 != null) {
                subjectId2 = downloadBean2.getSubjectId();
            } else {
                subjectId2 = null;
            }
            downloadBean3 = this.H;
            if (downloadBean3 != null) {
                resourceId2 = downloadBean3.getResourceId();
            } else {
                resourceId2 = null;
            }
            c0922a.i(str13, "is_start=" + obj8 + " subject_id=" + subjectId2 + " requestId=" + resourceId2 + " urlOrPath=" + this.G, true);
        }
        qi.h.f69682a.C(this.Q, this.R, this.f46989l, linkedHashMap2);
        Bundle bundle2 = new Bundle();
        downloadBean4 = this.H;
        if (downloadBean4 != null) {
            subjectId3 = "";
        } else {
            subjectId3 = "";
        }
        bundle2.putString("subject_id", subjectId3);
        downloadBean5 = this.H;
        if (downloadBean5 != null) {
            resourceId3 = "";
        } else {
            resourceId3 = "";
        }
        bundle2.putString("resource_id", resourceId3);
        String str14 = this.F;
        bundle2.putString("play_type", str14 != null ? str14 : "");
        bundle2.putBoolean("is_music_liked_fragment", this.f46981d0);
        com.transsion.baselib.report.e.f42196a.l(this.R, bundle2, com.transsion.baselib.report.k.f42210a.o());
        x(z10);
    }

    public final boolean d() {
        return this.Y;
    }

    public final Map e() {
        return this.W;
    }

    public final void g() {
        this.f46978c = System.currentTimeMillis();
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "initView", false, 4, null);
    }

    public final void h() {
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "onCompletion", false, 4, null);
        this.f46993p = true;
    }

    public final void i() {
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "onLoadingBegin", false, 4, null);
        this.f46984g = System.currentTimeMillis();
    }

    public final void j() {
        if (this.f46984g > 0) {
            this.f46983f += System.currentTimeMillis() - this.f46984g;
            this.f46985h++;
            this.f46984g = 0L;
        }
    }

    public final void k(LocalUiType uiType) {
        Intrinsics.h(uiType, "uiType");
        this.f46994q = uiType == LocalUiType.MIDDLE;
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "onLocalUiChanged， uiType= " + uiType, false, 4, null);
    }

    public final void l(PlayError errorInfo) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.f47001x = errorInfo.getErrorCode();
        String errorMessage = errorInfo.getErrorMessage();
        this.f47002y = errorMessage;
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "onPlayError, playerErrorCode  =" + this.f47001x + ", playerErrorMessage =" + errorMessage, false, 4, null);
        G(3, this.f47002y);
    }

    public final void m(long j10) {
        gj.c cVarF;
        if (this.f47000w <= 0) {
            com.transsion.player.orplayer.f fVar = this.f46974a;
            this.f47000w = fVar != null ? fVar.getDuration() : 0L;
        }
        long j11 = this.f46988k;
        long j12 = j10 - j11;
        if (1 <= j12 && j12 < 2000) {
            this.f46989l += j10 - j11;
            if (this.f46995r) {
                this.f46992o += j10 - j11;
            } else if (this.f46994q) {
                this.f46991n += j10 - j11;
            } else {
                this.f46990m += j10 - j11;
            }
        }
        this.f46988k = j10;
        if (j10 > this.f46987j) {
            this.f46987j = j10;
        }
        DownloadBean downloadBean = this.H;
        if ((downloadBean == null || downloadBean.getSubjectType() != 6) && (cVarF = f()) != null) {
            cVarF.a(this.f46989l);
        }
    }

    public final void n() {
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "onRenderFirstFrame", false, 4, null);
        this.f46982e = System.currentTimeMillis();
    }

    public final void o() {
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "oonReplayonReplay", false, 4, null);
        this.K = true;
        this.f46996s = false;
    }

    public final void p() {
        this.f46986i++;
    }

    public final void q(List list) {
        Intrinsics.h(list, "list");
        this.X.clear();
        this.X.addAll(list);
    }

    public final void r(String name, String lan, int i10) {
        Intrinsics.h(name, "name");
        Intrinsics.h(lan, "lan");
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "onSubtitleSelected = " + name, false, 4, null);
        this.C = name;
        this.D = lan;
        this.E = i10;
    }

    public final void s(String str, String str2) {
        this.A = str;
        this.B = str2;
    }

    public final void t(int i10) {
        this.M = i10;
    }

    public final void u(int i10) {
        this.L = i10;
    }

    public final void v() {
        this.f46999v++;
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "onVideoPause", false, 4, null);
        this.f46997t = System.currentTimeMillis();
    }

    public final void w() {
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "onVideoStart", false, 4, null);
        if (this.f46997t != 0) {
            this.f46998u += System.currentTimeMillis() - this.f46997t;
            this.f46997t = 0L;
        }
    }

    public final void y(boolean z10) {
        this.f46975a0 = z10;
    }

    public final void z(DownloadBean downloadBean, String str) {
        this.I = str;
        this.H = downloadBean;
        if (downloadBean == null || !downloadBean.isInnerRes()) {
            this.F = "2";
            this.G = downloadBean != null ? downloadBean.getPath() : null;
        } else if (downloadBean == null || downloadBean.getStatus() != 5) {
            this.F = "1";
            this.G = downloadBean != null ? downloadBean.getUrl() : null;
        } else {
            this.F = "0";
            this.G = downloadBean.getPath();
        }
        wf.a.C0922a.f(wf.a.f74274a, this.f46976b, "setData", false, 4, null);
    }
}
