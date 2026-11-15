package com.transsion.ad.monopoly.manager;

import android.app.Application;
import android.text.TextUtils;
import ci.f;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.model.MbAdPlansBean;
import com.transsion.ad.monopoly.model.MbAdPlansDto;
import com.transsion.ad.monopoly.model.MbAdVideo;
import com.transsion.ad.monopoly.plan.AdPlansTransform;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

public final class AdPlansAssetsManager extends c {

    public static final AdPlansAssetsManager f41103b = new AdPlansAssetsManager();

    private AdPlansAssetsManager() {
    }

    public final MbAdPlansDto e(MbAdPlansDto mbAdPlansDto) {
        List<AdPlans> adPlans;
        MbAdPlansBean data = mbAdPlansDto.getData();
        if (data != null && (adPlans = data.getAdPlans()) != null) {
            for (AdPlans adPlans2 : adPlans) {
                AdPlansAssetsManager adPlansAssetsManager = f41103b;
                String advertiserAvatar = adPlans2.getAdvertiserAvatar();
                if (advertiserAvatar == null) {
                    advertiserAvatar = "";
                }
                String strG = adPlansAssetsManager.g(advertiserAvatar);
                if (!TextUtils.isEmpty(strG)) {
                    adPlans2.setAdvertiserAvatarPath(strG);
                }
                List<AdMaterialList> adMaterialList = adPlans2.getAdMaterialList();
                if (adMaterialList != null) {
                    for (AdMaterialList adMaterialList2 : adMaterialList) {
                        MbAdVideo video = adMaterialList2.getVideo();
                        if (video != null) {
                            AdPlansAssetsManager adPlansAssetsManager2 = f41103b;
                            String url = video.getUrl();
                            if (url == null) {
                                url = "";
                            }
                            String strG2 = adPlansAssetsManager2.g(url);
                            if (!TextUtils.isEmpty(strG2)) {
                                video.setPath(strG2);
                                adMaterialList2.setDownloadMaterialSuccess(true);
                            }
                        }
                        MbAdImage image = adMaterialList2.getImage();
                        if (image != null) {
                            AdPlansAssetsManager adPlansAssetsManager3 = f41103b;
                            String url2 = image.getUrl();
                            if (url2 == null) {
                                url2 = "";
                            }
                            String strG3 = adPlansAssetsManager3.g(url2);
                            if (!TextUtils.isEmpty(strG3)) {
                                image.setPath(strG3);
                                adMaterialList2.setDownloadMaterialSuccess(true);
                            }
                        }
                    }
                }
            }
        }
        return mbAdPlansDto;
    }

    public final Object f(MbAdPlansDto mbAdPlansDto, Continuation continuation) {
        MbAdPlansBean data = mbAdPlansDto.getData();
        if (data != null) {
            ArrayList arrayList = new ArrayList();
            List<AdPlans> adPlans = data.getAdPlans();
            if (adPlans != null) {
                Iterator<T> it = adPlans.iterator();
                while (it.hasNext()) {
                    MbAdDbPlans mbAdDbPlansA = AdPlansTransform.f41118a.a((AdPlans) it.next());
                    mbAdDbPlansA.setVersion(data.getVersion());
                    arrayList.add(mbAdDbPlansA);
                }
            }
            Object objK = AdPlansStorageManager.f41107a.k(arrayList, continuation);
            if (objK == IntrinsicsKt.f()) {
                return objK;
            }
        }
        return Unit.f64096a;
    }

    private final String g(String str) {
        File file = new File(com.transsion.ad.a.f40775a.b(), System.currentTimeMillis() + ".mineType");
        f fVar = f.f16936a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        if (fVar.a(applicationA, str, file)) {
            return file.getAbsolutePath();
        }
        return null;
    }

    @Override
    public Object b(Continuation continuation) {
        Object objG = i.g(y0.b(), new AdPlansAssetsManager$innerCopy$2(null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f64096a;
    }
}
