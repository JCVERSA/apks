package com.transsion.playercommon.vishaapis.aistatistics;

import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.b;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.VideoIndex;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.playercommon.data.RecommendMark;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.utils.deviceinfo.a;
import defpackage.fi1;
import defpackage.ge;
import defpackage.jf;
import defpackage.pp3;
import defpackage.ydc;
import defpackage.zdc;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class AiStatisticsProvider {
    public static String AlgorithmMark(String str, Map<String, Object> map) {
        ArrayList arrayList = new ArrayList();
        RecommendMark recommendMark = new RecommendMark();
        RecommendMark.Event event = new RecommendMark.Event();
        event.setEvent(str);
        if (map != null && map.get("video_list") != null && !TextUtils.isEmpty(map.get("video_list").toString())) {
            String string = map.get("video_list").toString();
            if (!TextUtils.isEmpty(string)) {
                map.put("video_list", (List) fi1.c(string, new TypeToken<List<VideoIndex>>() {
                }.getType()));
            }
        }
        event.setEparam(fi1.e(map));
        event.setTid(SnowFlakeUtils.getInstance().nextId());
        event.setTs(Long.valueOf(System.currentTimeMillis()));
        event.setNet(1);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(event);
        recommendMark.setEvents(arrayList2);
        recommendMark.setBrand(Build.BRAND + " " + Build.MODEL);
        recommendMark.setSdkv("1.0.0");
        recommendMark.setIns(ge.a());
        recommendMark.setTpmsid(Settings.System.getString(jf.c().getContentResolver(), "android_id"));
        recommendMark.setLang(LanguageUtils.b().getLanguage());
        recommendMark.setAppid(KeyConstant.APP_ID);
        recommendMark.setCnt(1);
        recommendMark.setGaid(a.j());
        recommendMark.setIsfl(Integer.valueOf(MMKV.p().g(str, 0) == 0 ? 1 : 0));
        recommendMark.setOpenid(zdc.c());
        recommendMark.setOsv(pp3.b());
        recommendMark.setPkg(b.a());
        recommendMark.setVn(ydc.b());
        recommendMark.setVc(String.valueOf(ydc.a()));
        recommendMark.setVaid(AthenaAnalytics.F(Utils.a()));
        recommendMark.setUuid(UUID.randomUUID().toString());
        recommendMark.setCountry(CountryInfoUtil.h());
        recommendMark.setCity(CountryInfoUtil.g());
        MMKV.p().t(str, 1);
        arrayList.add(recommendMark);
        return AESUtils.mark(fi1.e(arrayList));
    }
}
