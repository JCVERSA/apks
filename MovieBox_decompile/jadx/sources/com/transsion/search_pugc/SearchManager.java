package com.transsion.search_pugc;

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

    public static final a f50264f = new a(null);

    private static final Lazy f50265g = LazyKt.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0() {
        @Override
        public final Object invoke() {
            return SearchManager.e();
        }
    });

    private int f50269d;

    private final String f50267b = "kv_search_group";

    private final String f50268c = "kv_search_work";

    private List f50270e = new ArrayList();

    private MMKV f50266a = MMKV.I("kv_search_list");

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchManager a() {
            return (SearchManager) SearchManager.f50265g.getValue();
        }

        private a() {
        }
    }

    public static final SearchManager e() {
        return new SearchManager();
    }

    public static final void h(SearchManager searchManager) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(searchManager.f50270e);
        wf.a.C0922a.f(wf.a.f74274a, "VS_SM", "add" + arrayList, false, 4, null);
        int i10 = searchManager.f50269d;
        if (i10 != 1) {
            if (i10 == 2) {
                MMKV mmkv = searchManager.f50266a;
                if (mmkv != null) {
                    mmkv.putString(searchManager.n(), o.j(arrayList));
                    return;
                }
                return;
            }
            if (i10 != 3) {
                return;
            }
        }
        MMKV mmkv2 = searchManager.f50266a;
        if (mmkv2 != null) {
            mmkv2.putString(searchManager.o(), o.j(arrayList));
        }
    }

    private final void i(Runnable runnable) {
        j.f50481b.a().d(runnable);
    }

    public static final void k(SearchManager searchManager) {
        searchManager.f50270e.clear();
        int i10 = searchManager.f50269d;
        if (i10 != 1) {
            if (i10 == 2) {
                MMKV mmkv = searchManager.f50266a;
                if (mmkv != null) {
                    mmkv.putString(searchManager.n(), "");
                    return;
                }
                return;
            }
            if (i10 != 3) {
                return;
            }
        }
        MMKV mmkv2 = searchManager.f50266a;
        if (mmkv2 != null) {
            mmkv2.putString(searchManager.o(), "");
        }
    }

    private final String m() {
        String strD = ij.o.f62115a.d();
        return strD == null ? "" : strD;
    }

    private final String n() {
        return m().length() == 0 ? this.f50267b : "kv_kids_search_group";
    }

    private final String o() {
        return m().length() == 0 ? this.f50268c : "kv_kids_search_work";
    }

    public static final void q(SearchManager searchManager, com.transsion.search_pugc.a aVar) {
        aVar.a(searchManager.l());
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0035  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    public final void g(String keyword) {
        Intrinsics.h(keyword, "keyword");
        if (this.f50270e.contains(keyword)) {
            this.f50270e.remove(keyword);
            this.f50270e.add(keyword);
        } else {
            int i10 = this.f50269d;
            if (i10 == 1) {
                if (this.f50270e.size() >= 30) {
                    this.f50270e.remove(0);
                }
            } else if (i10 != 2) {
                if (i10 == 3) {
                    if (this.f50270e.size() >= 30) {
                        this.f50270e.remove(0);
                    }
                }
            } else if (this.f50270e.size() >= 30) {
                this.f50270e.remove(0);
            }
            this.f50270e.add(keyword);
        }
        if (this.f50270e.isEmpty()) {
            return;
        }
        i(new Runnable() {
            @Override
            public final void run() {
                SearchManager.h(this.f50299a);
            }
        });
    }

    public final void j() {
        i(new Runnable() {
            @Override
            public final void run() {
                SearchManager.k(this.f50306a);
            }
        });
    }

    public final List l() {
        List arrayList;
        String string = null;
        if (this.f50269d == 2) {
            MMKV mmkv = this.f50266a;
            if (mmkv != null) {
                string = mmkv.getString(n(), "");
            }
        } else {
            MMKV mmkv2 = this.f50266a;
            if (mmkv2 != null) {
                string = mmkv2.getString(o(), "");
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
        this.f50270e = arrayList;
        return arrayList;
    }

    public final void p(int i10, final com.transsion.search_pugc.a callback) {
        Intrinsics.h(callback, "callback");
        this.f50269d = i10;
        i(new Runnable() {
            @Override
            public final void run() {
                SearchManager.q(this.f50295a, callback);
            }
        });
    }
}
