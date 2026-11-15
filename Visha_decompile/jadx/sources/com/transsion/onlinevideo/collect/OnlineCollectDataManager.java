package com.transsion.onlinevideo.collect;

import android.text.TextUtils;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.onlinevideo.CollectItem;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.fi1;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class OnlineCollectDataManager {
    public static OnlineCollectDataManager c = new OnlineCollectDataManager();
    public Map a = new ConcurrentHashMap();
    public Map b = new ConcurrentHashMap();

    public class a implements pd7 {
        public a() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
        }

        @Override
        public void onComplete() {
            OnlineCollectDataManager.this.g();
        }

        @Override
        public void onError(Throwable th) {
            th.printStackTrace();
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements pd7 {
        public b() {
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse == null || baseResponse.getRecords() == null || ((List) baseResponse.getRecords()).isEmpty()) {
                OnlineCollectDataManager.this.a();
            } else {
                OnlineCollectDataManager.this.c((List) baseResponse.getRecords());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            th.printStackTrace();
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public static OnlineCollectDataManager d() {
        return c;
    }

    public void a() {
        this.b.clear();
        MMKV.p().w("ott_play_collect_online", fi1.e(this.b));
    }

    public void b(CollectItem collectItem) {
        boolean zS = com.transsion.palmsdk.b.s();
        collectItem.setLogin(zS);
        e(com.transsion.palmsdk.b.s());
        if (zS) {
            this.b.put(collectItem.getIsYoutube() == 1 ? collectItem.getSourceId() : String.valueOf(collectItem.getVideoId()), collectItem);
        } else {
            this.a.put(collectItem.getIsYoutube() == 1 ? collectItem.getSourceId() : String.valueOf(collectItem.getVideoId()), collectItem);
        }
        MMKV.p().w(zS ? "ott_play_collect_online" : "ott_play_collect_local", fi1.e(zS ? this.b : this.a));
    }

    public void c(List list) {
        this.b.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CollectItem collectItem = (CollectItem) it.next();
            this.b.put(collectItem.getIsYoutube() == 1 ? collectItem.getSourceId() : String.valueOf(collectItem.getVideoId()), collectItem);
        }
        MMKV.p().w("ott_play_collect_online", fi1.e(this.b));
    }

    public void e(boolean z) {
        Map map = z ? this.b : this.a;
        if (map.values() == null || map.values().size() == 0) {
            String string = MMKV.p().getString(z ? "ott_play_collect_online" : "ott_play_collect_local", "");
            if (!TextUtils.isEmpty(string)) {
                try {
                    map = (Map) fi1.c(string, new TypeToken<HashMap<String, CollectItem>>() {
                    }.getType());
                } catch (Exception unused) {
                }
            }
        }
        if (z) {
            this.b = map;
        } else {
            this.a = map;
        }
    }

    public boolean f(String str) {
        boolean zS = com.transsion.palmsdk.b.s();
        e(com.transsion.palmsdk.b.s());
        return (zS ? this.b : this.a).get(str) != null;
    }

    public void g() {
        ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).getCollectList(1).d0(k29.c()).M(vb.a()).subscribe(new b());
    }

    public void h() {
        if (com.transsion.palmsdk.b.s()) {
            e(false);
            if (this.a.values() == null || this.a.values().size() <= 0) {
                g();
                return;
            }
            if (this.b == null) {
                this.b = new ConcurrentHashMap();
            }
            ArrayList arrayList = new ArrayList();
            for (CollectItem collectItem : this.a.values()) {
                if (collectItem.getIsYoutube() == 1) {
                    this.b.put(collectItem.getSourceId(), collectItem);
                } else {
                    arrayList.add(collectItem);
                }
            }
            ((IOnlineApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineApiService.class)).collect((CollectItem[]) arrayList.toArray(new CollectItem[arrayList.size()])).d0(k29.c()).M(vb.a()).subscribe(new a());
        }
    }

    public void i(String str) {
        boolean zS = com.transsion.palmsdk.b.s();
        e(com.transsion.palmsdk.b.s());
        if (zS) {
            this.b.remove(str);
        } else {
            this.a.remove(str);
        }
        MMKV.p().w(zS ? "ott_play_collect_online" : "ott_play_collect_local", fi1.e(zS ? this.b : this.a));
    }

    public void j(String[] strArr) {
        boolean zS = com.transsion.palmsdk.b.s();
        e(com.transsion.palmsdk.b.s());
        Map map = zS ? this.b : this.a;
        for (String str : strArr) {
            map.remove(str);
        }
        MMKV.p().w(zS ? "ott_play_collect_online" : "ott_play_collect_local", fi1.e(map));
    }
}
