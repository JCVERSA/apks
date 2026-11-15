package com.transsnet.login.country;

import android.app.Application;
import android.text.TextUtils;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.gslb.Utils;
import com.transsnet.loginapi.bean.Country;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

public final class SelectCountryViewModel extends androidx.p009lifecycle.b {

    private final b0 f58060b;

    private final b0 f58061c;

    private final b0 f58062d;

    private final b0 f58063e;

    private HashMap f58064f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectCountryViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f58060b = new b0();
        this.f58061c = new b0();
        this.f58062d = new b0();
        this.f58063e = new b0();
        l();
    }

    private final Integer g(String str) {
        HashMap map = this.f58064f;
        if (map == null) {
            return null;
        }
        Intrinsics.e(map);
        return (Integer) map.get(str);
    }

    private final String h(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String strSubstring = str.substring(0, 1);
        Intrinsics.g(strSubstring, "substring(...)");
        Locale locale = Locale.getDefault();
        Intrinsics.g(locale, "getDefault(...)");
        String upperCase = strSubstring.toUpperCase(locale);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    private final void l() {
        k.d(u0.a(this), y0.b(), null, new SelectCountryViewModel$initData$1(this, null), 2, null);
    }

    public final void m() throws Throwable {
        ArrayList arrayListA = lx.b.b().a(b());
        Intrinsics.g(arrayListA, "getCountryList_toArrayList(...)");
        final Function2 function2 = new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return Integer.valueOf(SelectCountryViewModel.n((Country) obj, (Country) obj2));
            }
        };
        CollectionsKt.A(arrayListA, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return SelectCountryViewModel.o(function2, obj, obj2);
            }
        });
        p(arrayListA);
    }

    public static final int n(Country obj, Country country) {
        Intrinsics.h(obj, "obj");
        return obj.compareTo(country);
    }

    public static final int o(Function2 function2, Object obj, Object obj2) {
        return ((Number) function2.invoke(obj, obj2)).intValue();
    }

    private final void p(List list) {
        if (list == null || list.isEmpty()) {
            this.f58061c.n(null);
            return;
        }
        if (this.f58064f == null) {
            this.f58064f = new HashMap();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Country country = (Country) it.next();
            String country2 = country.getCountry();
            Intrinsics.g(country2, "getCountry(...)");
            String strH = h(country2);
            if (!TextUtils.isEmpty(strH) && !CollectionsKt.b0(arrayList, strH)) {
                country.setIndex(strH);
                Intrinsics.e(strH);
                arrayList.add(strH);
                Integer numValueOf = Integer.valueOf(i10);
                HashMap map = this.f58064f;
                Intrinsics.e(map);
                map.put(strH, numValueOf);
            }
            i10++;
        }
        arrayList.add(Utils.SEPARATOR);
        HashMap map2 = this.f58064f;
        Intrinsics.e(map2);
        map2.put(Utils.SEPARATOR, Integer.valueOf(i10 - 1));
        this.f58060b.n(list);
        this.f58061c.n(arrayList);
    }

    public final LiveData f() {
        return this.f58060b;
    }

    public final LiveData i() {
        return this.f58062d;
    }

    public final LiveData j() {
        return this.f58063e;
    }

    public final LiveData k() {
        return this.f58061c;
    }

    public final void q(String index) {
        Intrinsics.h(index, "index");
        this.f58062d.q(g(index));
    }

    public final void r(Country country) {
        if (country != null) {
            this.f58063e.q(new kx.a(country));
        }
    }
}
