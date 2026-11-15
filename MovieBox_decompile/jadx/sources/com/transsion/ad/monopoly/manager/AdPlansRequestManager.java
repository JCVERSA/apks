package com.transsion.ad.monopoly.manager;

import android.text.TextUtils;
import ci.h;
import com.cloud.hisavana.sdk.common.util.a0;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.model.MbAdPlansBean;
import com.transsion.ad.monopoly.model.MbAdPlansDto;
import com.transsion.ad.monopoly.model.MbAdVideo;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.transsion.ad.monopoly.plan.AdPlansTransform;
import com.transsion.ad.ps.distribute.PSAdPlanRequestManager;
import com.transsion.ad.scene.d;
import com.transsion.ad.strategy.e;
import com.transsion.ad.strategy.g;
import com.transsion.ad.strategy.u;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public final class AdPlansRequestManager {

    public static final AdPlansRequestManager f41104a = new AdPlansRequestManager();

    private static final Lazy f41105b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return AdPlansRequestManager.s();
        }
    });

    private static AtomicBoolean f41106c = new AtomicBoolean(false);

    private AdPlansRequestManager() {
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009f  */
    /* JADX WARN: Code duplicated, block: B:35:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5 A[LOOP:0: B:31:0x0099->B:39:0x00b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:42:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:46:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:52:0x00de  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x006d -> B:20:0x0070). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:46:0x00cc
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(java.util.List r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.monopoly.manager.AdPlansRequestManager.h(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00e7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object i(MbAdPlansDto mbAdPlansDto, String str, Continuation continuation) {
        AdPlansRequestManager$checkResult$1 adPlansRequestManager$checkResult$1;
        MbAdPlansBean data;
        MbAdPlansDto mbAdPlansDto2;
        String str2;
        xh.a aVar;
        String strP;
        Object objG;
        xh.a aVar2;
        String str3;
        if (continuation instanceof AdPlansRequestManager$checkResult$1) {
            adPlansRequestManager$checkResult$1 = (AdPlansRequestManager$checkResult$1) continuation;
            int i10 = adPlansRequestManager$checkResult$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$checkResult$1.label = i10 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$checkResult$1 = new AdPlansRequestManager$checkResult$1(this, continuation);
            }
        } else {
            adPlansRequestManager$checkResult$1 = new AdPlansRequestManager$checkResult$1(this, continuation);
        }
        Object objH = adPlansRequestManager$checkResult$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = adPlansRequestManager$checkResult$1.label;
        if (i11 == 0) {
            ResultKt.b(objH);
            if (((mbAdPlansDto == null || (data = mbAdPlansDto.getData()) == null) ? null : data.getAdPlans()) != null) {
                List adPlans = mbAdPlansDto.getData().getAdPlans();
                adPlansRequestManager$checkResult$1.L$0 = mbAdPlansDto;
                adPlansRequestManager$checkResult$1.L$1 = str;
                adPlansRequestManager$checkResult$1.label = 1;
                objH = h(adPlans, adPlansRequestManager$checkResult$1);
                if (objH == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
        }
        if (i11 == 1) {
            str = (String) adPlansRequestManager$checkResult$1.L$1;
            mbAdPlansDto = (MbAdPlansDto) adPlansRequestManager$checkResult$1.L$0;
            ResultKt.b(objH);
        } else if (i11 == 2) {
            str2 = (String) adPlansRequestManager$checkResult$1.L$2;
            str = (String) adPlansRequestManager$checkResult$1.L$1;
            mbAdPlansDto2 = (MbAdPlansDto) adPlansRequestManager$checkResult$1.L$0;
            ResultKt.b(objH);
            k(mbAdPlansDto2.getData().getAdPlans());
            aVar = xh.a.f75336a;
            strP = p();
            AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f41107a;
            adPlansRequestManager$checkResult$1.L$0 = aVar;
            adPlansRequestManager$checkResult$1.L$1 = strP;
            adPlansRequestManager$checkResult$1.L$2 = str;
            adPlansRequestManager$checkResult$1.L$3 = str2;
            adPlansRequestManager$checkResult$1.label = 3;
            objG = adPlansStorageManager.g(adPlansRequestManager$checkResult$1);
            if (objG == objF) {
                return objF;
            }
            aVar2 = aVar;
            objH = objG;
            str3 = strP;
        } else {
            if (i11 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str2 = (String) adPlansRequestManager$checkResult$1.L$3;
            str = (String) adPlansRequestManager$checkResult$1.L$2;
            str3 = (String) adPlansRequestManager$checkResult$1.L$1;
            xh.a aVar3 = (xh.a) adPlansRequestManager$checkResult$1.L$0;
            ResultKt.b(objH);
            aVar2 = aVar3;
        }
        List list = (List) objH;
        xh.a.c(aVar2, str3 + " --> checkResult() --> 更新完计划且下载完素材,新计划可用 --> lastVersion = " + str + " --> newVersion = " + str2 + " --> size = " + (list != null ? Boxing.d(list.size()) : null), 0, false, 6, null);
        return Unit.f64096a;
        if (((Boolean) objH).booleanValue()) {
            String strValueOf = String.valueOf(mbAdPlansDto.getData().getVersion());
            ai.c.f362a.i(str, strValueOf);
            e.f41179a.c().putString("non_ad_plan_version", strValueOf);
            adPlansRequestManager$checkResult$1.L$0 = mbAdPlansDto;
            adPlansRequestManager$checkResult$1.L$1 = str;
            adPlansRequestManager$checkResult$1.L$2 = strValueOf;
            adPlansRequestManager$checkResult$1.label = 2;
            if (j(strValueOf, str, adPlansRequestManager$checkResult$1) == objF) {
                return objF;
            }
            mbAdPlansDto2 = mbAdPlansDto;
            str2 = strValueOf;
            k(mbAdPlansDto2.getData().getAdPlans());
            aVar = xh.a.f75336a;
            strP = p();
            AdPlansStorageManager adPlansStorageManager2 = AdPlansStorageManager.f41107a;
            adPlansRequestManager$checkResult$1.L$0 = aVar;
            adPlansRequestManager$checkResult$1.L$1 = strP;
            adPlansRequestManager$checkResult$1.L$2 = str;
            adPlansRequestManager$checkResult$1.L$3 = str2;
            adPlansRequestManager$checkResult$1.label = 3;
            objG = adPlansStorageManager2.g(adPlansRequestManager$checkResult$1);
            if (objG == objF) {
                return objF;
            }
            aVar2 = aVar;
            objH = objG;
            str3 = strP;
            List list2 = (List) objH;
            if (list2 != null) {
            }
            xh.a.c(aVar2, str3 + " --> checkResult() --> 更新完计划且下载完素材,新计划可用 --> lastVersion = " + str + " --> newVersion = " + str2 + " --> size = " + (list2 != null ? Boxing.d(list2.size()) : null), 0, false, 6, null);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(String str, String str2, Continuation continuation) {
        AdPlansRequestManager$deleteExpireAdPlan$1 adPlansRequestManager$deleteExpireAdPlan$1;
        if (continuation instanceof AdPlansRequestManager$deleteExpireAdPlan$1) {
            adPlansRequestManager$deleteExpireAdPlan$1 = (AdPlansRequestManager$deleteExpireAdPlan$1) continuation;
            int i10 = adPlansRequestManager$deleteExpireAdPlan$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$deleteExpireAdPlan$1.label = i10 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$deleteExpireAdPlan$1 = new AdPlansRequestManager$deleteExpireAdPlan$1(this, continuation);
            }
        } else {
            adPlansRequestManager$deleteExpireAdPlan$1 = new AdPlansRequestManager$deleteExpireAdPlan$1(this, continuation);
        }
        Object obj = adPlansRequestManager$deleteExpireAdPlan$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = adPlansRequestManager$deleteExpireAdPlan$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            if (TextUtils.isEmpty(str)) {
                return Unit.f64096a;
            }
            AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f41107a;
            adPlansRequestManager$deleteExpireAdPlan$1.L$0 = str;
            adPlansRequestManager$deleteExpireAdPlan$1.L$1 = str2;
            adPlansRequestManager$deleteExpireAdPlan$1.label = 1;
            if (adPlansStorageManager.c(str, adPlansRequestManager$deleteExpireAdPlan$1) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str2 = (String) adPlansRequestManager$deleteExpireAdPlan$1.L$1;
            str = (String) adPlansRequestManager$deleteExpireAdPlan$1.L$0;
            ResultKt.b(obj);
        }
        xh.a.c(xh.a.f75336a, p() + " --> deleteExpireAdPlan() --> newVersion = " + str + " -- lastVersion = " + str2 + " --> 删除过期计划 -- success", 0, false, 6, null);
        return Unit.f64096a;
    }

    private final void k(List list) {
        HashSet hashSet = new HashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AdPlans adPlans = (AdPlans) it.next();
            List<AdMaterialList> adMaterialList = adPlans.getAdMaterialList();
            if (adMaterialList != null) {
                for (AdMaterialList adMaterialList2 : adMaterialList) {
                    if (Intrinsics.c(AdMaterialList.NON_AD_TYPE_TEXT, adMaterialList2.getType())) {
                        MbAdImage image = adMaterialList2.getImage();
                        hashSet.add(image != null ? image.getPath() : null);
                    } else {
                        MbAdVideo video = adMaterialList2.getVideo();
                        hashSet.add(video != null ? video.getPath() : null);
                    }
                }
            }
            if (!TextUtils.isEmpty(adPlans.getAdvertiserAvatarPath())) {
                hashSet.add(adPlans.getAdvertiserAvatarPath());
            }
        }
        h.f16940a.b(new File(com.transsion.ad.a.f40775a.b() + File.separatorChar), hashSet);
        xh.a.c(xh.a.f75336a, p() + " --> deleteExpireMaterial() --> 删除过期资源 -- success", 0, false, 6, null);
    }

    private final boolean l(AdPlans adPlans) {
        List<AdMaterialList> adMaterialList;
        Integer size;
        String url = null;
        String strM = m(adPlans != null ? adPlans.getAdvertiserAvatar() : null);
        if (adPlans != null) {
            adPlans.setAdvertiserAvatarPath(strM);
        }
        n(adPlans != null ? adPlans.getExtImage() : null);
        if (adPlans != null && (adMaterialList = adPlans.getAdMaterialList()) != null) {
            Iterator<T> it = adMaterialList.iterator();
            if (it.hasNext()) {
                AdMaterialList adMaterialList2 = (AdMaterialList) it.next();
                if (Intrinsics.c(adMaterialList2.getType(), AdMaterialList.NON_AD_TYPE_TEXT)) {
                    MbAdImage image = adMaterialList2.getImage();
                    if (image != null) {
                        url = image.getUrl();
                    }
                } else {
                    MbAdVideo video = adMaterialList2.getVideo();
                    if (video != null) {
                        url = video.getUrl();
                    }
                }
                String strC = a0.c(url);
                String str = com.transsion.ad.a.f40775a.b() + File.separatorChar + strC + ".mineType";
                File file = new File(str);
                if (Intrinsics.c(adMaterialList2.getType(), AdMaterialList.NON_AD_TYPE_VIDEO)) {
                    MbAdVideo video2 = adMaterialList2.getVideo();
                    int iIntValue = (video2 == null || (size = video2.getSize()) == null) ? 1 : size.intValue();
                    if (file.isFile() && file.exists() && file.length() > 0) {
                        MbAdVideo video3 = adMaterialList2.getVideo();
                        if (video3 != null) {
                            video3.setPath(str);
                        }
                        adMaterialList2.setDownloadMaterialSuccess(true);
                        return true;
                    }
                    boolean zA = g.f41182a.a(url, str);
                    long length = file.length();
                    if (zA && length >= iIntValue) {
                        MbAdVideo video4 = adMaterialList2.getVideo();
                        if (video4 != null) {
                            video4.setPath(str);
                        }
                        adMaterialList2.setDownloadMaterialSuccess(true);
                        return true;
                    }
                    xh.a.c(xh.a.f75336a, f41104a.p() + " --> downloadAdPlan() --> 视频素材下载失败 -- adPlans.id = " + adPlans.getId() + " downloadFileSuccess = " + zA + " -- localFileSize = " + length + " -- remoteFileSize = " + iIntValue + " destination = " + str, 6, false, 4, null);
                    return false;
                }
                if (file.isFile() && file.exists() && file.length() > 0) {
                    MbAdImage image2 = adMaterialList2.getImage();
                    if (image2 != null) {
                        image2.setPath(str);
                    }
                    adMaterialList2.setDownloadMaterialSuccess(true);
                    return true;
                }
                boolean zA2 = g.f41182a.a(url, str);
                long length2 = file.length();
                if (zA2 && length2 > 0) {
                    MbAdImage image3 = adMaterialList2.getImage();
                    if (image3 != null) {
                        image3.setPath(str);
                    }
                    adMaterialList2.setDownloadMaterialSuccess(true);
                    return true;
                }
                xh.a.c(xh.a.f75336a, f41104a.p() + " --> downloadAdPlan() --> 图片素材下载失败 -- adPlans.id = " + adPlans.getId() + " downloadFileSuccess = " + zA2 + " -- localFileSize = " + length2 + " -- destination = " + str, 6, false, 4, null);
            }
        }
        return false;
    }

    private final String m(String str) {
        String strC = a0.c(str);
        String str2 = com.transsion.ad.a.f40775a.b() + File.separatorChar + strC + ".mineType";
        return (h.f16940a.c(str2) || g.f41182a.a(str, str2)) ? str2 : "";
    }

    private final void n(MbAdImage mbAdImage) {
        if (mbAdImage == null || TextUtils.isEmpty(mbAdImage.getUrl())) {
            return;
        }
        String url = mbAdImage.getUrl();
        String strC = a0.c(url);
        String str = com.transsion.ad.a.f40775a.b() + File.separatorChar + strC + ".mineType";
        if (h.f16940a.c(str)) {
            mbAdImage.setPath(str);
        } else if (g.f41182a.a(url, str)) {
            mbAdImage.setPath(str);
        }
    }

    private final Object o(AdPlans adPlans, Continuation continuation) {
        AdPlanSourceManager adPlanSourceManager = AdPlanSourceManager.f41117a;
        if (!adPlanSourceManager.i(adPlans) && !adPlanSourceManager.d(adPlans) && !adPlanSourceManager.f(adPlans)) {
            if (!l(adPlans)) {
                return Unit.f64096a;
            }
            Object objW = w(adPlans, continuation);
            return objW == IntrinsicsKt.f() ? objW : Unit.f64096a;
        }
        xh.a.c(xh.a.f75336a, p() + " --> downloadMaterialAndSaveAdPlans() --> PS虚拟计划和、Hi虚拟计划 --> 不需要下载素材的 --> " + adPlans.getAdSource() + " --> adPlan.name = " + adPlans.getName() + " --> adPlan.id = " + adPlans.getId(), 0, false, 6, null);
        AdMaterialList adMaterialList = new AdMaterialList(null, null, null, null, null, null, null, null, null, false, null, null, null, 8191, null);
        adMaterialList.setDownloadMaterialSuccess(true);
        adPlans.setAdMaterialList(CollectionsKt.e(adMaterialList));
        Object objW2 = w(adPlans, continuation);
        return objW2 == IntrinsicsKt.f() ? objW2 : Unit.f64096a;
    }

    private final String p() {
        String simpleName = AdPlansRequestManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final yh.a q() {
        return (yh.a) f41105b.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:49:0x01c1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public final Object r(MbAdPlansDto mbAdPlansDto, String str, Continuation continuation) {
        AdPlansRequestManager$handleResponse$1 adPlansRequestManager$handleResponse$1;
        List<AdPlans> adPlans;
        MbAdPlansDto mbAdPlansDto2;
        String str2;
        MbAdPlansDto mbAdPlansDto3 = mbAdPlansDto;
        String str3 = str;
        if (continuation instanceof AdPlansRequestManager$handleResponse$1) {
            adPlansRequestManager$handleResponse$1 = (AdPlansRequestManager$handleResponse$1) continuation;
            int i10 = adPlansRequestManager$handleResponse$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$handleResponse$1.label = i10 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$handleResponse$1 = new AdPlansRequestManager$handleResponse$1(this, continuation);
            }
        } else {
            adPlansRequestManager$handleResponse$1 = new AdPlansRequestManager$handleResponse$1(this, continuation);
        }
        Object obj = adPlansRequestManager$handleResponse$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = adPlansRequestManager$handleResponse$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                String str4 = (String) adPlansRequestManager$handleResponse$1.L$1;
                MbAdPlansDto mbAdPlansDto4 = (MbAdPlansDto) adPlansRequestManager$handleResponse$1.L$0;
                ResultKt.b(obj);
                str3 = str4;
                mbAdPlansDto3 = mbAdPlansDto4;
            } else if (i11 == 2) {
                str2 = (String) adPlansRequestManager$handleResponse$1.L$1;
                mbAdPlansDto2 = (MbAdPlansDto) adPlansRequestManager$handleResponse$1.L$0;
                ResultKt.b(obj);
                adPlansRequestManager$handleResponse$1.L$0 = null;
                adPlansRequestManager$handleResponse$1.L$1 = null;
                adPlansRequestManager$handleResponse$1.label = 3;
                if (i(mbAdPlansDto2, str2, adPlansRequestManager$handleResponse$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Boxing.a(true);
        }
        ResultKt.b(obj);
        if (mbAdPlansDto3 == null) {
            xh.a.c(xh.a.f75336a, p() + " --> handleResponse() --> mbAdConfig == null --> lastVersion = " + str3, 6, false, 4, null);
            return Boxing.a(false);
        }
        MbAdPlansBean data = mbAdPlansDto.getData();
        String strValueOf = String.valueOf(data != null ? data.getVersion() : null);
        MbAdPlansBean data2 = mbAdPlansDto.getData();
        Integer numD = (data2 == null || (adPlans = data2.getAdPlans()) == null) ? null : Boxing.d(adPlans.size());
        if (!Intrinsics.c(mbAdPlansDto.getCode(), "0")) {
            xh.a.c(xh.a.f75336a, p() + " --> handleResponse() --> mbAdConfig.code != 0 --> lastVersion = " + str3 + " --> newVersion = " + strValueOf, 6, false, 4, null);
            return Boxing.a(false);
        }
        u.f41195a.d(mbAdPlansDto.getData());
        com.transsion.ad.strategy.c.f41178a.e(mbAdPlansDto.getData());
        d.f41155a.g(mbAdPlansDto3);
        if (TextUtils.equals(str3, strValueOf)) {
            xh.a.c(xh.a.f75336a, p() + " --> handleResponse() --> 版本号一致，服务端不会下发list 省流量 --> lastVersion = " + str3 + " --> newVersion = " + strValueOf, 0, false, 6, null);
            return Boxing.a(true);
        }
        ai.c.f362a.h(str3, strValueOf);
        xh.a aVar = xh.a.f75336a;
        xh.a.c(aVar, p() + " --> handleResponse() --> lastVersion = " + str3 + " --> newVersion = " + strValueOf + " --> size = " + numD + " --> 开始增量更新", 0, false, 6, null);
        String strP = p();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(strP);
        sb2.append(" --> handleResponse() --> 保证计划关闭的及时性，将不是最新版本的计划标记为不可用 --> isValid = false");
        xh.a.c(aVar, sb2.toString(), 0, false, 6, null);
        AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f41107a;
        adPlansRequestManager$handleResponse$1.L$0 = mbAdPlansDto3;
        adPlansRequestManager$handleResponse$1.L$1 = str3;
        adPlansRequestManager$handleResponse$1.label = 1;
        if (adPlansStorageManager.l(false, strValueOf, adPlansRequestManager$handleResponse$1) == objF) {
            return objF;
        }
        adPlansRequestManager$handleResponse$1.L$0 = mbAdPlansDto3;
        adPlansRequestManager$handleResponse$1.L$1 = str3;
        adPlansRequestManager$handleResponse$1.label = 2;
        if (v(mbAdPlansDto3, adPlansRequestManager$handleResponse$1) == objF) {
            return objF;
        }
        String str5 = str3;
        mbAdPlansDto2 = mbAdPlansDto3;
        str2 = str5;
        adPlansRequestManager$handleResponse$1.L$0 = null;
        adPlansRequestManager$handleResponse$1.L$1 = null;
        adPlansRequestManager$handleResponse$1.label = 3;
        if (i(mbAdPlansDto2, str2, adPlansRequestManager$handleResponse$1) == objF) {
            return objF;
        }
        return Boxing.a(true);
    }

    public static final yh.a s() {
        return (yh.a) kg.c.f63982e.a().h(yh.a.class);
    }

    public static Object u(AdPlansRequestManager adPlansRequestManager, String str, Function1 function1, Continuation continuation, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        return adPlansRequestManager.t(str, function1, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:42:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:45:0x0106  */
    /* JADX WARN: Code duplicated, block: B:47:0x0109  */
    /* JADX WARN: Code duplicated, block: B:48:0x010e  */
    /* JADX WARN: Code duplicated, block: B:50:0x0111  */
    /* JADX WARN: Code duplicated, block: B:53:0x0136  */
    /* JADX WARN: Code duplicated, block: B:54:0x013b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0148  */
    /* JADX WARN: Code duplicated, block: B:73:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:75:0x0208 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:76:0x0209  */
    /* JADX WARN: Code duplicated, block: B:78:0x024f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x0250  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0250 -> B:80:0x0253). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object v(com.transsion.ad.monopoly.model.MbAdPlansDto r26, kotlin.coroutines.Continuation r27) {
        /*
            Method dump skipped, instruction units count: 604
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.ad.monopoly.manager.AdPlansRequestManager.v(com.transsion.ad.monopoly.model.MbAdPlansDto, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(AdPlans adPlans, Continuation continuation) {
        AdPlansRequestManager$updateAdPlanToDatabase$1 adPlansRequestManager$updateAdPlanToDatabase$1;
        if (continuation instanceof AdPlansRequestManager$updateAdPlanToDatabase$1) {
            adPlansRequestManager$updateAdPlanToDatabase$1 = (AdPlansRequestManager$updateAdPlanToDatabase$1) continuation;
            int i10 = adPlansRequestManager$updateAdPlanToDatabase$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$updateAdPlanToDatabase$1.label = i10 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$updateAdPlanToDatabase$1 = new AdPlansRequestManager$updateAdPlanToDatabase$1(this, continuation);
            }
        } else {
            adPlansRequestManager$updateAdPlanToDatabase$1 = new AdPlansRequestManager$updateAdPlanToDatabase$1(this, continuation);
        }
        Object obj = adPlansRequestManager$updateAdPlanToDatabase$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = adPlansRequestManager$updateAdPlanToDatabase$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            MbAdDbPlans mbAdDbPlansA = AdPlansTransform.f41118a.a(adPlans);
            AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f41107a;
            adPlansRequestManager$updateAdPlanToDatabase$1.label = 1;
            if (adPlansStorageManager.j(mbAdDbPlansA, adPlansRequestManager$updateAdPlanToDatabase$1) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Boxing.a(true);
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0125 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x012e A[Catch: all -> 0x003d, TryCatch #2 {all -> 0x003d, blocks: (B:14:0x0038, B:50:0x0145, B:21:0x004c, B:44:0x0126, B:46:0x012e, B:47:0x0138, B:41:0x0114, B:37:0x00f6), top: B:68:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:49:0x0144 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3, types: [kotlin.jvm.functions.Function1] */
    public final Object t(String str, Function1 function1, Continuation continuation) {
        AdPlansRequestManager$requestNonAdPlanList$1 adPlansRequestManager$requestNonAdPlanList$1;
        Object objM453constructorimpl;
        ?? r10;
        String str2;
        Function1 function2;
        Function1 function3;
        boolean zBooleanValue;
        PSAdPlanRequestManager pSAdPlanRequestManager;
        Object obj = "";
        if (continuation instanceof AdPlansRequestManager$requestNonAdPlanList$1) {
            adPlansRequestManager$requestNonAdPlanList$1 = (AdPlansRequestManager$requestNonAdPlanList$1) continuation;
            int i10 = adPlansRequestManager$requestNonAdPlanList$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                adPlansRequestManager$requestNonAdPlanList$1.label = i10 - Integer.MIN_VALUE;
            } else {
                adPlansRequestManager$requestNonAdPlanList$1 = new AdPlansRequestManager$requestNonAdPlanList$1(this, continuation);
            }
        } else {
            adPlansRequestManager$requestNonAdPlanList$1 = new AdPlansRequestManager$requestNonAdPlanList$1(this, continuation);
        }
        Object objR = adPlansRequestManager$requestNonAdPlanList$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = adPlansRequestManager$requestNonAdPlanList$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(objR);
                if (f41106c.get()) {
                    xh.a.c(xh.a.f75336a, p() + " --> requestNonAdPlanList() --> 正在请求中.... 稍后再试", 5, false, 4, null);
                    return Unit.f64096a;
                }
                f41106c.set(true);
                try {
                    Result.Companion companion = Result.INSTANCE;
                    e eVar = e.f41179a;
                    String string = eVar.c().getString("non_ad_plan_version", "");
                    String string2 = eVar.c().getString("non_ad_scene_version", "");
                    xh.a aVar = xh.a.f75336a;
                    AdPlansRequestManager adPlansRequestManager = f41104a;
                    xh.a.c(aVar, adPlansRequestManager.p() + " --> requestNonAdPlanList() --> 开始请求广告配置接口 --> lastVersion = " + string + " --> lastSceneVersion = " + string2 + " --> url = " + str, 0, false, 6, null);
                    yh.a aVarQ = adPlansRequestManager.q();
                    String str3 = string == null ? "" : string;
                    adPlansRequestManager$requestNonAdPlanList$1.L$0 = function1;
                    adPlansRequestManager$requestNonAdPlanList$1.L$1 = string;
                    adPlansRequestManager$requestNonAdPlanList$1.label = 1;
                    Object objA = yh.a.C0949a.a(aVarQ, str, str3, string2, false, adPlansRequestManager$requestNonAdPlanList$1, 8, null);
                    if (objA == objF) {
                        return objF;
                    }
                    str2 = string;
                    objR = objA;
                    function2 = function1;
                    AdPlansRequestManager adPlansRequestManager2 = f41104a;
                    adPlansRequestManager$requestNonAdPlanList$1.L$0 = function2;
                    adPlansRequestManager$requestNonAdPlanList$1.L$1 = null;
                    adPlansRequestManager$requestNonAdPlanList$1.label = 2;
                    objR = adPlansRequestManager2.r((MbAdPlansDto) objR, str2, adPlansRequestManager$requestNonAdPlanList$1);
                    function3 = function2;
                    if (objR == objF) {
                        return objF;
                    }
                    zBooleanValue = ((Boolean) objR).booleanValue();
                    if (function3 != null) {
                    }
                    pSAdPlanRequestManager = PSAdPlanRequestManager.f41135a;
                    adPlansRequestManager$requestNonAdPlanList$1.L$0 = function3;
                    adPlansRequestManager$requestNonAdPlanList$1.label = 3;
                    obj = function3;
                    if (pSAdPlanRequestManager.b(adPlansRequestManager$requestNonAdPlanList$1) == objF) {
                        return objF;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    obj = function1;
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                    r10 = obj;
                }
            } else if (i11 == 1) {
                String str4 = (String) adPlansRequestManager$requestNonAdPlanList$1.L$1;
                Function1 function4 = (Function1) adPlansRequestManager$requestNonAdPlanList$1.L$0;
                try {
                    ResultKt.b(objR);
                    str2 = str4;
                    function2 = function4;
                    AdPlansRequestManager adPlansRequestManager3 = f41104a;
                    adPlansRequestManager$requestNonAdPlanList$1.L$0 = function2;
                    adPlansRequestManager$requestNonAdPlanList$1.L$1 = null;
                    adPlansRequestManager$requestNonAdPlanList$1.label = 2;
                    objR = adPlansRequestManager3.r((MbAdPlansDto) objR, str2, adPlansRequestManager$requestNonAdPlanList$1);
                    function3 = function2;
                    if (objR == objF) {
                        return objF;
                    }
                    zBooleanValue = ((Boolean) objR).booleanValue();
                    if (function3 != null) {
                    }
                    pSAdPlanRequestManager = PSAdPlanRequestManager.f41135a;
                    adPlansRequestManager$requestNonAdPlanList$1.L$0 = function3;
                    adPlansRequestManager$requestNonAdPlanList$1.label = 3;
                    obj = function3;
                    if (pSAdPlanRequestManager.b(adPlansRequestManager$requestNonAdPlanList$1) == objF) {
                        return objF;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    obj = function4;
                    Result.Companion companion3 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th));
                    r10 = obj;
                }
            } else if (i11 == 2) {
                Function1 function5 = (Function1) adPlansRequestManager$requestNonAdPlanList$1.L$0;
                ResultKt.b(objR);
                function3 = function5;
                zBooleanValue = ((Boolean) objR).booleanValue();
                if (function3 != null) {
                }
                pSAdPlanRequestManager = PSAdPlanRequestManager.f41135a;
                adPlansRequestManager$requestNonAdPlanList$1.L$0 = function3;
                adPlansRequestManager$requestNonAdPlanList$1.label = 3;
                obj = function3;
                if (pSAdPlanRequestManager.b(adPlansRequestManager$requestNonAdPlanList$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Object obj2 = (Function1) adPlansRequestManager$requestNonAdPlanList$1.L$0;
                ResultKt.b(objR);
                obj = obj2;
            }
            f41106c.set(false);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            r10 = obj;
        } catch (Throwable th4) {
            th = th4;
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            f41106c.set(false);
            if (r10 != 0) {
            }
            xh.a.c(xh.a.f75336a, f41104a.p() + " --> requestNonAdPlanList() --> fail fail fail --> 请求非标广告计划列表失败 it = " + thM456exceptionOrNullimpl, 6, false, 4, null);
        }
        return Unit.f64096a;
    }
}
