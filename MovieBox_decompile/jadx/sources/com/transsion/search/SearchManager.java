package com.transsion.search;

import android.text.TextUtils;
import com.blankj.utilcode.util.o;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class SearchManager {

    public static final a f49934f = new a(null);

    private static final Lazy f49935g = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return SearchManager.e();
        }
    });

    private int f49939d;

    private final String f49937b = "kv_search_group";

    private final String f49938c = "kv_search_work";

    private List f49940e = new ArrayList();

    private MMKV f49936a = MMKV.I("kv_search_list");

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchManager a() {
            return (SearchManager) SearchManager.f49935g.getValue();
        }

        private a() {
        }
    }

    public static final SearchManager e() {
        return new SearchManager();
    }

    public static final void h(SearchManager searchManager) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(searchManager.f49940e);
        wf.a.C0922a.f(wf.a.f74274a, "VS_SM", "add" + arrayList, false, 4, null);
        int i10 = searchManager.f49939d;
        if (i10 != 1) {
            if (i10 == 2) {
                MMKV mmkv = searchManager.f49936a;
                if (mmkv != null) {
                    mmkv.putString(searchManager.f49937b, o.j(arrayList));
                    return;
                }
                return;
            }
            if (i10 != 3) {
                return;
            }
        }
        MMKV mmkv2 = searchManager.f49936a;
        if (mmkv2 != null) {
            mmkv2.putString(searchManager.f49938c, o.j(arrayList));
        }
    }

    private final void i(Runnable runnable) {
        h.f50174b.a().d(runnable);
    }

    public static final void k(SearchManager searchManager) {
        searchManager.f49940e.clear();
        int i10 = searchManager.f49939d;
        if (i10 != 1) {
            if (i10 == 2) {
                MMKV mmkv = searchManager.f49936a;
                if (mmkv != null) {
                    mmkv.putString(searchManager.f49937b, "");
                    return;
                }
                return;
            }
            if (i10 != 3) {
                return;
            }
        }
        MMKV mmkv2 = searchManager.f49936a;
        if (mmkv2 != null) {
            mmkv2.putString(searchManager.f49938c, "");
        }
    }

    public static final void n(SearchManager searchManager, com.transsion.search.a aVar) {
        aVar.a(searchManager.l());
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0035  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    public final void g(String keyword) {
        Intrinsics.h(keyword, "keyword");
        if (this.f49940e.contains(keyword)) {
            this.f49940e.remove(keyword);
            this.f49940e.add(keyword);
        } else {
            int i10 = this.f49939d;
            if (i10 == 1) {
                if (this.f49940e.size() >= 30) {
                    this.f49940e.remove(0);
                }
            } else if (i10 != 2) {
                if (i10 == 3) {
                    if (this.f49940e.size() >= 30) {
                        this.f49940e.remove(0);
                    }
                }
            } else if (this.f49940e.size() >= 30) {
                this.f49940e.remove(0);
            }
            this.f49940e.add(keyword);
        }
        if (this.f49940e.isEmpty()) {
            return;
        }
        i(new Runnable() {
            @Override
            public final void run() {
                SearchManager.h(this.f49965a);
            }
        });
    }

    public final void j() {
        i(new Runnable() {
            @Override
            public final void run() {
                SearchManager.k(this.f49975a);
            }
        });
    }

    public final List l() {
        List arrayList;
        String string = null;
        if (this.f49939d == 2) {
            MMKV mmkv = this.f49936a;
            if (mmkv != null) {
                string = mmkv.getString(this.f49937b, "");
            }
        } else {
            MMKV mmkv2 = this.f49936a;
            if (mmkv2 != null) {
                string = mmkv2.getString(this.f49938c, "");
            }
        }
        wf.a.C0922a.f(wf.a.f74274a, "VS_SM", "findSearch" + string, false, 4, null);
        if (TextUtils.isEmpty(string) || TextUtils.equals(string, "{}")) {
            arrayList = new ArrayList();
        } else {
            Object objE = o.e(string, new TypeToken<List<String>>() {
            }.getType());
            Intrinsics.e(objE);
            arrayList = (List) objE;
        }
        arrayList.isEmpty();
        this.f49940e = arrayList;
        return arrayList;
    }

    public final void m(int i10, final com.transsion.search.a callback) {
        Intrinsics.h(callback, "callback");
        this.f49939d = i10;
        i(new Runnable() {
            @Override
            public final void run() {
                SearchManager.n(this.f49968a, callback);
            }
        });
    }
}
