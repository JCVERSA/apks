package com.transsion.playercommon.mimedia;

import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayInfo;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoPlayItemInfo;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import com.transsion.playercommon.mimedia.CloudMediaPlayInfoManager;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.e74;
import defpackage.fi1;
import defpackage.k29;
import defpackage.mc7;
import defpackage.rc2;
import defpackage.vb;
import defpackage.y45;
import defpackage.zf1;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class CloudMediaPlayInfoManager {
    public static final a k = new a(null);
    public static volatile CloudMediaPlayInfoManager l;
    public rc2 b;
    public b c;
    public final String a = "CloudMediaPlayInfoManager";
    public final String d = "mi_media_info";
    public final String e = "mi_media_info_expire";
    public final HashMap f = new HashMap();
    public final HashMap g = new HashMap();
    public final long h = 86400000;
    public final HashMap i = new HashMap();
    public final String j = "mi_media_video_resolution";

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final CloudMediaPlayInfoManager a() {
            CloudMediaPlayInfoManager cloudMediaPlayInfoManager = CloudMediaPlayInfoManager.l;
            if (cloudMediaPlayInfoManager == null) {
                synchronized (this) {
                    cloudMediaPlayInfoManager = CloudMediaPlayInfoManager.l;
                    if (cloudMediaPlayInfoManager == null) {
                        cloudMediaPlayInfoManager = new CloudMediaPlayInfoManager();
                        CloudMediaPlayInfoManager.l = cloudMediaPlayInfoManager;
                    }
                }
            }
            return cloudMediaPlayInfoManager;
        }

        public a() {
        }
    }

    public interface b {
        void a(MIMediaVideoPlayInfo mIMediaVideoPlayInfo);

        void onFailed(int i, String str);
    }

    public CloudMediaPlayInfoManager() {
        r();
        h();
    }

    public static final CloudMediaPlayInfoManager k() {
        return k.a();
    }

    public static final zfb n(CloudMediaPlayInfoManager cloudMediaPlayInfoManager, String str, BaseResponse baseResponse) {
        if (!baseResponse.isSuccess() || baseResponse.getData() == null) {
            Log.e(cloudMediaPlayInfoManager.a, "requestMIMediaVideoPlayInfo failed: " + baseResponse.getMessage() + StringUtils.COMMA + baseResponse.getCode());
            b bVar = cloudMediaPlayInfoManager.c;
            if (bVar != null) {
                int code = baseResponse.getCode();
                String message = baseResponse.getMessage();
                y45.i(message, "getMessage(...)");
                bVar.onFailed(code, message);
            }
        } else {
            Log.d(cloudMediaPlayInfoManager.a, "requestMIMediaVideoPlayInfo success: " + baseResponse.getData());
            Object data = baseResponse.getData();
            y45.i(data, "getData(...)");
            cloudMediaPlayInfoManager.g(str, (MIMediaVideoPlayInfo) data);
            b bVar2 = cloudMediaPlayInfoManager.c;
            if (bVar2 != null) {
                Object data2 = baseResponse.getData();
                y45.i(data2, "getData(...)");
                bVar2.a((MIMediaVideoPlayInfo) data2);
            }
        }
        return zfb.a;
    }

    public static final void o(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public static final zfb p(CloudMediaPlayInfoManager cloudMediaPlayInfoManager, Throwable th) {
        Log.e(cloudMediaPlayInfoManager.a, "requestMIMediaVideoPlayInfo error: " + th.getMessage());
        b bVar = cloudMediaPlayInfoManager.c;
        if (bVar != null) {
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown error";
            }
            bVar.onFailed(-1, message);
        }
        return zfb.a;
    }

    public static final void q(e74 e74Var, Object obj) {
        e74Var.invoke(obj);
    }

    public final void g(String str, MIMediaVideoPlayInfo mIMediaVideoPlayInfo) {
        this.f.put(str, mIMediaVideoPlayInfo);
        this.g.put(str, Long.valueOf(System.currentTimeMillis() + this.h));
        t();
        s();
        Log.d(this.a, "Cached media info for video ID: " + str);
    }

    public final void h() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList<String> arrayList = new ArrayList();
        for (Map.Entry entry : this.g.entrySet()) {
            String str = (String) entry.getKey();
            if (((Number) entry.getValue()).longValue() <= jCurrentTimeMillis) {
                arrayList.add(str);
            }
        }
        for (String str2 : arrayList) {
            this.f.remove(str2);
            this.g.remove(str2);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        t();
        s();
        Log.d(this.a, "Cleared expired cache for " + arrayList.size() + " media items");
    }

    public final MIMediaVideoPlayInfo i(String str) {
        y45.j(str, "videoId");
        Long l2 = (Long) this.g.get(str);
        if (l2 == null) {
            return null;
        }
        if (l2.longValue() > System.currentTimeMillis()) {
            return (MIMediaVideoPlayInfo) this.f.get(str);
        }
        this.f.remove(str);
        this.g.remove(str);
        t();
        s();
        Log.d(this.a, "Media info for video ID: " + str + " has expired");
        return null;
    }

    public final String j(String str) {
        MIMediaVideoPlayInfo mIMediaVideoPlayInfo;
        MIMediaVideoPlayItemInfo mIMediaVideoPlayItemInfo;
        y45.j(str, "videoId");
        String str2 = (String) this.i.get(str);
        if (str2 != null) {
            return str2;
        }
        MIMediaVideoPlayInfo mIMediaVideoPlayInfo2 = (MIMediaVideoPlayInfo) this.f.get(str);
        String resolution = null;
        if (mIMediaVideoPlayInfo2 != null && mIMediaVideoPlayInfo2.getDataList() != null && (mIMediaVideoPlayInfo = (MIMediaVideoPlayInfo) this.f.get(str)) != null && (mIMediaVideoPlayItemInfo = mIMediaVideoPlayInfo.getDataList().get(0)) != null) {
            resolution = mIMediaVideoPlayItemInfo.getResolution();
        }
        return resolution;
    }

    public final long l(String str) {
        if (str == null) {
            return 0L;
        }
        try {
            MIMediaVideoPlayInfo mIMediaVideoPlayInfoI = i(str);
            if (mIMediaVideoPlayInfoI == null) {
                Log.w(this.a, "getPlayDuration: no cached info found for videoId: " + str);
                return 0L;
            }
            long playDuration = mIMediaVideoPlayInfoI.getPlayDuration();
            Log.d(this.a, "getPlayDuration success: videoId=" + str + ", playDuration=" + playDuration);
            return playDuration;
        } catch (Exception e) {
            Log.e(this.a, "getPlayDuration failed: videoId=" + str + ", error=" + e.getMessage());
            return 0L;
        }
    }

    public final void m(final String str, b bVar) {
        y45.j(str, "videoId");
        y45.j(bVar, "callback");
        rc2 rc2Var = this.b;
        if (rc2Var != null) {
            rc2Var.dispose();
        }
        this.c = bVar;
        MIMediaVideoPlayInfo mIMediaVideoPlayInfoI = i(str);
        if (mIMediaVideoPlayInfoI != null) {
            b bVar2 = this.c;
            if (bVar2 != null) {
                bVar2.a(mIMediaVideoPlayInfoI);
                return;
            }
            return;
        }
        mc7 mc7VarM = ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getMIPlayInfo(str).d0(k29.c()).M(vb.a());
        final e74 e74Var = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudMediaPlayInfoManager.n(this.b, str, (BaseResponse) obj);
            }
        };
        zf1 zf1Var = new zf1() {
            @Override
            public final void accept(Object obj) {
                CloudMediaPlayInfoManager.o(e74Var, obj);
            }
        };
        final e74 e74Var2 = new e74() {
            @Override
            public final Object invoke(Object obj) {
                return CloudMediaPlayInfoManager.p(this.b, (Throwable) obj);
            }
        };
        this.b = mc7VarM.a0(zf1Var, new zf1() {
            @Override
            public final void accept(Object obj) {
                CloudMediaPlayInfoManager.q(e74Var2, obj);
            }
        });
    }

    public final void r() {
        try {
            String strM = MMKV.p().m(this.d, "");
            if (strM != null && strM.length() != 0) {
                Object objC = fi1.c(strM, new TypeToken<HashMap<String, MIMediaVideoPlayInfo>>() {
                }.getType());
                y45.i(objC, "fromJson(...)");
                this.f.putAll((HashMap) objC);
                Log.d(this.a, "Restored media info cache: " + this.f.size() + " items");
            }
        } catch (Exception e) {
            Log.e(this.a, "Failed to restore media info cache: " + e.getMessage());
            MMKV.p().J(this.d);
        }
        try {
            String strM2 = MMKV.p().m(this.e, "");
            if (strM2 != null && strM2.length() != 0) {
                Object objC2 = fi1.c(strM2, new TypeToken<HashMap<String, Long>>() {
                }.getType());
                y45.i(objC2, "fromJson(...)");
                this.g.putAll((HashMap) objC2);
                Log.d(this.a, "Restored expire time cache: " + this.g.size() + " items");
            }
        } catch (Exception e2) {
            Log.e(this.a, "Failed to restore expire time cache: " + e2.getMessage());
            MMKV.p().J(this.e);
        }
        try {
            String strM3 = MMKV.p().m(this.j, "");
            if (strM3 != null && strM3.length() != 0) {
                Object objC3 = fi1.c(strM3, new TypeToken<HashMap<String, String>>() {
                }.getType());
                y45.i(objC3, "fromJson(...)");
                this.i.putAll((HashMap) objC3);
                Log.d(this.a, "Restored mediaResolution cache: " + this.i.size() + " items");
            }
        } catch (Exception e3) {
            Log.e(this.a, "Failed to restore mediaResolutionMap cache: " + e3.getMessage());
            MMKV.p().J(this.j);
        }
    }

    public final void s() {
        try {
            MMKV.p().w(this.e, fi1.e(this.g));
            Log.d(this.a, "Saved expire time to cache: " + this.g.size() + " items");
        } catch (Exception e) {
            Log.e(this.a, "Failed to save expire time to cache: " + e.getMessage());
        }
    }

    public final void t() {
        try {
            MMKV.p().w(this.d, fi1.e(this.f));
            Log.d(this.a, "Saved media info to cache: " + this.f.size() + " items");
        } catch (Exception e) {
            Log.e(this.a, "Failed to save media info to cache: " + e.getMessage());
        }
    }

    public final void u() {
        try {
            MMKV.p().w(this.j, fi1.e(this.f));
            Log.d(this.a, "saveTemplateToCache");
        } catch (Exception e) {
            Log.e(this.a, "saveTemplateToCache: " + e.getMessage());
        }
    }

    public final void v(String str, String str2) {
        y45.j(str, "videoId");
        y45.j(str2, "resolution");
        this.i.put(str, str2);
        u();
        LogUtils.j(this.a, "setVideoResolution: " + str + ", template: " + str2);
    }

    public final void w(String str, long j) {
        y45.j(str, "videoId");
        try {
            if (j < 0) {
                Log.w(this.a, "updateMediaPlayInfoPlayDuration: invalid playDuration: " + j);
                return;
            }
            MIMediaVideoPlayInfo mIMediaVideoPlayInfo = (MIMediaVideoPlayInfo) this.f.get(str);
            if (mIMediaVideoPlayInfo == null) {
                Log.w(this.a, "updateMediaPlayInfoPlayDuration: no cached info found for videoId: " + str);
                return;
            }
            Long l2 = (Long) this.g.get(str);
            if (l2 == null || l2.longValue() > System.currentTimeMillis()) {
                this.f.put(str, mIMediaVideoPlayInfo.copy((TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES & 1) != 0 ? mIMediaVideoPlayInfo.sourceId : null, (TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES & 2) != 0 ? mIMediaVideoPlayInfo.title : null, (TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES & 4) != 0 ? mIMediaVideoPlayInfo.description : null, (TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES & 8) != 0 ? mIMediaVideoPlayInfo.cover : null, (TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES & 16) != 0 ? mIMediaVideoPlayInfo.size : null, (TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES & 32) != 0 ? mIMediaVideoPlayInfo.playDuration : j / ((long) 1000), (TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES & 64) != 0 ? mIMediaVideoPlayInfo.status : null, (TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES & 128) != 0 ? mIMediaVideoPlayInfo.dataList : null));
                t();
                Log.d(this.a, "updateMediaPlayInfoPlayDuration success: videoId=" + str + ", playDuration=" + j);
                return;
            }
            Log.w(this.a, "updateMediaPlayInfoPlayDuration: cached info expired for videoId: " + str);
            this.f.remove(str);
            this.g.remove(str);
            t();
            s();
        } catch (Exception e) {
            Log.e(this.a, "updateMediaPlayInfoPlayDuration failed: videoId=" + str + ", error=" + e.getMessage());
        }
    }
}
