package com.transsion.cloud.viewmodel;

import com.google.gson.Gson;
import com.tencent.mmkv.MMKV;
import defpackage.hi;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.cloud.viewmodel.CloudSearchViewModel$setHistoryList$1", f = "CloudSearchViewModel.kt", l = {}, m = "invokeSuspend")
public final class CloudSearchViewModel$setHistoryList$1 extends SuspendLambda implements s74 {
    final String $newHistory;
    int label;
    final CloudSearchViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudSearchViewModel$setHistoryList$1(String str, CloudSearchViewModel cloudSearchViewModel, wh1<? super CloudSearchViewModel$setHistoryList$1> wh1Var) {
        super(2, wh1Var);
        this.$newHistory = str;
        this.this$0 = cloudSearchViewModel;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new CloudSearchViewModel$setHistoryList$1(this.$newHistory, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((CloudSearchViewModel$setHistoryList$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        List arrayList;
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        kotlin.c.b(obj);
        String json = "";
        String string = MMKV.p().getString("mmkv_key_cloud_history", "");
        if (string == null || string.length() == 0) {
            arrayList = new ArrayList();
        } else {
            try {
                Object objFromJson = new Gson().fromJson(string, (Class<Object>) String[].class);
                y45.i(objFromJson, "fromJson(...)");
                arrayList = hi.m1((Object[]) objFromJson);
            } catch (Exception unused) {
                arrayList = new ArrayList();
            }
        }
        if (arrayList.contains(this.$newHistory)) {
            arrayList.remove(this.$newHistory);
            arrayList.add(0, this.$newHistory);
        } else {
            arrayList.add(0, this.$newHistory);
        }
        if (arrayList.size() > this.this$0.mMaxCount) {
            arrayList.subList(this.this$0.mMaxCount, arrayList.size()).clear();
        }
        try {
            json = new Gson().toJson(arrayList);
        } catch (Exception unused2) {
        }
        this.this$0.mHistoryCache.clear();
        this.this$0.mHistoryCache.addAll(arrayList);
        MMKV.p().putString("mmkv_key_cloud_history", json);
        return zfb.a;
    }
}
