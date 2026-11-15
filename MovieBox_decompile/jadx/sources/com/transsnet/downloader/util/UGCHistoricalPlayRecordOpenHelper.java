package com.transsnet.downloader.util;

import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.y0;

public final class UGCHistoricalPlayRecordOpenHelper {

    public static final UGCHistoricalPlayRecordOpenHelper f57686a = new UGCHistoricalPlayRecordOpenHelper();

    static final class a {

        private final String f57687a;

        private final Integer f57688b;

        private final String f57689c;

        private final String f57690d;

        private final String f57691e;

        private final String f57692f;

        private final String f57693g;

        private final String f57694h;

        public a(String str, Integer num, String str2, String str3, String str4, String str5, String str6, String str7) {
            this.f57687a = str;
            this.f57688b = num;
            this.f57689c = str2;
            this.f57690d = str3;
            this.f57691e = str4;
            this.f57692f = str5;
            this.f57693g = str6;
            this.f57694h = str7;
        }

        public final String a() {
            return this.f57687a;
        }

        public final Integer b() {
            return this.f57688b;
        }

        public final String c() {
            return this.f57689c;
        }

        public final String d() {
            return this.f57690d;
        }

        public final String e() {
            return this.f57691e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f57687a, aVar.f57687a) && Intrinsics.c(this.f57688b, aVar.f57688b) && Intrinsics.c(this.f57689c, aVar.f57689c) && Intrinsics.c(this.f57690d, aVar.f57690d) && Intrinsics.c(this.f57691e, aVar.f57691e) && Intrinsics.c(this.f57692f, aVar.f57692f) && Intrinsics.c(this.f57693g, aVar.f57693g) && Intrinsics.c(this.f57694h, aVar.f57694h);
        }

        public final String f() {
            return this.f57692f;
        }

        public final String g() {
            return this.f57693g;
        }

        public final String h() {
            return this.f57694h;
        }

        public int hashCode() {
            String str = this.f57687a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Integer num = this.f57688b;
            int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
            String str2 = this.f57689c;
            int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f57690d;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f57691e;
            int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.f57692f;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f57693g;
            int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.f57694h;
            return iHashCode7 + (str7 != null ? str7.hashCode() : 0);
        }

