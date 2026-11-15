package com.transsnet.downloader.manager;

import com.transsion.baselib.db.download.DownloadBean;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import ui.m0;
import ui.s0;

public interface g {

    public static final class a {
        public static void a(g gVar, DownloadBean downloadBean, boolean z10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resume");
            }
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            gVar.s(downloadBean, z10);
        }
    }

    void A();

    Object B(Continuation continuation);

    void C(List list);

    void D();

    void E(s0 s0Var);

    void F(DownloadBean downloadBean);

    void G(ax.b bVar);

    void H();

    Object a(String str, int i10, String str2, Continuation continuation);

    void d();

    Object e(String str, Continuation continuation);

    void g(m0 m0Var);

    String h(DownloadBean downloadBean);

    boolean i();

    Object j(String str, Continuation continuation);

    void k(m0 m0Var);

    void l(DownloadBean downloadBean);

    void m(DownloadBean downloadBean, Function1 function1);

    void n();

    void o();

    void p(DownloadBean downloadBean);

    void q();

    void r(String str, Function1 function1);

    void s(DownloadBean downloadBean, boolean z10);

    Object t(String str, int i10, int i11, Continuation continuation);

    void u(DownloadBean downloadBean);

    void v();

    Long w();

    void x(zw.b bVar);

    void y(List list, Function1 function1);

    boolean z(DownloadBean downloadBean);
}
