package com.mgmi.e.a;

import com.mgmi.e.g;
import com.mgmi.model.VASTAd;
import com.mgmi.model.i;
import com.mgmi.net.bean.BootAdBean;
import com.mgmi.net.bean.BootDataItem;
import java.util.List;

public interface c<T extends VASTAd> {
    void a(int i, T t, g gVar);

    void a(int i, i iVar, g gVar);

    void a(T t);

    void a(T t, int i, int i2, boolean z);

    void a(T t, int i, String str, long j, g gVar);

    void a(T t, g gVar);

    void a(T t, String str, int i, int i2);

    void a(BootAdBean bootAdBean);

    void a(BootAdBean bootAdBean, g gVar);

    void a(BootDataItem bootDataItem, g gVar);

    void a(Object obj, String str, int i, int i2);

    void a(String str);

    void a(List<String> list);

    void b(T t, g gVar);

    void b(BootAdBean bootAdBean);

    void c(T t, g gVar);

    void d(T t, g gVar);

    void e(VASTAd vASTAd, g gVar);

    void f(T t, g gVar);

    void g(T t, g gVar);

    void h(T t, g gVar);

    void i(T t, g gVar);
}