        public String toString() {
            return "VideoParams(subjectId=" + this.f57687a + ", subjectType=" + this.f57688b + ", queryVideoId=" + this.f57689c + ", ugcVideoId=" + this.f57690d + ", collectionId=" + this.f57691e + ", ugcVideoType=" + this.f57692f + ", ops=" + this.f57693g + ", videoStyle=" + this.f57694h + ")";
        }
    }

    private UGCHistoricalPlayRecordOpenHelper() {
    }

    /* JADX WARN: Code duplicated, block: B:40:0x013e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0158  */
    /* JADX WARN: Code duplicated, block: B:52:0x0164  */
    /* JADX WARN: Code duplicated, block: B:55:0x016b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0228 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0029  */
    public final Object f(String str, Integer num, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Continuation continuation) {
        UGCHistoricalPlayRecordOpenHelper$handleNavigation$1 uGCHistoricalPlayRecordOpenHelper$handleNavigation$1;
        String str9;
        String str10;
        Integer num2;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        DownloadBean downloadBean;
        DownloadBean downloadBean2;
        boolean zC;
        String str16 = str4;
        if (continuation instanceof UGCHistoricalPlayRecordOpenHelper$handleNavigation$1) {
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1 = (UGCHistoricalPlayRecordOpenHelper$handleNavigation$1) continuation;
            int i10 = uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = i10 - Integer.MIN_VALUE;
            } else {
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$1(this, continuation);
            }
        } else {
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$1(this, continuation);
        }
        Object objR = uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label;
        if (i11 == 0) {
            ResultKt.b(objR);
            if (str == null || str.length() == 0) {
                if (str2 != null) {
                    DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = str;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = num;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = str2;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = str3;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = str16;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = str5;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = str6;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = str7;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = str8;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 1;
                    objR = downloadEsHelperA.R(str2, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
                    if (objR == objF) {
                        return objF;
                    }
                    str9 = str;
                    str10 = str8;
                    num2 = num;
                    str11 = str7;
                    str12 = str2;
                    str13 = str6;
                    str14 = str3;
                    str15 = str5;
                    downloadBean2 = (DownloadBean) objR;
                    downloadBean = downloadBean2;
                }
                if (str9 != null) {
                    zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
                } else {
                    zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
                }
                if (downloadBean == null) {
                }
                wf.a.C0922a.f(wf.a.f74274a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
                a2 a2VarC = y0.c();
                UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$2 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
                objR = kotlinx.coroutines.i.g(a2VarC, uGCHistoricalPlayRecordOpenHelper$handleNavigation$2, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
                if (objR == objF) {
                    return objF;
                }
            } else {
                if (str2 != null) {
                    DownloadEsHelper downloadEsHelperA2 = DownloadEsHelper.f57201m.a();
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = str;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = num;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = str2;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = str3;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = str16;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = str5;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = str6;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = str7;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = str8;
                    uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 2;
                    objR = downloadEsHelperA2.p(str2, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
                    if (objR == objF) {
                        return objF;
                    }
                    str9 = str;
                    str10 = str8;
                    num2 = num;
                    str11 = str7;
                    str12 = str2;
                    str13 = str6;
                    str14 = str3;
                    str15 = str5;
                    downloadBean2 = (DownloadBean) objR;
                    downloadBean = downloadBean2;
                }
                if (str9 != null) {
                    zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
                } else {
                    zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
                }
                if (downloadBean == null) {
                }
                wf.a.C0922a.f(wf.a.f74274a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
                a2 a2VarC2 = y0.c();
                UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$3 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
                uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
                objR = kotlinx.coroutines.i.g(a2VarC2, uGCHistoricalPlayRecordOpenHelper$handleNavigation$3, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
                if (objR == objF) {
                    return objF;
                }
            }
            downloadBean = null;
            str9 = str;
            str10 = str8;
            num2 = num;
            str11 = str7;
            str12 = str2;
            str13 = str6;
            str14 = str3;
            str15 = str5;
            if (str9 != null) {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            } else {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            }
            if (downloadBean == null) {
            }
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
            a2 a2VarC3 = y0.c();
            UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$4 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
            objR = kotlinx.coroutines.i.g(a2VarC3, uGCHistoricalPlayRecordOpenHelper$handleNavigation$4, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
            if (objR == objF) {
                return objF;
            }
        } else if (i11 == 1) {
            str10 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8;
            str11 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7;
            str13 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6;
            str15 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5;
            str16 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4;
            str14 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3;
            str12 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2;
            num2 = (Integer) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1;
            str9 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0;
            ResultKt.b(objR);
            downloadBean2 = (DownloadBean) objR;
            downloadBean = downloadBean2;
            if (str9 != null) {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            } else {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            }
            if (downloadBean == null) {
            }
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
            a2 a2VarC4 = y0.c();
            UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$5 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
            objR = kotlinx.coroutines.i.g(a2VarC4, uGCHistoricalPlayRecordOpenHelper$handleNavigation$5, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
            if (objR == objF) {
                return objF;
            }
        } else if (i11 == 2) {
            str10 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8;
            str11 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7;
            str13 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6;
            str15 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5;
            str16 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4;
            str14 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3;
            str12 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2;
            num2 = (Integer) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1;
            str9 = (String) uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0;
            ResultKt.b(objR);
            downloadBean2 = (DownloadBean) objR;
            downloadBean = downloadBean2;
            if (str9 != null || str9.length() == 0) {
                zC = Intrinsics.c(str15, UGCVideoType.SHORT_TV.getValue());
            } else {
                zC = num2 != null && num2.intValue() == SubjectType.SHORT_TV.getValue();
            }
            boolean z10 = downloadBean == null && downloadBean.isCompleted();
            wf.a.C0922a.f(wf.a.f74274a, "UGCVideoOpen", StringsKt.n("\n                " + str10 + " gotoUGCVideoDetail isDownloaded:" + z10 + ",isShortTV" + zC + "\n                subjectId:" + str9 + ",subjectType:" + num2 + ",queryVideoId:" + str12 + ",\n                ugcVideoId:" + str14 + ",collectionId:" + str16 + ",ugcVideoType:" + str15 + ",\n                ops:" + str13 + ", videoStyle:" + str11 + "\n            "), false, 4, null);
            a2 a2VarC5 = y0.c();
            UGCHistoricalPlayRecordOpenHelper$handleNavigation$2 uGCHistoricalPlayRecordOpenHelper$handleNavigation$6 = new UGCHistoricalPlayRecordOpenHelper$handleNavigation$2(str11, z10, downloadBean, str14, str12, str9, str16, str13, str15, zC, null);
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$0 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$1 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$2 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$3 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$4 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$5 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$6 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$7 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.L$8 = null;
            uGCHistoricalPlayRecordOpenHelper$handleNavigation$1.label = 3;
            objR = kotlinx.coroutines.i.g(a2VarC5, uGCHistoricalPlayRecordOpenHelper$handleNavigation$6, uGCHistoricalPlayRecordOpenHelper$handleNavigation$1);
            if (objR == objF) {
                return objF;
            }
        } else {
            if (i11 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objR);
        }
        return objR;
    }

    public final void g(String str, String str2, String str3, DownloadBean downloadBean) {
        ij.k.p(TheRouter.c("/ugc_video/local_detail").K("id", str).K("resource_id", downloadBean.getResourceId()).K("collection_id", str2).K("ops", str3));
    }

    public final void h(String str, String str2, String str3, String str4, String str5, String str6) {
        ij.k.p(TheRouter.c("/ugc_video/detail").K("id", str2).K("subject_id", str).K("collection_id", str3).K("ugcCategory", str5).K("videoStyle", str6).K("ops", str4));
    }

    public final Object d(UGCVideoDetailPlayBean uGCVideoDetailPlayBean, VideoDetailPlayBean videoDetailPlayBean, String str, Continuation continuation) {
        Object objG = kotlinx.coroutines.i.g(y0.b(), new UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$4(uGCVideoDetailPlayBean, videoDetailPlayBean, str, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }

    public final Object e(Object obj, String str, Continuation continuation) {
        Object objG = kotlinx.coroutines.i.g(y0.b(), new UGCHistoricalPlayRecordOpenHelper$gotoUGCVideoDetail$2(obj, str, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }
}
