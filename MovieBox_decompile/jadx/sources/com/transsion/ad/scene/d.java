package com.transsion.ad.scene;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.tencent.mmkv.MMKV;
import com.transsion.ad.monopoly.model.MbAdPlansBean;
import com.transsion.ad.monopoly.model.MbAdPlansDto;
import com.transsion.ad.strategy.e;
import java.util.HashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    public static final d f41155a = new d();

    private static final HashMap f41156b = new HashMap();

    private d() {
    }

    private final String a() {
        String simpleName = d.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final JsonObject b(String str) {
        JsonObject asJsonObject;
        String asString;
        JsonObject jsonObject;
        try {
            Result.Companion companion = Result.INSTANCE;
            HashMap map = f41156b;
            if (map.containsKey(str) && (jsonObject = (JsonObject) map.get(str)) != null) {
                return jsonObject;
            }
            JsonArray jsonArray = (JsonArray) o.d(e.f41179a.c().getString("non_ad_scene_config_data", ""), JsonArray.class);
            if (jsonArray != null) {
                for (JsonElement jsonElement : jsonArray) {
                    if (jsonElement != null && (asJsonObject = jsonElement.getAsJsonObject()) != null) {
                        JsonElement jsonElement2 = asJsonObject.get("id");
                        if (jsonElement2 == null || (asString = jsonElement2.getAsString()) == null) {
                            asString = "";
                        }
                        f41156b.put(asString, asJsonObject);
                    }
                }
            }
            HashMap map2 = f41156b;
            if (map2.containsKey(str)) {
                return (JsonObject) map2.get(str);
            }
            Result.m453constructorimpl(Unit.f64096a);
            return null;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
            return null;
        }
    }

    public final String c() {
        Object objM453constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(e.f41179a.c().getString("non_ad_scene_config_data", ""));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) != null) {
            objM453constructorimpl = null;
        }
        return (String) objM453constructorimpl;
    }

    public final String d() {
        return e.f41179a.c().getString("non_ad_scene_version", "");
    }

    public final boolean e() {
        return !TextUtils.isEmpty(e.f41179a.c().getString("non_ad_scene_config_data", ""));
    }

    public final void f(String assetsString) {
        Intrinsics.h(assetsString, "assetsString");
        e.f41179a.c().putString("non_ad_scene_config_data", assetsString);
        xh.a.c(xh.a.f75336a, a() + " --> setScene4Assets() --> 场景信息保存到MMKV --> success", 0, false, 6, null);
    }

    public final void g(MbAdPlansDto mbAdPlansDto) {
        Intrinsics.h(mbAdPlansDto, "mbAdPlansDto");
        e eVar = e.f41179a;
        String string = eVar.c().getString("non_ad_scene_version", "");
        MbAdPlansBean data = mbAdPlansDto.getData();
        String versionAdScene = data != null ? data.getVersionAdScene() : null;
        if (TextUtils.equals(string, versionAdScene)) {
            xh.a.c(xh.a.f75336a, a() + " --> setSceneConfig() --> 版本号一致，服务端不会下发list 省流量 --> localAdSceneVersion = " + string + " --> newVersion = " + versionAdScene, 0, false, 6, null);
            return;
        }
        eVar.c().putString("non_ad_scene_version", versionAdScene);
        MMKV mmkvC = eVar.c();
        MbAdPlansBean data2 = mbAdPlansDto.getData();
        mmkvC.putString("non_ad_scene_config_data", data2 != null ? data2.getAdSceneConfigData() : null);
        xh.a.c(xh.a.f75336a, a() + " --> setSceneConfig() --> 场景信息保存到MMKV --> success --> newVersion = " + versionAdScene, 0, false, 6, null);
    }
}
